<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
     <%@  page import="org.springframework.security.core.context.SecurityContextHolder"%>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
response.addHeader("Pragma", "no-cache");
response.addHeader("Cache-Control", "no-cache");

response.addHeader("Cache-Control", "no-store");
response.addHeader("Cache-Control", "must-revalidate");
// expires on some date in the past
response.addHeader("Expires", "Mon, 8 Aug 2006 10:00:00 GMT");
%>
<c:url value="/logout/success" var="logoutUrl"/>
<c:url value="/client/saveMeeting" var="saveMeetingUrl"></c:url>
<c:url value="/datatab/getMeeting" var="getMeetingUrl"></c:url>
<c:url value="/datatab/meetingViewClient" var="viewClientUrl"></c:url>
<c:url value="/datatab/viewContact" var="viewContactUrl"></c:url>
<c:url value="/client/gettingclientvalue" var="gettingclientvalueURL"></c:url>
<c:url value="/client/gettincontact" var="gettincontactURL"></c:url>
<c:url value="/client/notifCountClose" var="notifCountCloseUrl"></c:url>

<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <link rel="shortcut icon" href="/Palisade/resources/images/palisadeportal.png">
<title>PalisadeCRM</title>
<!--Core CSS -->
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/bs3/css/bootstrap.min.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/bs3/css/bootstrap-reset.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/font-awesome/css/font-awesome.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/css/msgBoxLight.css"/>'/>
    
    
    
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/css/bootstrap-switch.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/bootstrap-fileupload/bootstrap-fileupload.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/bootstrap-wysihtml5/bootstrap-wysihtml5.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/bootstrap-datepicker/css/datepicker.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/bootstrap-timepicker/css/timepicker.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/bootstrap-colorpicker/css/colorpicker.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/bootstrap-daterangepicker/daterangepicker-bs3.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/bootstrap-datetimepicker/css/datetimepicker.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/jquery-multi-select/css/multi-select.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/jquery-tags-input/jquery.tagsinput.css"/>'/>

	<link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/advanced-datatable/css/jquery.dataTables_themeroller.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/advanced-datatable/css/jquery.dataTables.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/advanced-datatable/css/jquery.dataTables.min.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/advanced-datatable/extensions/FixedColumns/css/dataTables.fixedColumns.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/advanced-datatable/extensions/FixedColumns/css/dataTables.fixedColumns.min.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/advanced-datatable/extensions/ColVis/css/dataTables.colVis.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/advanced-datatable/extensions/ColVis/css/dataTables.colvis.jqueryui.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/advanced-datatable/extensions/ColVis/css/dataTables.colVis.min.css"/>'/>
    
    
    <!--icheck-->
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/iCheck/skins/minimal/minimal.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/data-tables/DT_bootstrap.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/advanced-datatable/css/demo_page.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/advanced-datatable/css/demo_table.css"/>'/>
    
    
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/iCheck/skins/minimal/minimal.css"/>'/>
	<link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/iCheck/skins/minimal/red.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/iCheck/skins/minimal/green.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/iCheck/skins/minimal/blue.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/iCheck/skins/minimal/yellow.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/iCheck/skins/minimal/purple.css"/>'/>
    
	<link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/iCheck/skins/square/square.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/iCheck/skins/square/red.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/iCheck/skins/square/green.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/iCheck/skins/square/blue.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/iCheck/skins/square/yellow.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/iCheck/skins/square/purple.css"/>'/>
    
	<link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/iCheck/skins/flat/grey.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/iCheck/skins/flat/red.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/iCheck/skins/flat/green.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/iCheck/skins/flat/blue.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/iCheck/skins/flat/yellow.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/iCheck/skins/flat/purple.css"/>'/>

	<link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/select2/select2.css"/>'/>

    <!-- Custom styles for this template -->
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/css/style.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/css/style.css?v=1"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/css/style-responsive.css"/>'/>
    
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/bootstrap-datepicker/css/datepicker.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/bootstrap-timepicker/css/timepicker.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/bootstrap-colorpicker/css/colorpicker.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/bootstrap-daterangepicker/daterangepicker-bs3.css"/>'/>
    <link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/js/bootstrap-datetimepicker/css/datetimepicker.css"/>'/>
    
    <style type="text/css">
    
    .error{
    color: red;
    	margin-left: 70px;
    	margin-right: 70px;
        position: relative;
        background-color: #F2DEDE;
        border-color: #EBCCD1;
        padding-right: 35px;
        padding: 15px;
        margin-bottom: 20px;
        border: 1px solid transparent;
        border-radius: 4px;
        border-shadow: 0 0 6px #000;
        box-sizing: 10px;
        box-shadow: 0 0 6px #000;
        -moz-box-shadow: 0 0 6px #000;
        background-image: url("/resources/images/ErrorIcon.png");
        background-repeat: no-repeat;
	    background-position: 10px center;
    }
    
    </style>
	
    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]>
    <script src="js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body onload="imageload()">
