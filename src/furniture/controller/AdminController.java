package furniture.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import furniture.entity.DanhMucSanPham;
import furniture.entity.Users;



@Transactional
@Controller


public class AdminController {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping("nghiemdet")
	public String NghiemLe() {
		return "nghiemle";
	}
	@RequestMapping("admin")
	public String admin()
	{
		return "/admin/index";
	}
	@RequestMapping(value = "admin/products",method = RequestMethod.POST)
	public String products()
	{
		return "/admin/products";
	}
	
	@RequestMapping(value = "admin/addproduct",method = RequestMethod.POST)
	public String addProducts(ModelMap model){	
		Session session = factory.getCurrentSession();
		String hql ="FROM DanhMucSanPham";
		Query query = session.createQuery(hql);
		List <DanhMucSanPham> list = query.list();
		model.addAttribute("DanhMucSanPham", list);	
		return "/admin/addproduct";
	}
	@RequestMapping("admin/users")
	public String users(ModelMap model)
	{	Session session = factory.getCurrentSession();
		String hql ="FROM Users";
		Query query = session.createQuery(hql);
		List <Users> list = query.list();
		model.addAttribute("Users", list);	
		return "/admin/users";
	}
	

	

	
	
	

	
	
}

