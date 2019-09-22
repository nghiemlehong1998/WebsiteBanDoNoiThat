<%@ page pageEncoding="UTF-8"%>
<jsp:include page="header/header.jsp"></jsp:include>
<form>
	<div class="row">
		<div class="col-12 col-md-8">

			<div class="form-group">
				<label for="exampleFormControlInput1">Thêm sản phẩm</label> <input
					type="email" class="form-control" id="exampleFormControlInput1"
					placeholder="Tên sản phẩm">
			</div>
			<div class="form-group">
				<textarea class="form-control" id="exampleFormControlTextarea1"
					rows="2" placeholder="Mô tả ngắn"></textarea>
			</div>
			<div class="form-group">
				<textarea class="form-control" id="exampleFormControlTextarea1"
					rows="3" placeholder="Chi tiết sản phẩm"></textarea>
			</div>
		</div>
		<div class="col-12 col-md-4">
			<div class="form-group">
				<label for="exampleFormControlSelect1">Chọn danh mục</label> <select
					class="form-control" id="exampleFormControlSelect1">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
				</select>
			</div>

			<div class="form-group">
				<label for="exampleFormControlFile1">Chọn ảnh đại diện</label> <input
					type="file" class="form-control-file" id="exampleFormControlFile1">
			</div>
			 <button type="submit" class="btn btn-primary mb-2">Lưu thông tin</button>
		</div>
	</div>
</form>
<jsp:include page="footer/footer.jsp"></jsp:include>