<div id="loading_layer"><img src="/Palisade/resources/images/loading.gif" alt="" width="60" height="60" border="0" style="margin-top: 354px;" /></div>

<section id="container" >
<header class="header fixed-top clearfix">
<!--logo start-->
<div class="brand">

    <a href="#" class="logo">
       <img src="/Palisade/resources/images/palisadeportal.png" alt="" style="width: 200px;margin-left: 15px;margin-top: 12px;position: relative;"/>
    </a>
    <div class="sidebar-toggle-box">
        <div class="fa fa-bars"></div>
    </div>
</div>
<!--logo end-->

<!-- notification dropdown start-->
 <div class="nav notify-row" id="top_menu">
        <li id="header_notification_bar" class="dropdown tooltips" data-placement="bottom" data-toggle="tooltip">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#" onclick="closeNotif()">

                <i class="fa fa-bell-o"></i>
                <span class="badge bg-warning">${totalCount}</span>
            </a>
            <ul class="dropdown-menu extended notification" style="overflow: auto;width: 400px;height: 400px;">
                <li>
                    <p>You Have ${totalCount} Notifications</p>
                </li>
                <c:forEach items="${todo}" var="todo">
                
                <li>
                    <div class="alert alert-info clearfix">
                        <span class="alert-icon"><i class="fa fa-bolt"></i></span>
                        <div class="noti-info">
                        <c:choose>
                        <c:when test="${empty todo.clientname}">
                         <a href="#"> Reach Out the contact ${todo.contactname}</a>
                        </c:when>
                        <c:otherwise>
                         <a href="#"> Reach Out the client ${todo.clientname}</a>
                        </c:otherwise>
                        </c:choose>
                           
                        </div>
                    </div>
                </li>
                </c:forEach>

            </ul>
        </li>
        </div>
        <!-- notification dropdown end -->
        
<div class="top-nav clearfix pull-right">
    <!--search & user info start-->
    <ul class="nav pull-right top-menu">
        <!-- <li>
            <input type="text" class="form-control search" placeholder=" Search">
        </li> -->
        <!-- user login dropdown start-->
        <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <img src="${userLogo}" id="" class="img-circle" alt="" />
                <span><sec:authorize var="loggedIn" access="isAuthenticated()" />
													<c:choose>
    												<c:when test="${loggedIn}">
            										<%= request.getUserPrincipal().getName() %>        
    												</c:when>
    												<c:otherwise>
    												</c:otherwise>
													</c:choose></span>
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu extended logout">
                <!--<li><a href="#"><i class=" fa fa-suitcase"></i>Profile</a></li>
                <li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
                -->
                <li><a href="#" onclick="viewprofile(this)" id="${User.id}"><i class="fa fa-suitcase"></i> Profile</a></li>
                <!--<li><a href="#" onclick="resetPassword(this)" id="${User.id}"><i class="fa fa-lock"></i> Reset Password</a></li>
            	--><li><a href="${logoutUrl}"><i class="fa fa-key"></i> Log Out</a></li>
            </ul>
        </li>
        <!-- 
            <div class="toggle-right-box">
                 <a class="logo1"><img src="${companyLogo}" id="" name="logoimage" height="60px" width="60px"/></a>
            </div>
        </li>
    </ul>-->
</div>
</header>
<!--header end-->
</section>
<aside>
    <div id="sidebar" class="nav-collapse">
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
            <li>
                            <a href="dashboard">
                                <i class="fa fa-dashboard"></i><span>My Dashboard</span>
                            </a>
                        </li> 
                                <li><a href="contactmanagement"><i class="fa fa-user"></i> <span>Contact Management</span></a></li>
                                <li><a href="leadmanagement"><i class="fa fa-group"></i> <span>Lead Management</span></a></li> 
                                 <li><a href="viewclient"><i class="fa fa-group"></i> <span>Client Management</span></a></li>
                                 <li><a href="addmeetings" class="active"><i class="fa fa-group"></i> <span>Add Meeting</span></a></li> 
        </ul>      </div>
    </div>
