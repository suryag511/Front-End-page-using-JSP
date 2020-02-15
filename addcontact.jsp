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
<c:url value="/med/contactmanagement" var="contactredirectUrl"></c:url>
<c:url value="/datatab/springPaginationDataTables" var="viewcreatecontactUrl"></c:url>

<c:url value="/contactdetail/buyersearch" var="callbuyerURL"></c:url>
<c:url value="/logout/success" var="logoutUrl"/>
<c:url value="/contactdetail/deletecontact" var="deletecontactsetURL"></c:url>
<c:url value="/contactdetail/getcontactrecord" var="getcontactrecordURL"></c:url>
<c:url value="/contactdetail/contactupdate" var="contactupdateURL"></c:url>
<c:url value="/newuser/getuserimage" var="userimageUrl"/>
<c:url value="/leadmanagement/getnotificvalues" var="gettnotificvaluesURL"/>
<c:url value="/admin/supportSendEmail" var="supportSendEmailURL"/>
<c:url value="/contactdetail/deletedoc" var="deletedocUrl"></c:url>

<c:url value="/leadmanagement/getpropertynotific" var="getpropertynotificURL"/>
<c:url value="/leadmanagement/changepropertynotic" var="changepropertynoticUrl"/>
<c:url value="/leadmanagement/getreplynotification" var="getreplynotificationURL"/>
<c:url value="/leadmanagement/changenotic" var="changenoticUrl"/>
<c:url value="/leadmanagement/getnotificvalues" var="gettnotificvaluesURL"/>
<c:url value="/leadmanagement/closeleadnotic" var="closeleadnoticUrl"/>
<c:url value="/leadmanagement/notescheck" var="notescheckURL"/>
<c:url value="/leadmanagement/getnote" var="getnoteURL"/>
<c:url value="/leadmanagement/deletereply" var="deletereplyURL"/>
<c:url value="/med/viewProperty" var="viewPropertyUrl"/>
<c:url value="/leadmanagement/sharemessage" var="sharemessageURL"/>
<c:url value="/leadmanagement/closesharemessage" var="closesharemessageURL"/>
<c:url value="/leadmanagement/deleteassign" var="deleteassignURL"/>
<c:url value="/leadmanagement/deletesharingreply" var="deletesharingreplyURL"/>
<c:url value="/newuser/resetPassword" var="resetPasswordUrl"></c:url>
<c:url value="/newuser/setPassword" var="setPasswordUrl"></c:url>
<c:url value="/med/profileView" var="profileviewUrl"></c:url>

<c:url value="/med/viewLead" var="viewLeadUrl"></c:url>
<c:url value="/leadmanagement/getadminmesgnotific" var="getadminmesgnotificURL"></c:url>
<c:url value="/leadmanagement/closadminmesgnotif" var="closadminmesgnotifURL"></c:url>
<c:url value="/leadmanagement/closingnotifs" var="closingnotifsUrl"/>
<c:url value="/leadmanagement/closeadminmesg" var="closeadminmesgUrl"/>
<c:url value="/contactdetail/contactDocfile" var="contactDocfileUrl"></c:url>
<c:url value="/datatab/meetingViewClient" var="viewClientUrl"></c:url>
<c:url value="/client/saveMeeting" var="saveMeetingUrl"></c:url>
<c:url value="/datatab/getMeeting" var="getMeetingUrl"></c:url>
<c:url value="/client/gettingclientvalue" var="gettingclientvalueURL"></c:url>
<c:url value="/client/gettincontact" var="gettincontactURL"></c:url>
<c:url value="/client/notifCountClose" var="notifCountCloseUrl"></c:url>

<c:url value="/newuser/contactdetails" var="createcontactUrl"></c:url>
<c:url value="/datatab/viewContact" var="viewContactUrl"></c:url>
<c:url value="/datatab/getEditMeeting" var="getEditMeetingUrl"></c:url>
<c:url value="/newuser/editcontact" var="editcontactUrl"></c:url>
<c:url value="/newuser/creattitle" var="creattitleURL"></c:url>
<c:url value="/datatab/getTitle" var="getTitleUrl"></c:url>
<c:url value="/newuser/creattag" var="creattagURL"></c:url>
<c:url value="/datatab/getTag" var="getTagUrl"></c:url>
<c:url value="/newuser/deletetitle" var="deletetitleURL"></c:url>
<c:url value="/newuser/deletetag" var="deletetagURL"></c:url>

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
        <!-- <li>
            <input type="text" class="form-control search" placeholder=" Search">
        </li> -->
        <!-- user login dropdown start-->
        <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
            <img src="${userLogo}" id="" class="img-circle" alt="" />
                <!--<img alt="" src="/resources/images/avatar1_small.jpg">-->
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
        <!-- user login dropdown end -->
    </ul>
</div>
 
