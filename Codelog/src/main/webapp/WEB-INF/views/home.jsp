<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="include/header.jsp"%>


<!DOCTYPE html>
<html>

<head>

	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<style>

	    @import url("<c:url value='/css/home.css'/>");
	
	</style>
	<title>Document</title>
</head>

<body style="margin-top: 1rem; font-family: ONE-Mobile-Regular;">

	
<!-- 최신, 트랜딩 메뉴판 날짜설정메뉴는은 트랜딩메뉴 적용시만 활성 -->
		<div class="row" style="padding: 1.5rem 1.5rem 0.5rem 1.5rem;">
			<div class="col-md-1 px-md-0" id="recent2">
			
			<form action="<c:url value='/'/>" method="post">
			<c:if test="${trending==true }"><input type="hidden" name=fromT value="true"></c:if>
			<button type="submit" id="recent" class="btn z lo c p-0"
					style="margin-left: 0.3rem;background-color:transparent; border-color: transparent;  <c:if test="${recent==true }">font-weight: bold; color: black;</c:if>"><i
						class="fa-regular fa-clock fa-1x mx-md-1"></i><span class="m-0"
						style="font-size: 1.1rem;">최신</span></button>
						</form>
			
			</div>
						
						
			<div class="col-md-1 px-md-0" >
			<form action="<c:url value='/trending'/>" method="post">
			<c:if test="${recent==true}"><input type="hidden" name=fromR value="true"></c:if>
			<button type="submit" id="trend" class="btn z c lo p-0"
					style="background-color:transparent; border-color: transparent; <c:if test="${trending==true }">font-weight: bold; color: black;</c:if>"><i
						class="fa-solid fa-arrow-trend-up fa-1x mx-md-1"></i><span class="m-0"
						style="font-size: 1.1rem;">트랜딩</span></button>
						
							</form>
							</div>
							
				<div class="col-md-2 px-md-3">
			
			
			<c:if test="${trending==true }">	
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
				</c:if>
			</div>
		</div>
	<!-- 최신, 트랜딩 밑줄 애니매이션 -->
	<div id="tot"  style="<c:choose><c:when test="${trending==true && fromR==false}">margin-left:7.7rem;</c:when>
		<c:otherwise>margin-left:0.7rem;</c:otherwise></c:choose>width: 5rem; height: 0.1rem; background-color: black;" ></div>
	</div>
		
	<!-- Button trigger modal -->
	<div class="container" style="margin-top: 2rem;" id="posterbox">

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
	

	<script>
			/*최신, 트랜딩 밑줄 애니매이션*/
			$(document).ready(function () {
		
			if(${recent}==true){
				if(${fromT}==true ){
					$("#tot").removeClass('toto');
					$("#tot").addClass('toto2')
				}				
			}
		
			if(${trending}==true){
				if(${fromR}==true){
					$("#tot").removeClass('toto2');
					$("#tot").addClass('toto')
				}
			}	
			
			/*화면 클릭시 날짜토글 숨기기*/
			var LayerPopup3 = $("#collapseExample3");

			$(document).click(function (e){


				if(LayerPopup3.hasClass("show")){
				LayerPopup3.removeClass("show");
				}


			});
			});

	
		
		
/*화면 클릭시 열려있는 토글창 닫기*/

	


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