</aside>
<!--sidebar end-->
<!--main content start-->
    <section id="main-content">
    
        <section class="wrapper">
        <div class="row">
        <div class="col-sm-12">
        <div align="center" class="spacer"></div>
        	<section class="panel">
                        <header class="panel-heading">
                            Meeting Management
                        </header>
                        <div class="panel-body">
                                <form action="#" method="post" id="savingmeetings" name="savingmeetings">
                                
                              	<div class="row">
                              	<div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-3">Room Booking (mm/dd/yyyy)</label>
                                    <div class="col-md-7">
                                    <div class="input-group">
                                  <div class="input-group-addon">
                                     <i class="fa fa-calendar"></i>
                                  </div>
                              		 <input type="text" class="form-control form-control-inline input-medium default-date-picker" id="meetingdate" name="meetingdate" placeholder="Meeting Date"/>
                               </div>
                               </div>
                                </div>
                                </div>
                                <div class="col-md-6">
                               <div class="form-group">
                                    <label class="control-label col-md-3">Contact Name</label>
                                    <div class="col-md-7">
                               <div class="input-group">
                               <c:choose>
                               <c:when test="${empty contact}">
                               <input type="text" id="meetingContactname" name="meetingContactname" class="form-control" placeholder="Contact Name" />
                                <input type="hidden" id="meetingcontactid" name="meetingcontactid" placeholder="Meeting Contact Id">
                               </c:when>
                               <c:otherwise>
                               <input type="text" id="meetingContactname" name="meetingContactname" readonly="readonly" value="${contact.contactname}" class="form-control" placeholder="Contact Name" />
                                <input type="hidden" id="meetingcontactid" name="meetingcontactid" value="${contact.slno}" placeholder="Meeting Contact Id">
                               </c:otherwise>
                               </c:choose>
                                
                                <div class="input-group-btn">
                            			<a href="#" data-toggle="modal" data-target="#meetingContact-modal"><button class="btn btn-default" style="height:34px"><i class="fa fa-plus-circle"></i></button></a>
                                </div>
                                </div>
                                </div>
                               </div>
                               </div>
                                <!--<div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-3">Time</label>
                                    <div class="col-md-7">
                                   <div class="input-group">
                                    <div>
                                        <input type="text" class="form-control timepicker-24" id="eventtime" name="eventtime" placeholder="From">
                                                
                                                </div>
                                                <span class="input-group-addon">To</span>
                                                <div>
                                                <input type="text" class="form-control timepicker-24" id="eventtimeto" name="eventtimeto" placeholder="To">
                                                
                                                </div>
                                    </div>
                                    </div> 
                               </div> 
                               </div>
                                --></div>
                                <div class="row">
                              	<!--<div class="col-md-6">
                               <div class="form-group">
                                    <label class="control-label col-md-3">Company Name</label>
                                    <div class="col-md-7">
                               <div class="input-group">
                                <input type="text" id="companyname" name="companyname" class="form-control" placeholder="Company Name" />
                                <div class="input-group-btn">
                            			<a href="#" data-toggle="modal" data-target="#meeting-modal"><button class="btn btn-default" style="height:34px"><i class="fa fa-plus-circle"></i></button></a>
                                </div>
                                </div>
                                </div>
                               </div>
                               </div>
                                --><div class="col-md-6">    
                               
                               </div>
                               </div>
                               <br>
                               <div class="row">
                               <div class="col-md-6">   
                               <div class="form-group">
                                    <label class="control-label col-md-3">Client Name</label>
                                    <div class="col-md-7">
                               <div class="input-group">
                                <input type="text" id="companyname" name="companyname" class="form-control" placeholder="Company Name" />
                                <input type="hidden" id="meetingclientid" name="meetingclientid" placeholder="Meeting Client Id">
                                <div class="input-group-btn">
                            			<a href="#" data-toggle="modal" data-target="#meetingCompany-modal"><button class="btn btn-default" style="height:34px"><i class="fa fa-plus-circle"></i></button></a>
                                </div>
                                </div>
                                </div>
                               </div> 
                               </div>
                               
                               <div class="col-md-6">     
                               <div class="form-group">
                                    <label class="control-label col-md-3">Address</label>
                                    <div class="col-md-7">
                                <textarea id="address" name="address" class="form-control" rows="3" placeholder="Address"></textarea>
                                </div>
                                </div> 
                                </div>
                                 </div>
                                 
                                 <div class="row">
                               <div class="col-md-6">   
                               <div class="form-group">
                                    <label class="control-label col-md-3">Description</label>
                                    <div class="col-md-7">
                                  <textarea id="description" name="description" class="form-control" rows="4" placeholder="Description"></textarea> 
                                  </div> 
                               </div>  
                               </div>
                               <br>
                               <div class="col-md-6">
                               <div class="form-group">  
        					   <label class="control-label col-md-3">Phone</label>
             	 			   <div class="col-md-7">  
                  			   <input type="text" id="meetingphone" name="meetingphone" class="form-control" onkeypress="return isNumberKey(event)"  placeholder="Phone">                           
            				   </div>
            				   </div>
                               </div>
                               <br>
                               <br>
                               <br>
                               <div class="col-md-6">
                               <div class="form-group">  
        					   <label class="control-label col-md-3">Email</label>
             	 			   <div class="col-md-7">  
                  			   <input type="text" id="meetingemail" name="meetingemail" class="form-control"  placeholder="Email">                           
            				   </div>
            				   </div>
                               </div>
                               </div>
                                 
                            <div class="modal-footer clearfix">                             
                                <button type="button"  class="btn btn-primary pull-left" id="addeventbutton" onclick="addMeeting()"><i class="fa fa-save"></i> Save Meeting</button>
                     		  
                     		<!--  <button type="button" class="btn btn-info pull-right"  onclick="clearform()"><i class="fa fa-eraser"></i> Clear</button>  -->
                     		 
                      		</div>
                            </form>

                        </div>
                    </section>

            </div>
         </div>
         
         <div class="col-sm-14">
        	<section class="panel">
        		<div class="table-responsive">
        		<header class="panel-heading">
                        Meetings
                </header>
                <div class="panel-body">
				<div class="adv-table">
				<c:choose>
				<c:when test="${empty contact}">
				<table id="meetingsTable" class="display table table-striped">
                    
                    </table>
				</c:when>
				<c:otherwise>
				<table id="editMeetingsTable" class="display table table-striped">
                    
                    </table>
				</c:otherwise>
				</c:choose>
                </div> 
                </div>
            </section>  
            </div>  
        </div> 
    
    
    <!--main content end-->
    
    <!-- Meeting company POP UP STARTS-->
        <div class="modal fade" id="meetingCompany-modal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog2">
               
                <div class="modal-content" style="width: 922px;">
                
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title"><i class="fa fa-table"></i>Company Details</h4>
                    </div>
                    <form action="#" method="post">
                    <div class="modal-body">
                        <div class="row">
                          
				<div class="box-body table-responsive">
                    <div class="adv-table">
                    <table id="companyTable" class="display table table-striped">
                   
                    </table>
                    </div> 
               </div>     
                    
                    <div class="modal-footer clearfix"> 
                        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i> Discard</button>
							
                            <button type="button" class="btn btn-primary pull-left" data-dismiss="modal"><i class="fa fa-envelope"></i>Ok</button>
                        
            		</div>
           
          <!-- /.row -->
                        
                        </div>
                        </div>
                        
                       </form>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div>
        <!-- Meeting company POP UP ENDS-->
        
        <!-- Meeting contact POP UP STARTS-->
        <div class="modal fade" id="meetingContact-modal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog2">
               
                <div class="modal-content" style="width: 922px;">
                
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title"><i class="fa fa-table"></i>Contact Details</h4>
                    </div>
                    <form action="#" method="post">
                    <div class="modal-body">
                        <div class="row">
                          
				<div class="box-body table-responsive">
                    <div class="adv-table">
                    <table id="contactTable" class="display table table-striped">
                   
                    </table>
                    </div> 
               </div>     
                    
                    <div class="modal-footer clearfix"> 
                        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i> Discard</button>
							
                            <button type="button" class="btn btn-primary pull-left" data-dismiss="modal"><i class="fa fa-envelope"></i>Ok</button>
                        
            		</div>
           
          <!-- /.row -->
                        
                        </div>
                        </div>
                        
                       </form>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div>
        <!-- Meeting contact POP UP ENDS-->