</header>
<!--header end-->
<aside>
    <div id="sidebar" class="nav-collapse" >
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
            <li>
                            <a href="dashboard">
                                <i class="fa fa-dashboard"></i><span>My Dashboard</span>
                            </a>
                        </li> 
                                <li><a href="contactmanagement" class="active"><i class="fa fa-user"></i> <span>Contact Management</span></a></li>
                                <li><a href="leadmanagement"><i class="fa fa-group"></i> <span>Lead Management</span></a></li> 
                                 <li><a href="viewclient"><i class="fa fa-group"></i> <span>Client Management</span></a></li>
                                 <li><a href="addmeetings" ><i class="fa fa-group"></i> <span>Add Meeting</span></a></li> 
        </ul>      </div>
    </div>
</aside>
<!--sidebar end-->
    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
        
        
        <div class="col-sm-14">
        <section class="panel1">
        
        
        <div class="modal-body">
        <div align="center" class="spacer"></div>
        
        <div class="row">
        <div class="col-lg-12">
        <fieldset class="fieldset">
        <legend style="font-size: 16px;font-family: Times New Roman;">Add Personal Details</legend>
    	<div class="row">
            <div class="col-md-6">
        	<div class="form-group">  
        		<label class="control-label col-md-3">Title</label>
             	<div class="col-md-7">  
                  <select class="form-control" id="title" name="title" title="Title" >
		           <option value="">-Select Title-</option>
		           <c:forEach items="${titles}" var="titles">
		           <option value="${titles.title}"<c:if test="${titles.title eq contact.title}">selected</c:if>>${titles.title}</option>
		           </c:forEach>
		           
		           <!-- <option value="Head of Research"<c:if test="${contact.title eq 'Head of Research'}">selected</c:if>>Head of Research</option>
		           <option value="Investment Advisor"<c:if test="${contact.title eq 'Investment Advisor'}">selected</c:if>>Investment Advisor</option>
		           <option value="Branch Manager"<c:if test="${contact.title eq 'Branch Manager'}">selected</c:if>>Branch Manager</option>
		           <option value="Principal"<c:if test="${contact.title eq 'Principal'}">selected</c:if>>Principal</option>
		           <option value="Fund Manager"<c:if test="${contact.title eq 'Fund Manager'}">selected</c:if>>Fund Manager</option>
		           <option value="Analyst"<c:if test="${contact.title eq 'Analyst'}">selected</c:if>>Analyst</option> -->
        		 </select>
        		 <input type="hidden" id="title" name="titles" value="${contact.title}"/>                        
            	</div>
            </div>
            </div>
            <div class="col-md-6">
        	<div class="form-group">  
        		<label class="control-label col-md-3">Name</label>
             	<div class="col-md-3">  
             	<c:choose>
             	<c:when test="${empty contact}">
             	<input type="text" id="contactname" name="contactname" class="form-control"  placeholder="First Name" value="${contact.contactname}">
             	 </c:when>
            	<c:otherwise>
            	<input type="text" id="contactname" name="contactname" class="form-control" onfocus="this.value='';" placeholder="First Name" value="${contact.contactname}">
            	</c:otherwise>
            	</c:choose>
             	 <input type="hidden" id="editContactSlno" name="editContactSlno" placeholder="" value="${contact.slno}">
            	</div>
            	<div class="col-md-3">  
            	<c:choose>
             	<c:when test="${empty contact}">
            	<input type="text" id="lastname" name="lastname" class="form-control"  placeholder="Last Name" value="${contact.lastname}">
            	</c:when>
            	<c:otherwise>
            	<input type="text" id="lastname" name="lastname" class="form-control" onfocus="this.value='';" placeholder="Last Name" value="${contact.lastname}">
            	</c:otherwise>
            	</c:choose>
            	</div>
            </div>
            <br>
            	<br>
            </div>
            
            </div>
             
            <div class="row">
            
            <div class="col-md-6">
        	<div class="form-group">  
        		<label class="control-label col-md-3">Company</label>
             	<div class="col-md-7">  
             	<c:choose>
             	<c:when test="${empty contact}">
             	 <input type="text" id="company" name="company" class="form-control"  placeholder="Company" value="${contact.company}">
             	 	</c:when>
            	<c:otherwise>
            	
            	
            	 <input type="text" id="company" name="company" class="form-control" onfocus="this.value='';" placeholder="Company" value="${contact.company}">
            	
            	</c:otherwise>
            	</c:choose>
            	</div>
            </div>
            </div>
             
           <div class="col-md-6">
        	<div class="form-group">  
        		<label class="control-label col-md-3">City</label>
             	<div class="col-md-6">  
             	<c:choose>
             	<c:when test="${empty contact}">
             	<input type="text" class="form-control" id="city" name="city" title="City" placeholder="City" >
             	</c:when>
             	<c:otherwise>
             	<input type="text" class="form-control" id="city" name="city" title="City" onfocus="this.value='';" placeholder="City" value="${contact.city}">
             	</c:otherwise>
             	</c:choose>
            	</div>
            </div>
            <br>
            	<br>
            </div>
           
           </div>
    	<div class="row">
            <div class="col-md-6">
        	<div class="form-group">  
        		<label class="control-label col-md-3">Phone</label>
             	<div class="col-md-7">  
             	<c:choose>
    	<c:when test="${empty contact}">
                     <input type="text" id="phone" name="phone" class="form-control"  onkeypress="return isNumberKey(event)"  placeholder="Phone" value="${contact.phone}">                        
            	</c:when>
            	<c:otherwise>
            	<input type="text" id="phone" name="phone" class="form-control" onfocus="this.value='';" onkeypress="return isNumberKey(event)"  placeholder="Phone" value="${contact.phone}">
            	</c:otherwise>
            	</c:choose>
            	</div>
            </div>
            </div>
            <div class="col-md-6">
        	<div class="form-group">  
        		<label class="control-label col-md-3">Email</label>
             	<div class="col-md-6">  
             		<c:choose>
             		<c:when test="${empty contact}">
             		 <input type="text" id="email" name="email" class="form-control"  placeholder="Email" value="${contact.email}">
             		</c:when>
             		<c:otherwise>
             	 <input type="text" id="email" name="email" class="form-control" onfocus="this.value='';" placeholder="Email" value="${contact.email}">
             	 </c:otherwise>
             	 </c:choose>
            	</div>
            	<br>
            	<br>
            </div>
            </div>
            </div>
             
            <div class="row">
            
            <div class="col-md-6">
        	<div class="form-group">  
        		<label class="control-label col-md-3">Comments</label>
             	<div class="col-md-7">  
             	<textarea id="comments" name="comments" class="form-control" placeholder="Enter Your Comments ..." rows="4"></textarea>
             	
             	  <!-- <div class="modal-content"> -->
                
                    <!-- <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title"><i class="fa fa-table"></i>Comments History</h4>
                    </div> -->
                    
                        
            	</div>
            </div>
            </div>
             
           <div class="col-md-6">
        	<div class="form-group">  
        		<label class="control-label col-md-3">Contact Owner</label>
             	<div class="col-md-6"> 
             	<c:choose>
             	<c:when test="${empty contact}">
             	<input type="text" id="contactowner" name="contactowner" readonly="readonly" value="<%=SecurityContextHolder.getContext().getAuthentication().getName()%>" class="form-control" placeholder="Contact Owner">
             	</c:when>
             	<c:otherwise>
             	<input type="text" id="contactowner" name="contactowner" readonly="readonly" value="${contact.contactowner}" class="form-control" placeholder="Contact Owner">
             	</c:otherwise>
             	</c:choose>
             	<br>
             	
            	</div>
            </div>
            </div>
            <!--tag-->
            <div class="col-md-6">
        	<div class="form-group">  
        		<label class="control-label col-md-3">Tag</label>
             	<div class="col-md-6">  
                  <select class="form-control" id="tag" name="tag" title="Tag" >
		           <option value="">-Select Tag-</option>
		           <c:forEach items="${tags}" var="tags">
		           <option value="${tags.tag}"<c:if test="${tags.tag eq contact.tag}">selected</c:if>>${tags.tag}</option>
		           </c:forEach>
		           
		           
        		 </select>
        		 <input type="hidden" id="tag" name="tags" value="${contact.tag}"/>                        
            	</div>
            </div>
            </div>
           
           </div>
                    <br>
                        <div class="row">
                        
                        <div class="col-md-6">
                        <div class="form-group">  
        				<label class="control-label col-md-3">Comments History</label>
             			<div class="col-sm-7"> 
					 <textarea id="commentshistory" name="commentshistory" readonly="readonly" class="form-control" rows="6">
					 <c:forEach items="${allcomment}" var="allcomment">
 ${allcomment.comments} at  ${allcomment.createdtime}  on <fmt:formatDate value="${allcomment.createddate}" pattern="dd/MM/yyyy"/> by ${allcomment.createdby}
					 </c:forEach>
					 </textarea>
					 </div>
					 </div>
					</div>
					<br>
                    <div class="col-md-6">
        	<div class="form-group"> 
        	<label class="control-label col-md-2"><b>How often does this contact take meetings:</b></label> 
             	<div class="col-md-4 icheck">
             	<div class="flat-green">
             	<c:choose>
             	<c:when test="${contact.meetingStatus eq 'always'}">
             	<input type="radio" id="meeting1" name="meeting" checked="checked">
             	<label>Always</label>
             	</c:when>
             	<c:otherwise>
             	<input type="radio" id="meeting1" name="meeting">
             	<label>Always</label>
             	</c:otherwise>
             	</c:choose>  
             	</div>
             	</div>
             	<br>
             	<br>
             	<div class="col-md-4 icheck">
             	<div class="flat-yellow">
             	<c:choose>
             	<c:when test="${contact.meetingStatus eq 'often'}">
             	<input type="radio" id="meeting2" name="meeting" checked="checked">
             	<label>Often</label>
             	</c:when>
             	<c:otherwise>
             	<input type="radio" id="meeting2" name="meeting">
             	<label>Often</label>
             	</c:otherwise>
             	</c:choose>
             	</div>
             	</div>
             	<br>
             	<br>
             	<div class="col-md-7 icheck">
             	<div class="flat-red">
             	<c:choose>
             	<c:when test="${contact.meetingStatus eq 'yet to take a meeting'}">
             	<input type="radio" id="meeting3" name="meeting" checked="checked">
             	<label>Yet to take a Meeting</label>
             	</c:when>
             	<c:otherwise>
             	<input type="radio" id="meeting3" name="meeting">
             	<label>Yet to take a Meeting</label>
             	</c:otherwise>
             	</c:choose>
            	</div>
            	</div>
            	</div>
            </div>    
                        
                        </div>
           
           <br>
           <div class="row">
            
            <div class="col-md-6">
        	<div class="form-group">
                                    <label class="control-label col-md-3">Alerts (mm/dd/yy)</label>
                                    <div class="col-md-7">
                                    <div class="input-group">
                                  <div class="input-group-addon">
                                     <i class="fa fa-calendar"></i>
                                  </div>
                              		 <input type="text" class="form-control form-control-inline input-medium default-date-picker" id="alertdates" name="alertdates" onfocus="this.value='';" value="<fmt:formatDate value="${contact.alertDates}" pattern="MM/dd/yy" />" placeholder="Alerts"/>
                               </div>
                               </div>
                                </div>
            </div>
             
           
            </div>
        </fieldset>   
           </div>
            </div>
            
    	<div class="modal-footer clearfix">
    	<c:choose>
    	<c:when test="${empty contact}">
    	<button type="button" class="btn btn-primary pull-left" onclick="addcontact()"><i class="fa fa-save"></i> Save Contact</button>
    	</c:when>
    	<c:otherwise>
    	<button type="button" class="btn btn-primary pull-left" onclick="editContact()"><i class="fa fa-save"></i> Save Contact</button>
    	</c:otherwise>
    	</c:choose>
    	<button class="btn btn-danger" type="button" id="newaddtag" data-toggle="modal" data-target="#ADDtag"><i class="fa fa-plus"></i> Add Tag</button>
        <button class="btn btn-danger" type="button" id="newaddtitle" data-toggle="modal" data-target="#ADDtitle"><i class="fa fa-plus"></i> Add Title</button>
        	
        <a href="contactmanagement" type="button" class="btn btn-info pull-right"><i class="fa fa-arrow-circle-left"></i> Back</a>
        
        </div>
        </div>
        </section>
        </div>
    
        
        
		<div class="row">
        <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Meeting Management
                        </header>
                        <div class="panel-body">
                            <fieldset class="fieldset">
    						<legend>Meeting Management</legend>
                                <form action="#" method="post" id="savingmeetings" name="savingmeetings">
                                
                              	<div class="row">
                              	<div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-3">Meeting Date (dd/mm/yyyy)</label>
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
                                <input type="text" id="companyname" name="companyname" class="form-control" placeholder="Client Name" />
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
             	 			   <c:choose>
                               <c:when test="${empty contact}">
                  			   <input type="text" id="meetingphone" name="meetingphone" class="form-control" onkeypress="return isNumberKey(event)"  placeholder="Phone">
                  			   <input type="hidden" id="meetingcontactid" name="meetingcontactid" placeholder="Meeting Contact Id">
                               </c:when>
                               <c:otherwise>
                               <input type="text" id="meetingphone" name="meetingphone" class="form-control" onkeypress="return isNumberKey(event)"  placeholder="Phone" value="${contact.phone}" >
                  			   </c:otherwise>
                  			   </c:choose>                           
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
             	 			   <c:choose>
                               <c:when test="${empty contact}">
                  			   <input type="text" id="meetingemail" name="meetingemail" class="form-control"  placeholder="Email">
                  			   </c:when>
                  			   <c:otherwise>
                  			   <input type="text" id="meetingemail" name="meetingemail" class="form-control"  placeholder="Email" value="${contact.email}">
                  			   </c:otherwise>        
                  			   </c:choose>                   
            				   </div>
            				   </div>
                               </div>
                               </div>
                                 
                            <div class="modal-footer clearfix">                             
                                <button type="button"  class="btn btn-primary pull-left" id="addeventbutton" onclick="addMeeting()"><i class="fa fa-save"></i> Save Meeting</button>
                     		  
                     		 <!--  <button type="button" class="btn btn-info pull-right"  onclick="clearform()"><i class="fa fa-eraser"></i> Clear</button>  -->
                     		 
                      		</div>
                            </form>
                            </fieldset>

                        </div>
                    </section>

            </div>
         </div>
         
         
         
         
          <!-- Adding Titles -->
         <div class="modal fade" id="ADDtitle" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog" style="width: 650px;">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title" id="myModalLabel">Adding Title</h4>
                                        </div>
                                        <div class="modal-body">
                                       	 <div class="row">
                        				<div class="col-xs-6">
                        				<br>
										    <label><b>Add Title:</b></label> 
										    <br>
										    <br>
											<input type="text" id="addtitle" name="addtitle" class="form-control" placeholder="Title">
										    </div>
										  </div>
										  
										
										</div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            <button class="btn btn-success createnewuserbtn" type="button" onclick="Savetitle()">Save</button>
                                        </div>
                                        <div class="table-responsive">
						        		<header class="panel-heading">
						                        Title
						                </header>
						                <div class="panel-body">
										<div class="adv-table">
										<table id="titleTable" class="display table table-striped">
						                </table>   
						                </div> 
						                </div>
						            </div>  
                                    </div>
                                    <!-- /.modal-content -->
                                </div>
                                <!-- /.modal-dialog -->
                            </div>
         
         <!-- Adding Tag -->
         <div class="modal fade" id="ADDtag" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog" style="width: 650px;">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-tag" id="myModalLabel">Adding Tag</h4>
                                        </div>
                                        <div class="modal-body">
                                       	 <div class="row">
                        				<div class="col-xs-6">
                        				<br>
										    <label><b>Add Tag:</b></label> 
										    <br>
										    <br>
											<input type="text" id="addtag" name="addtag" class="form-control" placeholder="Tag">
										    </div>
										  </div>
										  
										
										</div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            <button class="btn btn-success createnewuserbtn" type="button" onclick="Savetag()">Save</button>
                                        </div>
                                        <div class="table-responsive">
						        		<header class="panel-heading">
						                        Tag
						                </header>
						                <div class="panel-body">
										<div class="adv-table">
										<table id="tagTable" class="display table table-striped">
						                </table>   
						                </div> 
						                </div>
						            </div>  
                                    </div>
                                    <!-- /.modal-content -->
                                </div>
                                <!-- /.modal-dialog -->
                            </div>
         
         
         
         
         
  <!--        <div class="col-sm-14">
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
        </div>  -->
        
        <div id="overlayid2" style="display: none;" class="overlay2"></div>
       	<div id="loadingid2" style="display: none;" class="loading-img2"></div>
       	
        </section>
        
        <!-- Meeting company POP UP STARTS-->
       <!--  --> <div class="modal fade" id="meetingCompany-modal" tabindex="-1" role="dialog" aria-hidden="true">
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
        
     
        <!-- comments history POP UP STARTS-->
        <div class="modal fade" id="commentsHistory-modal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
               
                <div class="modal-content">
                
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title"><i class="fa fa-table"></i>Comments History</h4>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                        
					 <textarea id="commentshistory" name="commentshistory" readonly="readonly" class="form-control" rows="6">
					 <c:forEach items="${allcomment}" var="allcomment">
					 ${allcomment.comments}   at  ${allcomment.createdtime}  on <fmt:formatDate value="${allcomment.createddate}" pattern="dd/MMM/yyyy"/>  by ${allcomment.createdby}
					 </c:forEach>
					 </textarea>
                    
                    <div class="modal-footer clearfix"> 
                     <!--   <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i> Discard</button>  -->
							
                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-envelope"></i>Ok</button>
                        
            		</div>
           
          <!-- /.row -->
                        
                        </div>
                        </div>
                        
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div>
        <!-- comments history POP UP ENDS-->
        
        
    
