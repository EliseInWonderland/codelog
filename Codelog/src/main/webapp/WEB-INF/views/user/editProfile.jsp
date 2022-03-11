<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../include/header.jsp" %>  
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>

  <style>
    /* 회원정보수정 페이지 css */
    @import url("<c:url value='/css/editProfile.css'/>");
  </style>
</head>

<body>
  

  <!-- 회원정보 수정 페이지 바디 시작 -->
  <div class="container px-1 py-5 mt-5" id="user-modify-container">
    <div class="row">
      <div class="col-md-1"></div>
      <div class="col-md-3">
        <div class="row mb-5">
          <div class="col-md-12">
            <!-- 프로필 이미지 -->
            <img src="<c:url value='/img/user_icon.png'/>" id="img-preview" class="img-circle" alt="" width="130px" height="130px">
            <!-- 이미지 업로드 버튼 -->
            <label for="img_upload" class="upload-btn">이미지 업로드</label>
            <input type="file" class="img-upload" id="img_upload">
            <!-- 이미지 삭제 버튼 -->
            <button type="button" id="img-del-btn" class="btn btn-light del-btn">이미지 삭제</button>
          </div>
        </div>
      </div>
      <!-- 닉네임, 자기소개 영역 -->
      <div class="col-md-8 info-area">
        <div class="row">
          <h3 class="nickname">닉네임</h3>
          <p class="profile">자기소개자기소개자기소개</p>
        </div>
        <div class="row">
          <div class="col-md-2">
            <button class="mod-btn btn btn-primary">수정</button>
          </div>
        </div>
      </div>
      <!-- 수정 버튼 눌렀을 때 보일 화면 -->
      <div class="col-md-8 mod-info">
        <input type="text" id="nick-input" value="닉네임"> <br>
        <textarea name="" id="profile-input" cols="50" rows="4" class="mt-3">자기소개</textarea>
        <div class="row">
          <div class="col-md-2">
            <button class="save btn btn-primary">저장</button>
          </div>
        </div>
      </div>
    </div>
    <!-- 회원정보 수정 폼 시작 -->
    <form action="#" class="user-info">
      <div class="mb-3 row">
        <div class="col-md-1"></div>
        <div class="col-md-3">
          <label for="id" class="col-md-12 col-form-label"><b>아이디</b></label>
        </div>
        <div class="col-md-4">
          <input type="text" readonly class="form-control-plaintext" id="id" value="아이디아이디">
        </div>
        <div class="col-md-4"></div>
      </div>
      <hr>
      <div class="mb-3 row">
        <div class="col-md-1"></div>
        <div class="col-md-3">
          <label for="pw" class="col-md-12 col-form-label"><b>비밀번호</b></label>
        </div>
        <div class="col-md-3">
          <input type="password" class="form-control" id="pw" value="비번">
        </div>
        <div class="col-md-5"></div>
      </div>
      <hr>
      <div class="mb-3 row">
        <div class="col-md-1"></div>
        <div class="col-md-3">
          <label for="pwChk" class="col-form-label"><b>비밀번호 확인</b></label>
        </div>
        <div class="col-md-3">
          <input type="password" class="form-control" id="pwChk" value="비번확인">
        </div>
        <div class="col-md-5"></div>
      </div>
      <hr>
      <div class="mb-3 row">
        <div class="col-md-1"></div>
        <div class="col-md-3">
          <label for="nick" class="col-md-12 col-form-label"><b>닉네임</b></label>
        </div>
        <div class="col-md-3">
          <input type="text" class="form-control" id="nick" value="닉네임">
        </div>
        <div class="col-md-5"></div>
      </div>
      <hr>
      <div class="mb-3 row">
        <div class="col-md-1"></div>
        <div class="col-md-3">
          <label for="email" class="col-md-12 col-form-label"><b>이메일</b></label>
        </div>
        <div class="col-md-8">
          <input type="text" class="form-control email-id " placeholder="E-mail" id="">
          <span class="at">@</span>
          <select name="" id="" class="form-select mail-select">
            <option selected value="naver">naver.com</option>
            <option value="google">google.com</option>
            <option value="daum">hanmail.net</option>
          </select>
        </div>
        <div class="col-sm-7"></div>
      </div>
      <!-- 수정, 취소 버튼 -->
      <div class="mb-3 row text-center">
        <div class="col-md-3"></div>
        <div class="col-md-6 mt-5">
          <button type="button" class="btn btn-primary mod-submit-btn">수정</button>
          <button type="button" class="btn btn-light mod-cancel-btn">취소</button>
        </div>
        <div class="col-md-3"></div>
      </div>
      <!-- 회원탈퇴 버튼 -->
      <div class="mb-3 row">
        <div class="col-md-10"></div>
        <div class="col-md-2">
          <button type="button" class="btn btn-dark" style="float: right;">회원탈퇴</button>
        </div>
      </div>
    </form>
  </div>
  
 <%@ include file="../include/footer.jsp" %>

  <script>
    // start jQuery
    $(document).ready(function () {
      // 닉네임/자기소개 수정 인풋창 보여주기
      $('.mod-btn').click(function () {
        console.log('수정버튼 클릭됨');
        $('.info-area').hide();
        $('.mod-info').show();
      });

      // 닉네임/자기소개 수정 인풋창 숨겨주기
      $('.save').click(function () {
        console.log('저장버튼 클릭됨');
        var nick = $('#nick-input').val();
        var profile = $('#profile-input').val();
        $('.nickname').text(nick);
        $('.profile').text(profile);
        $('.mod-info').hide();
        $('.info-area').show();
      });

      //프로필 이미지 업로드 시 미리보기
      $('#img_upload').change(function () {
        readURL(this);
      });

      function readURL(input) {
        if (input.files && input.files[0]) {
          var reader = new FileReader();
          reader.onload = function (e) {
            $('#img-preview').attr('src', e.target.result);
          }
          reader.readAsDataURL(input.files[0]);
        }
      }

      //프로필 이미지 삭제
      $('#img-del-btn').click(function (e) {
        $('#img-preview').attr('src', '/img/user_icon.png');
      });

    }); // end jQuery
  </script>
  <!-- 회원정보 수정 페이지 바디 끝 -->
</body>

</html>