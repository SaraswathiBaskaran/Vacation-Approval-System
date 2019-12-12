<html>
<body bgcolor="#A52A2A">
	<form action="assignprocess.html" method="post">

		
		<table>
			<tr>
				<td>Select A Manager</td>
				
			</tr>
			<tr>
				<td><select name="mn">
						<option value="M1">M1</option>
						<option value="M2">M2</option>
						<option value="M3">M3</option>
				</select>
					
			</tr>
			<tr>
				<td>Select A Teamleader</td>
				
			</tr>
			<tr>
				<td><select name="teamleader">
						<option value="Lead1">Lead1</option>
						<option value="Lead2">Lead2</option>
						<option value="Lead3">Lead3</option>
				</select>
					<tr>
				<td>Enter Employeeid:</td>
				<td><input type="text" name="user_role_id" required /></td>
			</tr>
				<tr>
				<td>Assign to Teamleader:</td>
				<td><input type="text" name="requestassignedtl" required /></td>
			</tr>
			</tr>
		<tr>
				<td><input type="submit" value="Assign"  /></td>
			</tr>
		</table>
	</form>
</body>
</html>
