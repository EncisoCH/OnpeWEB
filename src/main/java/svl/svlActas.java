package svl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet implementation class svlActas
 */
public class svlActas extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public svlActas() {
    	super();
    }
    
    
    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
		dao.OnpeDAO daoOnpe = new dao.OnpeDAO();
		
		String id= request.getParameter("id");
		String vID = null, numMesa = null;
		Object data = null;
		
		if ( id != null ) {
			String aID[] = id.split(",");
			int tID = aID.length;
			boolean bID = aID[0].equals("id");
			
			numMesa = "Número de Mesa : " + aID[0];
			if( tID == 1 ) vID = bID ? "id" : "data";
			if( tID == 1 ) data = daoOnpe.getGrupoVotacion( bID ? "id" : "data" );
			
		}
			session.setAttribute("id", id);
			session.setAttribute("data", data);
			session.setAttribute("numMesa", numMesa);
			
			session.setAttribute("vID", vID);
			
			response.sendRedirect("ActasNum.jsp");
		
    }

	
}
