package review.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Review;
import review.service.Service;
import review.service.ServiceImpl;

/**
 * Servlet implementation class AddReviewFormController
 */
@WebServlet("/review/add")
public class AddReviewFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddReviewFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		HttpSession session = request.getSession(false);
		String id = (String) session.getAttribute("id");
		
		String content = request.getParameter("content");
		
		Service service = new ServiceImpl();
		Review r = new Review(0, num, id, content, null);
		
		service.insert(r);
		
		response.sendRedirect("/jsp_prj/order/list");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
