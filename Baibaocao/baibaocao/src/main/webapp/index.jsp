
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%@page import="abc.database" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SHOP KFC</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">    <link rel="stylesheet" href="css.css">
    <style>
        body{
            width: 1000px;
            margin: 0 auto;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            font-family: sans-serif;
            font-size: 1rem;
        }
        #head{
            padding-left: 40px;
			
            /* margin-left: 20px;     */
            height: 100px;
            display: flex;
            align-items: center;
            width: 960px;
            line-height: normal;
            position: relative;
            background-color: white;
        }
        #head a{
        	font-size: 17px;
            color: black;
            text-decoration: none;
            display: inline-block;
            text-align: center;
            font-weight: bold;
            padding: 10px;
            padding-left: 15px;
        }
        #head a:hover{
            background-color: lightcoral;
            border-radius: 20px;
        }
        #head img{
            margin-left: 20px;
        }
        .accounts {
            background-image: url(./img/account_circle_FILL0_wght400_GRAD0_opsz48.png);
            width: 50px;
            height: 50px ;
            margin-left: 200px;
            cursor: pointer;
        }
        .shopping{
            background-image: url(./img/shopping_cart_FILL0_wght400_GRAD0_opsz48.png);
            width: 50px;
            height: 50px ;
            margin-left: 30px;
            cursor: pointer;
        }
        .menu{
            background-image: url(./img/menu_FILL0_wght400_GRAD0_opsz48.png);
            width: 50px;
            height: 50px ;
            margin-left: 30px;
            cursor: pointer;
        }

        .left{
            float: left;
            background-color: #CC0000;
            color: black;

            width: 240px;
            height: 1200px;

        }
        .left h4
        {
            color: white;
            text-transform: uppercase;
            text-align: center;
            margin-top: 10px;
            text-decoration: none;
        }
        .left ul li{
            color: black;
            line-height: 50px;
            text-decoration: none;
            font-weight: bold;
            list-style: url(img/fried-chick.png);
            font-weight: normal;
        }

        .left ul li a{
            text-decoration: none;
            padding-left: 10px;
            color: aquamarine;
        }
        .left ul a:hover{
            color: gold;
            box-shadow: 5px 15px 15px cyan;
            border-radius: 30%;
        }
        .center
        {
            float: right;
            background-color: moccasin;
            width: 1000px;
            height: 1200px;
        }
        .sanpham div{
            width: 200px;
            color: black;
            text-align: center;
            padding: 5px;
            float:left;
            margin: 0px 20px;
            border-radius: 5px;
        }
        .sanpham div:hover
        {
            box-shadow: 10px 5px 5px white;
        }
        .center h4{
            color: black;
            text-transform: uppercase;
            padding-left: 10px;
            font-size: 20px;
        }
        #footer
        {
            float: left;
            background-color: #333333 ;
            height: 350px;
            width: 1000px;
            line-height: 10px;
            color: white;
        }
        .chinhtrai{
        	float: left;
        	text-align: center;
        	list-style: none;
        	padding-left: 115px;
        	line-height: 25px;
        }
        .chinhtrai a{
        	color:white;
        	
        }
        .chinhphai{
        	float: left;
        	
        	text-align: center;
        	list-style: none;
        	padding-left: 400px;
        	line-height: 25px;
        }
        .chinhphai a{
        	color:white;
        }
        #footer div a
        {
            color: white;
            text-decoration:underline;
            font-weight: bold;
            width:120px;
            display: inline block;
            padding-top: 10px;
        }
        #noidung{
            float: left;
        }
        .noidungg{
            float: right;
        }
        #footer-copyright{
            clear: left;
            text-align: center;
            color: red;
            line-height: 25px;
        }
       
        .canchinh{
            position: fixed;
            top: 0;
            padding: 0;
        }
        .slideshow-container {
            padding-top: 35px;
            max-width: 1000px;
            position: relative;
            background-color: white;

        }
        .mySlides {
            display: inline-block;
        }
        .dot {
            cursor:pointer;
            height: 10px;
            width: 10px;
            margin: 0 2px;
            background-color: #bbb;
            border-radius: 50%;
            display: inline-block;
            transition: background-color 0.6s ease;
        }
        .fade {
            -webkit-animation-name: fade;
            -webkit-animation-duration: 3s;
            animation-name: fade;
            animation-duration: 3s;
        }
        .banner{
            background-color: yellow   ;
            padding-top: 70px;
            width: 1000px;

        }

        @-webkit-keyframes fade {
            from {opacity: .4}
            to {opacity: 1}
        }

        @keyframes fade {
            from {opacity: .4}
            to {opacity: 1}
        }
        .sp{
		height: 300px;
		display: flex;
		flex-direction: row;
	}
	.img{
		width: 280px;
		height: 280px;
		border-radius: 10px;
    </style>
    </head>
    <body>
       <div class="canchinh">
            <div id="head" style="color: white;">
                <img width="60" height="60" src="https://kfcvn-static.cognizantorderserv.com/images/web/kfc-logo.svg?v=5.0">
                <a href="">THỰC ĐƠN</a>
                <a href="">KHUYẾN MÃI</a>
                <a href="">HỆ THỐNG NHÀ HÀNG</a>
                <i class="accounts"></i>
                <i class="shopping"></i>
                <i class="menu"></i>
            </div>
       </div>

       <div class="banner">
        <div class="slideshow-container">
            <div class="mySlides fade">
              <img src="./img/BTTKP123.webp" style="width:100%">
            </div>

            <div class="mySlides fade">
              <img src="./img/Combo79.webp" style="width:100%">
            </div>

            <div class="mySlides fade">
              <img src="./img/khoaimonkimsa.webp" style="width:100%">
            </div>
          </div>
          <br>

          <div style="text-align:center">
            <span class="dot" onclick="currentSlide(0)"></span>
            <span class="dot" onclick="currentSlide(1)"></span>
            <span class="dot" onclick="currentSlide(2)"></span>
          </div>
        <script>
          //khai báo biến slideIndex đại diện cho slide hiện tại
          var slideIndex;
          var xacnhan;
          // KHai bào hàm hiển thị slide
          function showSlides() {
              var i;
              var slides = document.getElementsByClassName("mySlides");
              var dots = document.getElementsByClassName("dot");
              for (i = 0; i < slides.length; i++) {
                 slides[i].style.display = "none";
              }
              for (i = 0; i < dots.length; i++) {
                  dots[i].className = dots[i].className.replace(" active", "");
              }

              slides[slideIndex].style.display = "block";
              dots[slideIndex].className += " active";
              //chuyển đến slide tiếp theo
              slideIndex++;
              //nếu đang ở slide cuối cùng thì chuyển về slide đầu
              if (slideIndex > slides.length - 1) {
                slideIndex = 0
              }
              //tự động chuyển đổi slide sau 5s
              setTimeout(showSlides, 3000);
          }
          //mặc định hiển thị slide đầu tiên
          showSlides(slideIndex = 0);


          function currentSlide(n) {
            showSlides(slideIndex = n);
          }
        </script>
       </div>

        <div class="center">
            <div class="left">
                <h4 style=" font-family: 'Courier New', Courier, monospace; text-align: center;">DANH MỤC MÓN ĂN</h4>
                <ul>
                    <li><a href="">Món Mới</a></li>
                    <li><a href="">Combo 1 Người    </a></li>
                    <li><a href="">Combo Nhóm</a></li>
                    <li><a href="">Gà Rán - Gà Quay</a></li>
                    <li><a href="">Burger - Cơm - Mì Ý</a></li>
                    <li><a href="">Thức Uống</a></li>
                </ul>
                <hr>
                <ul>
                	<li><a href="">Sản phẩm</a></li>               
               		<li><a href="ql_sanpham.jsp">Quản lí sản phẩm</a></li>
                </ul>
            </div>
            <!-- <img src="./img/d8f4ebcfeeab21f578ba.jpg"alt="" width="800px"> -->
            <h4>COMBO MÓN ĂN</h4>
	           
	           	<%
					Connection connect = database.connect();
					Statement st = connect.createStatement();
					String getAll = "select * from sanphamga";
					ResultSet rs = st.executeQuery(getAll);
					
					while(rs.next()){
				%>
					<div class="sanpham">
						<div>
						<img src ="img/<%= rs.getString("urlhinhanh") %>" width="200px" height = "200px">
							<p><%=rs.getString("tensp") %></p>
							<p><%=rs.getString("giasp") %></p>
							<a href="">Xem Chi tiet</a>
							<a href="">Mua Hang</a>
						</div>
					</div>
					
					<%	}
						st.close();
						connect.close();
					%>
        </div>
        <div id="footer">            
                
                <ul class="chinhtrai">
                		<li><h3>Về KFC</h3></li>
                    	<li><a href="#">Tin tức KFC</a></li>
                    	<li><a href="#">Tin tức khuyến mãi</a></li>
                    	<li><a href="#">Liên hệ cho KFC</a></li>
                    	<li><a href="#">Câu chuyện về chúng tôi</a></li>
		        </ul>
		        <ul class="chinhphai">
		        		<li><h3>Chính sách</h3></li>
		        		<li><a href="#">Theo dõi đơn hàng</a></li>
		            	<li><a href="#">Chính sách hoạt động</a></li>
		            	<li><a href="#">Chính sách và tuyển dụng</a></li>
		            	<li><a href="#">Chính sách vào bảo mật thông tin</a></li>
		        </ul>
		        <div id="footer-copyright">
                    <p>
                        Copyright <span>&reg;</span> 2022, Design by <a href="https://itc.edu.vn/">ITC </a><span>, Nguyễn Trọng Phúc</span>
                    </p>
                    <p>
                        Copyright <span>&reg;</span> 2022, Design by <a href="https://itc.edu.vn/">ITC </a><span>, Nguyễn Hữu Phong </span>
                    </p>
                    <p>
                        Copyright <span>&reg;</span> 2022, Design by <a href="https://itc.edu.vn/">ITC </a><span>, Đặng Quốc Huy</span>
                    </p>
                    
                    <br>
                </div>
        </div>
    </body>
</html>
