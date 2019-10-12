package furniture.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ClientController {
	@RequestMapping("trangchu")
	public String index()
	{
		return "client/trangchu";
	}
}
