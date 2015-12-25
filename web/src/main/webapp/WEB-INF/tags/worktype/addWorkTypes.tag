<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %><%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %><%@ attribute name="workTypeGroup" required="true" type="ua.ksstroy.logic.worktype.WorkTypeGroupData" %><spring:url value="/resources/img/done_btn.png" var="done_btn"/><div class="controller">    <div class="controller_name">Add WorkType</div>    <form action="${pageContext.request.contextPath}/workType/addWorkType" method="post">        <input type="hidden" name="parentId" value="${workTypeGroup.id}">        <input type="hidden" name="projectId" value="${projectId}">        <table>            <tbody>            <tr>                <td>name:</td>                <td><input type="text" name="name" placeholder="Enter name"></td>            </tr>            <tr>                <td>description:</td>                <td><input type="text" name="description" placeholder="Enter description"></td>            </tr>            <tr>                <td>measure:</td>                <td><input type="text" name="measure" placeholder="Enter measure"></td>            </tr>            <tr>                <td>unitPrice:</td>                <td><input type="text" name="unitPrice" placeholder="Enter unitPrice"></td>            </tr>            </tbody>        </table>        <input class="accepth_changes_btn" type="image" src="${done_btn}">    </form></div>