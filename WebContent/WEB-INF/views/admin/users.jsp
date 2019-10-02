<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f" %>
<jsp:include page="header/header.jsp"></jsp:include>

        <!-- DataTables Example -->
        <div class="card mb-3">
          <div class="card-header">
            <i class="fas fa-table"></i>
           Danh sách thành viên</div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                  <tr>
                    <th>Họ tên</th>
                    <th>Giới tính</th>
                    <th>Ngày sinh</th>
                    <th>Địa chỉ</th>
                    <th>Số điện thoại</th>
                    <th>Nhóm quyền</th>
                    <th style="width:165px;">Chỉnh sửa</th>
                  </tr>
                </thead>
                <tfoot>
                  <tr>
                    <th>Họ tên</th>
                    <th>Giới tính</th>
                    <th>Ngày sinh</th>
                    <th>Địa chỉ</th>
                    <th>Số điện thoại</th>
                    <th>Nhóm quyền</th>
                    <th>Chỉnh sửa</th>
                  </tr>
                </tfoot>
                <tbody>
                <c:forEach var= "u" items="${Users}">
                  <tr>
                    <td>${u.getHoTen() }</td>
              		<td>
              			<c:choose>
							<c:when test="${u.isGioiTinh() == true }">Nam</c:when>
							<c:when test="${u.isGioiTinh() == false }">Nữ</c:when>
						</c:choose>
              		</td>
                  	<td>${u.getNgaySinh() }</td>
                  	<td>${u.getDiaChi() }</td>
                  	<td>${u.getDienThoai() }</td>  
                  	<td>${u.getMaNhomQuyen().getTenNhomQuyen() }</td> 
                    <td>
                    		<button  type="submit" class="btn btn-primary mb-2" data-toggle="modal"
						data-target="#editModal">Sửa thông tin</button>	
                    		<button  type="submit" class="btn btn-primary mb-2">Xóa</button>	                        				
                    </td> 
                  	              					                 
                  </tr>
                  </c:forEach>
                </tbody>
              </table>
              
              
              
            </div>
          </div>
          <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
        </div>
        	
	<!--Edit modal  -->
		<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
     		   <c:forEach var= "u" items="${Users}">
     		   		<c:choose></c:choose>
     		   </c:forEach>
     		
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
        <p class="small text-center text-muted my-5">
          <em>More table examples coming soon...</em>
        </p>
        		

<jsp:include page="footer/footer.jsp"></jsp:include>