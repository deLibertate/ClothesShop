package ua.nure.danylenko.epam.web.command;

import org.apache.log4j.Logger;
import ua.nure.danylenko.epam.Path;
import ua.nure.danylenko.epam.db.entity.Item;
import ua.nure.danylenko.epam.exception.AppException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class ItemProductsCommand extends Command{
    private static final long serialVersionUID = -3071536593627692473L;

    private static final Logger WEB_LOG = Logger.getLogger("servlets");

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException, AppException {
        WEB_LOG.info("ItemProductsCommand starts");

        HttpSession session = request.getSession();
        int itemId = Integer.parseInt(request.getParameter("ItemId"));
        WEB_LOG.info("Request parameter: ItemId --> " + itemId);

        String forward = Path.PAGE_ITEM_PRODUCTS;

        List<Item> items =(List<Item>)session.getAttribute("items");
        for(Item it:items){
            if(it.getId()==itemId){
                session.setAttribute("ItemsContainer2", it.getContainer());
            }
        }
        return forward;
    }
}
