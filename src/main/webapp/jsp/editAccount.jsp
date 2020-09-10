<%--
  Created by IntelliJ IDEA.
  User: Дарина
  Date: 10.09.2020
  Time: 11:59
  To change this template use File | Settings | File Templates.
--%>
<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%!private String pageJspName="jsp/editAccount.jsp";%>
<html lang="en">

<%-- HEAD --%>
<%@ include file="/WEB-INF/jspf/head.jspf" %>
<%-- HEAD --%>

<body>

<%-- MAIN_MENU --%>
<%@ include file="/WEB-INF/jspf/mainMenu.jspf"%>
<%-- MAIN_MENU --%>


<main>
    <div class="container-fluid">
        <section class="text-center">
            <h3>EDIT PERSONAL INFORMATION</h3>
            <section class="table mb-lg-2">

                        <form id="editAccount_form" action="controller" method="post">
                <%--===========================================================================
                Hidden field. In the query it will act as command=login.
                The purpose of this to define the command name, which have to be executed
                after you submit current form.
                ===========================================================================--%>
                    <input type="hidden" name="command" value="editAccount"/>
                    <fieldset>
                        <label title="First name">
                            <input name="first name" value="${sessionScope.sessionUser.getFirstName()}" required/>
                        </label>
                    </fieldset>
                    <fieldset>
                        <label title="Last name">
                            <input name="last name" required/>
                        </label>
                    </fieldset>
                    <fieldset>
                        <label for="country">Country</label>
                        <select id="country" name="country" required>
                            <option value="Ukraine">Ukraine</option>
                            <option value="Great Britain">Great Britain</option>
                        </select>
                    </fieldset>
                    <fieldset>
                        <label title="Date of Birth">
                            <input name="birthday" type="date" required/>
                        </label>
                    </fieldset>
                    <fieldset>
                        <!--це заглушка для логіна, бо логін має бути унікальним, а емейли унікальні-->
                        <legend>Email</legend>
                        <label title="Email">
                            <input type="email" name="email" required/>
                        </label>
                    </fieldset>
                    <fieldset>
                        <label title="Password">
                            <input type="password" name="password1" required/>
                            <input type="password" name="password2" oninput="equalPasswords(password1, password2)" required/>
                        </label>
                    </fieldset>
                    <fieldset>
                        <label title="Phone number">
                            <input type="tel" name="telephone" required/>
                        </label>
                        <!--pattern="+[0-9]{5}[0-9]{3}-[0-9]{2}-[0-9]{2}" required/>-->
                    </fieldset>

                    <input type="reset">
                    <input type="submit" value="Save changes" >
                        </form>
            </section>
        </section>
    </div>
</main>
</body>
</html>
