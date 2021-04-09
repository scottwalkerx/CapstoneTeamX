<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Product Details</title>
</head>
<body>
<p>&nbsp;</p>
<!-- THIS PAGE IS DESIGNED TO PRESENT A SINGLE PRODUCT'S DETAILS-->
<form action="PRODUCT.jsp" method="post"><!-- forward this to controller --> <input type="button" value="BACK" /> <p><input type="button" value="LOGOUT" /><p> <input type="button" value="HOME" />
<div align="center">
<h1><em><span style="color: #0000ff;"><span style="color: #008000;">(Song Name) </span>🎶</span></em></h1>
<table style="width: 50%; height: 103px;">
<tbody>
<tr style="height: 21px;">

<tr style="height: 21px;">
<td style="width: 79px; height: 21px;" align="center">Artist</td>
<td style="width: 153px; height: 21px;"><input name="artist" type="text" /></td>
</tr>
<tr style="height: 21px;">
<td style="width: 79px; height: 21px;" align="center">Album</td>
<td style="width: 153px; height: 21px;"><input name="albumTitle" type="text" /></td>
</tr>
  <tr style="height: 21px;">
<td style="width: 79px; height: 21px;" align="center">Genre</td>
<td style="width: 153px; height: 21px;"><input max="30" min="1" name="price" step="0.01" type="number"  /></td>
</tr>
<tr style="height: 21px;">
<td style="width: 79px; height: 21px;" align="center">Price</td>
<td style="width: 153px; height: 21px;"><input max="30" min="1" name="price" step="0.01" type="number" /></td>
</tr>

</tr>
</tbody>
</table>

</form>
<p>&nbsp;</p>
</form>