<!-- Delete title popup -->
<div class="modal fade" id="deleteModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog1">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
<h4 class="modal-title">Delete Title</h4>
</div>
<div class="modal-body">

 Are you sure you want to delete this Title ??

</div>
<div class="footer"> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default pull-right"  data-dismiss="modal" type="button"> No</button>
<button class="btn btn-warning pull-right1 "  type="button" data-dismiss="modal"  onclick="deletesupplier2()"> Yes</button>

</div>
</div>
</div>
</div>

 <!-- Delete tag popup -->
<div class="modal fade" id="deleteModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog1">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
<h4 class="modal-tag">Delete Tag</h4>
</div>
<div class="modal-body">

 Are you sure you want to delete this Tag ??

</div>
<div class="footer"> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default pull-right"  data-dismiss="modal" type="button"> No</button>
<button class="btn btn-warning pull-right1 "  type="button" data-dismiss="modal"  onclick="deletesupplier3()"> Yes</button>

</div>
</div>
</div>
</div>

 

<!-- Placed js at the end of the document so the pages load faster -->

<!--Core js-->
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
	var globalContactId=0;
	
	globalContactId=document.getElementById("editContactSlno").value;
    	
    	//$("#meeting").click(function(){
    	//$("#meeting_toggle").toggle(1000);
    	//})
