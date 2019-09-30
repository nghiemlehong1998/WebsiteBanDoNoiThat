<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f" %>
<jsp:include page="header/header.jsp"></jsp:include>
<form>
	<div class="row">
		<div class="col-12 col-md-8">

			<div class="form-group">
				<label for="exampleFormControlInput1">Thêm sản phẩm</label> <input
					class="form-control" 
					placeholder="Tên sản phẩm">
			</div>
			<div class="form-group">
				<textarea class="form-control" 
					rows="2" placeholder="Mô tả ngắn"></textarea>
			</div>
			<div class="form-group">
				<textarea class="form-control" 
					rows="3" placeholder="Chi tiết sản phẩm"></textarea>
			</div>
			<div class="form-group">
				<input class="form-control" placeholder="Giá">
			</div>
			<div class="form-group">
				<input class="form-control" placeholder="Số lượng">
			</div>
			
		</div>
		<div class="col-12 col-md-4">
			<div class="form-group">
				<label for="exampleFormControlSelect1">Chọn danh mục sản phẩm</label> <select
					class="form-control" >
					<c:forEach var= "u" items="${DanhMucSanPham}">
						<option>${u.getTenDanhMuc() }</option>
					</c:forEach>
					
					
				</select>
			</div>

			<div class="form-group">
				<label for="exampleFormControlFile1">Chọn ảnh đại diện</label> <input
					type="file" class="form-control-file" >
			</div>
			 <button type="submit" class="btn btn-primary mb-2">Lưu thông tin</button>
		</div>
	</div>
</form>
<jsp:include page="footer/footer.jsp"></jsp:include>