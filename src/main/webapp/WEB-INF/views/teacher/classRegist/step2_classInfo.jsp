<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
      <div class="container" style="width: 90%;margin :0 auto; display: none;" id="registPage2">
        <!-- 정규클래스등록1-->
        <div class="row">
          <div class="col-md-2 step" >클래스 기본정보</div>
          <div class="col-md-2 nowStep" >클래스 소개</div>
          <div class="col-md-3 step" >클래스 일정 및 가격</div>
          <div class="col-md-2 step">클래스 부가정보</div>
          <div class="col-md-3 step">클래스 등록 및 약관동의</div>
        </div>
        <br><br><br>
    
        <h6>클래스 소개 입력</h6>
        <div style="font-size: 15px; opacity: .7">
          - 클래스 소개를 자세히 작성해주세요.(이력 및 경력 사항은 프로필에 작성)<br>
          - 예시) 클래스 만의 <strong>특징, 장점, 효과, 배울 수 있는 내용, 제공되는 재료, 준비물 여부, 선택 가능한 색, 맛, 향, 데코 종류의 간단한 예시, 계절 및 수급상황에 따라
            달라지는 여부, 레시피제공 여부 등 수업의 전반적인 소개를 자세히 작성해주세요.</strong><br>
          - 상시모집의 경우 클래스당 수업인원, 가능한 시간, 휴무 등도 작성해주세요.<br>
          - 개인정보 및 SNS는 게시할 수 없습니다.
        </div>
        <div class="row">
          <div class="col-md-12" align="right" style="font-size: small;">0/1000</div>
        </div>
        <div class="form-group">
          <textarea class="form-control" rows="10" name="intro"></textarea>
        </div>
        <br><br><hr><br><br>
        <h6>클래스 완성작 등록<b> *</b></h6>
            <div style="font-size: 15px; opacity: .7">
              - 클래스의 완성작 사진을 올려주세요.<br>
              - 제일 왼쪽부터 등록해주세요.<br>
              - 클래스 완성작은 최대 2개 까지 등록 가능 합니다.
            </div>
            <br>
            <div class="row">
              <div class="col-md-3" >
                <input type="text" placeholder="완성작제목" style="width: 70%;" name="pieceTitle">
                <br><br>
                <div class="content-img-area4" id="contentImgArea4" style="width: 70%;">
                  <img id="contentImg4" style="width: 100%;" height="120">
                </div>
              </div>
              <div class="col-md-3">
                <input type="text" placeholder="완성작제목" style="width: 70%;" name="pieceTitle">
                <br><br>
                <div class="content-img-area5" id="contentImgArea5" style="width: 70%;">
                  <img id="contentImg5" style="width: 100%;" height="120">
                </div>
              </div>
              <div class="thumbnail-file-area">
                <input type="file" id="thumbnailImg4" name="thumbnailImg4" onchange="loadImg(this,4)">
                <input type="file" id="thumbnailImg5" name="thumbnailImg5" onchange="loadImg(this,5)">
              </div>
            </div>
            <br><br>
            <h6>클래스 완성작 설명<b>*</b></h6>
            <div style="font-size: 15px; opacity: .7">
              - 완성작의 대략적인 사이즈, 개수, 용량, 포장방법 등을 적어주세요.<br>
              ex) 100g 짜리 2개완성, 40*32 사이즈, 9온즈, 전용박스에 포장, opp봉투에 포장 등<br>
            </div>
            <br>
            <div class="form-group">
              <textarea class="form-control" rows="5" name="cExpl"></textarea>
            </div>
            <br><br><hr><br><br>

            <h6>커리큘럼 상세등록<b>*</b></h6>
            <!-- /커리큘럼추가 -->
            <div class="row" style="border : 1px solid rgba(0, 0, 0, 0.2)">
              <div class="col-md-3" style="margin-top: 20px;">
                <div style="font-size: 15px; margin-bottom: 10px;"><br></div>
                <div class="form-group">
                  <select class="form-control">
                    <option value="1" id="selectStep">단계</option>
                  </select>
                </div>
              </div>
              <div class="col-md-9" style="margin-top: 20px;">
                <div style="font-size: 15px; margin-bottom: 10px; opacity: .7">
                  - 수업 순서의 제목을 입력해주세요. ex) 재료소개, 도안 고르기 등
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" id="curriName">
                </div>
              </div>
              
              <div class="col-md-12">
                <p>세부내용</p>
              </div>
              <div class="col-md-12"style="font-size: 15px; margin-bottom: 10px; opacity: .7">
                - 세부내용을 입력해주세요. <br>
                - ex) 재료소개, 도안 고르기 등
              </div>
              <div class="col-md-12">
                <textarea class="form-control" rows="5" id="curriContent"></textarea>
              </div>
              <div class="col-md-12" align="center">
                <button type="button" style="margin: 15px 0 15px 0;" onclick="setCurriculum();"> +입력</button>
              </div>
            </div>
            <br>
            <!-- /커리큘럼추가 -->
            <!-- 커리큘럼목록 -->
            <table class="table table-bordered" >
              <tbody id="curriculum">
                <tr>
                  <th>순서</th>
                  <th>제목</th>
                  <th style="width: 60%;">내용</th>
                  <th> 수정삭제버튼 </th>
                </tr>
                <tr>
                  <td colspan="4" align="center" id="noneCurri" value="0" name="curriStep">등록된 커리큘럼이 없습니다.</td>
                </tr>

              </tbody>
            </table>

            <!-- /커리큘럼목록 -->
            <br>
            <hr><br>
            <div>

            </div>
            <button type="button" onclick="movePage(0);">이전</button>
            <button type="button" onclick="movePage(2);" >다음</button>
      </div>
</body>
</html>