<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>오픈 뱅킹</title>
	<jsp:include page="/jsp/include/link.jsp"></jsp:include>
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp"></jsp:include>
	</header>
	
	<section>
		<div class="container-fluid page-header py-5 my-3 mt-0 wow fadeIn" data-wow-delay="0.1s">
	        <div class="container text-center">
	            <h1 class="display-3 text-white animated slideInDown mb-4">오픈 뱅킹 가입</h1>
	        </div>
	    </div>
	    <div class="container bg-light">	    
			<div class="container-fluid wow fadeIn py-3" data-wow-delay="0.1s">
				<form action="${ pageContext.request.contextPath }/openBankProcess.do" class="text-center px-4 my-5">
					<ul class="list-unstyled">
						<li>
							<ul class="list-unstyled position-relative">
								<li class="float-start">이용약관 동의(필수)</li>
								<li class="float-end">
									<input type="checkbox" name="chk">    
								</li>
							</ul>
							<textarea class="form-control my-3" rows="7" >
							제 1 장 총 칙
제1조(목적)

본 약관은 오픈뱅킹공동업무(이하 “오픈뱅킹업무”라 한다)의 제공자인 사단법인 금융결제원(이하 “결제원”이라 한다)과 오픈뱅킹업무를 이용하는 이용기관 간의 권리, 의무 및 책임사항을 명확히 규정함을 목적으로 한다.

제2조(용어의 정의)

이 약관에서 사용하는 용어의 정의는 다음과 같다.
1. “오픈뱅킹업무”란 참가기관 내부의 금융서비스를 표준화된 형태로 제공하는 오픈 API(Application Programming Interface)와 오픈뱅킹시스템을 통하여 처리하는 출금․입금, 각종 조회 등의 업무를 말한다.
2. “참가기관”이란 오픈뱅킹업무에 참가하고 있는 기관으로서 오픈뱅킹시스템을 통하여 출금․입금, 각종 조회 등의 업무 처리를 제공하는 기관을 말한다.
3. “이용기관”이란 오픈뱅킹업무 이용승인을 받아 결제원과 이용계약을 체결한 자를 말한다.
4. “오픈뱅킹시스템”이란 오픈뱅킹업무를 위하여 결제원에 설치한 중계시스템(이하 “오픈뱅킹업무 중계시스템”라 한다)과 참가기관의 처리시스템을 통신회선으로 연결하여 결제원 및 참가기관 상호간에 정보를 교환하는 시스템을 말한다.
5. “주거래기관”이란 이용기관의 지급 및 수납계좌와 수수료 납부계좌를 보유한 참가기관을 말한다.
6. “출금기관”이란 출금이체업무의 경우 이용기관에게 자금을 지급할 사용자의 계좌를 보유한 참가기관을, 입금이체업무의 경우 이용기관의 지급계좌를 보유한 참가기관을 말한다.
7. “입금기관”이란 출금이체업무의 경우 이용기관의 수납계좌를 보유한 참가기관을, 입금이체업무의 경우 이용기관으로부터 자금을 지급받을 수취인의 계좌를 보유한 참가기관을 말한다.
8. “사용자”란 이용기관이 제공하는 서비스를 이용하는 참가기관의 개인 고객을 말한다.
9. “핀테크이용번호”란 사용자가 결제원 웹페이지 또는 이용기관 서비스에서 사용자등록을 신청할 때 실제 계좌번호 대신 발급받는 가상번호를 말한다.
10. “영업일”이란 다음 각 목을 제외한 날을 말한다.
가. 「관공서의 공휴일에 관한 규정」에 따른 공휴일
나. 토요일
다. 근로자의 날
11. 본 약관에서 별도로 정의하지 아니한 용어는 「전자금융거래법」 등 관계법령 에서 정하는 바에 따른다.

제3조(이용기관의 분류)

