package kr.ac.kopo.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import kr.ac.kopo.board.dao.BoardDAO;
import kr.ac.kopo.board.service.BoardService;

/**
 * Application Lifecycle Listener implementation class ContextListener
 *
 */
@WebListener
public class ContextListener implements ServletContextListener {


	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent event)  { 
    	System.out.println("리스너 시작...");
    	
    	ServletContext sc = event.getServletContext();
    	
    	BoardDAO boardDao = new BoardDAO();
    	BoardService boardService = new BoardService(boardDao);
    	
    	sc.setAttribute("boardDao", boardDao);
    	sc.setAttribute("boardService", boardService);
    	
    }
	
}
