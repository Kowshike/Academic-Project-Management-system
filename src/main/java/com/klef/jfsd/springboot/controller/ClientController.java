package com.klef.jfsd.springboot.controller;




import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Mentor;
import com.klef.jfsd.springboot.model.Project;
import com.klef.jfsd.springboot.model.ProjectReview;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.StudentTeam;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.MentorService;
import com.klef.jfsd.springboot.service.ProjectReviewService;
import com.klef.jfsd.springboot.service.ProjectService;
import com.klef.jfsd.springboot.service.StudentService;
import com.klef.jfsd.springboot.service.TeamService;


@Controller
public class ClientController 
{
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private MentorService mentorService;
	
	@Autowired
	private StudentService studentService;
	
	@Autowired
	private TeamService teamService;
	
	@Autowired
	private ProjectService projectService;
	
	@Autowired
	private ProjectReviewService projectReviewService;
	@GetMapping("/")
	public String mainhomedemo()
	{
		return "home";
	}

	@GetMapping("/adminlogin")
	public ModelAndView adminlogindemo()
	{
		ModelAndView mv = new ModelAndView("adminlogin");
		return mv;
	}
	@GetMapping("/home")
	public ModelAndView adminlogindemo1()
	{
		ModelAndView mv = new ModelAndView("home");
		return mv;
	}
	@GetMapping("/portfolio")
	public ModelAndView portfolio()
	{
		ModelAndView mv = new ModelAndView("portfolio");
		return mv;
	}
	@GetMapping("/about1")
	public ModelAndView about1()
	{
		ModelAndView mv = new ModelAndView("about1");
		return mv;
	}
//	@GetMapping("/about1")
//	//@ResponseBody
//	public String about()
//	{
//		return "about";
//	}
	@GetMapping("/mentorlogin")
	public ModelAndView mentorlogindemo()
	{
		ModelAndView mv = new ModelAndView("mentorlogin");
		return mv;
	}
	@GetMapping("/mentorhome")
	public ModelAndView mentorhomedemo()
	{
		ModelAndView mv = new ModelAndView("mentorhome");
		return mv;
	}
	@GetMapping("/projectstatus")
	public ModelAndView projectstatusdemo()
	{
		ModelAndView mv = new ModelAndView("projectstatus");
		return mv;
	}
	
	@GetMapping("/studentlogin")
	public ModelAndView studentlogindemo()
	{
		ModelAndView mv = new ModelAndView("studentlogin");
		return mv;
	}
	@PostMapping("/checkadminlogin")
	public ModelAndView checkadminlogindemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String auname=request.getParameter("auname");
		String apwd=request.getParameter("apwd");
		
		Admin admin = adminService.checkadminlogin(auname, apwd);
		
