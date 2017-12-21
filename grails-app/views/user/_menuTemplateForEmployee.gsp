<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="${resource(dir: "dist/img", file: "user2-160x160.jpg")}" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>Alexander Pierce</p>
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
                    %{--<li><a href="../../index.html"><i class="fa fa-circle-o"></i> View  </a></li>--}%
                    <li>
                        <g:link controller="user" action="viewProfile" id="${user?.id}"><i class="fa fa-circle-o"></i> View </g:link>

                    </li>

                    <li>
                        <g:link controller="user" action="editProfile" id="${user?.id}"><i class="fa fa-circle-o"></i> Edit </g:link>

                    %{--<a href="../../index2.html"><i class="fa fa-circle-o"></i> Edit </a>--}%

                    </li>
                </ul>
            </li>








            <li>
                <g:link controller="user" action="captureImage" params="[userId:user?.id]"><i class="fa fa-picture-o"></i> Capture Image </g:link>


            %{--<a href="../mailbox/mailbox.html">--}%
            %{--<i class="fa fa-picture-o"></i> <span>Capture Image</span>--}%
            %{--</a>--}%
            </li>














        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