</section>

<!-- Placed js at the end of the document so the pages load faster -->

<!--Core js-->
<script type='text/javascript'  src='<c:url value="/resources/js/jquery.js"/>'></script>
	<script type='text/javascript'  src='<c:url value="/resources/bs3/js/bootstrap.min.js"/>'></script>
	<script type='text/javascript'  src='<c:url value="/resources/js/jquery.dcjqaccordion.2.7.js"/>'></script>
	<script type='text/javascript'  src='<c:url value="/resources/js/jquery.scrollTo.min.js"/>'></script>
	<script type='text/javascript'  src='<c:url value="/resources/js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"/>'></script>
	<script type='text/javascript'  src='<c:url value="/resources/js/jquery.nicescroll.js"/>'></script>
	
	<script type='text/javascript'  src='<c:url value="/resources/js/iCheck/jquery.icheck.js"/>'></script>
	<script type='text/javascript'  src='<c:url value="/resources/js/scripts.js"/>'></script>
	<script type='text/javascript'  src='<c:url value="/resources/js/icheck-init.js"/>'></script>
	<script type='text/javascript'  src='<c:url value="/resources/js/advanced-datatable/js/jquery.dataTables.js"/>'></script>
	
	<script type='text/javascript'  src='<c:url value="/resources/js/advanced-datatable/extensions/FixedColumns/js/dataTables.fixedColumns.js"/>'></script>
	<script type='text/javascript'  src='<c:url value="/resources/js/advanced-datatable/extensions/FixedColumns/js/dataTables.fixedColumns.min.js"/>'></script>
	<script type='text/javascript'  src='<c:url value="/resources/js/advanced-datatable/extensions/ColVis/js/dataTables.colVis.js"/>'></script>
	<script type='text/javascript'  src='<c:url value="/resources/js/advanced-datatable/extensions/ColVis/js/dataTables.colVis.min.js"/>'></script>
	<script type='text/javascript'  src='<c:url value="/resources/js/advanced-datatable/js/ColumnFilterWidgets.js"/>'></script>
	<script type='text/javascript'  src='<c:url value="/resources/js/advanced-datatable/js/jquery.dataTables.columnFilter.js"/>'></script>
	
		<script type='text/javascript'  src='<c:url value="/resources/js/plugins/ckeditor/ckeditor.js"/>'></script>    	   	     	 
		<script type='text/javascript'  src='<c:url value="/resources/js/jquery-1.9.1.js"/>'></script> 
		<script type='text/javascript'  src='<c:url value="/resources/js/jquery.min.js"/>'></script>
        <script type='text/javascript'  src='<c:url value="/resources/js/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"/>'></script>
        <script type='text/javascript'  src='<c:url value="/resources/js/plugins/datatables/jquery.dataTables.js"/>'></script>
        <script type='text/javascript'  src='<c:url value="/resources/js/plugins/datatables/dataTables.bootstrap.js"/>'></script>
        <script type='text/javascript'  src='<c:url value="/resources/js/plugins/dataTables.fnReloadAjax.js"/>'></script>   
        <script type='text/javascript'  src='<c:url value="/resources/js/ajaxfileupload.js"/>'></script>
        <script type='text/javascript'  src='<c:url value="/resources/js/jquery.msgBox.js"/>'></script>
        
        
        <script type="text/javascript" src='<c:url value="/resources/js/jquery.dataTables.columnFilter.js" />'></script>
        <script type="text/javascript" src='<c:url value="/resources/js/ColVis.js" />'></script>
        <script src="http://www.datatables.net/release-datatables/extras/FixedHeader/js/FixedHeader.js" type="text/javascript"></script>
        <script type='text/javascript'  src='<c:url value="/resources/js/jquery.nicescroll.js"/>'></script>
        
        
