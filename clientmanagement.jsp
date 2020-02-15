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
<c:url value="/client/addClient" var="addClientUrl"></c:url>
<c:url value="/client/editClient" var="editClientUrl"></c:url>
<c:url value="/datatab/getClientMeeting" var="getClientMeetingUrl"></c:url>
<c:url value="/report/downloadMeeting" var="downloadMeetingUrl"></c:url>
<c:url value="/client/notifCountClose" var="notifCountCloseUrl"></c:url>
<c:url value="/logout/success" var="logoutUrl"/>
<c:url value="/med/viewclient" var="clientredirectUrl"></c:url>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">

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


<!-- 
<section id="container" >
<header class="header fixed-top">
<div class="brand">

    <a href="dashboard" class="logo">
        <img src="/resources/images/logo_bucket.png" alt=""/>
    </a>
    <div class="sidebar-toggle-box">
        <div class="fa fa-bars"></div>
    </div>
</div>-->

<section id="container" >
<!--header start-->

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
        <!-- user login dropdown start-->
        <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
            <img src="${userLogo}" id="" class="img-circle" alt="" />
                <!--<img alt="" src="/Palisade/resources/images/avatar1_small.jpg">-->
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
        <li>
            <div class="toggle-right-box">
                 <a class="logo1"><img src="${companyLogo}" id="" name="logoimage" height="60px" width="60px"/></a>
            </div>
        </li>
    </ul>-->
</div>
</header>
<!--header end-->
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
                                 <li><a href="viewclient" class="active"><i class="fa fa-group"></i> <span>Client Management</span></a></li>
                                 <li><a href="addmeetings"><i class="fa fa-group"></i> <span>Add Meeting</span></a></li> 
        </ul>      </div>
    </div>
