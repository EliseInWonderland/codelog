<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
	<!-- bootstrap css -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<!-- bootstrap icon -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
	<!-- fontawesome -->
	<script src="https://kit.fontawesome.com/7b2a04da3a.js" crossorigin="anonymous"></script>
	<style>

		@import url("<c:url value='/css/header.css'/>");
		

		/*포스터 카드 호버 시 크기 확대+위로 올리가기*/

		.poster:hover {
			transform: scale(1.02) translateY(-0.5em);
			transition-duration: 0.5s;
		}
		.poster:not(:hover) { 
			transform: scale(1.0) translateY();
			transition-duration: 0.5s;

		 } 
		 
		 .z{
		 	font-weight: bold;
		 }
		 .lo {
		 	color: rgba(128, 128, 128, 0.654);
		 	font-weight: lighter;
		 
		 	
		 }
		

	</style>
	<title>Document</title>
</head>

<body style="margin-top: 1rem; font-family: ONE-Mobile-Regular;">

	
	<div class="container">
		<div class="row px-md-4">
			<!--로고 부분-->
			<div class="col-md-2 px-md-0 my-md-0 pb-md-4">
				<button><span class="logo" >codelog</span></button>
				<!--<span style="font-size: 2rem; color: rgba(241, 31, 129, 0.897);">log</span>
				<i class="fa-solid fa-heart" style="color: red;"></i>
				<span style="font-size: 1.7rem; color: rgb(241, 31, 129);">g</span>-->
			</div>

            <!--해,알림,검색,글작성,메뉴토글 바-->
			<div class="col-md-3 offset-7 p-0">
				<!--해(다크모드)-->
				<button type="button" class="btn c rounded-circle my-md-3 mx-md-1 px-md-2 hc" ><i
						class="fa-regular fa-sun ic"></i></button>
				<!--알림,알림 목록 토글-->		
				<button type="button" class="btn rounded-circle position-relative c mx-md-1 my-md-3 px-md-3 hc" style=""
					data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"
					aria-controls="collapseExample">
				<!--알림 아이콘, 알림개수-->
					<i class="fa-regular fa-bell ic"></i>
					<span class="position-absolute top-0 translate-middle badge rounded-pill bg-danger" style="left: 2.8rem;">
						2+
						<span class="visually-hidden">unread messages</span>
					</span>
				<!--알림,알림 목록 토글-(위에 거랑 세트)-->	
					<div class="collapse" id="collapseExample"
						style="position: absolute; width: 20rem; top:2.7rem; right: 0rem; z-index: 1000;">
						<div class="card" style="width: 100%;">

							<!--알림 목록 내용-->
							<div class="card-body cc" style=" height: 6rem; " id="so">
								<div class="row">
									<div class="col-md-3">
										<img width="50rem" src="<c:url value='/img/cat2.jpg'/>" class="card-img-right rounded-circle"
											alt=".">
									</div>
									<div class="col-md-9" style=" text-align: left;">
										<span class="card-text"><strong>홍길동abcd</strong>님이 좋아요를 눌렀습니다.</span>


										<p class="pt-1" style="font-size: 0.8rem;">3시간 전.</p>

									</div>
								</div>
							</div>

							<div class="card-body cc" style=" height: 6rem; ">
								<div class="row">
									<div class="col-md-3">
										<img width="50rem" src="<c:url value='/img/pome3.jpg'/>" class="card-img-right rounded-circle"
											alt=".">
									</div>
									<div class="col-md-9" style=" text-align: left;">
										<span class="card-text"><strong>김철수1234</strong>님이 팔로우하였습니다.</span>

										<p class="pt-1" style="font-size: 0.8rem; margin: auto 0;">19시간 전.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</button>

				<!--검색 기능, 돋보기 아이콘-->
				<button type="button" class="btn c rounded-circle mx-md-1 px-md-2 hc" id="so4"><i
						class="fa-solid fa-magnifying-glass ic" ></i></button>
				
				<!--메뉴, 메뉴 토글-->		
				<div style="display: inline; float: right;">
					<button type="button" class="btn c rounded-circle px-md-0 my-md-2 pb-md-4 pt-md-0 position-relative"
						 data-bs-toggle="collapse"
						href="#collapseExample2" role="button" aria-expanded="false" aria-controls="collapseExample2">
						<!--메뉴 이미지+화살표 아래 아이콘-->
						<img width="50rem" src="<c:url value='/img/pome3.jpg'/>" class="card-img-right rounded-circle mx-md-1"
							alt="."><i class="fa-solid fa-caret-down"></i>
				<!--메뉴, 메뉴 토글(위에꺼랑 세트)-->	
						<div class="collapse" id="collapseExample2"
							style="position: absolute; top:3.8rem; left: -3.6rem; z-index: 1000;">
					<!--메뉴 토글 내용-->		
							<div class="card" style="width: 8rem;">

								<div class="card-body cc" id="so1">
									<div style="text-align: right;">
										<span class="card-text"><strong>내 코드로그</strong></span>
									</div>
								</div>

								<div class="card-body cc" id="so2">
									<div style="text-align: right;">
										<span class="card-text"><strong>프로필 수정</strong></span>
									</div>
								</div>

								<div class="card-body cc" id="so3">
									<div style="text-align: right;">
										<span class="card-text"><strong>로그아웃</strong></span>
									</div>
					</button>
				</div>
				<!--글 작성-->
				<button type="button" class="btn btn-light rounded-circle my-md-3 px-md-1 bc"
					>새 글 작성</button>
			</div>
		</div>

		<div class="row" style="padding: 1.5rem 1.5rem 1.5rem 1.5rem;">
			<div class="col-md-1 px-md-0" id="recent2"><button type="button" id="recent" class="btn z c rounded-circle p-0"
					style="background-color:transparent; border-color: transparent;"><i
						class="fa-regular fa-clock fa-1x mx-md-1"></i><span class="m-0"
						style="font-size: 1.1rem;">최신</span></button></div>
			<div class="col-md-1 px-md-0"><button type="button" id="trend" class="btn z lo c rounded-circle p-0"
					style="background-color:transparent; border-color: transparent;"><i
						class="fa-solid fa-arrow-trend-up fa-1x mx-md-1"></i><span class="m-0"
						style="font-size: 1.1rem;">트랜딩</span></button></div>
				<div class="col-md-2 px-md-3">
				<button type="button" class="btn c rounded-circle p-0 position-relative"
					style="background-color:transparent; border-color: transparent;" data-bs-toggle="collapse"
					href="#collapseExample3" role="button" aria-expanded="false" aria-controls="collapseExample3">
					<span class="m-0" style="font-size: 1.1rem;">이번 주<i
							class="fa-solid fa-caret-down mx-md-1"></i></span>

					<div class="collapse" id="collapseExample3"
						style="position: absolute; width: 10rem; top:2.5rem; left: -3.6rem; z-index: 1000;">
						<div class="card" style="width: 8rem;">

							<div class="card-body cc" id="so">
								<div style="text-align: right;">
									<span class="card-text"><strong>오늘</strong></span>
								</div>
							</div>

							<div class="card-body cc" id="so">
								<div style="text-align: right;">
									<span class="card-text"><strong>이번 주</strong></span>
								</div>
							</div>

							<div class="card-body cc" id="so">
								<div style="text-align: right;">
									<span class="card-text"><strong>이번 달</strong></span>
								</div>
							</div>


							<div class="card-body cc" id="so">
								<div style="text-align: right;">
									<span class="card-text"><strong>올해</strong></span>
								</div>
							</div>
				</button>
			</div>
		</div>
	</div>
	<!-- Button trigger modal -->


	<!-- Button trigger modal -->
	<div class="container" style="margin: 0 auto;" id="posterbox">

		<!--포스터 카드 부분 한줄에 3개씩-->
		<div class="row py-md-3">

			<div class="col-md-4 px-md-4">
				<div class="card poster" style="width: 100%; height: 27rem;">
					<!--포스터카드 아무대나 클릭해도 링크 걸리기-->
					<a href="aa" class="stretched-link"></a>
					<!--썸네일 이미지-->
					<img src="<c:url value='/img/cat.jpg'/>" class="card-img-top" alt="...">
					<!--제목 내용-->
					<div class="card-body ">
						<strong>한글 입숨</strong>
						<p class="card-text" style="padding-top: 0.3rem;">딴은 쓸쓸함과 별 까닭입니다. 멀듯이, 하나의 잠, 한 덮어 하나에 이름과,
							부끄러운 까닭입니다.

						</p>
					</div>
					<div class="card-footer my-md-0 py-md-0"
						style="font-size: 0.8rem; border-top: 0; background-color: white;">

						<p class="card-text"
							style="border-bottom: 1px solid rgba(128, 128, 128, 0.178); margin-bottom: 0.4rem; padding-bottom: 0.3rem;">
							2022년 1월 5일</p>

							<!--계정사진 계정명 댓글수 좋아요수-->
						<div>

							<div style="margin-top: 0.3rem;">
								<div style="display: inline-block; float: left;">
									<div style="border-radius: 70%; overflow: hidden; display: inline-block;">
										<img src="<c:url value='/img/pome3.jpg'/>" class="img-rounded" width="25rem">
									</div>

								</div>
								<div style="display: inline-block; float: left; margin-top: 0.13rem;">
									<span class="mx-md-1" style="color: gray;">by</span><span>김철수1234</span>
								</div>
								<div style="display: inline-block; float: right; margin-top: 0.13rem">
									<i class="fa-solid fa-comment" style=""></i>
									<span style="margin-right: 0.5rem;" class="">3</span>
									<i class="fa-solid fa-heart"></i><span style="" class="mx-md-1">7</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="col-md-4 px-md-4">
				<div class="card poster" style="width: 100%; height: 27rem;">
					<!--포스터카드 아무대나 클릭해도 링크 걸리기-->
					<a href="aa" class="stretched-link"></a>
					<!--썸네일 이미지-->
					<img src="<c:url value='/img/cat.jpg'/>" class="card-img-top" alt="...">
					<!--제목 내용-->
					<div class="card-body ">
						<strong>한글 입숨</strong>
						<p class="card-text" style="padding-top: 0.3rem;">딴은 쓸쓸함과 별 까닭입니다. 멀듯이, 하나의 잠, 한 덮어 하나에 이름과,
							부끄러운 까닭입니다.

						</p>
					</div>
					<div class="card-footer my-md-0 py-md-0"
						style="font-size: 0.8rem; border-top: 0; background-color: white;">

						<p class="card-text"
							style="border-bottom: 1px solid rgba(128, 128, 128, 0.178); margin-bottom: 0.4rem; padding-bottom: 0.3rem;">
							2022년 1월 5일</p>

							<!--계정사진 계정명 댓글수 좋아요수-->
						<div>

							<div style="margin-top: 0.3rem;">
								<div style="display: inline-block; float: left;">
									<div style="border-radius: 70%; overflow: hidden; display: inline-block;">
										<img src="<c:url value='/img/kmj.jpg'/>" class="img-rounded" width="25rem">
									</div>

								</div>
								<div style="display: inline-block; float: left; margin-top: 0.13rem;">
									<span class="mx-md-1" style="color: gray;">by</span><span>홍길동5678</span>
								</div>
								<div style="display: inline-block; float: right; margin-top: 0.13rem">
									<i class="fa-solid fa-comment" style=""></i>
									<span style="margin-right: 0.5rem;" class="">3</span>
									<i class="fa-solid fa-heart"></i><span style="" class="mx-md-1">7</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>



			<div class="col-md-4 px-md-4">
				<div class="card poster" style="width: 100%; height: 27rem;">
					<!--포스터카드 아무대나 클릭해도 링크 걸리기-->
					<a href="aa" class="stretched-link"></a>
					<!--썸네일 이미지-->
					<img src="./img/cat.jpg" class="card-img-top" alt="...">
					<!--제목 내용-->
					<div class="card-body ">
						<strong>한글 입숨</strong>
						<p class="card-text" style="padding-top: 0.3rem;">딴은 쓸쓸함과 별 까닭입니다. 멀듯이, 하나의 잠, 한 덮어 하나에 이름과,
							부끄러운 까닭입니다.

						</p>
					</div>
					<div class="card-footer my-md-0 py-md-0"
						style="font-size: 0.8rem; border-top: 0; background-color: white;">

						<p class="card-text"
							style="border-bottom: 1px solid rgba(128, 128, 128, 0.178); margin-bottom: 0.4rem; padding-bottom: 0.3rem;">
							2022년 1월 5일</p>

							<!--계정사진 계정명 댓글수 좋아요수-->
						<div>

							<div style="margin-top: 0.3rem;">
								<div style="display: inline-block; float: left;">
									<div style="border-radius: 70%; overflow: hidden; display: inline-block;">
										<img src="./img/pome3.jpg" class="img-rounded" width="25rem">
									</div>

								</div>
								<div style="display: inline-block; float: left; margin-top: 0.13rem;">
									<span class="mx-md-1" style="color: gray;">by</span><span>김철수1234</span>
								</div>
								<div style="display: inline-block; float: right; margin-top: 0.13rem">
									<i class="fa-solid fa-comment" style=""></i>
									<span style="margin-right: 0.5rem;" class="">3</span>
									<i class="fa-solid fa-heart"></i><span style="" class="mx-md-1">7</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>

		<div class="row py-md-3">

			<div class="col-md-4 px-md-4">
				<div class="card" style="width: 100%; height: 27rem;">
					<a href="aa" class="stretched-link"></a>

					<img src="./img/cat.jpg" class="card-img-top" alt="...">
					<div class="card-body ">
						<strong>제목</strong>
						<p class="card-text">ㅁㄴasdasasdsadsadsadasd card's content.</p>
					</div>
					<div class="card-footer">
						<p class="card-text">댓글수 13.</p>
					</div>
				</div>
			</div>


			<div class="col-md-4 px-md-4">
				<div class="card" style="width: 100%; height: 27rem;">
					<img width="50px" src="./img/cat.jpg" class="card-img-top" alt="...">
					<div class="card-body h-100">
						<strong>제목</strong>
						<p class="card-text">Scard's content.</p>
					</div>
					<div class="card-footer">
						<p class="card-text">댓글수 13.</p>
					</div>
				</div>
			</div>



			<div class="col-md-4 px-md-4">
				<div class="card" style="width: 100%; height: 27rem;">
					<img width="50px" src="./img/cat.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<strong>제목</strong>
						<p class="card-text">rd title and makesdasda아아아아ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏdddkkdsdsaasd up the bulk
							of the card's content.</p>
					</div>
					<div class="card-footer">
						<p class="card-text">댓글수 13.</p>
					</div>
				</div>
			</div>
		</div>

		<div class="row py-md-3">

			<div class="col-md-4 px-md-4">
				<div class="card" style="width: 100%; height: 27rem;">
					<a href="aa" class="stretched-link"></a>

					<img src="./img/cat.jpg" class="card-img-top" alt="...">
					<div class="card-body ">
						<strong>제목</strong>
						<p class="card-text">ㅁㄴasdasasdsadsadsadasd card's content.</p>
					</div>
					<div class="card-footer">
						<p class="card-text">댓글수 13.</p>
					</div>
				</div>
			</div>


			<div class="col-md-4 px-md-4">
				<div class="card" style="width: 100%; height: 27rem;">
					<img width="50px" src="./img/cat.jpg" class="card-img-top" alt="...">
					<div class="card-body h-100">
						<strong>제목</strong>
						<p class="card-text">Scard's content.</p>
					</div>
					<div class="card-footer">
						<p class="card-text">댓글수 13.</p>
					</div>
				</div>
			</div>



			<div class="col-md-4 px-md-4">
				<div class="card" style="width: 100%; height: 27rem;">
					<img width="50px" src="./img/cat.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<strong>제목</strong>
						<p class="card-text">rd title and makesdasda아아아아ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏdddkkdsdsaasd up the bulk
							of the card's content.</p>
					</div>
					<div class="card-footer">
						<p class="card-text">댓글수 13.</p>
					</div>
				</div>
			</div>
		</div>
	</div>




	<!-- bootstrap js -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
	</script>

	<script>
			/*메뉴바들 링크 기능(임시)*/
			$(document).ready(function () {
			$("#so").click(function () {
				$(location).attr("href", "https://www.naver.com/")
			});
			$("#so1").click(function () {
				$(location).attr("href", "https://www.naver.com/")
			});
			$("#so2").click(function () {
				$(location).attr("href", "https://www.naver.com/")
			});
			$("#so3").click(function () {
				$(location).attr("href", "https://www.naver.com/")
			});
			$("#so4").click(function () {
				$(location).attr("href", "https://www.naver.com/")
			});
			$(".logo").click(function () {
				$(location).attr("href", "https://www.naver.com/")
			});
			
			$("#trend").click(function () {
				$("#recent").addClass("lo");
				$("#trend").removeClass("lo");
			});
			

			$("#recent").click(function () {
				$("#trend").addClass("lo");
				$("#recent").removeClass("lo");	
				
			});

		});
			
		
