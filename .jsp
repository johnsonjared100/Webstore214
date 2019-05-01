<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="webstore.Item" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
	<% Item i = new Item();
	   Item.inventoryCreated();
	   ArrayList<Item> items = new ArrayList<Item>();
		items.add(new Item("tv", 210.87, 13200));

		items.add(new Item("shirt", 15.99, 15877));

		items.add(new Item("iPad", 180.99, 12345));
	  	int value = 0;
	  	String a,b = "Jai";
	%>
	<!--c.searchSite(request.getParameter("SearchBox"));-->
	<meta charset = "ISO-8859-1">
	<meta name="description" content="This is the group project">
	<title>Web Store 214</title>
	</head>
	<body>
		<h1>Welcome to the WebStore</h1>
		<hr/>
		<div class="topnav">
			<a class="active" href="#home">Home</a>
			<a href="#about"> Product Catalog</a>
			<a href="#WishList"> Wish List</a>
			<a href="#cart"> Shopping Cart</a>
			<a href="#account"> Account Login </a>
			<input type="text" name = "SearchBox" placeholder="Search..">
			<input type = "button" name="Search"    />
			<hr/>
			<button name="SorterId" value = "OK" type="button" onclick=alert(<%= i %>)>SorterId</button>
			<button name="SearchFunction" value = "OK" type="button" onclick=alert(<% i.seachname(request.getParameter("Search")); %>)>SearchFunction</button>
			 <form action = "main.jsp" method = "GET">
        	 UserName: <input type = "text" name = "UserName"/>
         	<br />
         	Password: <input type = "text" name = "Password" />
		 	</form>
		 	
		 	
		 	
			<button name="CreateAccount" value = "1" type="button" onclick=alert(<%i.CreateAccount(request.getParameter("Username"),request.getParameter("Password")); %>)>CreateAccount</button>
			<%
			String username = "UserName";
			if(request.getParameter("CreateAccount") == "1") {
					username = request.getParameter(UserName);
			}
		 	%>
		 	<table><tr><td>Test: <%=username%></table>
			<button name="WishList" value = "OK" type="button" onclick=alert(<%i.addToWishList(value); %>)>WishList</button>
			<button name="PrintName" value = "OK" type="button" value="true"onclick=alert(<%i.getName(); %>)>GetName</button>
			<button name="SorterName" value = "OK" type="button" onclick=alert(<% i.sorterName(); %>)>SorterName</button>
			<button name="SorterId" value = "OK" type="button" onclick=alert(<% i.sorterPrice(); %>)>SorterPrice</button>
			
			<button name="AddWishList" value = "OK" type="button" onclick=alert(<% i.addToWishList(value); %>)>AddtoWishList</button>
			
			<img src="https://www.euronics.ee/UserFiles/Products/Images/162386-samsung-uhd-tv-mu6172-3.png" width="128" height="128" alt="TV">
			<input type="radio" name="Tv" value="1"/>
			<img src ="http://cdn2.expertreviews.co.uk/sites/expertreviews/files/2015/09/ipad-mini-4-201509-gallery5.jpg" width="128" height="128" alt="Ipad">
			<input type="radio" name="Ipad" value="1"/>
			<img src="https://cdn.medisave.co.uk/media/catalog/product/cache/1/image/1000x/9df78eab33525d08d6e5fb8d27136e95/n/m/nm101_ab_front.jpg" width="128" height="128" alt ="Shirt">
			<input type="radio" name="Shirt" value="1"/>
			
		</div>
		
		
		
	</body>
</html>
