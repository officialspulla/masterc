<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>AdminLTE | Data Tables</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- bootstrap 3.0.2 -->
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- font Awesome -->
        <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="../css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <!-- DATA TABLES -->
        <link href="../css/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="../css/AdminLTE.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="skin-blue">
        <!-- header logo: style can be found in header.less -->
        <%@ include file="admin_header.jsp" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <div class="wrapper row-offcanvas row-offcanvas-left">
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="left-side sidebar-offcanvas">
                <!-- sidebar: style can be found in sidebar.less -->
                <%@ include file="admin_sidebar.jsp" %>
                <!-- /.sidebar -->
            </aside>

            <!-- Right side column. Contains the navbar and content of the page -->
            <aside class="right-side">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Product Item Description
                        <small>Preview</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li><a href="#">Forms</a></li>
                        <li class="active">General Elements</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-xs-12">

                            
                            <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">Product Item Detail with Full Description
</h3>                                    
                                </div><!-- /.box-header -->
                                <div class="box-body table-responsive">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>Item Name</th>
                                                <th>Item Price</th>
                                                <th>Discription</th>
                                                <th>Status</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${itemlist}" var="item">
                                            <tr>
                                                <td>${item.name}</td>
                                                <td>${item.cost}</td>
                                                <td>${item.des}</td>
                                                <c:choose>
                                                <c:when test="${item.status eq 1 }">
                                                <td><span class="label label-primary">Enable</span></td>
                                                </c:when>
                                                <c:otherwise>
                                                <td><span class="label label-success">Disable</span></td>
                                                </c:otherwise>
                                                </c:choose>
                                                <td>
                                                <table><tr>
                                                <td>
                                                <a href="editItem?itemId=${item.id}">
                                                <button class="btn btn-primary btn-sm"><i class="glyphicon glyphicon-pencil"></i></button>
                                                </a>
                                                </td>
                                                <c:choose>
                                                <c:when test="${item.status eq 1}">
                                                
                                                <td>
                                                <a href="deactivateItem?itemId=${item.id}">
                                                <button class="btn btn-warning btn-sm"><i class="glyphicon glyphicon-remove-circle"></i></button>
                                                </a>
                                                </td>
                                                </c:when>
                                                <c:otherwise>
                                                
                                                <td>
                                                <a href="activateItem?itemId=${item.id}">
                                                <button class="btn btn-info btn-sm"><i class="glyphicon glyphicon-ok"></i></button>
                                                </a>
                                                </td>
                                                </c:otherwise>
                                                </c:choose>
                                                
                                                <%-- 
                                                <td>
                                                <a href="deleteItem?itemId=${item.id}">
                                                <button class="btn btn-danger btn-sm"><i class="glyphicon glyphicon-trash"></i></button>
                                                </a>
                                                </td>
                                                --%>
                                                
                                                </tr></table>
                                                </td>
                                            </tr>
                                            </c:forEach>
                                            
                                            
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>Item Name</th>
                                                <th>Item Price</th>
                                                <th>Discription</th>
                                                <th>Status</th>
                                                <th>Action</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div>
                    </div>
                        
                </section><!-- /.content -->
            </aside><!-- /.right-side -->
        </div><!-- ./wrapper -->



        <!-- jQuery 2.0.2 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <script src="../js/jquery-2.0.2.min.js"></script>
        <!-- Bootstrap -->
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
        <!-- DATA TABES SCRIPT -->
        <script src="../js/plugins/datatables/jquery.dataTables.js" type="text/javascript"></script>
        <script src="../js/plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script>
        <!-- AdminLTE App -->
        <script src="../js/AdminLTE/app.js" type="text/javascript"></script>

        <!-- page script -->
        <script type="text/javascript">
            $(function() {
                $("#example1").dataTable();
                $('#example2').dataTable({
                    "bPaginate": true,
                    "bLengthChange": false,
                    "bFilter": false,
                    "bSort": true,
                    "bInfo": true,
                    "bAutoWidth": false
                });
            });
        </script>
        
        

    </body>
</html>