		if(admin!=null)
		{
			HttpSession session = request.getSession();
			session.setAttribute("auname", auname);
			mv.setViewName("adminhome");
		}
		else
		{
			mv.setViewName("adminlogin");
			mv.addObject("msg","Login Failed");
		}
		return mv;
	}
	@GetMapping("/adminhome")
	public ModelAndView adminhomedemo()
	{
		ModelAndView mv = new ModelAndView("adminhome");
		return mv;
	}
	
	@GetMapping("/studenthome")
	public ModelAndView studenthomedemo()
	{
		ModelAndView mv = new ModelAndView("studenthome");
		return mv;
	}
	@PostMapping("/checkmentorlogin")
	public ModelAndView checkmentorlogindemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String euname=request.getParameter("euname");
		String epwd=request.getParameter("epwd");
		
		
		Mentor m=mentorService.checkmentorlogin(euname,epwd);
		
		if(m!=null)
		{
			HttpSession session = request.getSession();
			session.setAttribute("euname", euname);
			mv.setViewName("mentorhome");
		}
		else
		{
			mv.setViewName("mentorlogin");
			mv.addObject("msg","Login Failed");
		}
		return mv;
	}
	@PostMapping("/checkstudentlogin")
	public ModelAndView checkstudentlogindemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String suname=request.getParameter("suname");
		String spwd=request.getParameter("spwd");
		
		
		Student student=studentService.checkstudentlogin(suname, spwd);
		
		if(student!=null)
		{
			HttpSession session = request.getSession();
			session.setAttribute("suname", suname);
			mv.setViewName("studenthome");
		}
		else
		{
			mv.setViewName("studentlogin");
			mv.addObject("msg","Login Failed");
		}
		return mv;
	}
	@GetMapping("/addmentor")
	public ModelAndView employeeregdemo()
	{
			 ModelAndView mv = new ModelAndView("addmentor","mentor",new Mentor());
			  return mv;
	}
	@GetMapping("/addstudent")
	public ModelAndView studentregdemo()
	{
			 ModelAndView mv = new ModelAndView("addstudent","student",new Student());
			 return mv;
	}
	@PostMapping("/registermentor")
	public ModelAndView addmentordemo(@ModelAttribute("mentor") Mentor mentor)
	{
		mentorService.addmentor(mentor);
		
		ModelAndView mv=new ModelAndView("addmentor");
		mv.addObject("msg","registered successfully" );
		
		return mv;
	}
	@PostMapping("/registerstudent")
	public ModelAndView addstudentdemo(@ModelAttribute("student") Student student)
	{
		
		studentService.addstudent(student);
		ModelAndView mv=new ModelAndView("addstudent");
		return mv.addObject("msg","registered successfully" );
	}
	@GetMapping("/viewmentors")
	public ModelAndView viewallempsdemo()
	{
		ModelAndView mv = new ModelAndView("viewallmentors");
		List<Mentor> mentorlist=mentorService.viewallmentors();
		
			
		mv.addObject("mentorlist",mentorlist);
		return mv;
	}
	@GetMapping("/viewstudents")
	public ModelAndView viewallstudentsdemo()
	{
		ModelAndView mv = new ModelAndView("viewallstudents");
		List<Student> studentlist=studentService.viewallstudents();
		
		mv.addObject("studentlist",studentlist);
		return mv;
	}
	@GetMapping("/viewmentor")
	public ModelAndView viewmentordemo(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		String euname = (String) session.getAttribute("euname");
		
		Mentor men =  mentorService.viewmentor(euname);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewmentor");
		mv.addObject("mentor", men);
		return mv;
	}
	@GetMapping("/deletementor")
	  public String deletementordemo(@RequestParam("id") int eid)
	  {
		adminService.deletementor(eid);
	    return "redirect:viewmentors";
	  }
	@GetMapping("/viewmentorbyid")
	public ModelAndView viewempbyiddemo(@RequestParam("id") int eid)
	{
		Mentor men=adminService.viewmentorbyid(eid);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewmentorbyid");
		mv.addObject("mentor",men);
		return mv;
	}
	@GetMapping("/viewstudentbyid")
	public ModelAndView viewstubyiddemo(@RequestParam("id") int sid)
	{
		Student student=adminService.viewstudentbyid(sid);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewstudentbyid");
		mv.addObject("student",student);
		return mv;
	}
	@GetMapping("/viewprojectbyteamid")
	public ModelAndView viewprojectbyteamiddemo(@RequestParam("id") int tid)
	{
		StudentTeam studentTeam=teamService.getteambyid(tid);
		System.out.println(studentTeam.getStudent1());
		Project project=projectService.viewproject(studentTeam.getStudent1());
		if(project==null)
		{
			ModelAndView mv = new ModelAndView("viewteamsbymentor");
			mv.addObject("msg", "Project Not selected Yet...!");
			return mv;
		}
		else
		{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewprojectbyteamid");
		mv.addObject("project",project);
		return mv;
		}
	}
	@GetMapping("/updateform")
	public ModelAndView updateformdemo()
	{
		ModelAndView mv=new ModelAndView("reviewform");
		
		return mv;
	}
	@PostMapping("/updatestatusbyid")
	public ModelAndView updatestatusbyiddemo(@RequestParam("id") String pid,@RequestParam("lead") String teamlead,HttpServletRequest request)
	{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("reviewform");
		String remarks=request.getParameter("remarks");
		int progress=Integer.parseInt(request.getParameter("progress"));
		ProjectReview projectReview=new ProjectReview();
		projectReview.setProjectid(pid);
		projectReview.setTeamlead(teamlead);
		projectReview.setRemarks(remarks);
		projectReview.setProgress(progress);
	System.out.println(pid);
	System.out.println(teamlead);
		projectReviewService.addprojectreview(projectReview);
		
		mv.addObject("msg","Project Review Added Successfully");
	
		return mv;
	}
	@GetMapping("/deletestudent")
	  public String deletestudentdemo(@RequestParam("id") int eid)
	  {
		adminService.deletestudent(eid);
	    return "redirect:viewstudents";
	  }

	@GetMapping("/addstudentteam")
	public ModelAndView teamregistrationdemo(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		String suname = (String) session.getAttribute("suname");
		StudentTeam team=teamService.checkteam(suname);
		if(team!=null)
		{
			ModelAndView mv=new ModelAndView("studenthome");
			mv.addObject("msg", "You Have Already Registered");
			return mv;
				
		}
		else
		{
			ModelAndView mv = new ModelAndView("addstudentteam","studentteam",new StudentTeam());
			  
			  return mv;
		}
	}
	@GetMapping("/registerstudentteam")
	public ModelAndView registerstudentteamdemo(@ModelAttribute("studentteam") StudentTeam studentTeam)
	{
	
	
		teamService.addstudentteam(studentTeam);
		
		ModelAndView mv=new ModelAndView("addstudentteam");
		return mv.addObject("msg","registered successfully" );
	}

	
	
	@GetMapping("/mentorselection")
	public ModelAndView mentorselectiondemo(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		  String suname = (String) session.getAttribute("suname");
		    StudentTeam team=studentService.checklead(suname);
		    if(team!=null && team.getFacultyid()==0)
		    {
		    
		ModelAndView mv=new ModelAndView("mentorselection");
	
		List<Mentor> mentorslist = mentorService.viewallmentors();
		mv.addObject("mentorslist",mentorslist);
		return mv;
		    	
		    }
		    else
		    {
		    	ModelAndView mv=new ModelAndView("studenthome");
				mv.addObject("msg", "You Have Already Allocated to Mentor");
				return mv;
		    }
		
	}
	@PostMapping("/mentorallocation")
	public ModelAndView mentorallocatedemo(HttpServletRequest request)	
	{
	ModelAndView mv=new ModelAndView();
		HttpSession session = request.getSession();
		int menid =  Integer.parseInt(request.getParameter("fid"));
		String suname=(String) session.getAttribute("suname");
					int n  = teamService.updatementor(menid, suname);	
					if(n>0)
					{
						mv.setViewName("mentorselection");
						mv.addObject("msg","Mentor Selected Successfully");
					}
		return mv;
	}
	@GetMapping("/viewstudent")
	public ModelAndView viewstudentdemo(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		String suname = (String) session.getAttribute("suname");
		Student student=studentService.viewstudent(suname);
		ModelAndView mv=new ModelAndView("viewstudent");
		mv.addObject("student", student);
		return mv;
	}
	@PostMapping("/registerproject")
	public ModelAndView addprojectdemo(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("addproject");
		String pname = request.getParameter("projectname");
		String pdes = request.getParameter("projectdescription");
		String area = request.getParameter("projectrsarea");
		String leadname = (String) session.getAttribute("suname");
		
		Project project = new Project();
		project.setDescription(pdes);
		project.setName(pname);
		project.setResearcharea(area);
		project.setTeamlead(leadname);
		projectService.addproject(project);
		modelAndView.addObject("msg","Project Created Successfully");
		return modelAndView;
	}
	@GetMapping("/addproject")
	public ModelAndView regprojectdemo(HttpServletRequest request)
	{
		
		HttpSession session = request.getSession();
		String suname = (String) session.getAttribute("suname");
		StudentTeam team=studentService.checklead(suname);
		if(team!=null)
		{
			ModelAndView mv=new ModelAndView("addproject");
			
			return mv;
		}
		 else
		    {
		    	ModelAndView mv=new ModelAndView("studenthome");
				mv.addObject("msg", "You Have No Access");
				return mv;
		    }
		
	}
	@GetMapping("/viewproject")
	public ModelAndView viewprojectdemo(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		String suname = (String) session.getAttribute("suname");
		StudentTeam team=teamService.checkteam(suname);
		Project project=projectService.viewproject(team.getStudent1());
		
		ModelAndView mv=new ModelAndView("viewproject");
		mv.addObject("project", project);
		return mv;
		
	}
	@GetMapping("/viewteamsbymentor")
	public ModelAndView viewteamsbymentordemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView("viewteamsbymentor");
		HttpSession session = request.getSession();
		String euname = (String) session.getAttribute("euname");
		Mentor mentor=mentorService.viewmentor(euname);
		System.out.println(mentor.getId());
		List<StudentTeam> studentTeams=teamService.viewteamsbymentor(mentor.getId());
		
		mv.addObject("teamlist",studentTeams);
		return mv;
	}
	List<Student> l1= new ArrayList<Student>();
	@GetMapping("/save")
	public void save(@ModelAttribute("list1")ArrayList<Student> list1,Model m)
	{
		List<Student> l1= new ArrayList<Student>();
		l1=list1;
		m.addAttribute("teamlist", l1);
	}
}