<script type='text/javascript'  src='<c:url value="/resources/js/jquery.jeditable.js"/>'></script>
        <script type='text/javascript'  src='<c:url value="/resources/js/jquery.dataTables.editable.js"/>'></script>
        
        <script type='text/javascript'  src='<c:url value="/resources/js/jquery.jeditable.js"/>'></script>
        <script type='text/javascript'  src='<c:url value="/resources/js/jquery.dataTables.editable.js"/>'></script>
        
        <script type='text/javascript'  src='<c:url value="/resources/js/bootstrap-datepicker/js/bootstrap-datepicker.js"/>'></script>
	 <script type='text/javascript'  src='<c:url value="/resources/js/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"/>'></script>
	 <script type='text/javascript'  src='<c:url value="/resources/js/bootstrap-daterangepicker/daterangepicker.js"/>'></script>
	 <script type='text/javascript'  src='<c:url value="/resources/js/bootstrap-daterangepicker/moment.min.js"/>'></script>
	 <script type='text/javascript'  src='<c:url value="/resources/js/bootstrap-timepicker/js/bootstrap-timepicker.js"/>'></script>
	 
        <script type="text/javascript">
        $('#meetingdate').datepicker({
                    format: "mm/dd/yyyy"
                }).on('changeDate', function(e){
    				$(this).datepicker('hide');
    				 $(this).removeAttr("style");
	                 $(".spacer").empty();
				});
				
		function addMeeting(){
		
			
		var emailValid = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
		
     	var meetingdate = document.getElementById("meetingdate").value;
		var companyname = document.getElementById("companyname").value;
		var description = document.getElementById("description").value;
		var address = document.getElementById("address").value;
		var meetingphone = document.getElementById("meetingphone").value;
		var meetingemail = document.getElementById("meetingemail").value;
		var meetingContactname = document.getElementById("meetingContactname").value;
		var meetingcontactid = document.getElementById("meetingcontactid").value;
		var meetingclientid = document.getElementById("meetingclientid").value;
		
		var isvalid = emailValid.test(meetingemail);
		//alert("isvalid"+isvalid);
		
		$('.error').hide();
		var count=0;
		if(meetingdate=="")
		{
			$('#meetingdate').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Select Meeting Date</div>");
			++count;
		}
		if(companyname=="")
		{
			$('#companyname').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Enter the Company Name</div>");
			++count;
		}
		if(description=="")
		{
			$('#description').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Enter the Company Name Description</div>");
			++count;
		}
		if(address=="")
		{
			$('#address').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Enter the Address</div>");
			++count;
		}
		if(meetingphone=="")
		{
			$('#meetingphone').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Enter the Phone Number</div>");
			++count;
		}
		if(meetingemail=="")
		{
			$('#meetingemail').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Enter the Valid Email Id</div>");
			++count;
		}
		if(meetingemail!="" && !isvalid)
		{
			$('#meetingemail').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Enter the Valid Email Id</div>");
			++count;
		}
		if(meetingContactname=="")
		{
			$('#meetingContactname').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Select Contact Name</div>");
			++count;
		}
		
		if(count>0)
		{
			 return false;
		 }
		
		$.ajax({
					
					type:'POST',
					url:'${saveMeetingUrl}',
					data:{meetingdate :meetingdate,companyname :companyname,description :description,address :address,meetingphone :meetingphone,meetingemail :meetingemail,meetingContactname :meetingContactname,
							meetingcontactid :meetingcontactid,meetingclientid :meetingclientid},
					success : function(result)
					{
					if(result=="success"){
			 	$.msgBox({
        							title: "Success",
        							type: "alert",
        							content: "Meeting Added Succesfully",
        							afterClose: function () { 
        							window.location.reload();
        							//window.location.href="${contactredirectUrl}";
        								}
    							});
			}
			else{
			$.msgBox({
        							title: "Success",
        							type: "alert",
        							content: "Meeting Not Added",
        							afterClose: function () { 
        							window.location.reload();
        							//window.location.href="${contactredirectUrl}";
        								}
    							});
			}
					},
					error : function(e)
					{
					alert(e);
					}
		
		});
		
     	}
     	
     	
     	$(document).ready(function() {

$("#companyTable").dataTable( {
    		 "bProcessing": false,
    	    "bFilter": true,
    	    "bSearchable": true,
    	    "scrollCollapse": true,
    	    "bServerSide": false,
    	    "sort": "position",
    	   "sAjaxSource": '${viewClientUrl}',
    	   "fnServerData": function ( sSource,aoData, fnCallback) {
    				$.ajax({
    					"dataType": 'json',
    					"type": "GET",
    					url : '${viewClientUrl}',
    					cache:false,
    					"data":aoData ,
    					"success": fnCallback
    				});
    		},
    		 "order": [[ 1, "desc" ]],
    	   "aoColumns": [
    		{
    			 "sTitle":"",
    			 "sWidth":"10px",
    			 "bSortable": false
    		},
    	   	{
    			 "sTitle":"Slno",
    			 "sWidth":"10px",
    			 "bVisible": false,  
    			 "aTargets": [1]
    						 				 								
    		},
    		{
    			 "sTitle":"Client Name",
    			 "sWidth":"10px"
    			
    		},
    		{
    			 "sTitle":"Contract Signed",
    			 "sWidth":"10px"
    			
    		},
    		{
    			 "sTitle":"Contract Expire",
    			 "sWidth":"10px"
    			
    		}
    		
    	   ]
    	} );
    	} );
    	
    	
    	 $(document).ready(function() {

$("#contactTable").dataTable( {
    		 "bProcessing": false,
    	    "bFilter": true,
    	    "bSearchable": true,
    	    "scrollCollapse": true,
    	    "bServerSide": false,
    	    "sort": "position",
    	   "sAjaxSource": '${viewContactUrl}',
    	   "fnServerData": function ( sSource,aoData, fnCallback) {
    				$.ajax({
    					"dataType": 'json',
    					"type": "GET",
    					url : '${viewContactUrl}',
    					cache:false,
    					"data":aoData ,
    					"success": fnCallback
    				});
    		},
    		 "order": [[ 1, "desc" ]],
    	   "aoColumns": [
    		{
    			 "sTitle":"",
    			 "sWidth":"10px",
    			 "bSortable": false
    		},
    	   	{
    			 "sTitle":"Slno",
    			 "sWidth":"10px",
    			 "bVisible": false,  
    			 "aTargets": [1]
    						 				 								
    		},
    		{
    			 "sTitle":"Contact Name",
    			 "sWidth":"10px"
    			
    		},
    		{
    			 "sTitle":"Company",
    			 "sWidth":"10px"
    			
    		},
    		{
    			 "sTitle":"City",
    			 "sWidth":"10px"
    			
    		},
    		{
    			 "sTitle":"Phone",
    			 "sWidth":"10px"
    			
    		},
    		{
    			 "sTitle":"Email",
    			 "sWidth":"10px"
    			
    		}
    		
    		
    	   ]
    	} );
    	} );
 
 
     	function hideLoadingLayer(){
 			document.getElementById("loading_layer").style.visibility="hidden";
 			}
     	
     		function imageload()
     	{
     	
     	hideLoadingLayer();
     	
     	}	
 
 
