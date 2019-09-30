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
                  </tr>
                </tfoot>
                <tbody>
                <c:forEach var= "u" items="${Users}">
                  <tr>
                    <td>${u.getHoTen() }</td>
                <%--   	<td>${u.isGioiTinh() }</td> --%>
                  	<%-- <td>${u.getNgaySinh() }</td> --%>
                  <%-- 	<td>${u.getDiaChi() }</td>
                  	<td>${u.getDienThoai() }</td>  --%>
                  	              					                 
                  </tr>
                  </c:forEach>
                </tbody>
              </table>
            </div>
          </div>
          <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
        </div>

        <p class="small text-center text-muted my-5">
          <em>More table examples coming soon...</em>
        </p>

<jsp:include page="footer/footer.jsp"></jsp:include>