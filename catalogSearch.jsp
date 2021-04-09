<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>inventorySearch</title>
</head>
<body>
<!-- THIS PAGE IS DESIGNED FOR THE USER TO SEARCH THE DB --->
<h1><span style="color: #0000ff;">Search our Catalog 🎶</span></h1>
<form method="post" action="search">

<table style="width: 50%; height: 103px;">
<tbody>
<tr style="height: 21px;">
<td style="width: 79px; height: 21px;" align="center">Song Title</td>
<td style="width: 153px; height: 21px;"><input name="songTitle" type="text" placeholder="Enter song name" /></td>
</tr>
<tr style="height: 21px;">
<td style="width: 79px; height: 21px;" align="center">Artist</td>
<td style="width: 153px; height: 21px;"><input name="artist" type="text" placeholder="Enter artist name" /></td>
</tr>
<tr style="height: 21px;">
<td style="width: 79px; height: 21px;" align="center">Album</td>
<td style="width: 153px; height: 21px;"><input name="albumTitle" type="text" placeholder="Enter album name" /></td>
</tr>
<tr style="height: 21px;">
<td style="width: 79px; height: 21px;" align="center">Price</td>
<td style="width: 153px; height: 21px;"><input max="30" min="1" name="price" step="0.01" type="number" placeholder  ="$$$" /></td>
</tr>
<tr style="height: 19px;">
<td class="select" style="height: 19px;" align="center">Genre</td>
<td style="height: 19px;" align="center"><select>
<option value="pop">Pop</option>
<option value="hiphop">Hip-Hop</option>
<option value="rnb">RnB</option>
<option value="country">Country</option>
</select></td>
</tr>
</tbody>
</table>
<input type="submit" value="Search" />
</form>
</body>
</html>