</aside>
<!--sidebar end-->

	<section id="main-content">
    	<section class="wrapper">
    	
        
        <div class="col-sm-12">
        <section class="panel1">
        
        
        <div class="modal-body">
    	<div class="row">
        <div class="col-lg-12">
        <div align="center" class="spacer"></div>
        <fieldset class="fieldset">
        <legend style="font-size: 16px;font-family: Times New Roman;">Enter Client Information</legend>
    	<div class="row">
    	
            <div class="col-md-6">
        	<div class="form-group">  
        		<label class="control-label col-md-3">Company Name</label>
             	<div class="col-md-7">
             	<c:choose>
             	<c:when test="${empty client}">
             	<input type="text" id="clientname" name="clientname" class="form-control" placeholder="Company Name"> 
             	</c:when>
             	<c:otherwise>    
                  <input type="text" id="clientname" name="clientname" class="form-control" onfocus="this.value='';" placeholder="Company Name" value="${client.clientName}">
                  </c:otherwise>
                  </c:choose>  
                  <input type="hidden" id="editClientSlno" name="editClientSlno" placeholder="" value="${client.slno}">                    
            	</div>
            </div>
            </div>
           <div class="col-md-6 icheck">
            <div class="flat-grey">
            <c:choose>
            <c:when test="${client.genericIntroEmail eq 'yes'}">
        	<input type="checkbox" id="genericintroemail" name="genericintroemail" checked="checked">
        	</c:when>
        	<c:otherwise>
        	<input type="checkbox" id="genericintroemail" name="genericintroemail">
        	</c:otherwise>
        	</c:choose>
        	<label>IT Solutions</label>
            </div>
            </div>
            </div>
             <br>
             <div class="row">
            <div class="col-md-6">
        	<div class="form-group">  
        		<label class="control-label col-md-3">Contact Name</label>
             	<div class="col-md-7">
             	 <c:choose>
             	<c:when test="${empty client}">
             	<input type="text" id="contactname" name="contactname" class="form-control" placeholder="Contact Name">
             	</c:when>
             	<c:otherwise>
                  <input type="text" id="contactname" name="contactname" class="form-control" onfocus="this.value='';" placeholder="Contact Name" value="${client.contactName}">
                  </c:otherwise>
                  </c:choose>
                  </div>
            	</div>
            </div>
           <div class="col-md-6 icheck">
           <div class="flat-blue">
           <c:choose>
           <c:when test="${client.corporatePresentation eq 'yes'}">
        	<input type="checkbox" id="corporatepresentation" name="corporatepresentation" checked="checked">
        	</c:when>
        	<c:otherwise>
        	<input type="checkbox" id="corporatepresentation" name="corporatepresentation">
        	</c:otherwise>
        	</c:choose>
        	 <label>MNC Corportates </label>
            
            </div>
           </div>
            </div>
             <br>
            <div class="row">
            
        	<div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-3">Contract Signed (mm/dd/yy)</label>
                                    <div class="col-md-7">
                                    <div class="input-group">
                                  <div class="input-group-addon">
                                     <i class="fa fa-calendar"></i>
                                  </div>
                              		<input type="text" class="form-control form-control-inline input-medium default-date-picker" id="contractsigned" name="contractsigned" onfocus="this.value='';" value = "<fmt:formatDate value="${client.contractSigned}" pattern="MM/dd/yy" />" placeholder="Contract Signed "/>
                               </div>
                               </div>
                                </div>
                                </div>
             
           <div class="col-md-6 icheck">
           <div class="flat-red">
           <c:choose>
           <c:when test="${client.animatedLogo eq 'yes'}">
        	<input type="checkbox" id="animatedlogo" name="animatedlogo" checked="checked">
        	</c:when>
        	<c:otherwise>
        	<input type="checkbox" id="animatedlogo" name="animatedlogo">
        	</c:otherwise>
        	</c:choose>
        	<label>Abroad Studies </label>
            <br>
           	<br>
            </div>
           </div>
           </div>
           <br>
    	<div class="row">
            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-3">Contract Expire (mm/dd/yy)</label>
                                    <div class="col-md-7">
                                    <div class="input-group">
                                  <div class="input-group-addon">
                                     <i class="fa fa-calendar"></i>
                                  </div>
                                 
                              		 <input type="text" class="form-control form-control-inline input-medium default-date-picker" id="contractexpire" name="contractexpire" onfocus="this.value='';" value = "<fmt:formatDate value="${client.contractExpire}" pattern="MM/dd/yy" />" placeholder="Contract Expire"/>
                              		 
                              		 
                               </div>
                               </div>
                                </div>
                                </div>
            <div class="col-md-6 icheck">
            <div class="flat-green">
            <c:choose>
            <c:when test="${client.palisadeRadioAds eq 'yes'}">
        	<input type="checkbox" id="palisaderadioads" name="palisaderadioads" checked="checked">
        	</c:when>
        	<c:otherwise>
        	<input type="checkbox" id="palisaderadioads" name="palisaderadioads">
        	</c:otherwise>
        	</c:choose>
        	<label>Learning Programming</label>
        	<br>
            <br>
           	
            </div>
            </div>
            </div>
           <br>
            <div class="row">
            <div class="col-md-6">
        	<div class="form-group">  
        		<label class="control-label col-md-3">Contract Duration</label>
             	<div class="col-md-7">  
             	<c:choose>
             	<c:when test="${empty client}">
             	<input type="text" id="contractduration" name="contractduration" class="form-control" placeholder="Contract Duration">
             	</c:when>
             	<c:otherwise>
             	<input type="text" id="contractduration" name="contractduration" class="form-control" onfocus="this.value='';" placeholder="Contract Duration" value="${client.contractDuration}">
             	 </c:otherwise>
             	 </c:choose>
            	</div>
            </div>
            
            </div>
            
           <!--   <div class="col-md-6 icheck">
           <div class="flat-yellow">
           <c:choose>
           <c:when test="${client.infoGraphic eq 'yes'}">
        	<input type="checkbox" id="infographic" name="infographic" checked="checked">
        	</c:when>
        	<c:otherwise>
        	<input type="checkbox" id="infographic" name="infographic" >
        	</c:otherwise>
        	</c:choose>
        	 <label>Email Dissemination</label>
            <br>
           	<br>
            </div>
           </div> 
           </div>-->
           
           <br>
           <br>
           <br>
           
           
           	<div class="row">
            <div class="col-md-6">
        	<div class="form-group">
        		<!-- <label class="control-label col-md-3">Phone</label>-->
        		<label class="control-label col-md-3" style="border-left-style: solid;border-left-width: 0px;left: 15px;">Phone</label>
             	<div class="col-md-7">  
             	<c:choose>
             	<c:when test="${empty client}">
             	<!--  <input type="text" id="leadphone" name="leadphone" class="form-control" onfocus="this.value='';"onkeypress="return isNumberKey(event)" placeholder="Phone" value="${client.leadPhone}">-->
             	<input type="text" id="leadphone" name="leadphone" class="form-control" onfocus="this.value='';" onkeypress="return isNumberKey(event)" placeholder="Phone" value="" style="margin-left: 10px;">                           
             	 </c:when>
             	 <c:otherwise>
             	 <input type="text" id="leadphone" name="leadphone" class="form-control" onfocus="this.value='';" onkeypress="return isNumberKey(event)" placeholder="Phone" value="" style="margin-left: 10px;">
                  <!-- <input type="text" id="leadphone" name="leadphone" class="form-control" onfocus="this.value='';"onkeypress="return isNumberKey(event)" placeholder="Phone" value="${client.leadPhone}">-->
                  </c:otherwise>
                  </c:choose>                           
            	</div>
            </div>
            </div>
            </div>
            <!-- <div class="col-md-6 icheck">
           <div class="flat-red">
           <c:choose>
           <c:when test="${client.ceointerView eq 'yes'}">
        	<input type="checkbox" id="ceointerview" name="ceointerview" checked="checked">
        	</c:when>
        	<c:otherwise>
        	<input type="checkbox" id="ceointerview" name="ceointerview">
        	</c:otherwise>
        	</c:choose>
        	<label>CEO Interview</label>
            <br>
           	<br>
            </div>
           </div>
            </div> -->
            <br>
                      
            <div class="row">
    		<div class="col-md-6">
        	<div class="form-group">  
        		<!-- <label class="control-label col-md-3">Email</label>-->
        		<label class="control-label col-md-3" style="border-left-style: solid;border-left-width: 0px;left: 15px;">Email</label>
        		<div class="col-md-7" style="left: 11px;">
             	<!-- <div class="col-md-7">-->  
             	<c:choose>
             	<c:when test="${empty client}">
             	<input type="text" id="email" name="email" class="form-control" placeholder="Email">
             	</c:when>
             	<c:otherwise>
             	 <input type="text" id="email" name="email" class="form-control" onfocus="this.value='';" placeholder="Email" value="${client.eMail}">
             	 </c:otherwise>
             	 </c:choose>
            	</div>
            	<br>
            </div>
            </div>
            <!--  <div class="col-md-6 icheck">
           <div class="flat-purple">
           <c:choose>
           <c:when test="${client.corporateVideo eq 'yes'}">
        	<input type="checkbox" id="corporatevideo" name="corporatevideo" checked="checked">
        	</c:when>
        	<c:otherwise>
        	<input type="checkbox" id="corporatevideo" name="corporatevideo">
        	</c:otherwise>
        	</c:choose>
        	 <label>Corporate Website</label>
            </div>
           </div>
            </div> -->
            <br>
            <br>
            <br>
           <div class="row">
           
           <div class="col-md-6">
        	<div class="form-group">  
        		<!-- <label class="control-label col-md-3">Assignedto </label>-->
        		<label class="control-label col-md-3" style="border-left-style: solid;border-left-width: 0px;left: 15px;">Assignedto</label>
        		<div class="col-md-7" style="left: 20px;">
   <!--          	<div class="col-md-7">-->
             	<c:choose>
             	<c:when test="${empty client}">
             	<input type="text" id="assignedto" name="assignedto" readonly="readonly" value="<%=SecurityContextHolder.getContext().getAuthentication().getName()%>" class="form-control" placeholder="assignedto">
             	<br>
             	</c:when>
             	<c:otherwise>
             	<input type="text" id="assignedto" name="assignedto" readonly="readonly" value="${client.assignedTo}" class="form-control" placeholder="assignedto">
             	</c:otherwise>
             	</c:choose>
            	</div>
            </div>
            </div>
            <!-- <div class="col-md-6 icheck">
           <div class="flat-blue">
           <c:choose>
           <c:when test="${client.companyArticle eq 'yes'}">
        	<input type="checkbox" id="companyarticle" name="companyarticle" checked="checked">
        	</c:when>
        	<c:otherwise>
        	<input type="checkbox" id="companyarticle" name="companyarticle">
        	</c:otherwise>
        	</c:choose>
        	 <label>Company Article</label>
            </div>
           </div>
           </div>-->
           <!-- <div class="row">-->
           <!-- <div class="col-md-6">
           </div>
            <div class="col-md-6 icheck">
           <div class="flat-grey">
           <c:choose>
           <c:when test="${client.socialMedia eq 'yes'}">
           <input type="checkbox" id="socialmedia" name="socialmedia" checked="checked">
           </c:when>
           <c:otherwise>
        	<input type="checkbox" id="socialmedia" name="socialmedia">
        	</c:otherwise>
        	</c:choose>
        	 <label>Social Media Campaign</label>
            </div>
           </div>
           </div>
           </div> -->
           <div class="row">
           <div class="col-md-6">
        	<div class="form-group"> 
        	<label class="control-label col-md-2"><b>Rating:</b></label> 
        	<br>
        	<br>
        	<div class="row">
        	</div>
             	<div class="col-md-6 icheck">
             	<div class="flat-green">
             	<c:choose>
             	<c:when test="${client.meetingStatus eq 'A'}">
             	<input type="radio" id="meeting1" name="meeting" checked="checked">
             	<label>A</label>
             	</c:when>
             	<c:otherwise>
             	<input type="radio" id="meeting1" name="meeting">
             	<label>A</label>
             	</c:otherwise>
             	</c:choose>
             	</div>
             	</div>
             	<br>
             	<br>
             	<div class="col-md-6 icheck">
             	<div class="flat-yellow">
             	<c:choose>
             	<c:when test="${client.meetingStatus eq 'B'}">
             	<input type="radio" id="meeting2" name="meeting" checked="checked">
             	<label>B</label>
             	</c:when>
             	<c:otherwise>
             	<input type="radio" id="meeting2" name="meeting">
             	<label>B</label>
             	</c:otherwise>
             	</c:choose>
             	</div>
             	</div>
             	<br>
             	<br>
             	<div class="col-md-6 icheck">
             	<div class="flat-red">
             	<c:choose>
             	<c:when test="${client.meetingStatus eq 'C'}">
             	<input type="radio" id="meeting3" name="meeting" checked="checked">
             	<label>C</label>
             	</c:when>
             	<c:otherwise>
             	<input type="radio" id="meeting3" name="meeting">
             	<label>C</label>
             	</c:otherwise>
             	</c:choose>
            	</div>
            	</div>
            	
            	</div>
            </div>
      		</div>
           
           
           <div class="row">
            
            <div class="col-md-6">
        	
            </div>
             
           
           </div>
    	
    	
    	<div class="modal-footer clearfix">
    	<c:choose>
    	<c:when test="${empty client}">
        <button type="button" class="btn btn-primary pull-left" onclick="addClient()"><i class="fa fa-save"></i> Save Client</button>
        </c:when>
        <c:otherwise>
        <button type="button" class="btn btn-primary pull-left" onclick="editClient()"><i class="fa fa-save"></i> Edit Client</button>
        </c:otherwise>
        </c:choose>	
        </div>
    	
        </div>
        </div>   
        </div>
    	
    	<c:choose>
				<c:when test="${not empty client}">
    	<div class="col-sm-14">
        	<section class="panel">
        	<form class="form-horizontal" method="post" id="meetingPdf" name="meetingPdf">
        		<div class="">
        		<header class="panel-heading">
                        Meetings
                </header>
                <div class="panel-body">
				<div class="adv-table">
				
				<table id="meetingsTable" class="display table table-striped table-responsive">
                </table>
                <input type="hidden" id="clientSlno" name="clientSlno" value="${client.slno}">
                <button class="btn btn-primary pull-right" onclick="extractmeetingPDF()" ><i class="fa fa-files-o"></i> Export To PDF</button>
                </div>
                </div> 
                </div>
                </form>
            </section>  
        </div> 
        </c:when>
                <c:otherwise>
                </c:otherwise>
                </c:choose>
    	
    <script type='text/javascript'  src='<c:url value="/resources/js/jquery.js"/>'></script>
	<script type='text/javascript'  src='<c:url value="/resources/bs3/js/bootstrap.min.js"/>'></script>
	<script type='text/javascript'  src='<c:url value="/resources/js/jquery.dcjqaccordion.2.7.js"/>'></script>
	<script type='text/javascript'  src='<c:url value="/resources/js/jquery.scrollTo.min.js"/>'></script>
	<script type='text/javascript'  src='<c:url value="/resources/js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"/>'></script>
	<script type='text/javascript'  src='<c:url value="/resources/js/jquery.nicescroll.js"/>'></script>
	
		 <script type='text/javascript'  src='<c:url value="/resources/js/bootstrap-datepicker/js/bootstrap-datepicker.js"/>'></script>
	 <script type='text/javascript'  src='<c:url value="/resources/js/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"/>'></script>
	 <script type='text/javascript'  src='<c:url value="/resources/js/bootstrap-daterangepicker/daterangepicker.js"/>'></script>
	 <script type='text/javascript'  src='<c:url value="/resources/js/bootstrap-daterangepicker/moment.min.js"/>'></script>
	 <script type='text/javascript'  src='<c:url value="/resources/js/bootstrap-timepicker/js/bootstrap-timepicker.js"/>'></script>
	
	<script type='text/javascript'  src='<c:url value="/resources/js/iCheck/jquery.icheck.js"/>'></script>
	<script type='text/javascript'  src='<c:url value="/resources/js/scripts.js"/>'></script>
	<script type='text/javascript'  src='<c:url value="/resources/js/icheck-init.js"/>'></script>
	<script type='text/javascript'  src='<c:url value="/resources/js/advanced-datatable/js/jquery.dataTables.js"/>'></script>
	<script type='text/javascript'  src='<c:url value="/resources/js/jquery-steps/jquery.steps.js"/>'></script>
	<script type='text/javascript'  src='<c:url value="/resources/js/jquery.msgBox.js"/>'></script>
	<script type='text/javascript'  src='<c:url value="/resources/js/jquery.nicescroll.js"/>'></script>
	
	

