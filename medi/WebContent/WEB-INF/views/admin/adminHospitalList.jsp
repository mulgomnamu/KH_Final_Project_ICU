<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<div id="container" class="hospitalguide"><!-- 1뎁스명 클래스 -->
	<div class="login"><!-- 2뎁스명 클래스 -->
		<!-- SUB SECTION -->
		<section id="sub_section">
			<!-- #LOCATION -->
			<!-- sub타이틀 시작 -->
			<div class="title-type01">
				<h2>관리자 페이지</h2>
				<em>병원 회원 목록</em>
			</div>
			<!-- content 시작 -->
			<div class="content"> 
				<div class="inner_flogin">
				

					<div>
						<div>
							<form name="frmForm1" id="searchForm" method="post" action="">
								<table border="1px">
									<tr>
										<td>검색 : </td>
										<td>
											<select id="_s_category" name="s_category">
												<option value="" <c:if test="${s_keyword eq '' }">selected</c:if>>선택</option>
												<option value="id" <c:if test="${s_keyword ne '' and s_category eq 'id'}">selected</c:if>>아이디</option>
												<option value="name" <c:if test="${s_keyword ne '' and s_category eq 'name'}">selected</c:if>>이름</option>			
											</select>
										</td>
										<td><input type="text" id="_s_keyword" name="s_keyword" value="${s_keyword}"/></td>
										<td><span><button type="button" id="searchBtn"> 검색 </button></span></td>
									</tr>
								</table>
								<input type="hidden" name="pageNumber" id="_pageNumber" value="${(empty pageNumber)?0:pageNumber}"/>						
								<input type="hidden" name="recordCountPerPage" id="_recordCountPerPage" value="${(empty recordCountPerPage)?10:recordCountPerPage}"/>
							</form>
						</div>
						<div>
							<input type="button" id="addYellowCard" value="경고 먹이기">
							<input type="button" id="delYellowCard" value="경고 줄이기">
						</div>
						<table class="list_table1">
							<col width="20px"><col width="100px"><col width="80px">
							<col width="180px"><col width="140px"><col width="70px">
							<col width="350px"><col width="100px"><col width="100px">
							<col width="150px"><col width="100px"><col width="100px">
							<col width="50px">
							<tr>
								<th><input type="checkbox" id="allCheckBox"></th>
								<th>아이디</th>
								<th>이름</th>
								<th>전화번호</th>
								<th>우편번호</th>
								<th>주소</th>
								<th>이메일</th>
								<th>병원소개</th>
								<th>채택점수</th>
								<th>탈퇴여부</th>
								<th>가입날짜</th>
								<th>회원구분</th>
							</tr>
							<c:forEach var="memberList" items="${loginList }">
								<tr>
									<td>
										<input type="checkbox" name="selectCheckBox" value="${memberList.seq }">
									</td>
									<td><span id="id${memberList.seq }">${memberList.id }</span></td>
									<td><span id="name${memberList.seq }">${memberList.name }</span></td>
									<td><span id="email${memberList.seq }">${memberList.email }</span></td>
									<td><span id="phone${memberList.seq }">${memberList.phone }</span></td>
									<td><span id="post${memberList.seq }">${memberList.post }</span></td>
									<td><span id="address${memberList.seq }">${memberList.address }</span></td>
									<td><span id="auth${memberList.seq }">${memberList.auth }</span></td>
									<td><span id="del${memberList.seq }">${memberList.del }</span></td>
									<td><span id="myimg${memberList.seq }">${memberList.myimg }</span></td>
									<td><span id="blacklist${memberList.seq }">${memberList.blacklist }</span></td>
									<td><span id="regdate${memberList.seq }">${memberList.regdate }</span></td>
									<td>
										<!-- Modal HTML embedded directly into document -->
										<div id="updateModal${memberList.seq }" class="modal">
											<span><h3>${memberList.name }님 회원 정보</h3></span>
											<form action="#none" id="updateForm${memberList.seq }" method="post">
												<table class="list_table1">
													<col width="100px"><col width="50px">
													<tr><th>이름</th><td><input type="text" name="name" value="${memberList.name }"><input type="hidden" name="seq" value="${memberList.seq }"></td></tr>
													<tr><th>이메일</th><td><input type="text" name="email" value="${memberList.email }"></td></tr>
													<tr><th>전화번호</th><td><input type="text" name="phone" value="${memberList.phone }"></td></tr>
													<tr><th>우편번호</th><td><input type="text" name="post" value="${memberList.post }"></td></tr>
													<tr><th>주소</th><td><input type="text" name="address" value="${memberList.address }"></td></tr>
													<tr><th>회원구분</th><td><input type="text" name="auth" value="${memberList.auth }"></td></tr>
													<tr><th>탈퇴여부</th><td><input type="text" name="del" value="${memberList.del }"></td></tr>
													<tr><th>프로필 사진</th><td><input type="text" name="myimg" value="${memberList.myimg }"></td></tr>
													<tr><th>Black List</th><td><input type="text" name="blacklist" value="${memberList.blacklist }"></td></tr>
												</table>
											</form>
											<button id="updateBtn" onclick="updateBtn(${memberList.seq });">수정</button>
										</div>
										
										<!-- Link to open the modal -->
										<p><a href="#updateModal${memberList.seq }" rel="modal:open">수정</a></p>
									</td>
								</tr>
							</c:forEach>
						</table>
					</div>
					
					<!-- 페이징 처리 -->
					<div id="paging_wrap">
						<jsp:include page="/WEB-INF/include/paging.jsp" flush="false">
							<jsp:param value="${s_category }" name="s_category"/>
							<jsp:param value="${s_keyword }" name="s_keyword"/>
							<jsp:param value="${pageNumber }" name="pageNumber"/>
							<jsp:param value="${pageCountPerScreen }" name="pageCountPerScreen"/>
							<jsp:param value="${recordCountPerPage }" name="recordCountPerPage"/>
							<jsp:param value="${totalRecordCount }" name="totalRecordCount"/>
						</jsp:include>
					</div>

				
				</div>
			</div>
		</section>
	</div>
			<!-- // #LOCATION -->
	<!-- phone_num 끝 -->
</div>