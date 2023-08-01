package product.controller;

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
 * Servlet implementation class ListController
 */
@WebServlet("/seller/List")
public class ListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Service service = new ServiceImpl();
		
		
		HttpSession session = request.getSession(false);
		String s_id = (String) session.getAttribute("id");
		String std = request.getParameter("sort");
		ArrayList<Product> products = service.getProductsById(s_id,std);

		if (std==null) {
			products= service.getProductsById(s_id,"num");
		}
		else if(std.equals("num")) {
			products= service.getProductsById(s_id,"num");
		}else if (std.equals("price")) {
			products= service.getProductsById(s_id,"price");
		}else if (std.equals("price desc")) {
			products= service.getProductsById(s_id,"price desc");
		}else {
			products= service.getProductsById(s_id,"num");
		}
		
		request.setAttribute("products", products);
		String path = "/view/seller/list.jsp";
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
