<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h2 style="text-align:center;">This feed contains the most recent CVE cyber vulnerabilities published within the National Vulnerability Database.</h2>
<table id="datatable" class="display" style="width:100%;">
  <thead>
    <tr>
      <th>Title</th>
      <th>Link</th>
      <th>Description</th>
      <th>Date</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="feedMessage" items="${feedMessages}">
    <tr>
      <td>${feedMessage.title}</td>
      <td><a href="${feedMessage.link}" target="_blank">${feedMessage.link}</a></td>
      <td>${feedMessage.description}</td>
      <td>${feedMessage.date}</td>
    </tr>
    </c:forEach>
  </tbody>
  <tfoot>
    <tr>
      <th>Title</th>
      <th>Link</th>
      <th>Description</th>
      <th>Date</th>
    </tr>
  </tfoot>
</table>