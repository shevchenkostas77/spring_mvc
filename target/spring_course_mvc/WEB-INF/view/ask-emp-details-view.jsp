<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<body>

<h2>Dear Employee, Please enter your details</h2>

<br>
<br>

<form:form action="showDetails" modelAttribute="employee">

    Name <form:input path="name"
                     placeholder="Write your name"/>
    <form:errors path="name"/>
    <br><br>

    Surname <form:input path="surname"
                        placeholder="Write your surname"/>
    <form:errors path="surname"/>
    <br><br>

    Salary <form:input path="salary"/>
    <br><br>

    Department <form:select path="department">
    <form:options items="${employee.deparments}"/>
    </form:select>
    <br><br>

    Which car do you want?
    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
    <br><br>

    Foreign Language (s)
    <form:checkboxes path="languages" items="${employee.languageList}"/>
    <br><br>

<%--    Foreign Language (s)--%>
<%--    EN <form:checkbox path="languages" value="English"/>--%>
<%--    DE <form:checkbox path="languages" value="Deutch"/>--%>
<%--    FR <form:checkbox path="languages" value="French"/>--%>
<%--    <br><br>--%>

<%--    Which car do you want?--%>
<%--     BMW <form:radiobutton path="carBrand" value="BMW"/>--%>
<%--     Audi <form:radiobutton path="carBrand" value="Audi"/>--%>
<%--     Mercedes-Benz <form:radiobutton path="carBrand" value="Mercedes-Benz"/>--%>
<%--    <br><br>--%>

<%--    <form:option value="Information Technology" label="IT"/>--%>
<%--    <form:option value="Human Resources" label="HR"/>--%>
<%--    <form:option value="Sales" label="Sales"/>--%>

    <input type="submit" value="OK">

</form:form>

<%--<form action="showDetails" method="get">--%>
<%--    <input type="text" name="employeeName"--%>
<%--           placeholder="Write your name"/>--%>

<%--    <input type="submit"/>--%>

</form>

</body>

</html>