① 오픈뱅킹업무 이용기관은 제2조 제2호의 참가기관, 대형 핀테크사업자(이하 “대형 사업자”라 한다) 및 중소형 핀테크사업자(이하 “중소형 사업자”라 한다)로 구분한다.
② 제1항의 대형 사업자 및 중소형 사업자는 납입자본금을 기준으로 다음과 같이 구분한다.

1. 대형 사업자 : 자본금 20억원 이상인 경우
2. 중소형 사업자 : 자본금 20억원 미만인 경우
제4조(계약의 성립 및 해지)

① 이용기관이 본 약관에 동의하고, 결제원이 이를 승인함으로써 오픈뱅킹업무 이용계약은 성립하며, 이용승인이 해지된 때 오픈뱅킹업무 이용계약은 해지된다.
② 결제원은 이용기관이 참가기관 또는 대형 사업자인 경우 본 약관과 별도로 오픈뱅킹업무 이용계약을 체결할 수 있다.

제5조(오픈뱅킹 제공업무 및 이용방식)

① 오픈뱅킹업무의 종류는 다음과 같다.

1. 이체업무

가. 출금이체업무 : 이용기관의 출금에 동의한 사용자 계좌에서 출금하여 이용기관의 수납계좌로 실시간 입금하는 업무
나. 입금이체업무 : 이용기관이 지급계좌에서 자금을 출금하여 수취인 계좌로 실시간 입금하는 업무
2. 조회업무

가. 잔액조회업무 : 사용자가 이용기관이 제공하는 서비스를 통해 본인계좌에 대한 잔액을 실시간 조회하는 업무
나. 거래내역조회업무 : 사용자가 이용기관이 제공하는 서비스를 통해 본인계좌에 대한 거래내역을 실시간 조회하는 업무
다. 계좌실명조회업무 : 이용기관이 자금을 수취할 수취인 계좌 또는 이용기관이 제공하는 서비스를 통해 출금이체 등을 신청한 사용자 계좌의 정상여부 및 실명을 실시간 조회하는 업무
라. 송금인정보조회업무 : 소액해외송금업자로 등록한 이용기관이 소액해외송금을 위해 이용기관의 수납계좌로 입금한 사용자(송금인)의 실명 및 지급계좌번호를 실시간 조회하는 업무
마. 수취조회업무 : 이용기관이 입금이체업무 등을 하기 전에 이용기관으로부터 자금을 수취할 수취인 계좌의 입금가능여부를 실시간 조회하는 업무
② 이용기관은 제1항의 업무를 이용하여 사용자에게 서비스를 제공할 경우 「전자금융거래법」 제2조 제1호에 따른 전자금융거래 방식으로 제공하여야 한다.

제6조(업무처리 시스템)

결제원과 이용기관은 인터넷회선 또는 전용회선 등을 이용하여 상호 시스템 간 연결을 통해 오픈뱅킹업무를 처리하며, 시스템의 세부사항은 「오픈뱅킹 API 명세서」(이하 “API 명세서”라 한다)에서 정하는 바에 따른다.
							</textarea>
						</li>
						<li>
							<ul class="list-unstyled position-relative">
								<li class="float-start">개인정보 수집 및 이용에 대한 안내(필수)</li>
								<li class="float-end">
									<input type="checkbox" name="chk">    
								</li>
							</ul>
							<textarea class="form-control my-3" rows="7" >
							Ⅰ. 개인정보의 수집 및 이용 동의서
 - 이용자가 제공한 모든 정보는 다음의 목적을 위해 활용하며, 하기 목적 이외의 용도로는 사용되지 않습니다.
① 개인정보 수집 항목 및 수집·이용 목적
 가) 수집 항목 (필수항목)
- 성명(국문), 주민등록번호, 주소, 전화번호(자택, 휴대전화), 사진, 이메일, 나이, 재학정보, 병역사항,
외국어 점수, 가족관계, 재산정도, 수상내역, 사회활동, 타 장학금 수혜현황, 요식업 종사 현황 등 지원
신청서에 기재된 정보 또는 신청자가 제공한 정보
 나) 수집 및 이용 목적
