<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>지점 위치</title>
	<jsp:include page="/jsp/include/link.jsp"></jsp:include>
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp"></jsp:include>
	</header>
	
	<section>
		<div class="container-fluid page-header py-5 my-3 mt-0 wow fadeIn" data-wow-delay="0.1s">
	        <div class="container text-center">
	            <h1 class="display-3 text-white animated slideInDown mb-4">지점 찾아오기</h1>
	        </div>
	    </div>
	
		
		
		<div class="container-xxl py-6">
	        <div class="container">
	            <div class="row g-5">
	                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
	                    <div id="map" style="width:500px;height:570px;"></div>	
	                </div>
	                <div class="col-lg-6 wow fadeInUp text-center" data-wow-delay="0.5s">
	                    <h1 class="display-6 mb-4">조심히 찾아오세요</h1>
	                </div>
	            </div>
	        </div>
	    </div>
	</section>
	
	<footer>
    	<jsp:include page="/jsp/include/footer.jsp"></jsp:include>
    </footer>

    <!-- JavaScript Libraries -->
    <jsp:include page="/jsp/include/script.jsp"></jsp:include>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a184e8fc6797fbd7d0f23a1eac0e9da8"></script>
    <script type="text/javascript">
	    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = { 
	    		center: new kakao.maps.LatLng(37.4773405, 126.862585), //지도의 중심좌표.
		        level: 3 // 지도의 확대 레벨
		    };
		
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		
		// 마커가 표시될 위치입니다 
		var markerPosition  = new kakao.maps.LatLng(37.4773405, 126.862585); 
		
		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});
		
		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);	
    </script>
</body>
</html>