<script type="text/javascript">

 $('#contractsigned').datepicker({
                    format: "mm/dd/yy"
                }).on('changeDate', function(e){
    				$(this).datepicker('hide');
    				 $(this).removeAttr("style");
	                 $(".spacer").empty();
				});
				
				$('#contractexpire').datepicker({
                    format: "mm/dd/yy"
                }).on('changeDate', function(e){
    				$(this).datepicker('hide');
    				 $(this).removeAttr("style");
	                 $(".spacer").empty();
				});
				
				
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
				
				$(document).ready(function() {
    
$("#meetingsTable").dataTable( {
    		 "bProcessing": false,
    	    "bFilter": true,
    	    "bSearchable": true,
    	    "scrollCollapse": true,
    	    "bServerSide": false,
    	    "sort": "position",
    	   "sAjaxSource": "${getClientMeetingUrl}?globalClientId="+globalClientId,
    	   "fnServerData": function ( sSource,aoData, fnCallback) {
    				$.ajax({
    					"dataType": 'json',
    					"type": "GET",
    					url : "${getClientMeetingUrl}?globalClientId="+globalClientId,
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

/* //to clear field while editing

function clearCompany(){
	document.getElementById("clientname").value="";
	}
function clearContact(){
	document.getElementById("contactname").value="";
}
function clearSigned(){
	document.getElementById("contractsigned").value="";
}
function clearExpire(){
	document.getElementById("contractexpire").value="";
}
function clearDuration(){
	document.getElementById("contractduration").value="";
} */
				
function addClient()
{
//alert("client");
var clientname=document.getElementById("clientname").value;
var contactname=document.getElementById("contactname").value;
var contractsigned=document.getElementById("contractsigned").value;
var contractexpire=document.getElementById("contractexpire").value;
var contractduration=document.getElementById("contractduration").value;
var assignedto = document.getElementById("assignedto").value;
var leadphone = document.getElementById("leadphone").value;
var email = document.getElementById("email").value;
var meetingStatus="none";
		//var meeting1 = document.getElementById("meeting1").checked;
/*		if(meeting1.checked){
		meetingStatus="A";
		}
		if(meeting2.checked){
		meetingStatus="B";
		}
		if(meeting3.checked){
		meetingStatus="C";
		} */
var genericintroemail="no";
var animatedlogo="no";
var palisaderadioads="no";
var corporatepresentation="no";
var infographic="no";
var corporatevideo="no";
var ceointerview="no";
var companyarticle="no";
var socialmedia="no";
if(document.getElementById("genericintroemail").checked){
genericintroemail="yes";
}
if(document.getElementById("animatedlogo").checked){
animatedlogo="yes";
}
if(document.getElementById("palisaderadioads").checked){
palisaderadioads="yes";
}
if(document.getElementById("corporatepresentation").checked){
corporatepresentation="yes";
}
if(document.getElementById("infographic").checked){
infographic="yes";
}
if(document.getElementById("corporatevideo").checked){
corporatevideo="yes";
}
if(document.getElementById("ceointerview").checked){
ceointerview="yes";
}
if(document.getElementById("companyarticle").checked){
companyarticle="yes";
}
if(document.getElementById("socialmedia").checked){
socialmedia="yes";
}

		$('.error').hide();
		var count=0;
		if(clientname=="")
		{
			$('#clientname').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Provide Company Name</div>");
			++count;
		}
		if(contactname=="")
		{
			$('#contactname').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Provide the Contact Name</div>");
			++count;
		}
		if(contractsigned=="")
		{
			$('#contractsigned').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Select Contract Signed Date</div>");
			++count;
		}
		if(contractexpire=="")
		{
			$('#contractexpire').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Select Contract Expired Date</div>");
			++count;
		}
		if(contractduration=="")
		{
			$('#contractduration').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Provide Contract Duration</div>");
			++count;
		}
		if(count>0){
			 return false;
		 }

$.ajax({
		
		type:'POST',
		url:'${addClientUrl}',
		data:{clientname :clientname,contactname :contactname,contractsigned :contractsigned,contractexpire :contractexpire,contractduration :contractduration,assignedto :assignedto,genericintroemail :genericintroemail,animatedlogo :animatedlogo,palisaderadioads :palisaderadioads,
				corporatepresentation :corporatepresentation,infographic :infographic,corporatevideo :corporatevideo,ceointerview :ceointerview,companyarticle :companyarticle,meetingStatus :meetingStatus,socialmedia :socialmedia,leadphone :leadphone,email :email},
		success : function(result)
		{
		$.msgBox({
        							title: "Success",
        							type: "alert",
        							content: "Client Added Succesfully",
        							afterClose: function () { 
        							window.location.reload();
        							window.location.href="${clientredirectUrl}";
        								}
    							});
			//window.location.reload();
		},
		error : function(e)
		{
			alert("Error"+e);
		}

	});

}

var globalClientId=0;
	
	globalClientId=document.getElementById("editClientSlno").value;

function hideLoadingLayer(){
 			document.getElementById("loading_layer").style.visibility="hidden";
 			}
     	
     		function imageload()
     	{
     	
     	hideLoadingLayer();
     	
     	}	


function editClient()
{
//alert("client");
var clientname=document.getElementById("clientname").value;
var contactname=document.getElementById("contactname").value;
var contractsigned=document.getElementById("contractsigned").value;
var contractexpire=document.getElementById("contractexpire").value;
var contractduration=document.getElementById("contractduration").value;
var assignedto = document.getElementById("assignedto").value;
var leadphone = document.getElementById("leadphone").value;
var email = document.getElementById("email").value;

/* var meetingStatus="none";
		//var meeting1 = document.getElementById("meeting1").checked;
		if(meeting1.checked){
		meetingStatus="A";
		}
		if(meeting2.checked){
		meetingStatus="B";
		}
		if(meeting3.checked){
		meetingStatus="C";
		} */
		
var genericintroemail="no";
var animatedlogo="no";
var palisaderadioads="no";
var corporatepresentation="no";
var infographic="no";
var corporatevideo="no";
var ceointerview="no";
var companyarticle="no";
var socialmedia="no";
if(document.getElementById("genericintroemail").checked){
genericintroemail="yes";
}
if(document.getElementById("animatedlogo").checked){
animatedlogo="yes";
}
if(document.getElementById("palisaderadioads").checked){
palisaderadioads="yes";
}
if(document.getElementById("corporatepresentation").checked){
corporatepresentation="yes";
}
if(document.getElementById("infographic").checked){
infographic="yes";
}
if(document.getElementById("corporatevideo").checked){
corporatevideo="yes";
}
if(document.getElementById("ceointerview").checked){
ceointerview="yes";
}
if(document.getElementById("companyarticle").checked){
companyarticle="yes";
}
if(document.getElementById("socialmedia").checked){
socialmedia="yes";
}

		$('.error').hide();
		var count=0;
		if(clientname=="")
		{
			$('#clientname').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Provide Company Name</div>");
			++count;
		}
		if(contactname=="")
		{
			$('#contactname').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Provide the Contact Name</div>");
			++count;
		}
		if(contractsigned=="")
		{
			$('#contractsigned').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Select Contract Signed Date</div>");
			++count;
		}
		if(contractexpire=="")
		{
			$('#contractexpire').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Select Contract Expired Date</div>");
			++count;
		}
		if(contractduration=="")
		{
			$('#contractduration').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Provide Contract Duration</div>");
			++count;
		}
		if(count>0){
			 return false;
		 } 

$.ajax({
		
		type:'POST',
		url:'${editClientUrl}',
		data:{clientname :clientname,contactname :contactname,contractsigned :contractsigned,contractexpire :contractexpire,contractduration :contractduration,assignedto :assignedto,genericintroemail :genericintroemail,animatedlogo :animatedlogo,palisaderadioads :palisaderadioads,
				corporatepresentation :corporatepresentation,infographic :infographic,corporatevideo :corporatevideo,ceointerview :ceointerview,companyarticle :companyarticle,meetingStatus :meetingStatus,globalClientId :globalClientId,socialmedia :socialmedia,leadphone :leadphone,email :email},
		success : function(result)
		{
		$.msgBox({
        							title: "Success",
        							type: "alert",
        							content: "Client Updated Succesfully",
        							afterClose: function () { 
        							window.location.reload();
        							//window.location.href="${contactredirectUrl}";
        								}
    							});
        	window.location.reload();
        	//window.location.href="${contactredirectUrl}";
		},
		error : function(e)
		{
			alert("Error"+e);
		}

	});

}

function extractmeetingPDF(){

meetingPdF('pdf');
}

function meetingPdF(type){
document.meetingPdf.action="${downloadMeetingUrl}";
document.meetingPdf.method="POST";
document.meetingPdf.submit();
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