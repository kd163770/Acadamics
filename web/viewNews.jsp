<%-- Document : viewNews Created on : May 23, 2023, 11:12:02 AM Author : Nguyen Minh --%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!DOCTYPE html>
    <html lang="en">

        <head>

            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <meta name="description" content="">
            <meta name="author" content="">
            <meta charset="utf-8" />
            <meta http-equiv="X-UA-Compatible" content="IE=edge" />
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
            <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
                  rel="stylesheet" />
            <link href="/SWP391_Group3/style/styles.css" rel="stylesheet" />
            <link href="/SWP391_Group3/style/userStyle.css" rel="stylesheet" />
            <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
            crossorigin="anonymous"></script>
            <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
                  rel="stylesheet">
            <title>${news.title}</title>

            <!-- Custom fonts for this template -->
            <link href="/SWP391_Group3//vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
                  type="text/css">
            <link
                href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
                rel="stylesheet">

            <!-- Custom styles for this template -->
            <link href="/SWP391_Group3/css/sb-admin-2.min.css" rel="stylesheet">

            <!-- Custom styles for this page -->
            <link href="/SWP391_Group3/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

        </head>

        <body id="page-top">

            <!-- Page Wrapper -->
            <div id="wrapper">

                <!-- Sidebar -->
                <c:if test="${sessionScope.adminaccount.type_id != 1}">
                    <%@include file="employeeSidebar.jsp" %>
                </c:if>
                <c:if test="${sessionScope.adminaccount.type_id == 1}">
                    <%@include file="adminSidebar.jsp" %>
                </c:if>
                <!-- End of Sidebar -->

                <!-- Content Wrapper -->
                <div id="content-wrapper" class="d-flex flex-column">

                    <!-- Main Content -->
                    <div id="content">

                        <!-- Topbar -->
                        <%@include file="topBar.jsp" %>
                        <!-- End of Topbar -->

                        <!-- Begin Page Content -->
                        <div class="container-fluid">

                            <!-- Page Heading -->
                            <h1 class="h3 mb-2 text-gray-800">News Management</h1>

                            <!-- DataTales Example -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3"
                                     style="display: flex; justify-content: space-between;">
                                    <h6 class="m-0 font-weight-bold text-primary">${news.title}</h6>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <div>
                                            <div style="text-align: center">
                                                <img style="width: 50%" src="${news.image}" />
                                            </div>
                                            <p>${news.content}</p>
                                            
                                            <div style="text-align: right">
                                                <p>From:
                                                    <fmt:formatDate pattern="dd-MM-yyyy"
                                                                    value="${news.createdDate}" /> , By:
                                                    ${requestScope.adminName}
                                                </p>
                                                <c:if test="${news.modifiedDate != null}">
                                                    <p>Modified from:
                                                        <fmt:formatDate pattern="dd-MM-yyyy"
                                                                        value="${news.modifiedDate}" />
                                                    </p>
                                                </c:if>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.container-fluid -->

                    </div>

                    <!-- Footer -->
                    <footer class="sticky-footer bg-white">
                        <div class="container my-auto">
                            <div class="copyright text-center my-auto">
                                <span>Copyright &copy; Your Website 2020</span>
                            </div>
                        </div>
                    </footer>
                    <!-- End of Footer -->

                </div>
                <!-- End of Content Wrapper -->

            </div>
            <!-- End of Page Wrapper -->

            <!-- Scroll to Top Button-->
            <a class="scroll-to-top rounded" href="#page-top">
                <i class="fas fa-angle-up"></i>
            </a>

            <!-- Logout Modal-->
            <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
                 aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">Select "Logout" below if you are ready to end your current
                            session.</div>
                        <div class="modal-footer">
                            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                            <a class="btn btn-primary" href="adminlogout">Logout</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Bootstrap core JavaScript-->
            <script src="/SWP391_Group3/vendor/jquery/jquery.min.js"></script>
            <script src="/SWP391_Group3/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

            <!-- Core plugin JavaScript-->
            <script src="/SWP391_Group3/vendor/jquery-easing/jquery.easing.min.js"></script>

            <!-- Custom scripts for all pages-->
            <script src="/SWP391_Group3/js/sb-admin-2.min.js"></script>

            <!-- Page level plugins -->
            <script src="/SWP391_Group3/vendor/datatables/jquery.dataTables.min.js"></script>
            <script src="/SWP391_Group3/vendor/datatables/dataTables.bootstrap4.min.js"></script>

            <!-- Page level custom scripts -->
            <script src="/SWP391_Group3/js/demo/datatables-demo.js"></script>

        </body>

    </html>
