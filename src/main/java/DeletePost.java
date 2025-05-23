

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Servlet implementation class DeletePost
 */
@WebServlet("/DeletePost")
public class DeletePost extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeletePost() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    int id = Integer.parseInt(request.getParameter("id"));
	    
	    myBeans.delete_content delete = new myBeans.delete_content();
	    String result = delete.deleteOne(id);
	    if (result != null && !result.isEmpty()) {
	    	switch (result) {
            	case "success":
            		String msg="刪除成功！";
            		request.setAttribute("errorMessage", msg);
            		request.getRequestDispatcher("postList.jsp").forward(request, response);
            		break;
            	default:
            		msg="刪除失敗，請稍後再試！";
            		request.setAttribute("errorMessage", msg);
            		request.getRequestDispatcher("postList.jsp").forward(request, response);
            		break;
	    		}
	    	}
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