- 하이트진로 장학생 선발 전형 진행
- 하이트진로 장학생과의 연락 및 자격확인
- 하이트진로 장학생 자원관리
 ② 개인정보 보유 및 이용기간
 - 수집·이용 동의일로부터 개인정보의 수집·이용목적을 달성할 때까지
 ③ 동의거부관리
 - 귀하께서는 본 안내에 따른 개인정보 수집, 이용에 대하여 동의를 거부하실 권리가 있습니다. 다만,
귀하가 개인정보의 수집/이용에 동의를 거부하시는 경우에 장학생 선발 과정에 있어 불이익이 발생할 수
있음을 알려드립니다
							</textarea>
						</li>
						<li class="list-inline ">
							<ul class="list-inline position-relative">
								<li class="float-start">위치정보 이용약관 동의(선택)</li>
								<li class="float-end">
									<input type="checkbox" name="chk">    
								</li>
							</ul>
							<textarea class="form-control my-3" rows="7" >
							제1장 총칙

제 1조 (목적)

본 약관은 회원(서비스 이용약관에 동의한 자를 말합니다. 이하 “회원”이라고 합니다.)이 엔에이치엔 주식회사(이하 “회사”라고 합니다.)가 제공하는 위치기반서비스(이하 “서비스”라고 합니다)를 이용함에 있어 회사와 회원의 권리·의무 및 책임사항을 규정함을 목적으로 합니다.

제 2 조 (이용약관의 효력 및 변경)

①본 약관은 서비스를 신청한 고객 또는 개인위치정보주체가 본 약관에 동의하고 회사가 정한 소정의 절차에 따라 서비스의 이용자로 등록함으로써 효력이 발생합니다.

②회원이 온라인에서 본 약관의 "동의하기" 버튼을 클릭하였을 경우 본 약관의 내용을 모두 읽고 이를 충분히 이해하였으며, 그 적용에 동의한 것으로 봅니다.

③회사는 위치정보의 보호 및 이용 등에 관한 법률, 콘텐츠산업 진흥법, 전자상거래 등에서의 소비자보호에 관한 법률, 소비자기본법 약관의 규제에 관한 법률 등 관련법령을 위배하지 않는 범위에서 본 약관을 개정할 수 있습니다.

④회사가 약관을 개정할 경우에는 기존약관과 개정약관 및 개정약관의 적용일자와 개정사유를 명시하여 기존 약관과 함께 그 적용일자 7일 전부터 적용일 이후 상당한 기간 동안 공지만을 하고, 개정 내용이 회원에게 불리한 경우에는 그 적용일자 30일 전부터 적용일 이후 상당한 기간 동안 각각 이를 서비스 홈페이지에 게시하거나 회원에게 전자적 형태(전자우편, SMS 등)로 약관 개정 사실을 발송하여 고지합니다.

⑤회사가 전항에 따라 회원에게 통지하면서 공지 또는 공지∙고지일로부터 개정약관 시행일 7일 후까지 거부 의사를 표시하지 아니하면 이용약관에 승인한 것으로 봅니다. 회원이 개정약관에 동의하지 않을 경우 회원은 이용계약을 해지할 수 있습니다.

제 3 조 (관계법령의 적용)

본 약관은 신의성실의 원칙에 따라 공정하게 적용하며, 본 약관에 명시되지 아니한 사항에 대하여는 관계법령 또는 상관례에 따릅니다.
							</textarea>
						</li>
					</ul>
					<div class="text-center">					
						<button class="btn btn-secondary btn-lg">비동의</button>
						<button type="submit" class="btn btn-primary btn-lg">동의</button>
					</div>
				</form>
			</div>
	    </div>

	</section>
	
	<footer>
    	<jsp:include page="/jsp/include/footer.jsp"></jsp:include>
    </footer>

    <!-- JavaScript Libraries -->
    <jsp:include page="/jsp/include/script.jsp"></jsp:include>
</body>
</html>