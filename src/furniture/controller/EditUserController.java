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

import furniture.enity.Users;

@Transactional
@Controller

public class EditUserController {
	@Autowired
	SessionFactory factory;

	@RequestMapping(value = "admin/edit-user", method = RequestMethod.POST)
	public String edit(HttpServletRequest request, ModelMap model) {
		String id = request.getParameter("btnEdit");
		Session session = factory.getCurrentSession();
		String hql = "FROM Users";
		Query query = session.createQuery(hql);
		List<Users> list = query.list();
		for (Users a : list) {
			if (a.getMaTaiKhoan() == Integer.parseInt(id))
				model.addAttribute("user", a);
		}
		return "/admin/edit-user";
	}

	@RequestMapping(value = "admin/users", method = RequestMethod.POST)
	public String edit2(HttpServletRequest request, ModelMap model) {
		String maTaiKhoan = request.getParameter("btnSaveChange");
		String hoTen = request.getParameter("hoTen");
		String gioiTinh = request.getParameter("gioiTinh");
		boolean gioiTinh2;
		if(gioiTinh.equals("Nam")==true)gioiTinh2 = true;else gioiTinh2= false;		
		String diaChi = request.getParameter("diaChi");
		String email = request.getParameter("email");
		String dienThoai = request.getParameter("dienThoai");
		Session session = factory.getCurrentSession();
		String hql = "UPDATE Users u set u.hoTen = '"+hoTen+"',u.gioiTinh ="+gioiTinh2+",u.diaChi ='"+diaChi+"',u.email ='"+email+"',u.dienThoai ='"+dienThoai+"' WHERE u.maTaiKhoan = " + maTaiKhoan;
		Query query = session.createQuery(hql);
//		query.setParameter("maTK",Integer.parseInt(maTaiKhoan));
//		query.setParameter("hoTenUser", hoTen);
		int result = query.executeUpdate();
		System.out.println(hoTen);
		System.out.println(maTaiKhoan);
		String hql2 = "FROM Users";
		Query query2 = session.createQuery(hql2);
		List<Users> list = query2.list();
		model.addAttribute("Users", list);
		return "/admin/users";
	}

}
