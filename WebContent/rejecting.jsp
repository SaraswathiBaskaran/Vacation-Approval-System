<html>
<body  bgcolor= #e6e6fa>
	<form action="processreject.html" method="post">

		<table>
			<tr>
				<td>Manager</td>
				
			</tr>
			<tr>
				<td><select name="mn">
						<option value="M1">M1</option>
						<option value="M2">M2</option>
						<option value="M3">M3</option>
				</select>
					
			</tr>
			<tr>
				<td>Enter Employeeid:</td>
				<td><input type="text" name="user_role_id" required /></td>
			</tr>
			<tr>
				<td>RequestStatus:</td>
				<td><input type="text" name="requestStatus" required /></td>
			</tr>
			
			<tr>
				<td>Add Comment:</td>
				<td><input type="text" name="comment" required /></td>
			</tr>
		<tr>
				<td><input type="submit" value="REJECT THE REQUEST" /></td>
			</tr>
		</table>
	</form>
</body>
</html>