$(document).ready(function() {
    
$("#meetingsTable").dataTable( {
    		 "bProcessing": false,
    	    "bFilter": true,
    	    "bSearchable": true,
    	    "scrollCollapse": true,
    	    "bServerSide": false,
    	    "sort": "position",
    	   "sAjaxSource": '${getMeetingUrl}',
    	   "fnServerData": function ( sSource,aoData, fnCallback) {
    				$.ajax({
    					"dataType": 'json',
    					"type": "GET",
    					url : '${getMeetingUrl}',
    					cache:false,
    					"data":aoData ,
    					"success": fnCallback
    				});
    		},
    		 "order": [[ 1, "desc" ]],
    	   "aoColumns": [
    		{
    			 "sTitle":"",
    			 "sWidth":"10px",
    			 "bSortable": false
    		},
    	   	{
    			 "sTitle":"Meeting Id",
    			 "sWidth":"10px",
    			 "bVisible": false,  
    			 "aTargets": [1]
    							 				 								
    		},
    		{
    			 "sTitle":"Meeting Date",
    			 "sWidth":"10px"
    			
    		},
    		{
    			 "sTitle":"Company Name",
    			 "sWidth":"10px"
    			
    		},
    		{
    			 "sTitle":"Phone",
    			 "sWidth":"10px"
    			
    		},
    		{
    			 "sTitle":"Email",
    			 "sWidth":"10px"
    			
    		},
    		
    		{
    			 "sTitle":"Contact Name",
    			 "sWidth":"10px"
    			
    		},
    		{
    			 "sTitle":"Address",
    			 "sWidth":"10px"
    			
    		},
    		{
    			 "sTitle":"Description",
    			 "sWidth":"10px"
    			
    		},
    		{
			"sTitle" :"Action",
			"sWidth":"60px",
			"bSortable":false,
			"bVisible": false,
			
			mRender : function(data,type,full) 
			{						
				return '<div align="center"><a href="#" title="Edit" id="'+data+'" onclick="getevent(this)" class="ico-pencil"></a></div>';
			}
		}
    		
    		
    	   ]
    	} );
 
});
 $(document).ready(function() {
    
$("#editMeetingsTable").dataTable( {
    		 "bProcessing": false,
    	    "bFilter": true,
    	    "bSearchable": true,
    	    "scrollCollapse": true,
    	    "bServerSide": false,
    	    "sort": "position",
    	   "sAjaxSource": "${getEditMeetingUrl}?globalContact="+globalContactId,
    	   "fnServerData": function ( sSource,aoData, fnCallback) {
    				$.ajax({
    					"dataType": 'json',
    					"type": "GET",
    					url : "${getEditMeetingUrl}?globalContact="+globalContactId,
    					cache:false,
    					"data":aoData ,
    					"success": fnCallback
    				});
    		},
    		 "order": [[ 1, "desc" ]],
    	   "aoColumns": [
    		{
    			 "sTitle":"",
    			 "sWidth":"10px",
    			 "bSortable": false
    		},
    	   	{
    			 "sTitle":"Meeting Id",
    			 "sWidth":"10px",
    			 "bVisible": false,  
    			 "aTargets": [1]
    						 				 								
    		},
    		{
    			 "sTitle":"Meeting Date",
    			 "sWidth":"10px"
    			
    		},
    		{
    			 "sTitle":"Company Name",
    			 "sWidth":"10px"
    			
    		},
    		{
    			 "sTitle":"Phone",
    			 "sWidth":"10px"
    			
    		},
    		{
    			 "sTitle":"Contact Name",
    			 "sWidth":"10px"
    			
    		},
    		{
    			 "sTitle":"Address",
    			 "sWidth":"10px"
    			
    		},
    		{
    			 "sTitle":"Description",
    			 "sWidth":"10px"
    			
    		},
    		{
			"sTitle" :"Action",
			"sWidth":"60px",
			"bSortable":false,
			"bVisible": false,
			
			mRender : function(data,type,full) 
			{						
				return '<div align="center"><a href="#" title="Edit" id="'+data+'" onclick="getevent(this)" class="ico-pencil"></a></div>';
			}
		}
    		
    		
    	   ]
    	} );
 
});

