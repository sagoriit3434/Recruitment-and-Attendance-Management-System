<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">

                <g:if test="${user?.profilePicture}">
                    <img class="profile-user-img img-responsive img-circle" src="${request.contextPath}/commonAjax/downloadDoc?moduleName=user&subModuleName=user_image&fileName=${user?.profilePicture}" alt="User profile picture">

                </g:if>
                <g:else>
                    <img class="profile-user-img img-responsive img-circle" src="${resource(dir: "dist/img", file: "images.png")}" alt="User profile picture">

                </g:else>
            </div>
            <div class="pull-left info">
                <g:if test="${user?.firstName && user?.lastName}">

                    <p> ${user?.firstName} ${user?.lastName}</p>

                </g:if>
                <g:else>
                    <p>Anonymous</p>
                </g:else>

                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search...">
                <span class="input-group-btn">
                    <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                    </button>
                </span>
            </div>
        </form>
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-dashboard"></i> <span>Profile</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li>
                        <g:link controller="user" action="viewProfile" id="${user?.id}"><i class="fa fa-circle-o"></i> View </g:link>

                    </li>

                    <li>
                        <g:link controller="user" action="editProfile" id="${user?.id}"><i class="fa fa-circle-o"></i> Edit </g:link>

                    </li>
                </ul>
            </li>



            <g:if test="${user?.role == "hr"}">


                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-dashboard"></i> <span>Position</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            %{--<li><a href="../../index.html"><i class="fa fa-circle-o"></i> View  </a></li>--}%
                            <li>
                                <g:link controller="user" action="addPosition" id="${user?.id}"><i class="fa fa-circle-o"></i> Add </g:link>

                            </li>

                            <li>
                                <g:link controller="user" action="listOfAvailablePosition" id="${user?.id}"><i class="fa fa-circle-o"></i> List </g:link>
                            </li>
                        </ul>
                    </li>

            </g:if>



    <g:if test="${user?.role == "hr"}">
        <li class="treeview">
            <a href="#">
                <i class="fa fa-dashboard"></i> <span>Recruitment</span>
                <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                </span>
            </a>
            <ul class="treeview-menu">
                %{--<li><a href="../../index.html"><i class="fa fa-circle-o"></i> View  </a></li>--}%
                <li>
                    <g:link controller="recruitmentDetails" action="addRecruitmentDetails" params="[userId:user?.id]"><i class="fa fa-circle-o"></i> Add Details </g:link>

                </li>

                <li>
                    <g:link controller="recruitmentDetails" action="listOfAllAvailAbleRecruitmentOffer"  params="[userId:user?.id]" ><i class="fa fa-circle-o"></i> View All Recruitment Offer </g:link>
                </li>
            </ul>
        </li>
    </g:if>




            <g:if test="${user?.role == "hr"}">
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-dashboard"></i> <span> Applicant  </span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        %{--<li><a href="../../index.html"><i class="fa fa-circle-o"></i> View  </a></li>--}%
                        <li>
                            <g:link controller="user" action="applicantList" params="[userId:user?.id]"><i class="fa fa-circle-o"></i> All Applicants </g:link>

                        </li>

                        <li>
                            <g:link controller="user" action="confirmed_Applicant_List" params="[userId:user?.id]"><i class="fa fa-circle-o"></i> Accepted Applicants </g:link>
                        </li>

                        <li>
                            <g:link controller="user" action="rejected_Applicant_List" params="[userId:user?.id]"><i class="fa fa-circle-o"></i> Rejected Applicants </g:link>
                        </li>


                    </ul>
                </li>
            </g:if>
            <g:if test="${user?.role == "hr"}">
                <li>
                    <g:link controller="user" action="recommendationTemplate" params="[userId:user?.id]"><i class="fa fa-filter"></i> Recommendation </g:link>


                %{--<a href="../mailbox/mailbox.html">--}%
                %{--<i class="fa fa-picture-o"></i> <span>Capture Image</span>--}%
                %{--</a>--}%
                </li>
            </g:if>






    %{--<li>--}%
        %{--<g:link controller="user" action="captureImage" params="[userId:user?.id]"><i class="fa fa-picture-o"></i> Capture Image </g:link>--}%


      %{----}%
    %{--</li>--}%

</ul>
    </section>
    <!-- /.sidebar -->
</aside>
