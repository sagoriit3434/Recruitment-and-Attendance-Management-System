<div class="box box-primary">
    <div class="box-body box-profile">

        %{--<img class="profile-user-img img-responsive img-circle" src="../../dist/img/user4-128x128.jpg" alt="User profile picture">--}%
        <img class="profile-user-img img-responsive img-circle" src="${resource(dir: "dist/img", file: "images.png")}" alt="User profile picture">

        %{--<g:if test="${user?.firstName || user?.lastName}">--}%
            %{--<h3 class="profile-username text-center">${user?.firstName } ${user?.lastName }</h3>--}%
        %{--</g:if>--}%
        %{--<g:else>--}%
            %{--<h3 class="profile-username text-center">Name is not found</h3>--}%

        %{--</g:else>--}%


        %{--<g:if test="${user?.designation}">--}%
            %{--<p class="text-muted text-center">${user?.designation}</p>--}%
        %{--</g:if>--}%
        %{--<g:else>--}%
            %{--<p class="text-muted text-center">No designation is not found. </p>--}%

        %{--</g:else>--}%

        <label> Choose Profile Picture</label>
        <input type="file" name="imagePath" class="form-control">
        <br>

        <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userName', 'error')} required">
            <label for="userName">
                <g:message code="user.userName.label" default="User Name" />
                <span class="required-indicator">*</span>
            </label>
            <g:textField name="userName" required="" class="form-control" value="${userInstance?.userName}"/>

        </div>

        <br>


        <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
            <label for="password">
                <g:message code="user.password.label" default="Password" />
                <span class="required-indicator">*</span>
            </label>
            <g:textField name="password" required="" class="form-control" value="${userInstance?.password}"/>

        </div>
        <br>



        <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'firstName', 'error')} ">
            <label for="firstName">
                <g:message code="user.firstName.label" default="First Name" />

            </label>
            <g:textField name="firstName" class="form-control" value="${userInstance?.firstName}"/>

        </div>
        <br>


        <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastName', 'error')} ">
            <label for="lastName">
                <g:message code="user.lastName.label" default="Last Name" />

            </label>
            <g:textField name="lastName" class="form-control" value="${userInstance?.lastName}"/>

        </div>

        <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'dateOfBirth', 'error')} ">
            <label for="dateOfBirth">
                <g:message code="user.dateOfBirth.label" default="Date Of Birth" />

            </label>
            <br>
            <g:datePicker name="dateOfBirth" precision="day" class="form-control"  value="${userInstance?.dateOfBirth}" default="none" noSelection="['': '']" />

        </div>

        <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'joiningDate', 'error')} ">
            <label for="joiningDate">
                <g:message code="user.joiningDate.label" default="Joining Date" />

            </label>
            <br>
            <g:datePicker name="joiningDate" precision="day"  value="${userInstance?.joiningDate}" default="none" noSelection="['': '']" class="form-control"/>

        </div>

        <input type="hidden" name="role" value="employee">




    </div>
    <!-- /.box-body -->
</div>



<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">About Me</h3>
    </div>
    <!-- /.box-header -->
    <div class="box-body">
        <strong><i class="fa fa-book margin-r-5"></i> Education</strong>

        <g:textArea name="education" class="form-control" value="${userInstance?.education}"/>


        <hr>

        <strong><i class="fa fa-map-marker margin-r-5"></i>Permanent Address</strong>
        <g:textArea name="permanentAddress" class="form-control" value="${userInstance?.permanentAddress}"/>




        <hr>

        <strong><i class="fa fa-map-marker margin-r-5"></i>Current Address</strong>

        <g:textArea name="presentAddress" class="form-control" value="${userInstance?.presentAddress}"/>



        <hr>

        <strong><i class="fa fa-file-text-o margin-r-5"></i> Short Note About Me </strong>

        <g:textArea name="aboutUser" class="form-control" value="${userInstance?.aboutUser}"/>
    </div>
    <!-- /.box-body -->
</div>