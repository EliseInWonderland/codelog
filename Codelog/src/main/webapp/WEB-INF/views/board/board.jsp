<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html>
<head>
	<%@include file="../include/header.jsp"%>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>board</title>

	<style>
		/* 글 상세보기 페이지 css */
		@import url("<c:url value='/css/board.css'/>");
		/* 글 상세보기 페이지 font */
		@import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;800&display=swap');
	</style>

</head>

<body>
	<div style="height: 20px;"></div>
	<!-- 글 상세보기 페이지 시작 -->
	<!--col1/1(좋아요,프로필)/7(본문)/2(책갈피)/1-->
	<div class="container">
		<div class="row">
			<div class="col-md-1"></div>

			<!--좌측 고정메뉴-->
			<div class="col-md-1">
				<aside>
					<div class="sidebutton"></div>
					<nav>
						<a class="likes" onclick='count("plus")'>♥</a>
						<div id='result' style="margin-left: 28px;">0</div>
						<a href="https://www.google.co.kr/">
							<img class="sharing" src="<c:url value='/img/profile5.png'/>" alt="profile">
							
						</a>
						<div>	
					</nav>
				</aside>
			</div>

			<!--글 상세보기 내용-->
			<div class="col-md-7">
				<div class="container detail-main">
					<h1>Typescript는 어떻게 공부해야 하나요? </h1>
					<div class="info">
						<a class="writer" href="#">작성자</a>
						<div class="slash"> | </div>
						<div class="date"> 2022년 03월 03일</div>
					</div>
					<br>
					<div id="hashtag">
						<a href="">#Typescript</a>
						<a href="">#타입스크립트</a>
						<a href="">#태그1</a>
						<a href="">#태그2</a>
					</div>

					<span class="modify">
						<button class="left btn btn-default">수정</button>
						<button class="right btn btn-primary">삭제</button>
					</span>


					<section>
						<div class="target" id="1">
							<a name="content1"></a>
							<div id="mini-title">프롤로그</div><br>
							<div class="ctext">
								지금 현재 개발하는 상황을 보면 Typescript은 피할 수 없는 어떤 하나의 대세가 된 것 같습니다. Typescript가 나온 이후로 점점
								Typescript로
								만들어지고 있는 라이브러이나 코드의 비중은 높아지고 있고 아직도 상승중으로 보입니다.
								초기 자바스크립트 같은 경우에는 애초에 이렇게 웹이 커질 거라고 생각하지 않았기에 단순한 형태의 간단한 스크립팅 언어로 만들려고 했습니다. 그래서 대부분 짧은
								형태의
								간단한 코드들로 이루어 질 거라고 생각을 했었습니다.
								그러다보니 최대한 간단하게 만들기 위해서 언어의 어떤 복잡도를 최소화하는 방향으로 구성을 하게 되었습니다. 그러면서 러닝커브를 낮추기 위해 당시에 가장 유행을
								하고
								있던 C++, Java의 문법을 빌려오는 방법으로 구상이 되었습니다.
								그래서 Java계열 문법을 차용하면서도 type을 제거하고 class와 같은 복잡성을 야기하는 부분들도 전부 제거하여 간결한 문법을 가지면서도 타입없이
								객체지향도
								함수형 프로그래밍도 할 수 있는 prototype 객체기반 함수형 동적타입 스크립트 라는 아주 독특한 컨셉의 언어가 만들어졌습니다.
							</div><br>
						</div>
						<div class="target" id="2">
							<a name="content2"></a>
							<div id="mini-title">MS: 내가 원래 개발언어와 IDE 개발의 원조지!</div><br>
							<img src="<c:url value='https://media.vlpt.us/images/teo/post/f15ee6c1-c599-4054-8a3c-44769b160349/image.png' />" alt="example image">
							
							<div class="ctext">
								javascript를 ECMAScript4의 형태로 가장 만들고 싶었던 벤더는 Microsoft였습니다. 이미 C++, C# 등의 언어를 만들어서 성공했던
								경험이
								있을 뿐더러 Visual Studio등을 통해서 IDE를 이용한 수익이나 개발 관련해서 영향력을 행사하고 있었기 떄문입니다.
								마이크로소프트가 IE를 통해서 웹에 대한 주도권을 가지고 있었으나 점차 방만한 업데이트를 하고 웹에 대해서 큰 투자를 하지 않은 상황에서 브라우저엔진은
								safari가, javascript v8엔진을 가진 구글과 가장 많이 쓰고 있는 react라는 웹 프레임워크를 가진 페이스북등 웹에 대한 주도권에서
								마이크로소프트는
								점점 멀어지고 있었습니다.
								이제 다시 정신을 차리고 다시 웹쪽으로 눈을 돌린 마이크로소프트가 보기에 웹에서 영향력을 행사하기에 남아있는 부분이 어딜까를 고심을 하다보니 원래
								마이크로소프트가
								잘하는 언어와 IDE를 만드는 쪽의 노하우를 통해서 웹쪽 영향력을 다시 영향력을 행사하고자 하는 욕심이 있었을 거라고 생각을 합니다.
								마이크로소프트웨어도 주류가 되어버린 웹으로 오게 되면서 기존에 만들었던 핵심 어플리케이션인 오피스와 함께 Visual Studio를 웹으로 옮기려는 시도를
								하게 되고
								우리가 너무나 잘 쓰고 있는 VSCode가 탄생하게 됩니다.
								기존 Visual Studio에서의 가장 큰 강점이라고 하면 정적언어에 대한 AutoComplete와 다양한 보조도구들이었는데 javascript는 기존의
								언어와는
								결이 맞지 않았습니다.
								그리하여 자기들이 가지고 있는 언어인 c#과 유사한 형태로 언어를 만들되 기존의 언어를 바꾸는 시도가 모두 실패했다는 것을 거울삼아 javascript를
								버리고
								새로운 언어를 배워야만 하는게 아니라 javascript의 원형을 그대로 살리면서 자기들의 IDE에서 제대로 동작할 수 있도록 하기 위한 언어를 만들어내기
								시작합니다.
								모든 css가 sass이듯이 그래해서 모든 javascript는 typescript다라는 superset이라는 컨셉으로 기존의 javascript는
								typescript엔진에서도 돌아가게 만드는 방법을 택했고 이 방식은 아시다시피 상당히 유효했습니다.
							</div><br>
						</div>
						<div class="target" id="3">
							<a name="content3"></a>
							<div id="mini-title">Typescript의 고질적인 문제1: 속도!</div><br>
							<div class="ctext">
								typescript의 고질적인 문제는 tsc의 속도가 엄청나게 느리다는 점입니다. tsc로 타입 체크를 하고 한번 빌드를 하기 위해서는 적지않은 시간이
								필요합니다.
								프로그래밍의 덩치가 크면 클 수록 그 시간은 엄청나죠. 그래서 빌드와 배포가 느려진다는 것은 그만큼 생산성을 까먹는 일이기도 합니다. 그러다보면
								Typescript가
								좋은 건 알겠지만 굳이 필요한가 라는 생각을 하게 됩니다.
								그래서 Typescript에서는 이러한 속도의 문제를 해결하기 위해서 IDE에서는 백그라운드에서 체크를 하고 실제 빌드시에는 타입체크를 하지 않고 빌드를 하는
								묘수를
								생각해내게 됩니다.
							</div><br>
						</div>
						<div class="target" id="4">
							<a name="content4"></a>
							<div id="mini-title">Typescript의 고질적인 문제2: 잘 동작하던건데 전부 에러가 뜨데요?</div><br>
							<img src="<c:url value='/img/example3.png'/>" alt="example image" style="width: 600px;">
							<div class="ctext">
								typescript의 대중화가 덜 된 시절에는 타입이 지정되어 있지 않은 라이브러리들이나 타입스크립트에서 지원하지 않는 동적타이핑을 통해서 만들어진 기법들로
								인해서
								타입선언이 되어 있지 않은 라이브러리들을 쓰면 계속 빨간 에러 표시와 함께 해야하는 것들이 스트레스였습니다.
								그리고 이러한 에러를 수정하기 위해서는 타입에 any를 선언하게 됩니다. 이러한 불합리함(?)들은 Typescript의 효용성에 대한 인식을 낮추게 하며
								수많은
								any meme들이 생겨나기 시작합니다.
							</div><br>
						</div>
						<div class="target" id="5">
							<a name="content5"></a>
							<div id="mini-title">🔥 그러니 그냥 하세요. 안해야 할 이유가 없습니다.</div><br>
							<div class="ctext">
								타입 유효성 체크를 가능하게 하고 강력한 AutoComplete를 제공받는 대신 복잡한 문법과 빌드 속도와 호환되지 않는 라이브러리로 인한 장단점이 있기에
								선택입니다라고 하는 시절은 지나가버렸습니다.
								지금은 javascript를 쓰더라도 babel이나 번들러를 쓰지 않는다는 것은 상상하기 어렵습니다. 최신 문법은 사용해야 하면서 하위 버전에 맞는
								트랜스파일과
								모듈을 이용한 번들러는 필수입니다.
								그렇다면 왜 굳이 babel을 쓰나요? typescirpt를 쓰면 되죠. typescript는 javascript의 모든 문법을 포함하고 있기 때문에 굳이
								typescript를 쓰지 않고 javascript라고 생각하고 써도 아무런 문제가 없습니다.
								이 점이 Typescript의 가장 강력한 점이지요. 이미 javascript를 하고 있다면 곧 Typescript를 할 수 있다는 것입니다. 오히려
								Typescript를 하지 않으면 javascript에서는 typescript 생태계로 돌아가는 환경을 돌릴 수가 없습니다.
								그러니 아직 Typescript를 쓰고 있지 않다면 일단은 한번 시작해보는 것은 어떨까요?
							</div><br>
						</div>

					</section>

					<!--댓글 영역-->
					<section class="reply">
						<div class="reply-container">
							<div class="row">
								<div class="col-md-9 col-xs-12 content-wrap">
									<h2>N개의 댓글</h2>
									<!-- 댓글 작성 공간 -->
									<div class="reply-wrap">
										<div class="reply-image">
											<img id=prof src="<c:url value='/img/profile5.png'/>" alt="prof">
										</div>
										<div class="reply-content">
											<textarea class="form-control" rows="3"></textarea>
											<div class="reply-group clearfix">
												<button class="btn btn-info">등록하기</button>
											</div>
										</div>
									</div>
									<!-- 댓글이 달릴 공간 -->
									<div class="reply-wrap">
										<div class="reply-image">
											<img id=prof src="<c:url value='/img/profile4.png'/>" alt="prof">
											
										</div>
										<div class="reply-content">
											<div class="reply-group clearfix">
												<strong class="left">honggildong</strong> <br>
												<small class="left">2022년 03월 04일</small>
											</div><br>
											<p>자바스크립트가 발전하는 과정에서 불편한 점을 해결하기 위해 OOscript가 나오고 좋은 기능은 JS로 편입되는 변천사를
												보았습니다. 적어도 Type에 관한 건 타입스크립트가 해결해주니 머지않아 해당 기능을 JS가 자연스레 지원하는 방식으로 나아갈
												것이라고 생각이 드네요.
												그렇다면 과연 TS가 JS와 다른 특장점으로 가져갈 것이 무엇이 남아있나라는 생각과 어디까지 JS로 편입될지도 무척이나
												궁금합니다.
												요런 격변기에 프론트엔드 개발자라는게 재밌고 설레네요.
												이번글도 어김없이 좋은글 감사합니다.</p>
										</div>

										<div class="hiddenDiv">
											<input id="BT" type="button" value="답글 열기" onclick="view()">
											<div id="hiddenReply" style="display:none">
												<div class="re-reply-image">
													<img id=prof src="<c:url value='/img/profile6.png'/> " alt="prof">
												</div>
												<div class="re-reply-content">
													<div class="reply-group clearfix">
														<strong class="left">helloworld</strong> <br>
														<small class="left">2022년 03월 04일</small>
													</div><br>
													<p>자바스크립트가 발전하는 과정에서 불편한 점을 해결하기 위해 OOscript가 나오고 좋은 기능은 JS로 편입되는
														변천사를 보았습니다. 적어도 Type에 관한 건 타입스크립트가 해결해주니 머지않아 해당 기능을 JS가 자연스레
														지원하는 방식으로 나아갈 것이라고 생각이 드네요.
														그렇다면 과연 TS가 JS와 다른 특장점으로 가져갈 것이 무엇이 남아있나라는 생각과 어디까지 JS로 편입될지도
														무척이나 궁금합니다.
														요런 격변기에 프론트엔드 개발자라는게 재밌고 설레네요.
														이번글도 어김없이 좋은글 감사합니다.</p>
												</div>
											</div>



										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
				</div>


			</div>
			<!--우측 고정메뉴-->
			<div class="col-md-2">
				<div class="bd-toc mt-4 mb-5 my-md-0 ps-xl-3 mb-lg-5 text-muted">
					<strong class="d-block h6 my-2 pb-2 border-bottom">On this Page</strong>
					<nav id="TableOfContents" style="border-left: 1px solid rgb(182, 182, 182);">
						<div class="content-menu">
							<a href="#1" class="active">프롤로그</a><br>
							<a href="#2">MS: 내가 원래 개발언어와 IDE 개발의 원조지!</a><br>
							<a href="#3">Typescript의 고질적인 문제1: 속도!</a><br>
							<a href="#4">Typescript의 고질적인 문제2: 잘 동작하던건데 전부 에러가 뜨데요?</a><br>
							<a href="#5">🔥 그러니 그냥 하세요. 안해야 할 이유가 없습니다.</a><br>
						</div>
					</nav>
				</div>
			</div>

			<div class="col-md-1"></div>
		</div>
	</div>

	<%@include file="../include/footer.jsp"%>


	<script>
		function view() {
			if (hiddenReply.style.display == "none") {
				hiddenReply.style.display = "block";
				BT.value = "숨기기";
			} else {
				hiddenReply.style.display = "none";
				BT.value = "답글 열기";
			}
		}
	</script>

	<!--책갈피-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
	<script>
		$('#TableOfContents .content-menu a').on('click', function (event) {
			$(this).parent().find('a').removeClass('active');
			$(this).addClass('active');
		});

		$(window).on('scroll', function () {
			$('.target').each(function () {
				if ($(window).scrollTop() >= $(this).offset().top) {
					var id = $(this).attr('id');
					$('#TableOfContents .content-menu a').removeClass('active');
					$('#TableOfContents .content-menu a[href=#' + id + ']').addClass('active');
				}
			});
		});
	</script>

	<!--좋아요 기능-->
	<script>
	function count(type)  {
		//<!--결과를 표시할 element-->
		const resultElement = document.getElementById('result');
		
		//<!--현재 화면에 표시된 값-->
		let number = resultElement.innerText;
		
		//<!--더하기/빼기-->
		if(type === 'plus') {
		  number = parseInt(number) + 1;
		}else if(type === 'minus')  {
		  number = parseInt(number) - 1;
		}

		//<!--결과 출력-->
		resultElement.innerText = number;
	  }
	</script>
	<!-- 글 상세보기 페이지 끝 -->
</body>

</html>