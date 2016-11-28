<%@include file="Header.jsp" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<style>
body {
    background-image:url(resources/images/signupbg.jpg);
background-size: 1400px 750px;
    background-repeat: no-repeat;
    }
</style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-9">
            <div class="panel panel-default">
                <div class="panel-heading"> <strong class="">Login</strong>

                </div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form">
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-3 control-label">Username</label>
                            <div class="col-sm-9">
                                <input type="email" class="form-control" id="inputEmail3" placeholder="username" required="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword3" class="col-sm-3 control-label">Password</label>
                            <div class="col-sm-9">
                                <input type="password" class="form-control" id="inputPassword3" placeholder="Password" required="">
                            </div>
                        </div>                
                        <div class="form-group last">
                            <div class="col-sm-offset-3 col-sm-9">
                                <div id="browse_app">
                                <button type="submit" class="btn btn-success btn-sm">submit</button>                              
                                <button type="reset" class="btn btn-default btn-sm">cancel</button>
                                </div>
                                <div class="form-group last">
                                <button type="button" class="btn btn-link">Sign Up?</button>
                                </div>
                                		
                                
                            </div>
                        </div>
                    </form>
                </div>
                
</body>
</html>