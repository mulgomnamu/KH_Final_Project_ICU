<%@page import="kh.com.medi.model.MediMemberDto"%>
<%@page import="kh.com.medi.model.MediQnaBbsDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<fmt:requestEncoding value="utf-8"/>
<style>
.refresh_btn1 em:before {content:'';display:inline-block;position:absolute;top:50%; height:16px;margin-top:-8px;background:url('../images/main/icon_refresh.png') no-repeat;vertical-align:top;}
.list_table{
border-top: 1px solid black;
}
.list_table th {
background-color:#f4f5f8;
padding:22px 38px;
text-align: left;
border-bottom:1px solid #d9d9d9;
}
.list_table td {
padding-left:20px;
border-bottom:1px solid #d9d9d9;
height: 60px;
}
</style>
<div id="container" class="hospitalguide"><!-- 1뎁스명 클래스 -->
	<div class="login"><!-- 2뎁스명 클래스 -->
		<!-- SUB SECTION -->
		<section id="sub_section">
			<!-- #LOCATION -->
			<!-- sub타이틀 시작 -->
			<div class="title-type01">
			</div>
			<!-- content 시작 -->
			<div class="content"> 
				<div class="inner_flogin">
				<!-- 이부분에 컨텐츠 시작 -->
					<form name="frmForm" id="_frmForm" method="post">
					<input type="hidden" name="seq" id="seq" value='${bbs.mem_seq}' size="60"/><!-- 질문의seq -->
					<table class="list_table" style="width:85%;">
					<colgroup>
					<col style="width:200px;" />
					<col style="width:auto;" />
					</colgroup>
					
					<tbody>	
						<tr class="id">
							<th>아이디</th>
							<td style="text-align: left">
								<input type="text" name="wid"  value='${login.id}' size="60"/>
							</td>
						</tr>
						<tr class="id">
							<th>진료과목 선택</th>
							
							<td style="text-align: left">
								<span class="form-text" style="width: 310px;">
							<label for="category" class="placeholder">카테고리</label>
							<span class="form-select">
								<span class="virtual_select">선택
								</span>
								<select id="category" name="category">
									<option value="choicehe">선택해주세요</option>
									<option value="가정의학과">가정의학과</option>
									<option value="결핵과">결핵과</option>
									<option value="내과">내과</option>
									<option value="노인전문">노인전문</option>
									<option value="마취과">마취과</option>	
									<option value="비뇨기과">비뇨기과</option>
									<option value="방사선과">방사선과</option>
									<option value="소아청소년과">소아청소년과</option>
									<option value="산부인과">산부인과</option>
									<option value="산후조리원">산후조리원</option>
									<option value="신경정신과">신경정신과</option>	
									<option value="성형외과">성형외과</option>	
									<option value="신경외과">신경외과</option>
									<option value="안과">안과</option>
									<option value="이빈인후과">이빈인후과</option>
									<option value="외과">외과</option>
									<option value="임상병리과">임상병리과</option>	
									<option value="알콜병원">알콜병원</option>	
									<option value="일반">일반</option>
									<option value="조산원">조산원</option>
									<option value="정형외과">정형외과</option>
									<option value="재활의학과">재활의학과</option>
									<option value="종합">종합</option>	
									<option value="치매">치매</option>	
									<option value="치과">치과</option>
									<option value="통증클리닉">통증클리닉</option>
									<option value="피부과">피부과</option>
									<option value="항문외과">항문외과</option>
									<option value="흉부외과">흉부외과</option>	
									<option value="한방">한방</option>		
									<option value="한방">한의원</option>	
									<option value="기타">기타</option>	
								 </select>
							</span>
							</span>
							</td>
						</tr>
						<tr>
							<th>제목</th>
								<td style="text-align: left">
								<span class="form-text">
								<input type="text" id="board_title" name="title" value="${bbs.title }" size="60"/>
								</span>
								</td>
						</tr>
						<tr>
							<th>내용</th>
							<td style="text-align: left">
								<textarea style="margin: 10px 0 10px 0;" rows="10" cols="50" name='content' id="_content">${bbs.content }</textarea>
							</td>
						</tr>
						<tr>
							<td colspan="2" style="height:50px; text-align:center;">
								<span>					
						 			<span>					
								<a href="#none" id="_btnLogin" class="btn-type02 btn-search refresh_btn1" style="cursor: pointer; width: 140px; margin: 20px;"><em style="padding:0px;">수정완료</em></a>
								</span>
								</span>
							</td>
						</tr>
					</tbody>
					
					</table>
					
					</form>
				<!-- 이부분에 컨텐츠 끝 -->
				</div>
			</div>
		</section>
	</div>
			<!-- // #LOCATION -->
	<!-- phone_num 끝 -->
</div>
<br><br><br>
<script type="text/javascript">
$("#_btnLogin").click(function() {	
	$("#_frmForm").attr({ "target":"_self", "action":"consultingupdateAf.do" }).submit();	
});
</script>
<script type="text/javascript">

$("#category").val("${bbs.category}").prop("selected", true); 

</script>
<script type="text/javascript"> 
var message = '${msg}'; 
var returnUrl = '${url}'; 
if(message != ""){
	alert(message);	
}
</script>
