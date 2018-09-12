package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojo.Item;

/**
 * Servlet implementation class AddItemServlet
 */
@WebServlet("/add")
public class AddItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Item> items=new ArrayList<Item>();
	private int id=0;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddItemServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		double price=Double.parseDouble(request.getParameter("price"));
		int count=Integer.parseInt(request.getParameter("count"));
		String address=request.getParameter("address");
		
		Item item=new Item();
		item.setAddress(address);
		item.setCount(count);
		item.setName(name);
		item.setPrice(price);
		item.setId(++this.id);
		items.add(item);
		
		request.setAttribute("items",items);
		request.getRequestDispatcher("itemShow.jsp").forward(request, response);
		
	}

}
