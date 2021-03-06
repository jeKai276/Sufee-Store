<%-- 
    Document   : admin-profile
    Created on : Jul 6, 2020, 2:02:24 PM
    Author     : ASUS
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="widget/header.jsp" flush="true"/>
<jsp:include page="widget/navbar.jsp" flush="true"/>
<div id="right-panel" class="right-panel" >
    <header id="header" class="header">

        <div class="header-menu">

            <div class="col-sm-7">
                <a id="menuToggle" class="menutoggle pull-left"><i class="fa fa fa-tasks"></i></a>
                <div class="header-left">
                    <button class="search-trigger"><i class="fa fa-search"></i></button>
                    <div class="form-inline">
                        <form class="search-form">
                            <input class="form-control mr-sm-2" type="text" placeholder="Search ..." aria-label="Search">
                            <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
                        </form>
                    </div>
                    <div class="dropdown for-notification">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="notification" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="ti-shopping-cart"></i>
                            <c:if test="${not empty countNotifyOrder}">
                                <span class="count bg-danger">${countNotifyOrder}</span>
                            </c:if>
                        </button>
                        <div class="dropdown-menu" aria-labelledby="notification">
                            <p class="red">Đơn hàng chưa giao</p>
                            <c:forEach items="${listOrder}" var="notifyOrder">
                                <a class="dropdown-item media bg-flat-color-0" href="<%=request.getContextPath()%>/admin/orders-detail.htm?orderId=${notifyOrder.orderId}">
                                    <span class="message media-body" >
                                        <span class="name float-left">${notifyOrder.email}</span>
                                        <p class="time float-left"><fmt:formatNumber value="${notifyOrder.orderTotalAmount}"/>₫</p>
                                        <p class="time float-left"><fmt:formatDate pattern="dd/MM/yyyy" value="${notifyOrder.createDate}"/></p>
                                    </span>
                                </a>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="dropdown for-message">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="message" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="ti-email" title="Phản hồi khách hàng"></i>
                            <c:if test="${not empty countNotifyFeedback}">
                                <span class="count bg-primary">${countNotifyFeedback}</span>
                            </c:if>
                        </button>
                        <div class="dropdown-menu" aria-labelledby="message">
                            <c:forEach items="${listFeedback}" var="notifyFeedback">
                                <a class="dropdown-item media bg-flat-color-0" href="<%=request.getContextPath()%>/admin/feedback-detail.htm?feedbackId=${notifyFeedback.feedbackId}">
                                    <span class="message media-body" >
                                        <span class="name float-left">${notifyFeedback.fullname}</span>
                                        <p class="time float-left">${notifyFeedback.content}</p>
                                        <p class="time float-left"><fmt:formatDate pattern="dd/MM/yyyy" value="${notifyFeedback.feedbacksTime}"/></p>
                                    </span>
                                </a>
                            </c:forEach>
                            <a href="<%=request.getContextPath()%>/admin/feedback.htm"><button style="width: 100%" type="button" class="btn btn-outline-secondary btn-sm">Xem thêm </button></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-5">
                <c:if test="${not empty InfoAdmin}">
                    <div class="user-area dropdown float-right">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="user-avatar rounded-circle" src="${pageContext.request.contextPath}/view/admin/uploads/admin.jpg" alt="User Avatar">
                        </a>
                        <div class="user-menu dropdown-menu">
                            <a class="nav-link" href="${pageContext.request.contextPath}/admin/info-admin.htm"><i class="mr-2 fa fa-user"></i> Thông tin </a>
                            <a class="nav-link" href="logout.htm"><i class="mr-2 fa fa-power-off"></i> Logout</a>
                        </div>
                    </div>
                    <div class="float-right"  style="margin: 7px 14px 0px 0px;"id="">
                        <a href="#">${InfoAdmin.fullname}</a>
                    </div>
                </c:if>
            </div>
        </div>
    </header>
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
                        <li><a href="#">UI Elements</a></li>
                        <li class="active">Cards</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="content mt-3">
        <div class="animated fadeIn">
            <div class="row">


                <div class="col-md-4">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title mb-3">Tài khoản </strong>
                        </div>
                        <%--<f:form action="info-customer" commandName="customer" method="GET">--%>
                        <div class="card-body">
                            <div class="mx-auto d-block">
                                <img style="max-width: 100%;width: 160px;height: 160px;" class="rounded-circle mx-auto d-block" src="${pageContext.request.contextPath}/view/client/uploads/images/Customers/${customer.avatar}" alt="Card image cap">
                                <h5 class="text-sm-center mt-2 mb-1">${customer.fullname}</h5>
                                <div class="text-sm-center">
                                    <c:if test="${customer.customerStatus == -1}">
                                        <span class="badge badge-pill badge-warning" style="padding: 4px 9px 5px 9px;">Chưa kích hoạt </span>
                                    </c:if>
                                    <c:if test="${customer.customerStatus == 1}">
                                        <span class="badge badge-pill badge-success" style="padding: 4px 9px 5px 9px;">Đã kích hoạt</span>
                                    </c:if>
                                    <c:if test="${customer.customerStatus == 0}">
                                        <span class="badge badge-pill badge-danger" style="padding: 4px 9px 5px 9px;">Đã bị khóa</span>
                                    </c:if>
                                </div>
                                <hr>
                                <h5 class="text-sm mt-2 mb-1">Thông tin cá nhân</h5>
                                <div class="location text-left text-info"><i class="menu-icon mr-2 text-info  fa fa-user"></i>Giới tính: <c:if test="${customer.gender == 0}">Nữ</c:if><c:if test="${customer.gender == 1}">Nam</c:if></div>
                                <div class="location text-left text-info"><i class="menu-icon mr-2 text-info  fa fa-calendar-o"></i>Ngày sinh: <fmt:formatDate pattern = "dd-MM-yyy"  value = "${customer.birthday}" /></div>
                                <div class="location text-left text-info"><i class="menu-icon mr-2 text-info  ti-email"></i>Email: ${customer.email}</div>
                                <div class="location text-left text-info"><i class="menu-icon mr-2 text-info  fa fa-phone"></i>Điện thoại: ${customer.phone}</div>
                                <div class="location text-left text-info"><i class="menu-icon mr-2 text-info  ti-eye"></i>Địa chỉ: ${customer.customerAddress}</div>

                                <hr>
                                <div class="btn btn-success btn-sm">
                                    <a class="location text-left text-white" href="<%=request.getContextPath()%>/admin/customers.htm" data-toggle="tooltip" data-placement="top-center" title="Chỉnh Sửa"><i class="ti-back-left"></i> Trở lại</a>
                                </div>
                                <div class="btn btn-danger btn-sm">
                                    <a class="location text-left text-white" href="<%=request.getContextPath()%>/admin/update-customer.htm?customerId=${customer.customerId}" data-toggle="tooltip" data-placement="top-center" title="Chỉnh Sửa">Chỉnh sửa</a>
                                </div>

                            </div>
                        </div>
                        <%--</f:form>--%>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title mb-3">Thông tin giao dịch</strong>
                        </div>
                        <div class="card-body">

                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="cmtproduct-tab" data-toggle="tab" href="#cmtproduct" role="tab" aria-controls="cmtproduct" aria-selected="true">Bình luận sản phẩm</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="cmtnew-tab" data-toggle="tab" href="#cmtnew" role="tab" aria-controls="cmtnew" aria-selected="false">Bình luận tin tức</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="cmtorder-tab" data-toggle="tab" href="#cmtorder" role="tab" aria-controls="cmtorder" aria-selected="false">Các đơn đã mua</a>
                                </li>
                            </ul>
                            <div class="tab-content pl-3 p-1" id="myTabContent">
                                <div class="tab-pane fade show active" id="cmtproduct" role="tabpanel" aria-labelledby="cmtproduct-tab">
                                    <div class="card-body ">
                                        <div class="col-md-12">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">Sản phẩm</th>
                                                        <th scope="col">Bình luận</th>
                                                        <th scope="col">Đánh giá</th>
                                                        <th scope="col">Thời gian</th>
                                                        <th scope="col">Hành động</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">1</th>
                                                        <th scope="row">1</th>
                                                        <th scope="row">1</th>
                                                        <th scope="row">1</th>
                                                        <th scope="row">1</th>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="cmtnew" role="tabpanel" aria-labelledby="cmtnew-tab">
                                    <div class="card-body ">
                                        <div class="col-md-12">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">Bài viết</th>
                                                        <th scope="col">Nội dung</th>
                                                        <th scope="col">Thời gian</th>
                                                        <th scope="col">Hành động</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">1</th>
                                                        <th scope="row">1</th>
                                                        <th scope="row">1</th>
                                                        <th scope="row">1</th>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="cmtorder" role="tabpanel" aria-labelledby="cmtorder-tab">
                                    <div class="card-body ">
                                        <div class="col-md-12">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">Mã đơn hàng</th>
                                                        <th scope="col">Ngày đặt</th>
                                                        <th scope="col">Tổng tiền</th>
                                                        <th scope="col">Đại chỉ nhận hàng</th>
                                                        <th scope="col">Hành động</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">1</th>
                                                        <th scope="row">1</th>
                                                        <th scope="row">1</th>
                                                        <th scope="row">1</th>
                                                        <th scope="row">1</th>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div><!-- .row -->
        </div><!-- .animated -->
    </div><!-- .content -->


</div><!-- /#right-panel -->

<!-- Right Panel -->
<jsp:include page="widget/footer.jsp" flush="true"/>