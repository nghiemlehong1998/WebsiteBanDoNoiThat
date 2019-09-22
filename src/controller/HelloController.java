package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {
	@RequestMapping("nghiemdet")
	public String NghiemLe() {
		return "nghiemle";
	}
	@RequestMapping("admin")
	public String admin()
	{
		return "/admin/index";
	}
	@RequestMapping("admin/products")
	public String products()
	{
		return "/admin/products";
	}
	
	@RequestMapping("admin/addproduct")
	public String addProducts()
	{
		return "/admin/addproduct";
	}
	@RequestMapping("admin/users")
	public String users()
	{
		return "/admin/users";
	}
}

