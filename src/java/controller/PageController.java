/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

//import static Controller.SessionController.userSession;
import java.sql.*;
import java.sql.Statement;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Administrator
 */
@Controller
@SessionAttributes("userSession")
public class PageController {

    @RequestMapping(value = {"/", "/index"})
    public ModelAndView returnIndexView() {
        // TODO Auto-generated method stub
        ModelAndView model = new ModelAndView();
        model.setViewName("index");
        return model;
    }
    
    
    
    @RequestMapping(value = {"/", "/bookingform"})
    public ModelAndView returnbookingformView() {
        // TODO Auto-generated method stub
        ModelAndView model = new ModelAndView();
        model.setViewName("bookingform");
        return model;
    }
    
    @RequestMapping(value = {"/", "/contactform"})
    public ModelAndView returncontactformView() {
        // TODO Auto-generated method stub
        ModelAndView model = new ModelAndView();
        model.setViewName("contactform");
        return model;
    }

    @RequestMapping(value = "/login")
    public ModelAndView returnViewSelect() {
        ModelAndView model = new ModelAndView();
        model.setViewName("login");
        return model;

    }
    @RequestMapping(value = "/admin")
    public ModelAndView returnAdminSelect() {
        ModelAndView model = new ModelAndView();
        model.setViewName("admin");
        return model;

    }
    
    @RequestMapping(value = "/process")
    public ModelAndView returnprocessSelect() {
        ModelAndView model = new ModelAndView();
        model.setViewName("process");
        return model;

    }
    
    @RequestMapping(value = "/driverh")
    public ModelAndView returndhSelect() {
        ModelAndView model = new ModelAndView();
        model.setViewName("driverh");
        return model;

    }
    
    @RequestMapping(value = "/delete")
    public ModelAndView returndeleteSelect() {
        ModelAndView model = new ModelAndView();
        model.setViewName("delete");
        return model;

    }
    
    @RequestMapping(value = "/booking")
    public ModelAndView returnbookingSelect() {
        ModelAndView model = new ModelAndView();
        model.setViewName("booking");
        return model;

    }
    
    @RequestMapping(value = "/contact")
    public ModelAndView returncontactSelect() {
        ModelAndView model = new ModelAndView();
        model.setViewName("contact");
        return model;

    }
    
    @RequestMapping(value = "/driver")
    public ModelAndView returndriverSelect() {
        ModelAndView model = new ModelAndView();
        model.setViewName("driver");
        return model;

    }
    
    
    
    @RequestMapping(value = "/cars")
    public ModelAndView returncarsSelect() {
        ModelAndView model = new ModelAndView();
        model.setViewName("cars");
        return model;

    }
    
     @RequestMapping(value = "/deldriver")
    public ModelAndView returndeldriverSelect() {
        ModelAndView model = new ModelAndView();
        model.setViewName("deldriver");
        return model;

    }
    
    @RequestMapping(value = "/error")
    public ModelAndView returnerror() {
        ModelAndView model = new ModelAndView();
        model.setViewName("error");
        return model;

    }
    
    
    
    @RequestMapping(value = "/authenticate", method = RequestMethod.POST)
    public String doPost(Model model, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        String username = request.getParameter("username");
        String password = request.getParameter("password");
//        if (username.isEmpty() || password.isEmpty()) {
//            System.out.println("Wrong name");
//        } else {
        try {
            Connection con = null;
            Statement st = null;
            Statement st1 = null;
            int i;
            Class.forName("com.mysql.jdbc.Driver");
            String connectionURL = "jdbc:mysql://127.0.0.1:3307/travel";

            String sql1 = "select * from login where username='" + username + "' and password='" + password + "'";
            Connection connection = DriverManager.getConnection(connectionURL, "root", "yashu");
            st = connection.createStatement();
            ResultSet rs = st.executeQuery(sql1);

            if (rs.next()) {
                //model.addAttribute("loginError", false);
                model.addAttribute("URL", "admin");
//            RequestDispatcher req = request.getRequestDispatcher("admin.jsp");
//            req.forward(request, response);
                return "redirectTo";

            } else {
                String message = "Authentication failed";
                model.addAttribute("loginError", true);
                model.addAttribute("errorMessage", message);
                return "error";
            }


//        }
        } catch (Exception e) {
            e.printStackTrace();
//                out.println(e);
        }
        return null;

    }
    
  @RequestMapping(value = "/addcontact", method = RequestMethod.POST)
    public String doaddcontact(Model model, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        
String name=request.getParameter("name");
String no=request.getParameter("no");
String message=request.getParameter("message");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/travel", "root", "yashu");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into contact(name,no,message)values('"+name+"','"+no+"','"+message+"')");
 model.addAttribute("URL", "index");
 return "redirectTo";
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
        return null;
    }

@RequestMapping(value = "/addbooking", method = RequestMethod.POST)
    public String doaddbooking(Model model, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        // TODO Auto-generated method stub
        

String from=request.getParameter("from");
String to=request.getParameter("to");
String vehicle=request.getParameter("vehicle");
String mob=request.getParameter("mob");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/travel", "root", "yashu");
Statement stt=con.createStatement();

int a=stt.executeUpdate("insert into bookings(from,to,vehicle,mob) values('"+from+"','"+to+"','"+vehicle+"','"+mob+"')");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
finally{
    model.addAttribute("URL", "index");
 return "redirectTo";
}
 
    }
}
    

