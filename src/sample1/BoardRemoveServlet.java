package sample1;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BoardRemoveServlet
 */
@WebServlet("/sample1/remove")
public class BoardRemoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardRemoveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] indexStr = request.getParameterValues("removeIndex");
		int[] index = new int[indexStr.length];
		
		for (int i = 0; i < indexStr.length; i++) {
			index[i] = Integer.parseInt(indexStr[i]);
		}
		
		
		Arrays.sort(index);
		int cnt = 0;
		
		ServletContext application = request.getServletContext();
		List<Board> list = (List<Board>) application.getAttribute("boards");

		for (int i = 0; i < index.length; i++) {
			list.remove(index[i] - cnt);
			cnt++;
		}
		
		response.sendRedirect(request.getContextPath()+"/sample1/list");
	}

}



