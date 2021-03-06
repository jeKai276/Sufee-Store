<%-- 
    Document   : logo-update
    Created on : Aug 14, 2020, 11:35:23 AM
    Author     : ADMIN
--%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://cksource.com/ckfinder" prefix="ckfinder" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="widget/navbar.jsp" flush="true" />
<jsp:include page="widget/header.jsp" flush="true" />

<div class="breadcrumbs">
    <div class="col-sm-4">
        <div class="page-header float-left">
            <div class="page-title">
                <h1>Dashboard</h1>
            </div>
        </div>
    </div>
    <div class="col-sm-8">
        <div class="page-header float-right">
            <div class="page-title">
                <ol class="breadcrumb text-right">
                    <li><a href="#">Dashboard</a></li>
                    <li><a href="#">Table</a></li>
                    <li class="active">Data table</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="content mt-3">
    <div class="animated fadeIn">


        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <strong>Chỉnh sửa logo</strong> 
                    </div>
                    <div class="card-body card-block">
                        <f:form action="update-logo.htm" commandName="logo" method="POST"  class="form-horizontal">    
                            <f:hidden path="logoId" />

                            <div class="row form-group">
                                <div class="col col-md-3"><label for="logoImage" class=" form-control-label">Logo</label></div>
                                <div class="col-12 col-md-9">
                                    <small class="form-text text-muted">Chọn logo</small>
                                    <a id="btn-upload" class="btn btn-secondary " style="display: inline-block;margin-top: -6px">Chọn ảnh</a>
                                    <f:input  type="text" id="logoImage" readonly="true" multiple="false" path="logoImage" class="form-control" cssStyle="border-left: none; border-radius: 0;margin-left: -4px;max-width: 766px;display: inline-block;" />
                                    <div class="show-for-logo"/><img src="${pageContext.request.contextPath}/${logo.logoImage}" width="150" /></div>
                            </div>
                        </div>

                        <div class="row form-group">
                            <div class="col col-md-3"><label for="logoStatus" class=" form-control-label">Trạng thái</label></div>
                            <div class="col-12 col-md-9">
                                <select name="logoStatus" id="logoStatus" class="form-control">
                                    <option <c:if test="${logo.logoStatus == 1}">selected</c:if> value="1">Hiển thị</option>
                                    <option <c:if test="${logo.logoStatus == 0}">selected</c:if> value="0">Tạm ẩn</option>
                                    </select>
                                </div>
                            </div>


                            <div class="row form-group">
                                <div class="col col-md-3">
                                    <button type="submit" class="btn btn-success btn-sm">
                                        <i class="ti-check"></i> Cập nhật
                                    </button>
                                    <a href="logo.htm" type="reset" class="btn btn-danger btn-sm">
                                        <i class="ti-back-left"></i> Trở lại
                                    </a>
                                </div>
                            </div>
                    </f:form>
                </div>
            </div>
        </div>
    </div><!-- .animated -->
</div><!-- .content -->
</div><!-- /#right-panel -->
s

<jsp:include page="widget/footer.jsp" flush="true"/>
<script src="${pageContext.request.contextPath}/view/admin/ckfinder/ckfinder.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/view/admin/assets/bootstrap-notify-3.1.3/dist/bootstrap-notify.min.js" type="text/javascript"></script>
<c:if test="${not empty error}">
    <script>
        (function ($) {
            $.notify({
                title: '<strong>Error: </strong>',
                message: '${error}'
            }, {
                type: 'danger',
                allow_dismiss: false
            });
        })(jQuery);
    </script>
</c:if>
<script>
    (function ($) {
        $("#btn-upload").click(function (event) {
            event.preventDefault();
            var finder = new CKFinder();
            finder.selectActionFunction = function (url) {
                $("#logoImage").val(url);
                $(".show-for-logo").html("<img src='/Sufee_Store" + url + "' width='150' />");
            };
            finder.popup();
        });
    })(jQuery);
</script>
