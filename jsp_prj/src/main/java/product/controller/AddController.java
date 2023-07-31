package product.controller;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import model.Product;
import product.service.Service;
import product.service.ServiceImpl;

/**
 * Servlet implementation class AddController
 */
@WebServlet("/seller/Add")
public class AddController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Service service = new ServiceImpl();

		HttpSession session = request.getSession(false);
		String s_id = (String) session.getAttribute("id");
		Product p = new Product();
		p.setS_id(s_id);
		p.setNum(service.makeNum());
		
		String img = "";
		
		int maxSize =1024 *1024 *10;
		MultipartRequest multi = null;
		//String uploadPath = "C:\\Web\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\webapps\\shop_img";
		String uploadPath = "C:\\eclipseworkspace\\web\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\webapps\\shop_img";
		try {
			// request,�뙆�씪���옣寃쎈줈,�슜�웾,�씤肄붾뵫���엯,以묐났�뙆�씪紐낆뿉 ���븳 湲곕낯 �젙梨�
			multi = new MultipartRequest(request, uploadPath, maxSize, "utf-8", new DefaultFileRenamePolicy());
			p.setName(multi.getParameter("name"));
			p.setQuantity(Integer.parseInt(multi.getParameter("quantity")));
			p.setPrice(Integer.parseInt(multi.getParameter("price")));
			p.setContent(multi.getParameter("content"));
			// �쟾�넚�븳 �쟾泥� �뙆�씪�씠由꾨뱾�쓣 媛��졇�샂
			Enumeration files = multi.getFileNames();

			while (files.hasMoreElements()) {
				// form �깭洹몄뿉�꽌 <input type="file" name="�뿬湲곗뿉 吏��젙�븳 �씠由�" />�쓣 媛��졇�삩�떎.
				String file1 = (String) files.nextElement();// �뙆�씪 input�뿉 吏��젙�븳 �씠由꾩쓣 媛��졇�샂
				// 洹몄뿉 �빐�떦�븯�뒗 �떎�옱 �뙆�씪 �씠由꾩쓣 媛��졇�샂
				img = multi.getOriginalFileName(file1);
				//�뙆�씪�뾽濡쒕뱶
				File file = multi.getFile(file1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		p.setImg("/shop_img/" + img);
		service.add(p);
		response.sendRedirect("/shop2/seller/List");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