//Allowing + and - for phone numbers    
  function isNumberKey(evt)
{
    var charCode = (evt.which) ? evt.which : event.keyCode
    		if (charCode != 46 && charCode != 45 && charCode > 31
    			    && (charCode < 48 || charCode > 57))
    			if (charCode != 43 && charCode > 31 && (charCode < 48 || charCode > 57))
    			     return false;
    return true;
}
    
    $('#alertdates').datepicker({
                    format: "mm/dd/yy"
                }).on('changeDate', function(e){
    				$(this).datepicker('hide');
    				 $(this).removeAttr("style");
	                 $(".spacer").empty();
				});
 
 
 // Saving title for dropdown
    function Savetitle() 
			{
    			var addtitle=document.getElementById("addtitle").value;
    			$('.error').hide();
    			var count=0;
    			if(addtitle=="")
    			{
    				$("#ADDtitle").modal("hide");
    				$('#addtitle').css('border',"1px solid red");
    				$(".spacer").html("<div align='center' class='error'>Please Provide Title</div>");
    				++count;
    			}
    			if(count>0){
    				 return false;
    			 } 
				$.ajax({	
						type:'POST',
						url:'${creattitleURL}',
						data:{addtitle : addtitle},
						success:function(result){
						$("#ADDtitle").modal("hide");
			 	$.msgBox({
        							title: "Success",
        							type: "alert",
        							content:"Title Added Successfully",
        							//$("#ADDtitle").modal("hide");
        							afterClose: function () { 
        							window.location.reload();
        							//window.location.href="${contactredirectUrl}";
        								}
    							});
			
			},
			error:function(e){
			alert("error"+e)
			}
			});
     	}
 
 // Saving tag for dropdown
    function Savetag() 
			{
    			var addtag=document.getElementById("addtag").value;
    			$('.error').hide();
    			var count=0;
    			if(addtag=="")
    			{
    				$("#ADDtag").modal("hide");
    				$('#addtag').css('border',"1px solid red");
    				$(".spacer").html("<div align='center' class='error'>Please Provide Tag</div>");
    				++count;
    			}
    			if(count>0){
    				 return false;
    			 } 
				$.ajax({	
						type:'POST',
						url:'${creattagURL}',
						data:{addtag : addtag},
						success:function(result){
						$("#ADDtag").modal("hide");
			 	$.msgBox({
        							title: "Success",
        							type: "alert",
        							content:"Tag Added Successfully",
        							//$("#ADDtag").modal("hide");
        							afterClose: function () { 
        							window.location.reload();
        							//window.location.href="${contactredirectUrl}";
        								}
    							});
			
			},
			error:function(e){
			alert("error"+e)
			}
			});
     	}
 
 
	function addcontact(){
     //	alert("calling contact ...");
     	var emailValid = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
     	var title = document.getElementById("title").value;
     	var contactname = document.getElementById("contactname").value;
     	var lastname = document.getElementById("lastname").value;
     	var alertdates=document.getElementById("alertdates").value;
		var company = document.getElementById("company").value;
		var city = document.getElementById("city").value;
		var phone = document.getElementById("phone").value;
		var email = document.getElementById("email").value;
		var comments = document.getElementById("comments").value;
		var contactowner = document.getElementById("contactowner").value;
		var tag = document.getElementById("tag").value;
		
		var meetingStatus="none";
		//var meeting1 = document.getElementById("meeting1").checked;
		if(meeting1.checked){
		meetingStatus="always";
		}
		if(meeting2.checked){
		meetingStatus="often";
		}
		if(meeting3.checked){
		meetingStatus="yet to take a meeting";
		}
		
		
		 var isvalid = emailValid.test(email);
		  
		$('.error').hide();
		var count=0;
		if(title=="")
		{
			$('#title').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Select Title</div>");
			++count;
		}
		if(contactname=="")
		{
			$('#contactname').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Provide the Contact First Name</div>");
			++count;
		}
		if(lastname=="")
		{
			$('#lastname').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Provide the Contact Last Name</div>");
			++count;
		}
		if(alertdates=="")
		{
			$('#alertdates').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Select Alert Date</div>");
			++count;
		}
		if(company=="")
		{
			$('#company').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Provide Company</div>");
			++count;
		}
		if(city=="")
		{
			$('#city').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Provide City</div>");
			++count;
		}
		if(phone=="")
		{
			$('#phone').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Provide Phone Number</div>");
			++count;
		}
		if(comments=="")
		{
			$('#comments').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Eneter the Comments</div>");
			++count;
		}
	/*	if(contactowner=="")
		{
			$('#contactowner').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Provide Contact Owner Name</div>");
			++count;
		} */
		if(email=="")
		{
			$('#email').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Enter the Valid Email Id</div>");
			++count;
		}
		if(email!="" && !isvalid)
		{
			$('#email').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Enter Valid Email ID</div>");
			++count;
		}
		
		
		if(count>0){
			 return false;
		 } 
		 
				   
		    $.ajax({
			type:'POST',
			url:'${createcontactUrl}',
			data:{title :title,contactname :contactname,lastname :lastname,alertdates :alertdates,company :company,city :city,phone :phone,email :email,comments :comments,contactowner :contactowner,
				meetingStatus :meetingStatus,tag : tag},
			success:function(result){
			 	$.msgBox({
        							title: "Success",
        							type: "alert",
        							content: "Contact Added Successfully",
        							afterClose: function () { 
        							window.location.reload();
        							window.location.href="${contactredirectUrl}";
        								}
    							});
			
			},
			error:function(e){
			alert("error"+e)
			}
			});
     	}

     	

     	function hideLoadingLayer(){
 			document.getElementById("loading_layer").style.visibility="hidden";
 			}
     	
     		function imageload()
     	{
     	
     	hideLoadingLayer();
     	
     	}	
     	
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
     	
     	
     	
    



