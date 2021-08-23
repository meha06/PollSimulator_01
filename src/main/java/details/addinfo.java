package details;

import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.Map.Entry;

	@Controller
	public class addinfo 
	{
		String clist;
		Vector<String> candidates = new Vector<String>();
		Map<Integer,Integer> map=new HashMap<Integer,Integer>(); 
		Vector<String> ids = new Vector<String>();
		Vector<String> voters = new Vector<String>();
		
			@RequestMapping("/add")
			public ModelAndView add(HttpServletRequest request,HttpServletResponse response)
			{
			
				ModelAndView mv=new ModelAndView();
				mv.setViewName("add.jsp");
				
				return mv;
			}
			
			@RequestMapping("/addCandidate")
			public ModelAndView addCandiddate(HttpServletRequest request , HttpServletResponse response) {
				ModelAndView mv= new ModelAndView();
				String nm = request.getParameter("name");
				
					candidates.add(nm);
					ids.add(request.getParameter("roll"));
					map.put(Integer.parseInt(request.getParameter("roll")),0);
				mv.setViewName("index.jsp");
				
				return mv;
			}
			
			@RequestMapping("/candidateList")
			public ModelAndView voteList(HttpServletRequest request , HttpServletResponse response) {
				ModelAndView mv= new ModelAndView();
				mv.setViewName("vote.jsp");
				mv.addObject("List",candidates);
				mv.addObject("idList" , ids );
				return mv;
			}
			
			@RequestMapping("/voteCandidate")
			public ModelAndView voteCandidate(HttpServletRequest request , HttpServletResponse response) {
				ModelAndView mv= new ModelAndView();
				String sid= request.getParameter("id");
				int c = Integer.parseInt(request.getParameter("candidate"));
				String msg="Your vote has been added successfully.";
				
				if(voters.indexOf(sid) == -1) {
					voters.add(sid);
					map.replace(c, map.get(c) + 1 );
				}
				else
					msg=" Sorry..You have already voted.";
				mv.setViewName("message.jsp");
				mv.addObject("message",msg);
				mv.addObject("link" , "");
				return mv;
			}
			
			
			@RequestMapping("/home")
			public ModelAndView home() {
				ModelAndView mv= new ModelAndView();
				mv.setViewName("index.jsp");
				return mv;
			}
			
			public static List<Entry<Integer, Integer>> sorting(Map<Integer, Integer> l1)
		    {
		       
		        List<Map.Entry<Integer, Integer> > list= new LinkedList<Map.Entry<Integer, Integer> >(l1.entrySet());
		 
		       
		        Collections.sort(list, new Comparator<Map.Entry<Integer, Integer> >() {
		            public int compare(Map.Entry<Integer, Integer> c1,Map.Entry<Integer, Integer> c2)
		            {
		                return (c2.getValue()).compareTo(c1.getValue());
		            }
		        });
		        return list;
		   
		    }
			
			@RequestMapping("/result")
			public ModelAndView Results() {
				ModelAndView mv= new ModelAndView();
				
				List<Entry<Integer,Integer>> l1 = sorting(map);
				String names="" ,votes="";
				for (Map.Entry<Integer, Integer> i : l1) 
				{
		            String t = candidates.get(ids.indexOf(i.getKey().toString()));
		           
		            names += t +"/";
		            votes += i.getValue() + "/";
		        }
				
				mv.setViewName("result.jsp");
				mv.addObject("Names" , names);
				mv.addObject("Values" , votes);
				return mv;
			}

			@RequestMapping("/summary")
			public ModelAndView Summary() {
				ModelAndView mv= new ModelAndView();
				sorting(map);
				List<Entry<Integer,Integer>> lst = sorting(map);
				String names="" ,votes="";
				for (Map.Entry<Integer, Integer> aa : lst) {
		            String tmp = candidates.get(ids.indexOf(aa.getKey().toString()));
		      
		            names += tmp +"/";
		            votes += aa.getValue() + "/";
		        }
				mv.setViewName("summary.jsp");
				mv.addObject("Names" , names);
				mv.addObject("Values" , votes);
				return mv;
			}

	}
		
	
			

	