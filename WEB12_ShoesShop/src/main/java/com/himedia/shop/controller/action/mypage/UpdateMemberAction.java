package com.himedia.shop.controller.action.mypage;

import java.io.IOException;

import com.himedia.shop.controller.action.Action;
import com.himedia.shop.dao.MemberDao;
import com.himedia.shop.dto.MemberVO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class UpdateMemberAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 전송되는 파라미터로 회원정보를 수정

		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
		if (mvo == null) {
		    response.sendRedirect("shop.do?command=loginForm");
		}else {
			
			MemberVO mvo1 = new MemberVO();
			mvo1.setUserid(request.getParameter("userid"));
			mvo1.setPwd(request.getParameter("pwd"));
			mvo1.setName(request.getParameter("name"));
			mvo1.setEmail(request.getParameter("email"));
			mvo1.setZip_num(request.getParameter("zip_num"));
			mvo1.setAddress1(request.getParameter("address1"));
			mvo1.setAddress2(request.getParameter("address2"));
			mvo1.setPhone(request.getParameter("phone"));
			
			MemberDao mdao = MemberDao.getInstance();
			mdao.updateMember(mvo1);
			
			session.setAttribute("loginUser", mvo1);
			
			response.sendRedirect("shop.do?command=index");
		}
	}

}
