package details;

import java.util.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

	@Controller
	public class addinfo 
	{
		String clist;
		Vector<String> candidates = new Vector<String>();
		int i=0;
			@RequestMapping("/add")
			public ModelAndView add(HttpServletRequest request,HttpServletResponse response)
			{
				String name=request.getParameter("name");
				candidates.add(name);
				
				ModelAndView mv=new ModelAndView();
				mv.setViewName("index.jsp");
				mv.addObject("result",candidates);
				return mv;
			}
			
			
	}
		
	
			

	