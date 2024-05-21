package com.himedia.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class joinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public joinServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String gender = request.getParameter("gender");
		String content = request.getParameter("content");
		String [] items = request.getParameterValues("item");
		String job = request.getParameter("job");
		
		request.setAttribute("name", "홍길동");
		request.setAttribute("id", id);
		request.setAttribute("pwd", pwd);
		request.setAttribute("gender", gender.equals("1") ? "남자" : "여자");			
		request.setAttribute("content", content);
		
		String [] itemName = new String[items.length];
		for(int i = 0; i < items.length; i++) {
			switch(items[i]) {
				case "1": itemName[i] = "신발"; break;
				case "2": itemName[i] = "가방"; break;
				case "3": itemName[i] = "벨트"; break;
				case "4": itemName[i] = "모자"; break;
			}
		}
		request.setAttribute("item", itemName);
		
		switch(job) {
			case "1": request.setAttribute("job", "학생"); break;
			case "2": request.setAttribute("job", "컴퓨터/인터넷"); break;
			case "3": request.setAttribute("job", "언론"); break;
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("CH02/92_JSP_ServletEx.jsp");
		rd.forward(request, response);

		/*
		 * if (id.equals("scott") && pwd.equals("1234")) {
		 * 
		 * request.setAttribute("name", "홍길동"); request.setAttribute("gender",
		 * gender.equals("1") ? "남자" : "여자"); request.setAttribute("content", content);
		 * request.setAttribute("items", items); request.setAttribute("job", job);
		 * 
		 * RequestDispatcher rd =
		 * request.getRequestDispatcher("CH02/92_JSP_ServletEx.jsp");
		 * rd.forward(request, response); } else {
		 * response.sendRedirect("CH02/091_JSP_ServletEx.jsp"); }
		 */
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