function clientChecks(currentElement)
{
	var clientid= $(currentElement).attr('id');
	  document.getElementById("meetingclientid").value=clientid;
	  getClientName(clientid);
}

function getClientName(clientslno)
{
$.ajax({
			type:'POST',
			url:'${gettingclientvalueURL}',
			data:{clientslno :clientslno},
			success:function(result)
			{
			//alert(result);
			document.getElementById("companyname").value=result;
			},
			error:function(e)
			{
			}
			});
}

function contactClick(currentElement)
{
	var contactId= $(currentElement).attr('id');
	//alert("contactId"+contactId);
	  document.getElementById("meetingcontactid").value=contactId;
	  getContactName(contactId);
}

function  getContactName(contactslno)
{
//alert("contactslno"+contactslno);
$.ajax({
			type:'POST',
			url:'${gettincontactURL}',
			data:{contactslno :contactslno},
			success:function(result)
			{
			//alert(result);
			var totval=result.split("$");
			document.getElementById("meetingContactname").value=totval[0];
			document.getElementById("meetingphone").value=totval[2];
			document.getElementById("meetingemail").value=totval[1];
			},
			error:function(e)
			{
			}
			});
}

//Allowing phone Numbers With + and - sign
function isNumberKey(evt)
{
    var charCode = (evt.which) ? evt.which : event.keyCode
    		if (charCode != 46 && charCode != 45 && charCode > 31
    			    && (charCode < 48 || charCode > 57))
    			if (charCode != 43 && charCode > 31 && (charCode < 48 || charCode > 57))
    			     return false;
    return true;
}
     	
     	function closeNotif(){
//alert("hello close");
$.ajax({
		type:'POST',
		url:'${notifCountCloseUrl}',
		data:{},
		success:function(result)
		{
		//alert("Not success");
		},
		error:function(e)
		{
		alert("Error:"+e);
		}
});
}
				
        </script>
</body>
</html>