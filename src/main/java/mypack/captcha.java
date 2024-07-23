package mypack;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.imageio.*;
import java.awt.*;
import java.io.*;
import java.util.*;
import java.awt.image.BufferedImage;


/**
 * Servlet implementation class captcha
 */
@WebServlet("/captcha")
public class captcha extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public captcha() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BufferedImage bimg=new BufferedImage(150,40,BufferedImage.TYPE_INT_RGB);
		Graphics2D g=bimg.createGraphics();
		
		g.setBackground(Color.PINK);
		g.clearRect(0,0,150,50);
		g.setColor(Color.BLUE);
		g.drawRect(0,0,148,38);
		Font f=new Font("Verdana",Font.BOLD,22);
		g.setFont(f);
		//Start: getting random code
		CodeGenerator cg=new CodeGenerator();
		String mycode=cg.getCaptchaCode();
		HttpSession ses=request.getSession();
		ses.setAttribute("code", mycode);
		//End :Getting random code
		g.setColor(Color.BLACK);
	    g.drawString(mycode,10,30);
	    g.dispose(); //TO save changes
	    response.setContentType("image/png");
		OutputStream outs=response.getOutputStream();
	    ImageIO.write(bimg, "png", outs);//printing image in page
	    
	    
	    
	    
	    
	    		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
