package com.example.demo;
import java.util.*;
import java.io.IOException;
import java.text.DecimalFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class HomeController {
 
	@Autowired  
    JdbcTemplate jdbc;
	
	@RequestMapping("/")
    public String home(Map<String, Object> model) {
        model.put("message", "HowToDoInJava Reader !!");
        return "groceryhome";
	}
	@RequestMapping("/admin")
	
		public String admin(HttpServletRequest req , HttpServletResponse res)
		{
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		String res1="";
		/*String sql="select username,password from admin";
		jdbc.execute(sql);*/
		if(username.equals("admin") && password.equals("admin"))
		{
			System.out.println("Welcome"+username);
			res1="addpro";
		}
		else
		{
			System.out.print("Invalid login!!!");
			res1="groceryhome";
			
		
		}
		return res1;
		}
	@RequestMapping("/add")
	public String add(){
		return "addpro";
	}    
	
	@RequestMapping("/remove")
	public String remove() {
		return "remove";
	}
	
	@RequestMapping("/edit")
	public String edit(){
		
		
		return "edits";
	}
	
	@RequestMapping("/update")
	public String update() {
		return "update";
	}
	
	@RequestMapping("/rem")
	public String mess(HttpServletRequest req , HttpServletResponse res) {
		String m=req.getParameter("product_name");
		System.out.print(m);
		
		jdbc.execute("delete from gst.product_details where product_name='"+m+"'");
		System.out.println("delete success");
		return "remove"; 
	}
	
	@RequestMapping("/upd")
	public String upd(HttpServletRequest req, HttpServletResponse res) {
		String name=req.getParameter("name");
		String rate=req.getParameter("rate");
    	String tax=req.getParameter("tax");
    	jdbc.execute("update gst.product_details set gst =gg ,rate=new_rate where product_name='nameofpro';"
    			.replace("new_rate", rate).replace("nameofpro", name).replace("gg",tax));
		return "update";
	
	}
	
	@RequestMapping("/view")
	public String view() {
		return "success";
	}
	
	
    @RequestMapping("/insert")  
    public String index(HttpServletRequest req, HttpServletResponse res){  
    	System.out.println("heloo");
    	String name=req.getParameter("employee_name");
    	String code=req.getParameter("employee_id");
    	String source=req.getParameter("source");
    	String destination=req.getParameter("destination");
    	String rate=req.getParameter("rate");
    	String tax=req.getParameter("gst%");
        jdbc.execute("insert into gst.employee_details values('code','name','source','destination',rate,tax)"
        		.replace("code", code).replace("name", name)
        		.replace("source", source).replace("destination", destination)
        		.replace("rate",rate).replace("tax",tax));
        System.out.println("Added succesfully");
        return "new bill";  
    } 
    
    @RequestMapping("/billadd")
    public String billadd(HttpServletRequest req, HttpServletResponse res) {
    	String name=req.getParameter("name");
    	String code=req.getParameter("code");
    	String rate=req.getParameter("rate");
    	String tax=req.getParameter("gst");
    	String quantity=req.getParameter("quantity");
    	 
    	double q=Double.parseDouble(quantity);
    	double r=Double.parseDouble(rate);
    	double t=Double.parseDouble(tax); 
    	double billamount=q*r+(q*r*t/100);
    	  
    	DecimalFormat df2 = new DecimalFormat("#.##");
    	
    	System.out.println(name);
    	System.out.println(code);
    	System.out.println(r);
    	System.out.println(q);
    	System.out.println(t);
    	System.out.println(df2.format(billamount));
    	
    	String sql="insert into gst.bills values('code' , 'name', 'ra', 'ta', 'qua','amo')".replace("code",code)
    			.replace("name", name).replace("qua", quantity).replace("amo",Double.toString(billamount))
    			.replace("ra",rate).replace("ta",tax);
    	jdbc.execute(sql);
    	return "bills";
    }
    
    @RequestMapping("/gen")
    public String generate(HttpServletRequest req, HttpServletResponse res) {
    	String username=req.getParameter("username");
		String password=req.getParameter("password");
		String res1="";
		/*String sql="select username,password from admin";
		jdbc.execute(sql);*/
		if(username.equals("emp") && password.equals("emp"))
		{
			System.out.println("Welcome "+username);
			String sql="select * from employee_details ";
	    	jdbc.execute(sql);
	    	
			res1="new bill";
		}
		else
		{
			System.out.print("Invalid login!!!");
			res1="groceryhome";
			
		
		}
		
    	
    	return res1;
    }
    
    @RequestMapping("/finalbill")
    public String finals() {
    	String QueryString = "select Amount from gst.bills";
    	
    	return "new bill";
    }
}
