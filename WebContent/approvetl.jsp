<html>
<body bgcolor="#CD5C5C">
	<form action="approvetl.html" method="post">

		<table>
			<tr>
				<td>TeamLeader Selection</td>
				
			</tr>
			<tr>
				<td><select name="tl">
						<option value="Lead1">Lead1</option>
						<option value="Lead2">Lead2</option>
						<option value="Lead3">Lead3</option>
				</select>
					
			</tr>
			<tr>
				<td>Enter Employeeid:</td>
				<td><input type="text" name="user_role_id" required /></td>
			</tr>
			<tr>
				<td>Request status:</td>
				<td><input type="text" name="requestStatus"/></td>
			</tr>
			<tr>
				<td>Add Comment:</td>
				<td><input type="text" name="comment" /></td>
			</tr>
		<tr>
				<td><input type="submit" value="APPROVE" /></td>
			</tr>
		</table>
	</form>
</body>
</html>