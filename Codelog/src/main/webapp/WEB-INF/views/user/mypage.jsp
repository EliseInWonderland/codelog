<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>mypage</title>
  
  <!-- reset.css 마이페이지에만 적용되는 css 지우지 마세요. -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">

  <style>
    @import url("<c:url value='/css/mypage.css' />");    
  </style>
</head>
	
    <div class="container">
      <!--프로필 -->
      <div class="row p-4 p-md-5 mb-2 main">
        <div class="col-md-4">
          <img src="<c:url value='/img/user_icon.png' />" alt="user_icon" width="130">
        </div>
        <div class="col-md-8 profile">
          <h3 class="id">아이디&nbsp;&nbsp;<button class="follow-button">팔로우</button></h3>
          <p class="posts">게시물 3 &nbsp;&nbsp;&nbsp; <a class="followers" data-bs-toggle="modal"
              data-bs-target="#followers_modal" style="cursor:pointer;">팔로워 0</a> &nbsp;&nbsp;&nbsp;
            <a class="folloing" data-bs-toggle="modal" data-bs-target="#following_modal" style="cursor:pointer;">팔로우
              0</a></p>
          <p class="intro">소개글소개글소개글소개글소개글소개글소개글소개글소개글소개글</p>
        </div>
      </div> <!-- end main-->

      <!-- 클릭시 팔로워 모달 -->
      <div class="modal fade" id="followers_modal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
        aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable modal-sm">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="staticBackdropLabel">팔로워</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <ul class="list-unstyled">
                <li><a class="dropdown-item " href="#">
                    아이디
                  </a></li>
                <li><a class="dropdown-item" href="#">
                    아이디
                  </a></li>
                <li><a class="dropdown-item" href="#">
                    아이디
                  </a></li>
                <li><a class="dropdown-item" href="#">
                    아이디
                  </a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>

      <!-- 팔로잉 모달-->
      <div class="modal fade" id="following_modal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
        aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable modal-sm">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="staticBackdropLabel">팔로우</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <ul class="list-unstyled">
                <li><a class="dropdown-item" href="#">
                    아이디
                  </a></li>
                <li><a class="dropdown-item" href="#">
                    아이디
                  </a></li>
                <li><a class="dropdown-item" href="#">
                    아이디
                  </a></li>
                <li><a class="dropdown-item" href="#">
                    아이디
                  </a></li>

              </ul>
            </div>
          </div>
        </div>
      </div>

      <!-- 태그 및 페이지-->
      <div class="row">
        <!--태그-->
        <div class="col-md-2 tags">
          태그목록
          <hr>
          <a href="#"> tag(1)<br></a>
          <a href="#"> tags(2)<br></a>
        </div>
        <!--게시글들 -->
        <div class="col-md-10">
          <!--검색 -->
          <form action="d-flex">
            <section>
              <input class="form-control search" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-primary" type="submit">검색</button>
            </section>
          </form>
          <!-- 사진 썸네일, 글제목, 보이는 곳  -->
          <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-5">
            <div class="col-md-4">
              <div class="card " style="width: 100%">
                <a href="#">
                  <img src="<c:url value='/img/bootstrap.png' />" class="card-img-top" alt="...">
                </a>
                <div class="card-body">
                  <a href="#">
                    <h5 class="card-title">Card title</h5>
                  </a>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                    card's content.</p><br>
                  <p class="card-text text-muted">1분전</small></p>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card " style="width: 100%">
                <a href="#">
                  <img src="<c:url value='/img/java.jfif'/>" class="card-img-top img-fluid" alt="...">
                </a>
                <div class="card-body">
                  <a href="#">
                    <h5 class="card-title">Card title</h5>
                  </a>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                    card's content.</p>
                  <br>
                  <p class="card-text text-muted">2022년 3월 4일</small></p>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card 0" style="width: auto">
                <a href="#">
                  <img src="<c:url value='/img/spring.png'/>" class="card-img-top img-fluid" alt="...">
                </a>
                <div class="card-body">
                  <a href="#">
                    <h5 class="card-title">제목</h5>
                  </a>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                    card's content.</p>
                  <br>
                  <p class="card-text text-muted">3일전</small></p>
                </div>
              </div>
            </div>

          </div>

        </div>
      </div>
    </div> <!-- end container-->
<%@include file="../include/footer.jsp"%>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
      integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous">
    </script>
    
    <script>
      // 팔로우버튼 누를시 팔로잉, 다시클릭시 팔로우
      $(function () {
        $('.follow-button').click(function () {
          if ($(this).html() == '팔로우') {
            $(this).html('<i class="fa-solid fa-check"></i>&nbsp;팔로잉');
            $(this).css("background-color", "#C0D8C0")
          } else {
            $(this).html('팔로우');
            $(this).css("background-color", "gray");
          }
        });
      });
    </script>
    <script>
      $(document).ready(function () {
        $("#so").click(function () {
          $(location).attr("href", "https://www.naver.com/")
        });
        $("#btnD").click(function () {
          $(location).attr("href", "https://www.daum.net/")
        });
        $("#btnG").click(function () {
          $(location).attr("href", "https://www.google.com/")
        })
      });
    </script>
</body>

</html>