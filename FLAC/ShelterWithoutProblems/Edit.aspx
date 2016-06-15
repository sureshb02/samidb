<%@ Page Title="Add Shelter Withour Problems" Language="C#" MasterPageFile="~/CaseMaster.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="SaMI.Web.FLAC.ShelterWithoutProblems.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('.date_input').datepicker({ dateFormat: 'dd/mm/y', changeYear: true, changeMonth: true });
        });
    </script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager EnablePartialRendering="true" ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <div class="container" style="margin-top:10px">
            <div class="row">
                <asp:UpdatePanel ID="UpdatePanelAdd" runat="server">
                <ContentTemplate>

                <h3>Detail about client</h3>
                <table id="personalDetails"width="100%" cellpadding="5" cellspacing="0" border="0" class="table-tab">
                    <tr>
                        <td width="15%"><label>Family Name</label></td>
                        <td>
                            <asp:TextBox ID="txtFamilyName" runat="server" CssClass="form-control input-sm" required="required"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><label>First Name</label></td>
                        <td>
                            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control input-sm" required="required"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><label>District</label></td>
                        <td><asp:DropDownList ID="ddlDistrict" runat="server" CssClass="form-control input-sm" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged" AutoPostBack="true" ></asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td><label>VDC</label></td>
                        <td><asp:DropDownList ID="ddlVDC" runat="server" CssClass="form-control input-sm"></asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td><label>Ward</label></td>
                        <td><asp:TextBox ID="txtWardNo" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>Phone Number</label></td>
                        <td>
                            <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                    </tr>
                    
                    <tr>
                        <td><label>Passport No.</label></td>
                        <td>
                            <asp:TextBox ID="txtPassportNumber" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Citizenship No.</label></td>
                        <td>
                            <asp:TextBox ID="txtCitizenshipNumber" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td><label>Sex of client</label></td>
                        <td>
                            <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control input-sm" required="required">
                                <asp:ListItem Value="">--Select--</asp:ListItem>
                                <asp:ListItem Value="M">Male</asp:ListItem>
                                <asp:ListItem Value="F">Female</asp:ListItem>
                                <asp:ListItem Value="O">Other</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Date of Birth</label></td>
                        <td>
                            <asp:TextBox ID="txtDateOfBirth" runat="server" CssClass="form-control input-sm date_input"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Caste and Ethnicity</label></td>
                        <td>
                            <asp:DropDownList ID="ddlEthnicity" runat="server" CssClass="form-control input-sm"
                                AutoPostBack="true" OnSelectedIndexChanged="ddlEthnicity_SelectedIndexChanged">
                            </asp:DropDownList>
                            <br />
                             <asp:RadioButtonList ID="rbValidRegions" runat="server" RepeatDirection="Horizontal">
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Age</label></td>
                        <td>
                            <asp:TextBox ID="txtAge" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                   
                    <tr>
                        <td valign="top"><label>If have taken Labour approval, then  number</label></td>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td width="150">Yes:&nbsp;<asp:RadioButton ID="rbHaveLabourApporvalYes" GroupName="rbHaveLabourApporval"  runat="server" /></td>
                                    <td width="50">Number:</td>
                                    <td><asp:TextBox ID="txtLabourApprovalNumber" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>Undocumented:&nbsp;<asp:RadioButton ID="rbHaveLabourApporvalUndocumented" GroupName="rbHaveLabourApporval"  runat="server" /></td>
                                    <td colspan="2">Not Taken:&nbsp;<asp:RadioButton ID="rbHaveLabourApporvalNotTaken" GroupName="rbHaveLabourApporval"  runat="server" /></td>
                                </tr>
                            </table>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>

                    <tr>
                        <td><label>Education Status</label></td>
                        <td>
                            <asp:DropDownList ID="ddlEducationStatus" runat="server" CssClass="form-control input-sm" required="required">
                                <asp:ListItem Value="">--Select--</asp:ListItem>
                                <asp:ListItem Value="Illitrate">Illitrate</asp:ListItem>
                                <asp:ListItem Value="Litrate">Litrate</asp:ListItem>
                                <asp:ListItem Value="Primary">Primary</asp:ListItem>
                                <asp:ListItem Value="Higher Secondary">Higher Secondary</asp:ListItem>
                                <asp:ListItem Value="Graduate">Graduate</asp:ListItem>
                                <asp:ListItem Value="Post Graduate">Post Graduate</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                                        
                    <tr>
                        <td><label>Marital Status</label></td>
                        <td>
                            <asp:DropDownList ID="ddlMaritalStatus" runat="server" CssClass="form-control input-sm">
                            </asp:DropDownList>
                        </td>
                    </tr>                    
                    <tr>
                        <td>
                            <label>Economy status of family</label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFamilyEconomyStatus"  CssClass="form-control input-sm" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Reason for staying at the shelter</label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtShelterStayReason"  CssClass="form-control input-sm" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                </table>


                     </ContentTemplate>
                </asp:UpdatePanel>

             
                 <h3>Questions related to pre-departure situation and transit</h3>
                <table>
                    <tr>
                        <td width="20%"><label>Pre-departure costs</label></td>
                        <td><asp:TextBox ID="txtPreDepartureCosts" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>

                    <tr>
                        <td valign="top"><label>Recruitment process</label></td>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td width="10%">Individual:</td>
                                    <td>
                                        <asp:DropDownList ID="ddlRecruitmentProcessIndividual" runat="server" CssClass="form-control input-sm">
                                            <asp:ListItem Value="">--Select--</asp:ListItem>
                                            <asp:ListItem Value="">None</asp:ListItem>
                                            <asp:ListItem Value="Relative">Relative</asp:ListItem>
                                            <asp:ListItem Value="Relative">Friend</asp:ListItem>
                                            <asp:ListItem Value="Relative">Neighbour</asp:ListItem>
                                            <asp:ListItem Value="Relative">Other</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Institutional: </td>
                                    <td><asp:TextBox ID="txtRecruitmentProcessInstitutional" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                            </table>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>

                    <tr>
                        <td><label>Did the person sign a contract before leaving Nepal?</label></td>
                        <td>
                            <asp:DropDownList ID="ddlSignContractOption" runat="server" CssClass="form-control input-sm">
                                <asp:ListItem Value="">--Select--</asp:ListItem>
                                    <asp:ListItem Value="No">No</asp:ListItem>
                                    <asp:ListItem Value="One">(YES) One</asp:ListItem>
                                    <asp:ListItem Value="Two">(YES) Two</asp:ListItem>
                                </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Was the contract in Nepali? If not, was the content explained to the person?</label></td>
                        <td>
                            Nepali - Yes:<asp:RadioButton ID="rbContractInNepaliYes" GroupName="rbContractInNepali"  runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;
                            No:<asp:RadioButton ID="rbContractInNepaliNo" GroupName="rbContractInNepali"  runat="server" />
                        </td>
                    </tr>

                    <tr>
                        <td><label>How many days before departure did the person receive the contract?</label></td>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td width="8%">No of days: </td>
                                    <td><asp:TextBox ID="txtNoOfDaysBeforeDeparture" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Route of travel</label></td>
                        <td>
                            <asp:DropDownList ID="ddlRouteOfTravel" runat="server" CssClass="form-control input-sm">
                                <asp:ListItem Value="">--Select--</asp:ListItem>
                                    <asp:ListItem Value="India">India</asp:ListItem>
                                    <asp:ListItem Value="Bangladesh">Bangladesh</asp:ListItem>
                                    <asp:ListItem Value="TIA">TIA</asp:ListItem>
                                <asp:ListItem Value="Other">Other</asp:ListItem>
                                </asp:DropDownList>
                        </td>
                    </tr>

                    <tr>
                        <td><label>Status at departure</label></td>
                        <td>
                            Documented:<asp:RadioButton ID="rbStatusAtDepartureDocumented" GroupName="rbStatusAtDeparture" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            Undocumented:<asp:RadioButton ID="rbStatusAtDepartureUnDocumented" GroupName="rbStatusAtDeparture"  runat="server" />
                        </td>
                    </tr>                  

                </table>

                <h3>Questions related to status in destination country</h3>
                <table id="Table3" width="100%" cellpadding="5" cellspacing="0" border="0" class="table-tab">
                    <tr>
                        <td width="30%" ><label>Country of destination</label></td>
                        <td>
                            <asp:DropDownList ID="ddlDestinationCountry" runat="server" CssClass="form-control input-sm"></asp:DropDownList>
                        </td>
                    </tr>
                   
                    <tr>
                        <td><label>How long did the person stay in the country this time?</label> </td>
                        <td><asp:TextBox ID="txtCountryStayDuration" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                    
                    <tr>
                        <td><label>Status in the country of destination before return</label></td>
                        <td>
                            Had Passport with her:<asp:RadioButton ID="rbStatusHadPassportYes" GroupName="rbStatusHadPassport" runat="server" />&nbsp; 
                            &nbsp; &nbsp; &nbsp; &nbsp; 
                            Did not had passport but had returned back with  travel document issued by embassy:<asp:RadioButton ID="rbStatusHadPassportNo" GroupName="rbStatusHadPassport"  runat="server" />&nbsp;
                        </td>
                    </tr>

                    <tr>
                        <td><label>How many times has the person been in FE (including all previous years of FE)</label> </td>
                        <td><asp:TextBox ID="txtTotalYearsSpent" runat="server" CssClass="form-control input-sm" ></asp:TextBox></td>
                    </tr>

                </table>

                 <h3>Questions related to experience in the destination country</h3>
                <div class="clearfix col-md-12">
                    <span style="color:red; font-style:italic;">
                        If it is not practical to fill in this form for persons without problem then pls do not do it. 
                        However, if you have time or the person is literate and can fill in the form herself, 
                        then it would be good because it would show us whether women who feel they didn’t have problems actually 
                        did have some of the problems listed below
                    </span>
                </div>

                <table>
                    <tr>
                        <td width="25%"><label>Did the person sign another contract in the destination country?</label></td>
                        <td>
                            <asp:DropDownList ID="ddlSignedContractDest" runat="server" CssClass="form-control input-sm">
                                <asp:ListItem Value="">--Select--</asp:ListItem>
                                    <asp:ListItem Value="">NO</asp:ListItem>
                                    <asp:ListItem Value="One">(YES) One</asp:ListItem>
                                    <asp:ListItem Value="Two">(YES) Two</asp:ListItem>
                                </asp:DropDownList>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Was the person forced to sign the contract?</label></td>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td width="8%">Yes:<asp:RadioButton ID="rbForcedSignContractYes" GroupName="rbForcedSignContract"  runat="server" /></td>
                                    <td width="5%">Explain:</td>
                                    <td><asp:TextBox ID="txtForceSignContractDetail" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        No, did voluntarily – Was told in Nepal that the real contract was the one in the destination.:<asp:RadioButton ID="rbForcedSignContractNo" GroupName="rbForcedSignContract"  runat="server" />
                                    </td>
                                </tr>
                            </table>
                            
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>

                    <tr>
                        <td><label>Did the person understand/was explained what was in the contract?</label></td>
                        <td>
                            Yes:<asp:RadioButton ID="rbPersonUnderstoodContractYes" GroupName="rbPersonUnderstoodContract"  runat="server" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            No:<asp:RadioButton ID="rbPersonUnderstoodContractNo" GroupName="rbPersonUnderstoodContract"  runat="server" />
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td><label>How did the person react when given another contract to sign?</label></td>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td colspan="3">
                                        Did not say anything:
                                        <asp:RadioButton ID="rbPersonReactAnotherContractSayNothing" GroupName="rbPersonReactAnotherContract"  runat="server" />
                                    </td>                                    
                                </tr>
                                <tr>
                                    <td width="15%">
                                        Asked questions:
                                        <asp:RadioButton ID="rbPersonReactAnotherContractAsked" GroupName="rbPersonReactAnotherContract"  runat="server" />
                                    </td>
                                    <td width="8%">Explain:</td>
                                    <td><asp:TextBox ID="txtAskedQuestionDetails" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                            </table>
                            <br />
                            
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>

                    <tr>
                        <td><label>Does the person have a contract copy?</label></td>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td colspan="3">No: <asp:RadioButton ID="rbHaveContractCopyNo" GroupName="rbHaveContractCopy"  runat="server" /></td>
                                </tr>
                                <tr>
                                    <td width="8%">Yes: <asp:RadioButton ID="rbHaveContractCopyYes" GroupName="rbHaveContractCopy"  runat="server" /></td>
                                    <td width="17%">Copy of contract details:</td>
                                    <td>
                                        <asp:TextBox ID="txtCopyOfContractDetails" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox>

                                    </td>
                                </tr>
                            </table>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>


                    <tr>
                        <td><label>How many days before departure did the person receive the contract?</label></td>
                        <td><asp:TextBox ID="txtDaysBeforeDepartureReceivedContract" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td><label>Job difference:Was the job in the destination different from what was promised in Nepal?</label></td>
                        <td>
                           Yes:
                            <asp:RadioButton ID="rbJobDifferentFromPromisedYes" GroupName="rbJobDifferentFromPromised"  runat="server" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           No:
                            <asp:RadioButton ID="rbJobDifferentFromPromisedNo" GroupName="rbJobDifferentFromPromised"  runat="server" />
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Salary difference: Was the salary different from what was told in Nepal?</label></td>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td colspan="3">No: <asp:RadioButton ID="rbDifferentSalaryFromToldNo" GroupName="rbDifferentSalaryFromTold"  runat="server" /></td>
                                </tr>
                                <tr>
                                    <td width="7%">If Yes:<asp:RadioButton ID="rbDifferentSalaryFromToldYes" GroupName="rbDifferentSalaryFromTold"  runat="server" /></td>
                                    <td width="20%">What was the difference?</td>
                                    <td><asp:TextBox ID="txtSalaryDifference" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                            </table>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>

                    <tr>
                        <td><label>Salary not received:Was the salary paid regularly?</label></td>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td colspan="2">Yes: <asp:RadioButton ID="rbSalaryPaidRegularlyYes" GroupName="rbSalaryPaidRegularly"  runat="server" /></td>
                                </tr>
                                <tr>
                                    <td width="7%">If No:<asp:RadioButton ID="rbSalaryPaidRegularlyNo" GroupName="rbSalaryPaidRegularly"  runat="server" /></td>
                                    <td>
                                        , how much has the person received to date and when was the salary paid last time?
                                        <asp:TextBox ID="txtSalaryReceived_LastPaidTime" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>What did the client do when the salary was not paid? How did the employer react?</label>
                        </td>
                        <td><asp:TextBox ID="txtSalaryNotPaidDetails" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td><label>Working hours:How many hours did the person work per day?</label></td>
                        <td><asp:TextBox ID="txtWorkingHoursPerDay" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td><label>Time off:Did the person get off time? </label></td>
                        <td>
                                <asp:DropDownList ID="ddlTimeOffOption" runat="server" CssClass="form-control input-sm">
                                    <asp:ListItem Value="">--Select--</asp:ListItem>
                                    <asp:ListItem Value="Once day a week">Once day a week</asp:ListItem>
                                    <asp:ListItem Value="Occasionally">Occasionally</asp:ListItem>
                                    <asp:ListItem Value="Never">Never</asp:ListItem>
                                </asp:DropDownList>
                        </td>
                    </tr>

                     <tr>
                        <td><label>Contact with the family: Was the person allowed to contact her family?</label></td>
                        <td>
                            Yes:<asp:RadioButton ID="rbAllowedToContactFamilyYes" GroupName="rbAllowedToContactFamily"  runat="server" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            No:<asp:RadioButton ID="rbAllowedToContactFamilyNo" GroupName="rbAllowedToContactFamily"  runat="server" />
                        </td>
                    </tr>

                    <tr>
                        <td><label>Separate room: did the person have a separate room to sleep in?</label></td>
                        <td>
                            Yes:<asp:RadioButton ID="rbHaveSeparateRoomYes" GroupName="rbHaveSeparateRoom"  runat="server" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            No:<asp:RadioButton ID="rbHaveSeparateRoomNo" GroupName="rbHaveSeparateRoom"  runat="server" />
                        </td>
                    </tr>

                    <tr>
                        <td><label>Forced labour: Was the person allowed to return to Nepal when she wanted to?</label></td>
                        <td>
                            Yes:<asp:RadioButton ID="rbAllowedRetrunToNepalYes" GroupName="rbAllowedRetrunToNepal"  runat="server" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            No:<asp:RadioButton ID="rbAllowedRetrunToNepalNo" GroupName="rbAllowedRetrunToNepal"  runat="server" />
                        </td>
                    </tr>

                    <tr>
                        <td><label>When did the person want to leave the employer and why?</label></td>
                        <td><asp:TextBox ID="txtLeaveTheEmployerDetails" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td><label>How did the employer react?</label></td>
                        <td><asp:TextBox ID="txtEmployerReact" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>                    
                </table>

                <h3>Services by Pourakhi</h3>
                <table id="Table5" width="100%" cellpadding="5" cellspacing="0" border="0" class="table-tab">
                    <tr>
                        <td width="25%"><label>Date when case was received</label></td>
                        <td><asp:TextBox ID="txtCaseReceivedDate" runat="server" CssClass="form-control input-sm date_input"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>From where was case referred</label> </td>
                        <td><asp:TextBox ID="txtWhereCaseReferred" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>Shelter: Days of stay at the shelter</label> </td>
                        <td><asp:TextBox ID="txtDaysStayAtShelter" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td><label>Other</label> </td>
                        <td><asp:TextBox ID="txtOtherDetails" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>                    
                </table>

                <table width="100%">
                    <tr>
                        <td>
                            <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSave_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>

    

    <asp:HiddenField ID="hfFLACShelterProfileID" runat="server" Value="" />
    <asp:HiddenField ID="hfFLACShelterQRelatedPreDepartureID" runat="server" Value="" />
    <asp:HiddenField ID="hfFLACShelterQRelatedDestinationID" runat="server" Value="" />
    <asp:HiddenField ID="hfFLACShelterQRelatedExpDestinationID" runat="server" Value="" />
    <asp:HiddenField ID="hfFLACShelterPourakhiServiceID" runat="server" Value="" />

    <script type="text/javascript">

        var prm = Sys.WebForms.PageRequestManager.getInstance();
        prm.add_beginRequest(BeginRequestHandler);
        prm.add_endRequest(EndRequestHandler);

        function BeginRequestHandler(sender, args) {
            $('.date_input').datepicker({ dateFormat: 'dd/mm/y', changeYear: true, changeMonth: true });
        }

        function EndRequestHandler(sender, args) {
            $('.date_input').datepicker({ dateFormat: 'dd/mm/y', changeYear: true, changeMonth: true });
        }
    </script>
</asp:Content>