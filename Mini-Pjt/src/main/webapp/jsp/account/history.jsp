<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>거래 내역</title>
	<jsp:include page="/jsp/include/link.jsp"></jsp:include>
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp"></jsp:include>
	</header>
	
	
	<section>
		<div class="container-fluid page-header py-5 my-3 mt-0 wow fadeIn" data-wow-delay="0.1s">
	        <div class="container text-center">
	            <h1 class="display-3 text-white animated slideInDown mb-4">거래내역</h1>
	        </div>
	    </div>
	    
	    
    	<c:choose>
	   		<c:when test="${ not empty historyList }">
			    <table class="table table-hover mx-4 caption-top">
			    	<thead class="table-dark">
			    		<tr>
			    			<th scope="col" class="text-center">거래일시</th>
			    			<th scope="col" class="text-center">출금 계좌</th>
			    			<th scope="col" class="text-center">입금 계좌</th>
			    			<th scope="col" class="text-center">출금자</th>
			    			<th scope="col" class="text-center">거래 금액</th>
			    			<th scope="col" class="text-center">출금 후 잔액</th>
			    		</tr>
			    	</thead>
			    	<tbody>
			    		<c:forEach items="${ historyList }" var="history">
				    		<tr>
				    			<td style="width: 15%" class="text-center">${ history.regDate } ${ history.regTime }</td>
				    			<td style="width: 10%" class="text-center text-danger fw-bolder">${ history.accountNO }</td>
				    			<td style="width: 10%" class="text-center text-dark fw-bolder">${ history.opponentAcc }</td>
				    			<td style="width: 10%" class="text-center">${ history.sendName }</td>
				    			<td style="width: 10%" class="text-center text-secondary fw-bolder">${ history.amount }</td>
				    			<td style="width: 10%" class="text-center text-dark fw-bolder">${ history.sendBalance }</td>
				    		</tr>	    		
			    		</c:forEach>
			    	</tbody>
			    </table>
			    
    		</c:when>
    		<c:otherwise>
    			<div class="container text-center my-5">
    				<h1 class="my-5">
		    			${ userVO.name }님의 거래내역이 없습니다.    			
    				</h1>
    			</div>
    		</c:otherwise>
    	</c:choose>
	
	</section>
	
	
	<footer>
    	<jsp:include page="/jsp/include/footer.jsp"></jsp:include>
    </footer>

    <!-- JavaScript Libraries -->
    <jsp:include page="/jsp/include/script.jsp"></jsp:include>

</body>
</html>