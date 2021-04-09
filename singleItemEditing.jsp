<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Track Revision</title>
</head>
<body>
<!-- THIS PAGE IS DESIGNED FOR THE ADMIN TO UPDATE THE TRACK DETAILS --->
 <form action="edit.jsp" method="post"><!-- forward this to controller --> <input type="button" value="BACK" /> <input type="button" value="HOME" /> <input type="button" value="LOGOUT" /> 
<div align="center">
<h1><span style="color: #0000ff;"><em><span style="color: #800080;"> Track Revision  </span>🎶</em></span></h1>
<table style="width: 50%; height: 103px;">
<tbody>
<tr style="height: 21px;">
<td style="width: 79px; height: 21px;" align="center">Song Title</td>
<td style="width: 153px; height: 21px;"><input name="songTitle" type="text" placeholder="" /></td>
</tr>
<tr style="height: 21px;">
<td style="width: 79px; height: 21px;" align="center">Artist</td>
<td style="width: 153px; height: 21px;"><input name="artist" type="text" /></td>
</tr>
<tr style="height: 21px;">
<td style="width: 79px; height: 21px;" align="center">Album</td>
<td style="width: 153px; height: 21px;"><input name="albumTitle" type="text" /></td>
</tr>
<tr style="height: 21px;">
<td style="width: 79px; height: 21px;" align="center">Price</td>
<td style="width: 153px; height: 21px;"><input max="30" min="1" name="price" step="0.01" type="number" placeholder="$$$" /></td>
</tr>
<tr style="height: 19px;">
<td class="select" style="height: 19px;" align="center">Genre</td>
<td style="height: 19px;" align="center"><select>
<option value="select">select</option>
<option value="select">genre1</option>
<option value="select">genre2</option>
<option value="select">genre3</option>
</select></td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<input type="submit" value="UPDATE" /></div>
</form>