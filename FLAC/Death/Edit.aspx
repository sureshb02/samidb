<%@ Page Title="Edit | Death" Language="C#" MasterPageFile="~/CaseMaster.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="SaMI.Web.FLAC.Death.Edit" %>
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

                <table id="caseDetails" width="100%" cellpadding="5" cellspacing="0" border="0" class="table-tab">
                    <tr>
                        <td width="15%"><label>Case No.:</label></td>
                        <td>
                            <asp:TextBox ID="txtCaseNumber" runat="server" CssClass="form-control input-sm" required="required"></asp:TextBox></td>
                    
                        <td><label>Destination Country:</label></td>
                        <td>
                            <asp:DropDownList ID="ddlDestinationCountry" runat="server" CssClass="form-control input-sm"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Case Type:</label></td>
                        <td>
                            <asp:DropDownList ID="ddlCaseType" runat="server" CssClass="form-control input-sm" required="required">
                                <asp:ListItem Value="">--Select--</asp:ListItem>
                                <asp:ListItem Value="individual">Individual Case</asp:ListItem>
                                <asp:ListItem Value="group">Group Case</asp:ListItem>
                            </asp:DropDownList>
                   
                        <td>
                            <label>If group case, No of sufferer</label>
                        </td>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td width="5%"><label>Male:</label></td>
                                    <td><asp:TextBox ID="txtNoMaleGroup" runat="server" Text="0"  CssClass="form-control input-sm"></asp:TextBox></td>
                               
                                    <td><label>Female:</label></td>
                                    <td><asp:TextBox ID="txtNoFemaleGroup" runat="server" Text="0" CssClass="form-control input-sm"></asp:TextBox></td>
                                
                                    <td><label>Other:</label></td>
                                    <td><asp:TextBox ID="txtNoOtherGroup" runat="server" Text="0" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>

               

                <h3>Personal Detail of Client</h3>
                <table id="personalDetails"width="100%" cellpadding="5" cellspacing="0" border="0" class="table-tab">
                    <tr>
                        <td width="15%"><label>Full Name</label></td>
                        <td>
                            <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control input-sm" required="required"></asp:TextBox>
                        </td>
                   
                        <td><label>Age</label></td>
                        <td>
                            <asp:TextBox ID="txtAge" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                   
                        <td><label>Sex</label></td>
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
                        <td><label>Address for communication</label></td>
                        <td>
                            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                    

                        <td><label>Contact No.</label></td>
                        <td>
                            <asp:TextBox ID="txtContactNumber" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>

                    <tr>
                        <td colspan="6">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Permanent Address</label></td>
                        <td colspan="5">
                            <table width="100%">
                                <tr>
                                    <td width="5%"><label>District</label></td>
                                    <td><asp:DropDownList ID="ddlDistrict" runat="server" CssClass="form-control input-sm" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged" AutoPostBack="true" ></asp:DropDownList></td>
                               
                                    <td><label>VDC</label></td>
                                    <td><asp:DropDownList ID="ddlVDC" runat="server" CssClass="form-control input-sm"></asp:DropDownList></td>
                               
                                    <td><label>Ward</label></td>
                                    <td><asp:TextBox ID="txtWardNo" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                            </table>                            
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>

                    <tr>
                        <td><label>Passport No.</label></td>
                        <td>
                            <asp:TextBox ID="txtPassportNumber" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>

                        <td><label>Passport Issued Date</label></td>
                        <td>
                            <asp:TextBox ID="txtPassportIssueDate" runat="server" CssClass="form-control input-sm date_input"></asp:TextBox>
                        </td>

                        <td><label>Citizenship No.</label></td>
                        <td>
                            <asp:TextBox ID="txtCitizenshipNumber" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Marital Status</label></td>
                        <td>
                            <asp:DropDownList ID="ddlMaritalStatus" runat="server" CssClass="form-control input-sm">
                            </asp:DropDownList>
                        </td>
                        <td><label>Education Status</label></td>
                        <td>
                            <asp:DropDownList ID="ddlEducationStatus" runat="server" CssClass="form-control input-sm">
                            </asp:DropDownList>
                        </td>
                        <td colspan="2">&nbsp;</td>
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
                         <td><label>Family Contact Information</label></td>
                        <td>
                            <asp:TextBox ID="txtFamilyContact" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                </table>


                     </ContentTemplate>
                </asp:UpdatePanel>

                <h3>Recuritment Process</h3>
                <table id="recuritmentProcess" width="100%" cellpadding="5" cellspacing="0" border="0" class="table-tab">
                    <tr>
                        <td width="15%"><label>Recruitment Process</label></td>
                        <td>
                            <asp:DropDownList ID="ddlRecruitmentProcessType" runat="server" CssClass="form-control input-sm">
                                <asp:ListItem Value="">--Select--</asp:ListItem>
                                <asp:ListItem Value="Not-Available">Not Available</asp:ListItem>
                                <asp:ListItem Value="Individual">Individual - Agent</asp:ListItem>
                                <asp:ListItem Value="Individual">Individual - Relatives</asp:ListItem>
                                <asp:ListItem Value="Individual">Individual - Both</asp:ListItem>
                                <asp:ListItem Value="Institutional">Institutional</asp:ListItem>
                                <asp:ListItem Value="Government-to-Government">Government-to-Government</asp:ListItem>
                            </asp:DropDownList>
                        </td>

                        <td><label>Agency Name, Address & Phone</label></td>
                        <td>
                            <asp:TextBox ID="txtAgencyDetails" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                    </tr>
                    <tr id="tr_agent_detail">
                        <td><label>Agent's Name</label></td>
                        <td>
                            <asp:TextBox ID="txtAgentName" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                        <td><label>Agent's Contact No.</label></td>
                        <td>
                            <asp:TextBox ID="txtAgentContactNumber" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                   
                    <tr>
                        <td><label>Pre-departure Costs</label></td>
                        <td>
                            <asp:DropDownList ID="ddlPredepartureCost" runat="server" CssClass="form-control input-sm">
                            </asp:DropDownList>
                        </td>
                        <td width="18%"><label>Departure Date</label></td>
                        <td width="40%">
                            <asp:TextBox ID="txtDepartureDate" runat="server" CssClass="form-control input-sm date_input"></asp:TextBox>
                        </td>
                    </tr>
                   

                    <tr>
                        <td><label>Departure Route</label></td>
                        <td>
                            <asp:DropDownList ID="ddlDepartureRoute" runat="server" CssClass="form-control input-sm">
                                <asp:ListItem Value="">--Select--</asp:ListItem>
                                <asp:ListItem Value="Not Available">Not Available</asp:ListItem>
                                <asp:ListItem Value="Nepal">Nepal</asp:ListItem>
                                <asp:ListItem Value="India">India</asp:ListItem>                                
                                <asp:ListItem Value="Other">Other</asp:ListItem>
                                
                            </asp:DropDownList>
                        </td>
                        <td>If Other, please specify</td>
                        <td><asp:TextBox ID="txtDepartureRouteOther" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                </table>

                <h3>Employment Information</h3>
                <table id="employmentInformation" width="100%" cellpadding="5" cellspacing="0" border="0" class="table-tab">
                    <tr>
                        <td width="15%">
                            <label>Company Name:</label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtCompanyName" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>

                        <td>
                            <label>Address:</label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtComapnyAddress" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>

                        <td>
                            <label>Phone No.:</label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtCompanyPhoneNumber" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Working Environment:</label>
                            
                        </td>
                        <td colspan="4">
                            <asp:RadioButton ID="rbWEIndoor" runat="server" GroupName="WorkingEnvironment" />Indoor&nbsp;
                            <asp:RadioButton ID="rbWEOutdoor" runat="server" GroupName="WorkingEnvironment"  />Outdoor&nbsp;
                            <asp:RadioButton ID="rbWESemi" runat="server" GroupName="WorkingEnvironment"  />Semi
                        </td>
                    </tr>

                    <tr>
                        <td colspan="6">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>    
                    <tr>
                        <td colspan="6">
                            <label>As per contract in Nepal:</label>   
                        </td>
                    </tr>                
                    <tr>
                        <td colspan="6">
                            <table width="100%">
                                <tr>
                                    <td width="16%"><label>Job title/Position:</label></td>
                                    <td><asp:TextBox ID="txtNepalJobPosition" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>

                                    <td><label>Basic Wages/ Salary:</label></td>
                                    <td><asp:TextBox ID="txtNepalBasicWages" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                
                                    <td> <label>Overtime Wages:</label></td>
                                    <td><asp:TextBox ID="txtNepalOvertimeWages" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>

                                    <td><label>Basic Working Hours:</label></td>
                                    <td><asp:TextBox ID="txtNepalBasicWorkingHours" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><label>Rest bet. Working Hours:</label></td>
                                    <td><asp:TextBox ID="txtNepalRestWorkingHours" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>

                                    <td><label>Working days per week:</label></td>
                                    <td><asp:TextBox ID="txtNepalWorkingDaysPerWeek" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>

                                    <td><label>Total monthly salary:</label></td>
                                    <td><asp:TextBox ID="txtNepalTotalMonthlySalary" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>

                                    <td colspan="2">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            <label>As per contract signed in destination country:</label>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="6">
                            <table width="100%">
                                <tr>
                                    <td width="16%"><label>Job title/Position:</label></td>
                                    <td><asp:TextBox ID="txtDestinationJobPosition" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>

                                    <td><label>Basic Wages/Salary:</label></td>
                                    <td><asp:TextBox ID="txtDestinationBasicWages" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                
                                    <td><label>Overtime Wages:</label></td>
                                    <td><asp:TextBox ID="txtDestinationOvertimeWages" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>

                                    <td><label>Basic Working Hours:</label></td>
                                    <td><asp:TextBox ID="txtDestinationBasicWorkingHours" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><label>Rest bet. Working Hours:</label></td>
                                    <td><asp:TextBox ID="txtDestinationRestWorkingHours" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>

                                    <td><label>Working days per week:</label></td>
                                    <td><asp:TextBox ID="txtDestinationWorkingDaysPerWeek" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>

                                    <td><label>Total monthly salary:</label></td>
                                    <td><asp:TextBox ID="txtDestinationTotalMonthlySalary" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>How did the person get paid?</label> 
                           
                        </td>
                        <td>
                                        <asp:DropDownList ID="ddlPaymentMode" runat="server" CssClass="form-control input-sm">
                                            <asp:ListItem Value="">--Select--</asp:ListItem>
                                            <asp:ListItem Value="Cash">Cash</asp:ListItem>
                                            <asp:ListItem Value="Bank Account">Bank Account</asp:ListItem>
                                            <asp:ListItem Value="Other">Other</asp:ListItem>
                                        </asp:DropDownList>
                        </td>
                        <td width="80"><label>If Other.</label></td>
                        <td colspan="3"><asp:TextBox ID="txtPaymentModeOther" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                              
                        
                    </tr>
                    <tr>
                        <td colspan="6">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="3">
                            <label>Migration Status:Nepal&nbsp;</label>
                            <asp:RadioButton ID="rbMigrationNepalDocumented" GroupName="MigrationNepal"  runat="server" />Documented&nbsp;
                            <asp:RadioButton ID="rbMigrationNepalUnDocumented" GroupName="MigrationNepal"  runat="server" />Undocumented
                        </td>
                        <td colspan="3">
                            <label>Destination Country&nbsp;</label>
                           <asp:RadioButton ID="rbMigrationDestinationDocumented" GroupName="MigrationDestination"  runat="server" />Documented&nbsp;
                            <asp:RadioButton ID="rbMigrationDestinationUnDocumented" GroupName="MigrationDestination"  runat="server" />Undocumented
                        </td>
                    </tr>

                    <tr>
                        <td colspan="6">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="6"><label>Insurance in Nepal</label>

                            <asp:RadioButton ID="rbInsuranceYes" GroupName="rbInsurance" runat="server" />Yes&nbsp; 
                            <asp:RadioButton ID="rbInsuranceNo" GroupName="rbInsurance"  runat="server" />No&nbsp;
                            <asp:RadioButton ID="rbInsuranceNotAvailable" GroupName="rbInsurance"  runat="server" />Not Availabe

                        <em>If Insurance in Nepal Available please specify below.</em>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            <table width="100%">
                                <tr>
                                    <td width="18%"><label>Name of Insurance Company:</label></td>
                                    <td><asp:TextBox ID="txtInsuranceCompany" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>

                                    <td><label>Date of Issue:</label></td>
                                    <td><asp:TextBox ID="txtInsuranceIssuedDate" runat="server" CssClass="form-control input-sm date_input"></asp:TextBox></td>

                                    <td><label>Duration of Validity:</label></td>
                                    <td><asp:TextBox ID="txtInsuranceDuration" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
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
                        <td colspan="6">
                            <label> Insurance (Dest. Country)</label>:
                            <asp:RadioButton ID="rbDestInsuranceYes" GroupName="rbDestInsurance" runat="server" />Yes&nbsp; 
                            <asp:RadioButton ID="rbDestInsuranceNo" GroupName="rbDestInsurance"  runat="server" />No&nbsp;
                        </td>                        
                    </tr>
                    <tr>
                        <td colspan="6">
                            <table width="100%">
                                <tr>
                                    <td width="16%"><label>Name of Insurance Company:</label></td>
                                    <td><asp:TextBox ID="txtDestInsuranceCompany" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                
                                    <td><label>Date of Issue of Insurance:</label></td>
                                    <td><asp:TextBox ID="txtDestInsuranceIssuedDate" runat="server" CssClass="form-control input-sm date_input"></asp:TextBox></td>
                               
                                    <td><label>Duration of Insurance:</label></td>
                                    <td><asp:TextBox ID="txtDestInsuranceDuration" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                </table>



                <h3>Incident Information</h3>
                <table id="Table1" width="100%" cellpadding="5" cellspacing="0" border="0" class="table-tab">
                    <tr>
                        <td colspan="4">
                            <table width="100%">
                                <tr>
                                    <td width="20%"><label>Date of incident</label></td>
                                    <td><asp:TextBox ID="txtDateOfIncident" runat="server" CssClass="form-control input-sm date_input"></asp:TextBox></td>
                                    <td><label>Country of incident</label></td>
                                    <td><asp:TextBox ID="txtCountryOfIncident" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td><label>Place of incident</label></td>
                                    <td><asp:TextBox ID="txtPlaceOfIncident" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <table width="100%">
                                <tr>
                                     <td width="22%"><label>Problem faced : nature of cases categories</label></td>
                                    <td>
                                        <asp:DropDownList ID="ddlNatureOfCases" runat="server" CssClass="form-control input-sm">
                                            <asp:ListItem Value="">--Select--</asp:ListItem>
                                            <asp:ListItem Value="Natural Death">Natural Death</asp:ListItem>
                                            <asp:ListItem Value="Work place accident">Work place Accident</asp:ListItem>
                                            <asp:ListItem Value="Traffic accident">Traffic accident</asp:ListItem>
                                            <asp:ListItem Value="Suicide">Suicide</asp:ListItem>
                                            <asp:ListItem Value="Other">Other</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <label>If others, please specify:</label></td>
                                    <td><asp:TextBox ID="txtProblemFacedDetails" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><label>Incident details: How did the person die?</label></td>
                                    <td colspan="3"><asp:TextBox ID="txtIncidentDetails" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox></td>
                                </tr>
                            </table>
                        </td>
                       
                    </tr>

                    <tr>
                        <td colspan="4">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td width="20%"><label>Witnesses of incident</label></td>
                        <td colspan="5">
                            <table width="100%">
                                <tr>
                                    <td width="10%">Name</td>
                                    <td><asp:TextBox ID="txtWitnessName" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>

                                    <td>Phone No</td>
                                    <td><asp:TextBox ID="txtWitnessPhone" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>

                                    <td>Relation</td>
                                    <td><asp:TextBox ID="txtWitnessRelation" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2"><label>Medical history before death: Was there any indication the person was unwell before death?</label>

                            <asp:RadioButton ID="rbMedicalHistoryBeforeDeathYes" GroupName="rbMedicalHistory" runat="server" />Yes&nbsp; 
                            <asp:RadioButton ID="rbMedicalHistoryBeforeDeathNo" GroupName="rbMedicalHistory"  runat="server" />No&nbsp;
                        </td>

                        <td><label>When was the person last time in contact?</label></td>
                        <td><asp:TextBox ID="txtPersonLastTimeContact" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>When did the person last time send money? </label></td>
                        <td><asp:TextBox ID="txtPersonLastTimeSendMoney" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                   

                    <tr>
                        <td colspan="4">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Post-mortem:</label></td>
                        <td colspan="5">
                            <table width="100%">
                                <tr>
                                    <td>
                                       <asp:RadioButton ID="rbPostMortemDoneYes" GroupName="rbPostMortemDone" runat="server" />Yes&nbsp; 
                                        <asp:RadioButton ID="rbPostMortemDoneNo" GroupName="rbPostMortemDone"  runat="server" />No&nbsp;
                                    </td>
                                    <td width="25%">If Yes, Post mortem: by whom?</td>
                                    <td>
                                        <asp:TextBox ID="txtPostMortemDoneBy" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                </table>




                <h3>Details about the person who has contacted you on behalf of client</h3>
                <table id="Table2" width="100%" cellpadding="5" cellspacing="0" border="0" class="table-tab">
                    <tr>
                        <td colspan="4"><label>Main contact destination country</label></td>
                    </tr>
                    <tr>
                        <td width="15%"><label>Name</label></td>
                        <td><asp:TextBox ID="txtNameDest" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                   

                        <td><label>Address</label></td>
                        <td><asp:TextBox ID="txtAddressDest" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>Phone Number</label></td>
                        <td><asp:TextBox ID="txtPhoneDest" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                   

                        <td><label>How is the person related to client?</label></td>
                        <td><asp:TextBox ID="txtRelationDest" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td colspan="4">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4"><label>Main contact Nepal</label></td>
                    </tr>
                    <tr>
                        <td><label>Name</label></td>
                        <td><asp:TextBox ID="txtNameNepal" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                   

                        <td><label>Address (District, VDC, Ward)</label></td>
                        <td><asp:TextBox ID="txtAddressNepal" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>Phone Number</label></td>
                        <td><asp:TextBox ID="txtPhoneNepal" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    

                        <td><label>How is the person related to client?</label></td>
                        <td><asp:TextBox ID="txtRelationNepal" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="4"><label>Person who will /receive the body at the airport</label></td>
                    </tr>
                    <tr>
                        <td><label>Name</label></td>
                        <td><asp:TextBox ID="txtNameReceiver" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                   
                        <td><label>Address</label></td>
                        <td><asp:TextBox ID="txtAddressReceiver" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    
                     </tr>
                    <tr>
                        <td><label>Phone Number</label></td>
                        <td><asp:TextBox ID="txtPhoneReceiver" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    

                        <td><label>How is the person related to client?</label></td>
                        <td><asp:TextBox ID="txtRelationReceiver" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>

                    <tr>
                        <td><label>How long did the client stay in the country?</label></td>
                        <td><asp:TextBox ID="txtVictimStayDuration" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    

                        <td><label>Date when case was received</label></td>
                        <td><asp:TextBox ID="txtCaseReceivedDate" runat="server" CssClass="form-control input-sm date_input"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>Seeking support for</label></td>
                        <td colspan="3"><asp:TextBox ID="txtSeekingSupportFor" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                </table>

                <h3>Steps taken to resolve the case</h3>
                <table id="Table3" width="100%" cellpadding="5" cellspacing="0" border="0" class="table-tab">
                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"><label>Before the person reached your organization, did s/he take any steps to resolve the situation?</label></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <table width="100%">
                                <tr>
                                    <td width="10%">Contacted</td>
                                    <td>
                                        <asp:DropDownList ID="ddlContactedOrganization" runat="server" CssClass="form-control input-sm">
                                            <asp:ListItem Value="">--Select--</asp:ListItem>
                                            <asp:ListItem Value="None">None</asp:ListItem>
                                            <asp:ListItem Value="Embassy">Embassy</asp:ListItem>
                                            <asp:ListItem Value="Recruitment agency ">Recruitment agency </asp:ListItem>
                                            <asp:ListItem Value="Agent">Agent</asp:ListItem>
                                            <asp:ListItem Value="Family">Family</asp:ListItem>
                                            <asp:ListItem Value="Police">Police</asp:ListItem>
                                            <asp:ListItem Value="Labor Court">Labor Court</asp:ListItem>
                                            <asp:ListItem Value="Other Organization">Other Organization</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>

                                    
                                </tr>
                                <tr>
                                    <td colspan="2">No any steps have been taken before the person reached our organization.
                                        &nbsp;&nbsp;<asp:CheckBox ID="chkNoStepsTaken" runat="server" Checked="false" /></td>
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
                        <td width="25%"><label>How was the reaction by those other support structures? What did they do?</label></td>
                        <td>
                            <asp:TextBox ID="txtOtherSupportReactionDetail" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                   
                    <tr>
                        <td><label>If the case was referred from ICC, what role did the ICC played in supporting this case?</label> </td>
                        <td><asp:TextBox ID="txtICCSuportDetail" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <label>What are the steps taken after the client contacted your organization?
                            Please describe all actions taken and the reaction by the respective agencies</label>
                        </td>
                    </tr>
                    <tr>
                        

                        <td colspan="2">
                            <table width="100%">
                                <tr>
                                    <td width="20%">With embassy</td>
                                    <td><asp:TextBox ID="txtWithEmbassy" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>With MoFA</td>
                                    <td><asp:TextBox ID="txtWithMoFA" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>With Consular department</td>
                                    <td><asp:TextBox ID="txtWithConsularDepartment" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>With employer</td>
                                    <td><asp:TextBox ID="txtWithEmployer" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>With insurance company in Nepal</td>
                                    <td><asp:TextBox ID="txtWithInsuranceCompanyNepal" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>Insurance company in destination</td>
                                    <td><asp:TextBox ID="txtWithInsuranceCompanyDest" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>FEPB</td>
                                    <td><asp:TextBox ID="txtWithFEPB" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>If Others, please specify</td>
                                    <td><asp:TextBox ID="txtWithOthers" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
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
                        <td><label>Did FEPB provided the cost of transportation of dead body from TIA to his/her districts?</label></td>
                        <td>
                            <asp:RadioButton ID="rbDidFEPBProvidedTransportationCostYes" GroupName="rbDidFEPBProvidedTransportationCost" runat="server" />Yes&nbsp; 
                            <asp:RadioButton ID="rbDidFEPBProvidedTransportationCostNo" GroupName="rbDidFEPBProvidedTransportationCost"  runat="server" />No&nbsp;
                        </td>
                    </tr>
                </table>



                <h3>Compensation</h3>
                <table id="Table4" width="100%" cellpadding="5" cellspacing="0" border="0" class="table-tab">
                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td width="20%" valign="top"><label>Insurance (Received from Nepal)</label></td>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td colspan="2">Received&nbsp;&nbsp;<asp:RadioButton ID="rbInsuranceNepalReceivedYes" GroupName="rbInsuranceNepalReceived"  runat="server" /></td>
                                </tr>
                                <tr>
                                    <td width="20%">When did he/she receive? </td>
                                    <td><asp:TextBox ID="txtInsuranceNepalReceivedWhen" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td colspan="2">Not Received&nbsp;&nbsp;<asp:RadioButton ID="rbInsuranceNepalReceivedNo" GroupName="rbInsuranceNepalReceived"  runat="server" /></td>
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
                        <td valign="top"><label>Insurance/compensation (Received from destination country)</label> </td>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td colspan="2">Received&nbsp;&nbsp;<asp:RadioButton ID="rbInsuranceDestReceivedYes" GroupName="rbInsuranceDestReceived"  runat="server" /></td>
                                </tr>
                                <tr>
                                    <td width="20%">How much from whom?</td>
                                    <td><asp:TextBox ID="txtInsuranceDestReceivedHowWhom" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>When did he/she receive?</td>
                                    <td><asp:TextBox ID="txtInsuranceDestReceivedWhen" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>Not Received&nbsp;&nbsp;<asp:RadioButton ID="rbInsuranceDestReceivedNo" GroupName="rbInsuranceDestReceived"  runat="server" /></td>
                                </tr>
                                <tr>
                                    <td>What steps were undertaken in order to receive insurance?</td>
                                    <td><asp:TextBox ID="txtInsuranceDestStepsTaken" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
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
                        <td valign="top"><label>Compensation received from FEPB</label></td>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td width="10%">Received</td>
                                    <td><asp:RadioButton ID="rbCompensationReceivedFEPBYes" GroupName="rbCompensationReceivedFEPB"  runat="server" /></td>
                                </tr>
                                <tr>
                                    <td>How much?</td>
                                    <td><asp:TextBox ID="txtCompensationReceivedFEPBHowMuch" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>When did he/she receive? </td>
                                    <td><asp:TextBox ID="txtComepansationReceivedFEPBWhen" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>Not Received</td>
                                    <td><asp:RadioButton ID="rbCompensationReceivedFEPBNo" GroupName="rbCompensationReceivedFEPB"  runat="server" /></td>
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
                        <td><label>Who received these compensation (please specify)?</label></td>
                        <td><asp:TextBox ID="txtWhoReceivedCompensation" runat="server" CssClass="form-control input-sm"></asp:TextBox><br /></td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" colspan="2"><label>Solved – not solved: Describe the final result when the case is solved/reasons for not being able to solve</label></td>
                        
                    </tr>
                    <tr>
                            <td colspan="2">
                            <table width="100%">
                                <tr>
                                    <td width="20%"><label>Case Status:</label> Solved - Not Solved</td>
                                    <td width="30%">
                                        <asp:DropDownList ID="ddlCaseStatus" runat="server" CssClass="form-control input-sm">
                                            <asp:ListItem Value="">--Select--</asp:ListItem>
                                            <asp:ListItem Value="2">In Progress</asp:ListItem>
                                            <asp:ListItem Value="3">Closed</asp:ListItem>
                                            <asp:ListItem Value="1">Solved</asp:ListItem>
                                            <asp:ListItem Value="0">Not Solved</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>Final Result</td>
                                    <td colspan="2"><asp:TextBox ID="txtFinalResult" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox></td>
                                </tr>                                
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
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

    

    <asp:HiddenField ID="hfFLACProfileID" runat="server" Value="" />
    <asp:HiddenField ID="hfRecruitmentProcessID" runat="server" Value="" />
    <asp:HiddenField ID="hfEmploymentInformationID" runat="server" Value="" />
    <asp:HiddenField ID="hfFLACDeathIncidentInformationID" runat="server" Value="" />
    <asp:HiddenField ID="hfFLACDeathClientBehalfID" runat="server" Value="" />
    <asp:HiddenField ID="hfFLACDeathStepsTakenID" runat="server" Value="" />
    <asp:HiddenField ID="hfFLACDeathCompensationID" runat="server" Value="" />


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
