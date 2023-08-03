package order.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Product;
import product.service.Service;
import product.service.ServiceImpl;

/**
 * Servlet implementation class OPListController
 */
@WebServlet("/order/list")
public class OPListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OPListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		response.setContentType("text/html; charset=EUC-KR");
		response.setCharacterEncoding("euc-kr");
		// TODO Auto-generated method stub
		Service service = new ServiceImpl();
		
		String standard = request.getParameter("sort");
		String ctg = request.getParameter("category");
		
		ArrayList<Product> products= service.getProductAll();
		if (standard==null) {
			products= service.getSortProduct("num");
			if (ctg==null) {
				products= service.getSortProduct("num");
			}else {
				products= service.getProductsByCategory(ctg);
			}
		}
		else if(standard.equals("num")) {
			products= service.getSortProduct("num");
		}else if (standard.equals("price")) {
			products= service.getSortProduct("price");
		}else if (standard.equals("price desc")) {
			products= service.getSortProduct("price desc");
		}else {
			products= service.getSortProduct("num");
		}
				
		request.setAttribute("products", products);
		String path = "/view/order/list.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(path);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
