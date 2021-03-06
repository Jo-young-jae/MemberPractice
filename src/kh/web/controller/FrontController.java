package kh.web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kh.web.beans.BoardDAO;
import kh.web.beans.BoardDTO;
import kh.web.beans.MembersDAO;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
         
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
		
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		
		String command = requestURI.substring(contextPath.length());
		MembersDAO mem_dao = new MembersDAO();
		BoardDAO board_dao = new BoardDAO();
		
		if(command.equals("/sign.do")) {
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			
			int result = mem_dao.signMember(id, pw, name, email, phone);
			request.setAttribute("sign", result);
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}else if(command.equals("/login.do")) {
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			HttpSession session = request.getSession();			
			boolean result = mem_dao.loginMember(id, pw);
			if(result) {
				session.setAttribute("loginId", id);
			}
			request.setAttribute("result", result);
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}else if(command.equals("/board.do")) {			
			List<BoardDTO> result = board_dao.selectBoard();
			request.setAttribute("result", result);
			RequestDispatcher rd = request.getRequestDispatcher("boardList.jsp");
			rd.forward(request, response);
		}else if(command.equals("/delete.do")) {
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			int result = mem_dao.deleteMember(id, pw);
			request.setAttribute("result", result);
			RequestDispatcher rd = request.getRequestDispatcher("memberout.jsp");
			rd.forward(request, response);
			
		}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