function viewprofile(currentElement) 
 			{
				var id = $(currentElement).attr('id');
				window.location.href= '${profileviewUrl}';	
 			}

 



$('#meetingdate').datepicker({
                    format: "dd/mm/yyyy"
                }).on('changeDate', function(e){
    				$(this).datepicker('hide');
    				 $(this).removeAttr("style");
	                 $(".spacer").empty();
				});




function  describeCounternotes(notes,noteschar_len,noteslimit) 
        {	
        	document.getElementById(notes).value = document.getElementById(notes).value.substring(0, noteslimit);
        	document.getElementById(noteschar_len).value = noteslimit - document.getElementById(notes).value.length;
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
 
 
/* $(document).ready(function() {
    
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
 
}); */

//Deleting Title
$(document).ready(function() {
    
$("#titleTable").dataTable( {
    		 "bProcessing": false,
    	    "bFilter": true,
    	    "bSearchable": true,
    	    "scrollCollapse": true,
    	    "bServerSide": false,
    	    "sort": "position",
    	   "sAjaxSource": '${getTitleUrl}',
    	   "fnServerData": function ( sSource,aoData, fnCallback) {
    				$.ajax({
    					"dataType": 'json',
    					"type": "GET",
    					url : '${getTitleUrl}',
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
    			 "sTitle":"Title Id",
    			 "sWidth":"10px",
    			 "bVisible": false,  
    			 "aTargets": [1]
    							 				 								
    		},
    		{
    			 "sTitle":"Title",
    			 "sWidth":"10px"
    			
    		},
    	   {
			"sTitle" :"Action",
			"sWidth":"50px",
			"bSortable":false,
			"bVisible": true,
			
			mRender : function(data,type,full) 
			{						
				return '<div align="center"><a href="#" title="Edit" id="'+data+'" onclick="deleteConfirmation2(this)" class="fa fa-trash-o"></a></div>';
			}
		}
    		
    		
    	   ]
    	} );
 
});

//Deleting Tag
$(document).ready(function() {
    
$("#tagTable").dataTable( {
    		 "bProcessing": false,
    	    "bFilter": true,
    	    "bSearchable": true,
    	    "scrollCollapse": true,
    	    "bServerSide": false,
    	    "sort": "position",
    	   "sAjaxSource": '${getTagUrl}',
    	   "fnServerData": function ( sSource,aoData, fnCallback) {
    				$.ajax({
    					"dataType": 'json',
    					"type": "GET",
    					url : '${getTagUrl}',
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
    			 "sTitle":"Tag Id",
    			 "sWidth":"10px",
    			 "bVisible": false,  
    			 "aTargets": [1]
    							 				 								
    		},
    		{
    			 "sTitle":"Tag",
    			 "sWidth":"10px"
    			
    		},
    	   {
			"sTitle" :"Action",
			"sWidth":"50px",
			"bSortable":false,
			"bVisible": true,
			
			mRender : function(data,type,full) 
			{						
				return '<div align="center"><a href="#" tag="Edit" id="'+data+'" onclick="deleteConfirmation3(this)" class="fa fa-trash-o"></a></div>';
			}
		}
    		
    		
    	   ]
    	} );
 
});

 /* $(document).ready(function() {
    
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
 
}); */

function clientChecks(currentElement)
{
	var clientid= $(currentElement).attr('id');
	  document.getElementById("meetingclientid").value=clientid;
	  getClientName(clientid);
}

// Delete title calling function
function deleteConfirmation2(currentElement)
{
	$('#deleteModal2').modal('show');
	$("#ADDtitle").modal("hide");
	 id= $(currentElement).attr('id'); 
}


//Delete tag calling function
function deleteConfirmation3(currentElement)
{
	$('#deleteModal3').modal('show');
	$("#ADDtag").modal("hide");
	 id= $(currentElement).attr('id'); 
}



//Delete Title
function deletesupplier2()
		{
			$.ajax({
				type:'POST',
				url:'${deletetitleURL}',
				data:{id : id},
				success:function(result)
			
				{
					$("#ADDtitle").modal("hide");
				$.msgBox({
    							title: "Success",
    							type: "alert",
    							content: "Title Deleted Successfully",
    							afterClose: function () { 
    							$('#titleTable').DataTable().ajax.reload();
    							
    							//window.location.reload();
    							
    								}
							});
				
				globelslno="";
				},
				error:function(e)
				{
				alert(e);
				}
			});

		}  
// delete titleend


//Delete Tag
function deletesupplier3()
		{
			$.ajax({
				type:'POST',
				url:'${deletetagURL}',
				data:{id : id},
				success:function(result)
			
				{
					$("#ADDtag").modal("hide");
				$.msgBox({
    							title: "Success",
    							type: "alert",
    							content: "Tag Deleted Successfully",
    							afterClose: function () { 
    						
    							
    							window.location.reload();
    							
    								}
							});
				
				globelslno="";
				},
				error:function(e)
				{
				alert(e);
				}
			});

		}  
// delete tagend



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


function editContact(){
//alert("edit");

		var emailValid = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
     	var title = document.getElementById("title").value;
     	var contactname = document.getElementById("contactname").value;
     	var lastname=document.getElementById("lastname").value;
		var company = document.getElementById("company").value;
		var city = document.getElementById("city").value;
		var phone = document.getElementById("phone").value;
		var email = document.getElementById("email").value;
		var comments = document.getElementById("comments").value;
		var contactowner = document.getElementById("contactowner").value;
		var alertdates = document.getElementById("alertdates").value;
		var tag = document.getElementById("tag").value;
		
		//alert(alertdates);
		var meetingStatus="always";
		//var meeting1 = document.getElementById("meeting1").checked;
	/*	if(meeting1.checked){
		meetingStatus="always";
		} */
		if(meeting2.checked){
		meetingStatus="often";
		}
		if(meeting3.checked){
		meetingStatus="yet to take a meeting";
		}
		
		var isvalid = emailValid.test(email); 
		$('.error').hide();
		var count=0;
		if(title=="")
		{
			$('#title').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Select Title</div>");
			++count;
		}
		if(contactname=="")
		{
			$('#contactname').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Provide the Contact First Name</div>");
			++count;
		}
		if(lastname=="")
		{
			$('#lastname').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Provide the Contact Last Name</div>");
			++count;
		}
		if(alertdates=="")
		{
			$('#alertdates').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Select Alert Date</div>");
			++count;
		}
		if(company=="")
		{
			$('#company').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Provide Company</div>");
			++count;
		}
		if(city=="")
		{
			$('#city').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Provide City</div>");
			++count;
		}
		if(phone=="")
		{
			$('#phone').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Provide Phone Number</div>");
			++count;
		}
		if(comments=="")
		{
			$('#comments').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Eneter the Comments</div>");
			++count;
		}
	/*	if(contactowner=="")
		{
			$('#contactowner').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Provide Contact Owner Name</div>");
			++count;
		} */
		if(email=="")
		{
			$('#email').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Enter the Valid Email Id</div>");
			++count;
		}
		if(email!="" && !isvalid)
		{
			$('#email').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Enter Valid Email ID</div>");
			++count;
		}	
		if(tag=="")
		{
			$('#tag').css('border',"1px solid red");
			$(".spacer").html("<div align='center' class='error'>Please Provide tag</div>");
			++count;
		}
		if(count>0){
			 return false;
		 } 
		
				   
		    $.ajax({
			type:'POST',
			url:'${editcontactUrl}',
			data:{title :title,contactname :contactname,lastname :lastname,company :company,city :city,phone :phone,email :email,comments :comments,contactowner :contactowner,
				meetingStatus :meetingStatus,globalContactId :globalContactId,alertdates :alertdates,tag :tag},
			success:function(result){
			if(result=="success"){
			 	$.msgBox({
        							title: "Success",
        							type: "alert",
        							content: "Contact Updated Successfully",
        							afterClose: function () { 
        							window.location.reload();
        							window.location.href="${contactredirectUrl}";
        								}
    							});
			}
			else{
			$.msgBox({
        							title: "Success",
        							type: "alert",
        							content: "Contact Not Updated",
        							afterClose: function () { 
        							window.location.reload();
        							//window.location.href="${contactredirectUrl}";
        								}
    							});
			}
			},
			error:function(e){
			alert("error"+e)
			}
			});
     	}
     	
     	/* function clearFN(){
     	document.getElementById("contactname").value="";
     	}
     	function clearLN(){
     	document.getElementById("lastname").value="";
     	}
     	function clearCompany(){
     	document.getElementById("company").value="";
     	}
     	function clearPhone(){
     	document.getElementById("phone").value="";
     	}
     	function clearEmail(){
     	document.getElementById("email").value="";
     	}
     	function clearAlertdates(){
     	document.getElementById("alertdates").value="";
     	} */
     	
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
