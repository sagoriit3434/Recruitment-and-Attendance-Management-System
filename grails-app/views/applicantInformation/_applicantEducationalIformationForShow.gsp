<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-header">
                <h4 align="center" style="color: black"><b>Intermediate and Secondary Educational Details</b> </h4>

            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
                <table class="table table-hover">
                    <tr>
                        <th style="font:12px arial, sans-serif; color: black"><b>Exam</b> </th>
                        <th style="font:12px arial, sans-serif; color: black"><b>School/College</b></th>
                        <th style="font:12px arial, sans-serif; color: black"><b>GPA</b></th>
                        <th style="font:12px arial, sans-serif; color: black"><b>Board</b></th>
                        <th style="font:12px arial, sans-serif; color: black"><b>Passing Year</b></th>
                    </tr>
                    <tr>




                        <td style="font:12px arial, sans-serif; color: black">SSC</td>
                        <td style="font:12px arial, sans-serif; color: black">
                            <g:if test="${applicantInformationInstance?.schoolName}">
                                ${applicantInformationInstance?.schoolName}
                            </g:if>
                            <g:else>
                                Empty.
                            </g:else>
                        </td>

                        <td style="font:12px arial, sans-serif; color: black">
                            <g:if test="${applicantInformationInstance?.sseCGPA}">
                                ${applicantInformationInstance?.sseCGPA}
                            </g:if>
                            <g:else>
                                Empty.
                            </g:else>
                        </td>
                        <td style="font:12px arial, sans-serif; color: black">
                            <g:if test="${applicantInformationInstance?.boardForSsc}">
                                ${applicantInformationInstance?.boardForSsc}
                            </g:if>
                            <g:else>
                                Empty.
                            </g:else>
                        </td>
                        <td style="font:12px arial, sans-serif; color: black">
                            <g:if test="${applicantInformationInstance?.passingYearForSSC}">
                                ${applicantInformationInstance?.passingYearForSSC}
                            </g:if>
                            <g:else>
                                Empty.
                            </g:else>
                        </td>



                    </tr>
                    <tr>







                        <td style="font:12px arial, sans-serif; color: black">HSC</td>
                        <td style="font:12px arial, sans-serif; color: black">
                            <g:if test="${applicantInformationInstance?.collegeName}">
                                ${applicantInformationInstance?.collegeName}
                            </g:if>
                            <g:else>
                                Empty.
                            </g:else>
                        </td>

                        <td style="font:12px arial, sans-serif; color: black">
                            <g:if test="${applicantInformationInstance?.hseCGPA}">
                                ${applicantInformationInstance?.hseCGPA}
                            </g:if>
                            <g:else>
                                Empty.
                            </g:else>
                        </td>
                        <td style="font:12px arial, sans-serif; color: black">
                            <g:if test="${applicantInformationInstance?.boardForHsc}">
                                ${applicantInformationInstance?.boardForHsc}
                            </g:if>
                            <g:else>
                                Empty.
                            </g:else>
                        </td>
                        <td style="font:12px arial, sans-serif; color: black">
                            <g:if test="${applicantInformationInstance?.passingYearForHsc}">
                                ${applicantInformationInstance?.passingYearForHsc}
                            </g:if>
                            <g:else>
                                Empty.
                            </g:else>
                        </td>



                    </tr>





                </table>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.box -->
    </div>
</div>

<br>
<br>


<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-header">
                <h4 align="center" style="color: black"><b>Honors and MS Details</b> </h4>

            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
                <table class="table table-hover">
                    <tr>
                        <th style="font:12px arial, sans-serif; color: black"><b>Designation</b> </th>
                        <th style="font:12px arial, sans-serif; color: black"><b>University/Institute</b></th>
                        <th style="font:12px arial, sans-serif; color: black"><b>Subject</b></th>
                        <th style="font:12px arial, sans-serif; color: black"><b>CGPA</b></th>
                        <th style="font:12px arial, sans-serif; color: black"><b>Passing Year</b></th>
                    </tr>
                    <tr>
                        <td style="font:12px arial, sans-serif; color: black">
                            Honors

                        </td>


                        <td style="font:12px arial, sans-serif; color: black">
                            <g:if test="${applicantInformationInstance?.universityOrInstituteForHonors}">
                                ${applicantInformationInstance?.universityOrInstituteForHonors}
                            </g:if>
                            <g:else>
                                Empty.
                            </g:else>
                        </td>

                        <td style="font:12px arial, sans-serif; color: black">
                            <g:if test="${applicantInformationInstance?.subjectForHonors}">
                                ${applicantInformationInstance?.subjectForHonors}
                            </g:if>
                            <g:else>
                                Empty.
                            </g:else>
                        </td>


                        <td style="font:12px arial, sans-serif; color: black">
                            <g:if test="${applicantInformationInstance?.honorsCGPA}">
                                ${applicantInformationInstance?.honorsCGPA}
                            </g:if>
                            <g:else>
                                Empty.
                            </g:else>
                        </td>


                        <td style="font:12px arial, sans-serif; color: black">
                            <g:if test="${applicantInformationInstance?.durationForHonors}">
                                ${applicantInformationInstance?.durationForHonors}
                            </g:if>
                            <g:else>
                                Empty.
                            </g:else>
                        </td>

                    </tr>
                    <tr>
                        <td style="font:12px arial, sans-serif; color: black">
                            MS

                        </td>






                        <td style="font:12px arial, sans-serif; color: black">
                            <g:if test="${applicantInformationInstance?.universityOrInstituteForMs}">
                                ${applicantInformationInstance?.universityOrInstituteForMs}
                            </g:if>
                            <g:else>
                                Empty.
                            </g:else>
                        </td>
                        <td style="font:12px arial, sans-serif; color: black">
                            <g:if test="${applicantInformationInstance?.subjectForMs}">
                                ${applicantInformationInstance?.subjectForMs}
                            </g:if>
                            <g:else>
                                Empty.
                            </g:else>
                        </td>


                        <td style="font:12px arial, sans-serif; color: black">
                            <g:if test="${applicantInformationInstance?.msCGPA}">
                                ${applicantInformationInstance?.msCGPA}
                            </g:if>
                            <g:else>
                                Empty.
                            </g:else>
                        </td>


                        <td style="font:12px arial, sans-serif; color: black">
                            <g:if test="${applicantInformationInstance?.durationForMs}">
                                ${applicantInformationInstance?.durationForMs}
                            </g:if>
                            <g:else>
                                Empty.
                            </g:else>
                        </td>

                    </tr>





                </table>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.box -->
    </div>
</div>


