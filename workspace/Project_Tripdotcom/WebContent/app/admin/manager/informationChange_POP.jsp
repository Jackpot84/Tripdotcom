<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Modal -->
        <div class="modal fade" id="InformationChange" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <form action="/informationChange.mg" name="informationChange" method="post">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">관리자 정보 수정</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
	                        <div class="row">
	                            <div class="col-sm-6">
	                                <div class="form-group">
	                                    <label>로그인계정</label>
	                                    <input class="form-control" type="text" Disabled placeholder="${manager.manager_Issued_Email }">
	                                </div>
	                            </div>
	                            <div class="col-sm-6">
	                                <div class="form-group">
	                                    <label>아이디</label>
	                                    <input class="form-control" type="text" Disabled placeholder="${manager.manager_Issued_Email }">
	                                </div>
	                            </div>
	                        </div>
	                        <div class="row">
	                            <div class="col-sm-6">
	                                <div class="form-group">
	                                    <label>가입일자</label>
	                                    <input class="form-control" type="text" Disabled placeholder="${manager.manager_joindate }">
	                                </div>
	                            </div>
	                            <div class="col-sm-6">
	                                <div class="form-group">
	                                    <label>마지막접속일자</label>
	                                    <input class="form-control" type="text" Disabled placeholder="${manager.manager_LastAccessdate }">
	                                </div>
	                            </div>
	                        </div>
	                        <div class="row">
	                            <div class="col-sm-6">
	                                <div class="form-group">
	                                    <label>비밀번호 변경 <span class="required">*</span></label>
	                                    <input class="form-control" type="text" name="manager_Issue_password">
	                                </div>
	                            </div>
	                            <div class="col-sm-6">
	                                <div class="form-group">
	                                    <label>비밀번호 확인<span class="required">*</span></label>
	                                    <input class="form-control" type="text" name="manager_Issue_password_check">
	                                </div>
	                            </div>
	                        </div>
	                        <div class="row">
	                            <div class="col-sm-6">
	                                <div class="form-group">
	                                    <label>성</label>
	                                    <input class="form-control" type="text" name="manager_lastname">
	                                </div>
	                            </div>
	                            <div class="col-sm-6">
	                                <div class="form-group">
	                                    <label>이름</label>
	                                    <input class="form-control" type="text" name="manager_firstname">
	                                </div>
	                            </div>
                            </div>
	                        <div class="row">   
	                            <div class="col-sm-6">
	                                <div class="form-group">
	                                    <label>성별</label>
	                                    <div class="form-group row">
	                                        <div class="col-sm-6 custom-control custom-radio">
	                                           &nbsp;&nbsp;
	                                            <input class="custom-control-input" type="radio" id="customRadio1" name="manager_gender" value="남">
	                                            <label for="customRadio1" class="custom-control-label">남</label>
	                                        </div>
	                                        <div class="col-sm-6 custom-control custom-radio">
	                                            <input class="custom-control-input" type="radio" id="customRadio2" name="manager_gender" value="여" checked>
	                                            <label for="customRadio2" class="custom-control-label">여</label>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="row">
	                            <div class="col-sm-6">
	                                <div class="form-group">
	                                    <label>회사명</label>
	                                    <input class="form-control" type="text" name="manager_Company">
	                                </div>
	                            </div>
	                            <div class="col-sm-6">
	                                <div class="form-group">
	                                    <label>부서</label>
	                                    <input class="form-control" type="text" name="manager_Department">
	                                </div>
	                            </div>
	                        </div>
	                        <div class="row">
	                            <div class="col-sm-6">
	                                <div class="form-group">
	                                    <label>연락처</label>
	                                    <input class="form-control" type="text" name="manager_PhoneNumber">
	                                </div>
	                            </div>
	                            <div class="col-sm-6">
	                                <div class="form-group">
	                                    <label>이메일</label>
	                                    <input class="form-control" type="text" name="manager_Using_Email">
	                                </div>
	                            </div>
	                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                        <button type="button" class="btn btn-primary" onclick="sendit()">수정</button>
                        <!-- <input type="submit" class="btn btn-primary" value="Save changes"> -->
                    </div>
                </div>
				</form>	
            </div>
        </div>
        
        <script>

        function sendit(){
        	let frm = document.informationChange;
        	let pw = frm.manager_Issue_password;
        	let pw_check = frm.manager_Issue_password_check;
        	
        	// 비밀번호 비밀번호 확인 일치 여부
        	if(pw.value != pw_check.value){
        		alert("비밀번호가 일치하지 않습니다.");
        		userpw_re.focus();
        		return false;
        	}
        	if(pw.value == null || pw.value == ''){
        		alert("비밀번호를 입력하세요.");
        		userpw_re.focus();
        		return false;
        	}
        	
        	frm.submit();
       	}
        </script>