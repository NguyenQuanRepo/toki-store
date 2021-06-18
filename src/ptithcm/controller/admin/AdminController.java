package ptithcm.controller.admin;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import ptithcm.entity.CartItem;
import ptithcm.entity.Category;
import ptithcm.entity.Product;
import ptithcm.entity.User;


@Transactional
@Controller
@RequestMapping("admin")
public class AdminController {

	@RequestMapping("index")
	public String index() {
		return "admin/index";
	}
	
	@Autowired
	SessionFactory factory;
	
	@RequestMapping("list-product")
	public String listProcduct(ModelMap model) {
		
		Session session = factory.getCurrentSession();
		String hql = "FROM Product";
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		model.addAttribute("proList", list);

		return "admin/list-product";
	}
	
	@ModelAttribute("categories")
	public List<Category> getCategories(){
		Session session = factory.getCurrentSession();
		String hql = "FROM Category";
		Query query = session.createQuery(hql);
		List<Category> list = query.list();
		return list;
	}
	
	@RequestMapping(value = "add-product", method = RequestMethod.GET)
	public String addProduct(ModelMap model) {
		model.addAttribute("product", new Product());
		return "admin/add-product";
	}
	
	@RequestMapping(value = "add-product", method = RequestMethod.POST)
	public String addProduct(ModelMap model, @ModelAttribute("product") Product product) {
		if(product.getName() == "")
		{
			model.addAttribute("mess", "Hãy điền tên sản phẩm");
			return "admin/add-product";
		}
		if(product.getPrice() == null)
		{
			model.addAttribute("mess", "Hãy điền giá sản phẩm");
			return "admin/add-product";
		}
		if(product.getDes() == "")
		{
			model.addAttribute("mess", "Hãy điền phần mô tả");
			return "admin/add-product";
		}
		else {
			
		
			Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			System.out.println(product.getName());
			try {
				session.save(product);
				t.commit();
				model.addAttribute("mess", "Thêm thành công!");
			} catch (Exception e) {
				t.rollback();
			}
			finally {
				session.close();
			}
			return "redirect:/admin/list-product.htm";
		}
	}
	
	@RequestMapping(value = "/delete-product/{id}")
	public String deleteProduct(ModelMap model, @PathVariable("id") int id) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			Product product = (Product) session.get(Product.class, id);
			session.delete(product);
			t.commit();
		} catch (Exception ex) {
			t.rollback();
		} finally {
			session.close();
		}
		return "redirect:/admin/list-product.htm";
	}
	public Product findById(int id) {
        Session session = null;
 
        try {
            session = factory.openSession();
            List<Product> pro = new ArrayList<Product>();
            pro = session.createQuery("from Product where id=?").setParameter(0, id).list();
            if (pro.size() > 0) {
                return pro.get(0);
            }
        } catch (HibernateException e) {
            e.printStackTrace();
        }
        return null;
    }
	@RequestMapping(value = "edit-product/{id}", method = RequestMethod.GET)
	public String updateProduct(ModelMap model, @PathVariable("id") int id) {
		Session session = factory.openSession();
		model.addAttribute("product", (Product) session.get(Product.class, id));
		return "admin/edit-product";
	}

	@RequestMapping(value = "edit-product", method = RequestMethod.POST)
	public String update(ModelMap model, @ModelAttribute("product") Product product) {
		Product product1 = findById(product.getId());

		if(product.getImage().isEmpty())
			product.setImage(product1.getImage());

		
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(product);
			t.commit();
		} catch (Exception ex) {
			ex.printStackTrace();
			t.rollback();
		} finally {
			session.close();
		}
		return "redirect:/admin/list-product.htm";
	}
	//====================================CẬP NHẬT USER=================================
	
	@RequestMapping("list-user")
	public String index(ModelMap model) {

		Session session = factory.getCurrentSession();
		String hql = "FROM User";
		Query query = session.createQuery(hql);
		List<User> list = query.list();
		model.addAttribute("userList", list);

		return "admin/list-user";
	}

	@RequestMapping(value = "add-user", method = RequestMethod.GET)
	public String insert(ModelMap model) {
		model.addAttribute("user", new User());
		return "admin/add-user";
	}

	@RequestMapping(value = "add-user", method = RequestMethod.POST)
	public String insert(ModelMap model, @ModelAttribute("user") User user) {
		if(user.getUsername() == "")
		{
			model.addAttribute("mess", "Tên không được để trống");
			return "admin/add-user";
		}
		if(user.getPassword() == "")
		{
			model.addAttribute("mess", "Mật khẩu không được để trống");
			return "admin/add-user";
		}
		if(user.getEmail() == "")
		{
			model.addAttribute("mess", "Email không được để trống");
			return "admin/add-user";
		}
		if(user.getRoleId() == 0)
		{
			model.addAttribute("mess", "Bạn chưa chọn quyền ");
			return "admin/add-user";
		}
		else {
			Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			try {
				session.save(user);
				t.commit();
			} catch (Exception e) {
				t.rollback();
			} finally {
				session.close();
			}
			return "redirect:/admin/list-user.htm";
		}	
	}

	@RequestMapping(value = "delete/{id}")
	public String delete(ModelMap model, @PathVariable("id") int id) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			User user = (User) session.get(User.class, id);
			session.delete(user);
			t.commit();
		} catch (Exception ex) {
			t.rollback();
		} finally {
			session.close();
		}
		return "redirect:/admin/list-user.htm";
	}

	@RequestMapping(value = "edit-user/{id}", method = RequestMethod.GET)
	public String update(ModelMap model, @PathVariable("id") int id) {
		Session session = factory.openSession();
		model.addAttribute("user", (User) session.get(User.class, id));
		return "admin/edit-user";
	}

	@RequestMapping(value = "edit-user", method = RequestMethod.POST)
	public String update(ModelMap model, @ModelAttribute("user") User user) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(user);
			t.commit();
		} catch (Exception ex) {
			ex.printStackTrace();
			t.rollback();
		} finally {
			session.close();
		}
		return "redirect:/admin/list-user.htm";
	}
	
	//==================================Xóa đơn đặt hàng========================
	@RequestMapping("list-order")
	public String listOder(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM CartItem";
		Query query = session.createQuery(hql);
		List<CartItem> list = query.list();
		model.addAttribute("listCartItem", list);
		return "admin/list-order";
	}
	
	@RequestMapping(value = "order/delete/{id}")
	public String deleteProduct(ModelMap model, @PathVariable("id") String id) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			CartItem order = (CartItem) session.get(CartItem.class, id);
			session.delete(order);
			t.commit();
		} catch (Exception ex) {
			t.rollback();
		} finally {
			session.close();
		}
		return "redirect:/admin/list-order.htm";
	}
}
