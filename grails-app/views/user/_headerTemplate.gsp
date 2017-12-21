<header class="main-header">
    <!-- Logo -->
    <a href="../../index2.html" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        %{--<span class="logo-mini"><b>A</b>LT</span>--}%
        <!-- logo for regular state and mobile devices -->
    <span class="logo-lg"><b>RMS</b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </a>

        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                <!-- Messages: style can be found in dropdown.less-->

                <!-- User Account: style can be found in dropdown.less -->
                <li class="dropdown user user-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <g:if test="${user?.profilePicture}">
                            <img src="${request.contextPath}/commonAjax/downloadDoc?moduleName=user&subModuleName=user_image&fileName=${user?.profilePicture}" class="user-image" alt="User Image">



                        </g:if>
                        <g:else>
                            <img src="${resource(dir: "dist/img", file: "images.png")}" class="user-image" alt="User Image">

                        </g:else>
                        <g:if test="${user?.firstName && user?.lastName}">
    <span class="hidden-xs">${user?.firstName} ${user?.lastName}</span>

</g:if>

                        <g:else>
                            <span class="hidden-xs">Anonymous</span>

                        </g:else>

                    </a>
                    <ul class="dropdown-menu">
                        <!-- User image -->
                        <li class="user-header">
                        <g:if test="${user?.profilePicture}">
                            <img src="${request.contextPath}/commonAjax/downloadDoc?moduleName=user&subModuleName=user_image&fileName=${user?.profilePicture}" class="user-circle" alt="User Image">



                        </g:if>
                        <g:else>
                            <img src="${resource(dir: "dist/img", file: "images.png")}" class="user-circle" alt="User Image">

                        </g:else>

                        </li>
                        <!-- Menu Body -->
                        <li class="user-body">
                            <div class="row">
                                <div class="col-xs-4 text-center">
                                    <a href="#">Followers</a>
                                </div>
                                <div class="col-xs-4 text-center">
                                    <a href="#">Sales</a>
                                </div>
                                <div class="col-xs-4 text-center">
                                    <a href="#">Friends</a>
                                </div>
                            </div>
                            <!-- /.row -->
                        </li>
                        <!-- Menu Footer-->
                        <li class="user-footer">
                            <div class="pull-left">
                                <g:link controller="user" action="viewProfile" id="${user?.id}"  class="btn btn-default btn-flat"> Profile </g:link>
                            </div>
                            <div class="pull-right">

                                <g:link controller="user" action="signOut"  params="[userId : user?.id]" class="btn btn-default btn-flat"> Sign Out </g:link>

                                %{--<a href="#" class="btn btn-default btn-flat">Sign out</a>--}%
                            </div>
                        </li>
                    </ul>
                </li>
                %{--<!-- Control Sidebar Toggle Button -->--}%
                %{--<li>--}%
                    %{--<a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>--}%
                %{--</li>--}%
            </ul>
        </div>
    </nav>
</header>
