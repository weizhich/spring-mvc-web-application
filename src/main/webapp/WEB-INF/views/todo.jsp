<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
	<H1>Add to do </H1>
	<form:form method="post" commandName="todo">
		<form:hidden path="id"/>
		<fieldset class="form-group">
			<form:label path="description">Description</form:label>
			<form:input path="description" type="text" class="form-control" required="required"/>
			<form:errors path="description" cssClass="text-warning"/>
		</fieldset>
		
		<fieldset class="form-group">
			<form:label path="targetDate">Target Date</form:label>
			<form:input path="targetDate" type="text" class="form-control" required="required"/>
			<form:errors path="targetDate" cssClass="text-warning"/>
		</fieldset>
		
		<input type="submit" value="Submit" class="btn btn-success"/>
	</form:form>
</div>
<%@ include file="common/footer.jspf"%>
</html>