/*화면 클릭시 열려있는 토글창 닫기*/

		var LayerPopup = $("#collapseExample");
var LayerPopup2 = $("#collapseExample2");
var LayerPopup3 = $("#collapseExample3");

		$(document).click(function (e){


if(LayerPopup.hasClass("show")){
LayerPopup.removeClass("show");
}

if(LayerPopup2.has(e.target).length === 0){
LayerPopup2.removeClass("show");
}

if(LayerPopup3.has(e.target).length === 0){
LayerPopup3.removeClass("show");
}
		});


/*무한스크롤*/
		var count = 2;
window.onscroll = function(e) {
  if((window.innerHeight + window.scrollY) >= document.body.offsetHeight) { 
    setTimeout(function(){
      var addContent = document.createElement("div");
      addContent.classList.add("box")
      addContent.innerHTML = `<div class="row py-md-3">

<div class="col-md-4 px-md-4">
	<div class="card poster" style="width: 100%; height: 27rem;">
		<a href="aa" class="stretched-link"></a>

		<img src="./img/cat.jpg" class="card-img-top" alt="...">
		<div class="card-body ">
			<strong>한글 입숨</strong>
			<p class="card-text" style="padding-top: 0.3rem;">딴은 쓸쓸함과 별 까닭입니다. 멀듯이, 하나의 잠, 한 덮어 하나에 이름과,
				부끄러운 까닭입니다.

			</p>
		</div>
		<div class="card-footer my-md-0 py-md-0"
			style="font-size: 0.8rem; border-top: 0; background-color: white;">

			<p class="card-text"
				style="border-bottom: 1px solid rgba(128, 128, 128, 0.178); margin-bottom: 0.4rem; padding-bottom: 0.3rem;">
				2022년 1월 5일</p>

			<div>

				<div style="margin-top: 0.3rem;">
					<div style="display: inline-block; float: left;">
						<div style="border-radius: 70%; overflow: hidden; display: inline-block;">
							<img src="./img/pome3.jpg" class="img-rounded" width="25rem">
						</div>

					</div>
					<div style="display: inline-block; float: left; margin-top: 0.13rem;">
						<span class="mx-md-1" style="color: gray;">by</span><span>김철수1234</span>
					</div>
					<div style="display: inline-block; float: right; margin-top: 0.13rem">
						<i class="fa-solid fa-comment" style=""></i>
						<span style="margin-right: 0.5rem;" class="">3</span>
						<i class="fa-solid fa-heart"></i><span style="" class="mx-md-1">7</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<div class="col-md-4 px-md-4">
	<div class="card" style="width: 100%; height: 27rem;">
		<img width="50px" src="./img/cat.jpg" class="card-img-top" alt="...">
		<div class="card-body h-100">
			<strong>제목</strong>
			<p class="card-text">Scard's content.</p>
		</div>
		<div class="card-footer my-md-0 py-md-1"
			style="font-size: 0.8rem; border-top: 0; background-color: white;">

			<p class="card-text"
				style="border-bottom: 1px solid rgba(128, 128, 128, 0.178); margin-bottom: 0.4rem; padding-bottom: 0.2rem;">
				2022년 1월 5일 / 7개의 댓글</p>
			<div><img src="./img/pome3.jpg" class="img-circle" width="20rem"><span
					class="mx-md-2">김철수1234</span>
				<span style="float: right" class="mx-md-2">5</span><i
					class="fa-solid fa-heart fa-1x my-md-1" style="float: right"></i>
			</div>
		</div>
	</div>
</div>



<div class="col-md-4 px-md-4">
	<div class="card" style="width: 100%; height: 27rem;">
		<img width="50px" src="./img/cat.jpg" class="card-img-top" alt="...">
		<div class="card-body">
			<strong>제목</strong>
			<p class="card-text">rd title and makesdasdadddkkdsdsaasd up the bulk
				of the card's content.</p>
		</div>
		<div class="card-footer my-md-0 py-md-1"
			style="font-size: 0.8rem; border-top: 0; background-color: white;">

			<p class="card-text"
				style="border-bottom: 1px solid rgba(128, 128, 128, 0.178); margin-bottom: 0.4rem; padding-bottom: 0.2rem;">
				2022년 1월 5일 / 7개의 댓글</p>
			<div><img src="./img/pome3.jpg" class="img-circle" width="20rem"><span
					class="mx-md-2">김철수1234</span>
				<span style="float: right" class="mx-md-2">5</span><i
					class="fa-solid fa-heart fa-1x my-md-1" style="float: right"></i>
			</div>
		</div>
	</div>
</div>
</div>`
      document.getElementById('posterbox').appendChild(addContent);
    }, 1000)  
  }
}
	</script>

</body>

</html>