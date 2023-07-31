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
			// request,占쎈솁占쎌뵬占쏙옙占쎌삢野껋럥以�,占쎌뒠占쎌쎗,占쎌뵥�굜遺얜뎃占쏙옙占쎌뿯,餓λ쵎�궗占쎈솁占쎌뵬筌뤿굞肉� 占쏙옙占쎈립 疫꿸퀡�궚 占쎌젟筌�占�
			multi = new MultipartRequest(request, uploadPath, maxSize, "utf-8", new DefaultFileRenamePolicy());
			p.setName(multi.getParameter("name"));
			p.setQuantity(Integer.parseInt(multi.getParameter("quantity")));
			p.setPrice(Integer.parseInt(multi.getParameter("price")));
			p.setContent(multi.getParameter("content"));
			// 占쎌읈占쎈꽊占쎈립 占쎌읈筌ｏ옙 占쎈솁占쎌뵬占쎌뵠�뵳袁⑤굶占쎌뱽 揶쏉옙占쎌죬占쎌긾
			Enumeration files = multi.getFileNames();

			while (files.hasMoreElements()) {
				// form 占쎄묶域밸챷肉됵옙苑� <input type="file" name="占쎈연疫꿸퀣肉� 筌욑옙占쎌젟占쎈립 占쎌뵠�뵳占�" />占쎌뱽 揶쏉옙占쎌죬占쎌궔占쎈뼄.
				String file1 = (String) files.nextElement();// 占쎈솁占쎌뵬 input占쎈퓠 筌욑옙占쎌젟占쎈립 占쎌뵠�뵳袁⑹뱽 揶쏉옙占쎌죬占쎌긾
				// 域밸챷肉� 占쎈퉸占쎈뼣占쎈릭占쎈뮉 占쎈뼄占쎌삺 占쎈솁占쎌뵬 占쎌뵠�뵳袁⑹뱽 揶쏉옙占쎌죬占쎌긾
				img = multi.getOriginalFileName(file1);
				//占쎈솁占쎌뵬占쎈씜嚥≪뮆諭�
				File file = multi.getFile(file1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		p.setImg("/shop_img/" + img);
		service.add(p);
		response.sendRedirect("/jsp_prj/seller/List");
		
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
