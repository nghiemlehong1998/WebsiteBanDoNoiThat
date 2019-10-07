<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f" %>
<jsp:include page="header/header.jsp"></jsp:include>


<form action="/WebsiteBanDoNoiThat/admin/edit-user2.htm" method="post">
	<div>
	</div>
	<div class="modal-header">
		<h5 class="modal-title" id="exampleModalLabel">Thay đổi thông tin</h5>
		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>
	<div class="modal-body">
		<div>
			<div class="form-group">
				<label for="formGroupExampleInput">Họ tên</label> <input name ="hoTen" type="text"
					class="form-control" id="formGroupExampleInput"
					placeholder="Họ tên" value="${user.getHoTen() }">
			</div>
			<div class="form-group">
				<label for="exampleFormControlSelect1">Giới tính</label>
				 <select  class="form-control" id="exampleFormControlSelect1" name="gioiTinh">
				 	<c:choose>
							<c:when test="${user.isGioiTinh() == true }">
								<option  selected="selected">Nam</option>
								<option>Nữ</option>
							</c:when>
							<c:when test="${user.isGioiTinh() == false }">
								<option selected="selected">Nữ</option>
								<option>Nam</option>
							</c:when>
					</c:choose>					
				</select>
				
			<div class="form-group">
				<label for="formGroupExampleInput">Ngày sinh</label> 
				 <input name="ngaySinh" class="form-control" type="date" value="${user.getNgaySinh() }" id="example-date-input">
			</div>
			
			<div class="form-group">
				<label for="formGroupExampleInput">Địa chỉ</label> 
				<input name="diaChi" type="text" class="form-control" id="formGroupExampleInput" placeholder="Địa chỉ" value="${user.getDiaChi() }">
			</div>
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput">Email</label>
				 <input name="email" type="text" class="form-control" id="formGroupExampleInput"placeholder="Email" value="${user.getEmail() }">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput">Số điện thoại</label> 
				<input name="dienThoai" type="text" class="form-control" id="formGroupExampleInput"placeholder="Số điện thoại" value="${user.getDienThoai() }">	
			</div>
		</div>

	</div>
	<div class="modal-footer">	
				<button name = "btnSaveChange" value="${user.getMaTaiKhoan() }" class="btn btn-primary">Save changes</button>
	</div>
</form>

<jsp:include page="footer/footer.jsp"></jsp:include>