package ptithcm.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ptithcm.bean.Mailer;
import ptithcm.entity.Cart;
import ptithcm.entity.CartItem;
import ptithcm.entity.Product;
import ptithcm.entity.User;
import ptithcm.tools.RandomUUID;

@Transactional
@Controller
@RequestMapping("user")
public class UserController {
	@Autowired
	SessionFactory factory;
	
	
	@RequestMapping("index")
	public String index(ModelMap model) {
		Session seassion = factory.getCurrentSession();
		String hql = "FROM Product";
		Query query = seassion.createQuery(hql);
		List<Product> list = query.list();
		model.addAttribute("pwelcome", list);
		return "user/index";
	}
	

	@RequestMapping("aboutUs")
	public String about()
	{
		return "user/aboutUs";
	}
	@RequestMapping(value = "account", method = RequestMethod.GET)
	public String account(ModelMap model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("account");
		model.addAttribute("acc", user);
		return "user/account";
	}
	
	@RequestMapping(value = "account", method = RequestMethod.POST)
	public String account(ModelMap model, HttpServletRequest request, @ModelAttribute("acc") User user) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(user);
			t.commit();
			HttpSession session1 = request.getSession();
			session1.setAttribute("account", user);
		} catch (Exception ex) {
			ex.printStackTrace();
			t.rollback();
		} finally {
			session.close();
		}
		return "redirect:/user/account.htm";
	}
	
	@Autowired
    private SessionFactory sessionFactory;
	
    public Product findById(int id) {
        Session session = null;
 
        try {
            session = sessionFactory.openSession();
            List<Product> product = new ArrayList<Product>();
            product = session.createQuery("from Product where id=?").setParameter(0, id).list();
            if (product.size() > 0) {
                return product.get(0);
            }
        } catch (HibernateException e) {
            e.printStackTrace();
        }
        return null;
    }
	//====================== Thêm giỏ hàng============================
	@RequestMapping(value = "cart/add")
	public String cartAdd(ModelMap model, HttpServletRequest request, @RequestParam("pId") int id
			, @RequestParam("quantity") int quantity) {
		Product product = findById(id);
		CartItem cartItem = new CartItem();
		cartItem.setQuantity(quantity);
		cartItem.setUnitPrice(product.getPrice());
		cartItem.setProduct(product);
		HttpSession httpSession = request.getSession();
		Object obj = httpSession.getAttribute("cart");
		if (obj == null) {
			Map<Integer, CartItem> map = new HashMap<Integer, CartItem>();
			map.put(cartItem.getProduct().getId(), cartItem);
			httpSession.setAttribute("cart", map);
		} else {
			Map<Integer, CartItem> map = (Map<Integer, CartItem>) obj;

			CartItem existedCartItem = map.get(id);

			if (existedCartItem == null) {
				map.put(product.getId(), cartItem);
			} else {
				existedCartItem.setQuantity(existedCartItem.getQuantity() + quantity);
			}

			httpSession.setAttribute("cart", map);
		}
		return "redirect:/user/list-cart.htm";
	}
	
	@RequestMapping("list-cart")
	public String listCart(ModelMap model)
	{
		return "user/list-cart";
	}
	
	
	@RequestMapping(value = "cartItem/delete/{num}")
	public String deleteCartItem(ModelMap model, HttpServletRequest request, @PathVariable("num") int num) {
		HttpSession httpSession = request.getSession();
		Object obj = httpSession.getAttribute("cart");

		if (obj != null) {
			Map<Integer, CartItem> map = (Map<Integer, CartItem>) obj; 
			map.remove(num);

			httpSession.setAttribute("cart", map);
		}
		return "redirect:/user/list-cart.htm";
	}
	
	@RequestMapping("contact")
	public String contact()
	{
		return "user/contact";
	}
	
	@RequestMapping(value = "logout")
	public String logout(HttpSession session)
	{
		 session.removeAttribute("account");
		 return "redirect:/user/login.htm";
	}
	
	 public User findByUserName(String username) {
	        Session session = null;
	 
	        try {
	            session = sessionFactory.openSession();
	            List<User> users = new ArrayList<User>();
	            users = session.createQuery("from User where username=?").setParameter(0, username).list();
	            if (users.size() > 0) {
	                return users.get(0);
	            }
	        } catch (HibernateException e) {
	            e.printStackTrace();
	        }
	        return null;
	    }
	    public int isUsers(String username, String password) {
	        User user = findByUserName(username);
	        if (user != null && user.getPassword().equals(password)) {
	        	if(user.getRoleId() == 1) {
	        		return 1;
	            }
	        	if(user.getRoleId() == 2) {
	        		return 2;
	            }
	        }
	        	return 3;
	 
	    }
	   
	    @RequestMapping(value = "login", method = RequestMethod.GET)
	    public String login(ModelMap model) {
			model.addAttribute("user", new User());
			return "user/login";
	    }
	    @RequestMapping(value = "login", method = RequestMethod.POST)
		public String login(ModelMap model,HttpSession session, @ModelAttribute("user") User user) {
	    	String alertMsg ="";
	        if(user.getUsername() == "" || user.getPassword() ==""){
	        	alertMsg = "Tài khoản hoặc mật khẩu trống!";
	            model.addAttribute("alert", alertMsg);
	           
	            return "user/login";
	        }
	    	if(isUsers(user.getUsername(), user.getPassword()) == 1) {
	    		session.setAttribute("username", user.getUsername());
	    		return "redirect:/admin/index.htm";
	    	}
	    	if(isUsers(user.getUsername(), user.getPassword()) == 2) {
	    		User user1 = findByUserName(user.getUsername());
	    		session.setAttribute("account", user1);
	    		return "redirect:/user/index.htm";
	    	}
	    	if(isUsers(user.getUsername(), user.getPassword()) == 3) {
	    		alertMsg = "Tài khoản hoặc mật khẩu không đúng!";
	    		model.addAttribute("alert", alertMsg);
	    	}
	    	
			return "user/login";
		}
	    
	    //========================= Đặt hàng ===============================
	    @Autowired
		Mailer mailer;
		
		long time = System.currentTimeMillis();
		
		public void insertCart(Cart cart) {
			Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			try {
				session.save(cart);
				t.commit();
			} catch (Exception e) {
				t.rollback();
			} finally {
				session.close();
			}
		}
		public void insertCartItem(CartItem cartItem) {
			Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			try {
				session.save(cartItem);
				t.commit();
			} catch (Exception e) {
				t.rollback();
			} finally {
				session.close();
			}
		}
		@RequestMapping(value = "order")
		public String order(ModelMap model, HttpServletRequest req) {
			HttpSession session = req.getSession();
			User buyer = (User) session.getAttribute("account");
			Cart cart = new Cart();
			if(buyer == null) {
				String message = "Bạn chưa đăng nhập, vui lòng đăng nhập để tiếp tục!";
	            model.addAttribute("alert", message);
	            return "user/list-cart";
			}
			cart.setBuyer(buyer);
			cart.setBuyDate(new java.sql.Date(time));
			cart.setId(RandomUUID.getRandomID());
			insertCart(cart);
			Object objCart = session.getAttribute("cart");
			if (objCart != null) {
				Map<Integer, CartItem> map = (Map<Integer, CartItem>) objCart;

				for (CartItem cartItem : map.values()) {
					cartItem.setCart(cart);
					cartItem.setId(RandomUUID.getRandomID());
					insertCartItem(cartItem);
					
				}
			}
			mailer.send(buyer.getEmail().toString(), "Toki Store", "Đặt hàng thành công!");
			session.removeAttribute("cart");
			return "redirect:/user/index.htm";
		}
		
		//========================================================================
		
		@RequestMapping(value = "product-detail/{id}", method = RequestMethod.GET)
		public String productDeltail(ModelMap model, @PathVariable("id") int id)
		{
			Session session = factory.openSession();
			model.addAttribute("product", (Product) session.get(Product.class, id));
			return "user/product-detail";
		}
		
		@RequestMapping("product-gird")
		public String productGird(ModelMap model) {
			
			Session session = factory.getCurrentSession();
			String hql = "FROM Product";
			Query query = session.createQuery(hql);
			List<Product> list = query.list();
			model.addAttribute("productList", list);

			return "user/product-gird";
		}
		
		@RequestMapping("product-list")
		public String productList(ModelMap model) {
			
			Session session = factory.getCurrentSession();
			String hql = "FROM Product";
			Query query = session.createQuery(hql);
			List<Product> list = query.list();
			model.addAttribute("productList", list);

			return "user/product-list";
		}
		
		@RequestMapping(value = "productSeachByCategory/{id}")
		public String seachCate(ModelMap model, @PathVariable("id") int id) {
			Session session = factory.getCurrentSession();
			String hql = "FROM Product p where p.category = ?";
			Query query = session.createQuery(hql);
			query.setInteger(0, id);
			List<Product> list = query.list();
			model.addAttribute("productSeachByCategory", list);
			return "user/productSeachByCategory";
		}
		
		@RequestMapping(value = "product-seach-by-name")
		public String seachName(ModelMap model, @RequestParam(value = "name") String name) {
			Session session = factory.openSession();

			System.out.println(name);
			List<Product> list = session.createQuery("from Product p where lower(p.name) like lower(:name)")
			.setString("name", "%" +name+"%").list();
			model.addAttribute("productSeachByName", list);
			
			return "user/product-seach-by-name";
		}
		
		  public User findByUserName1(String username) {
		        Session session = null;
		 
		        try {
		            session = factory.openSession();
		            List<User> users = new ArrayList<User>();
		            users = session.createQuery("from User where username=?").setParameter(0, username).list();
		            if (users.size() > 0) {
		                return users.get(0);
		            }
		        } catch (HibernateException e) {
		            e.printStackTrace();
		        }
		        return null;
		    }
		    public User findByEmail(String email) {
		        Session session = null;
		 
		        try {
		            session = factory.openSession();
		            List<User> users = new ArrayList<User>();
		            users = session.createQuery("from User where email=?").setParameter(0, email).list();
		            if (users.size() > 0) {
		                return users.get(0);
		            }
		        } catch (HibernateException e) {
		            e.printStackTrace();
		        }
		        return null;
		    }
			
			@RequestMapping(value = "/register", method = RequestMethod.GET)
			public String register(ModelMap model) {
				model.addAttribute("user", new User());
				return "user/register";
			}
			
			@RequestMapping(value = "/register", method = RequestMethod.POST)
			public String register(ModelMap model, @Validated @ModelAttribute("user") User user,
					@RequestParam("passwordConfirm") String con, BindingResult errors) {
				Session session = factory.openSession();
					if(findByUserName1(user.getUsername()) != null)
					{
						model.addAttribute("alert", "Tên đăng nhập đã tồn tại!");
						return "user/register";
					}
					if(findByEmail(user.getEmail()) != null) {
						model.addAttribute("alert", "Email đã được sử dụng");
						return "user/register";
					}
					if(user.getPassword().compareTo(con) != 0) {
						model.addAttribute("alert", "Xác nhận mật khẩu chưa chính xác!");
						return "redirect:/user/register.htm";
					}
					else {

						Transaction t = session.beginTransaction();
						try {
							session.save(user);
							t.commit();
						} catch (Exception e) {
							t.rollback();
						} finally {
							session.close();
						}
						return "redirect:/user/login.htm";
					}
			}
			
			
		
}
