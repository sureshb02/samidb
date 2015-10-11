<%@ Page Title="Add | Out of Contact" Language="C#" MasterPageFile="~/CaseMaster.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="SaMI.Web.FLAC.OutOfContact.Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
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
                    </tr>
                    <tr>
                        <td><label>Destination Country:</label></td>
                        <td>
                            <asp:DropDownList ID="ddlDestinationCountry" runat="server" CssClass="form-control input-sm"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Case Type:</label></td>
                        <td>
                            <asp:DropDownList ID="ddlCaseType" runat="server" CssClass="form-control input-sm">
                                <asp:ListItem Value="individual">Individual Case</asp:ListItem>
                                <asp:ListItem Value="group">Group Case</asp:ListItem>
                            </asp:DropDownList>
                    </tr>
                    <tr>
                        <td>
                            <label>If group case, No of sufferer</label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtNoOfSufferer" runat="server" Text="0"  CssClass="form-control input-sm"></asp:TextBox>
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
                    </tr>
                    <tr>
                        <td><label>Date of Birth</label></td>
                        <td>
                            <asp:TextBox ID="txtDateOfBirth" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Age</label></td>
                        <td>
                            <asp:TextBox ID="txtAge" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Sex</label></td>
                        <td>
                            <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control input-sm">
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
                    </tr>
                    <tr>
                        <td><label>Contact No.</label></td>
                        <td>
                            <asp:TextBox ID="txtContactNumber" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Permanent Address</label></td>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td width="5%"><label>District</label></td>
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
                            </table>                            
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>

                    <tr>
                        <td><label>Passport No.</label></td>
                        <td>
                            <asp:TextBox ID="txtPassportNumber" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Passport Issued Date</label></td>
                        <td>
                            <asp:TextBox ID="txtPassportIssueDate" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
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
                    </tr>
                    <tr>
                        <td>
                            <label>If married, then No of Children and their Age.</label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtChildrenDetails"  CssClass="form-control input-sm" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Education Status</label></td>
                        <td>
                            <asp:DropDownList ID="ddlEducationStatus" runat="server" CssClass="form-control input-sm">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Occupation Before Migration</label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtOccupationBeforeMigration"  CssClass="form-control input-sm" runat="server"></asp:TextBox>
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
                        <td><label>Family Contact Information</label></td>
                        <td>
                            <asp:TextBox ID="txtFamilyContact" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
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
                                <asp:ListItem Value="Not-Available">Not Available</asp:ListItem>
                                <asp:ListItem Value="Individual">Individual</asp:ListItem>
                                <asp:ListItem Value="Institutional">Institutional</asp:ListItem>
                                <asp:ListItem Value="Government-to-Government">Government-to-Government</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Agency</label></td>
                        <td>
                            <asp:TextBox ID="txtAgencyDetails" runat="server" CssClass="form-control input-sm"></asp:TextBox><br />
                            <em>Full detail of the Recuitment Agency (Recritment Agency Name, Address and Phone Number)</em>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Agent's Name</label></td>
                        <td>
                            <asp:TextBox ID="txtAgentName" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Agent's Contact No.</label></td>
                        <td>
                            <asp:TextBox ID="txtAgentContactNumber" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                            <br />
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top"><label>Labor Approval No.</label></td>
                        <td>
                            <table width="100%">
	                            <tr>
		                            <td width="18%"><label>Number:</label></td>
		                            <td><asp:TextBox ID="txtLaborNumber" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
	                            </tr>
                                <tr>
		                            <td><label>Issued Date:</label></td>
		                            <td><asp:TextBox ID="txtLaborNumberIssuedDate" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
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
                        <td><label>Pre-departure Costs</label></td>
                        <td>
                            <asp:DropDownList ID="ddlPredepartureCost" runat="server" CssClass="form-control input-sm">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td><label>When did you receive the contract in Nepal?</label></td>
                        <td>
                            <asp:DropDownList ID="ddlContractReceivedLocation" runat="server" CssClass="form-control input-sm">
                                <asp:ListItem Value="At the Airport">At the Airport</asp:ListItem>
                                <asp:ListItem Value="Upto 2 days before departure">Upto 2 days before departure</asp:ListItem>
                                <asp:ListItem Value="3 days to one week before departure">3 days to one week before departure</asp:ListItem>
                                <asp:ListItem Value="More than one week before departure">More than one week before departure</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                   

                    <tr>
                        <td><label>Departure Date</label></td>
                        <td>
                            <asp:TextBox ID="txtDepartureDate" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Departure Route</label></td>
                        <td>
                            <asp:DropDownList ID="ddlDepartureRoute" runat="server" CssClass="form-control input-sm">
                                <asp:ListItem Value="Nepal">Nepal</asp:ListItem>
                                <asp:ListItem Value="India">India</asp:ListItem>
                                <asp:ListItem Value="Not Available">Not Available</asp:ListItem>
                            </asp:DropDownList><br />
                        </td>
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
                    </tr>
                    <tr>
                        <td>
                            <label>Address:</label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtComapnyAddress" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>If available phone number:</label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtCompanyPhoneNumber" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Fax Number:</label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtCompanyFaxNumber" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Working Environment:</label>
                            
                        </td>
                        <td>
                            <asp:RadioButton ID="rbWEIndoor" runat="server" GroupName="WorkingEnvironment" />Indoor&nbsp;
                            <asp:RadioButton ID="rbWEOutdoor" runat="server" GroupName="WorkingEnvironment"  />Outdoor&nbsp;
                            <asp:RadioButton ID="rbWESemi" runat="server" GroupName="WorkingEnvironment"  />Semi
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <label>Did the person sign a contract in the destination country?</label>
                            <asp:RadioButton ID="rbContractSignedDestinationCountryYes" GroupName="ContractSignedDestinationCountry" runat="server" />Yes&nbsp;
                            <asp:RadioButton ID="rbContractSignedDestinationCountryNo" GroupName="ContractSignedDestinationCountry" runat="server" />No
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <label>How was the contract different from the contract signed in Nepal?</label> 
                                <asp:TextBox ID="txtHowContractDifferentFromSigned" runat="server" CssClass="form-control input-sm"></asp:TextBox>

                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <label>Does the person have a copy of the contact signed in Nepal and signed in the destination country?</label>
                            <asp:RadioButton ID="rbContractSignedNepalYes" GroupName="ContractSignedNepal" runat="server" />Yes&nbsp;
                            <asp:RadioButton ID="rbContractSignedNepalNo" GroupName="ContractSignedNepal" runat="server" />No
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>                    
                    <tr>
                        <td valign="top">
                            <label>As per contract in Nepal:</label>                            
                        </td>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td width="16%"><label>Job title/Position:</label></td>
                                    <td><asp:TextBox ID="txtNepalJobPosition" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><label>Basic Wages:</label></td>
                                    <td><asp:TextBox ID="txtNepalBasicWages" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td> <label>Overtime Wages:</label></td>
                                    <td><asp:TextBox ID="txtNepalOvertimeWages" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><label>Basic Working Hours:</label></td>
                                    <td><asp:TextBox ID="txtNepalBasicWorkingHours" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><label>Rest bet. Working Hours:</label></td>
                                    <td><asp:TextBox ID="txtNepalRestWorkingHours" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><label>Working days per week:</label></td>
                                    <td><asp:TextBox ID="txtNepalWorkingDaysPerWeek" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
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
                        <td valign="top">
                            <label>As per contract signed in destination country:</label>
                        </td>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td width="16%"><label>Job title/Position:</label></td>
                                    <td><asp:TextBox ID="txtDestinationJobPosition" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><label>Basic Wages:</label></td>
                                    <td><asp:TextBox ID="txtDestinationBasicWages" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><label>Overtime Wages:</label></td>
                                    <td><asp:TextBox ID="txtDestinationOvertimeWages" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><label>Basic Working Hours:</label></td>
                                    <td><asp:TextBox ID="txtDestinationBasicWorkingHours" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><label>Rest bet. Working Hours:</label></td>
                                    <td><asp:TextBox ID="txtDestinationRestWorkingHours" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><label>Working days per week:</label></td>
                                    <td><asp:TextBox ID="txtDestinationWorkingDaysPerWeek" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
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
                        <td>
                            <label>How did you get paid?</label> 
                           
                        </td>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td width="150">
                                        <asp:DropDownList ID="ddlPaymentMode" runat="server" CssClass="form-control input-sm">
                                            <asp:ListItem Value="Cash">Cash</asp:ListItem>
                                            <asp:ListItem Value="Bank Account">Bank Account</asp:ListItem>
                                            <asp:ListItem Value="Other">Other</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td width="80"><label>If Other.</label></td>
                                    <td><asp:TextBox ID="txtPaymentModeOther" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
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
                        <td valign="top">
                            <label>Migration Status:</label>
                            
                        </td>
                        <td>
                            <label>Nepal&nbsp;</label>
                            <asp:RadioButton ID="rbMigrationNepalDocumented" GroupName="MigrationNepal"  runat="server" />Documented&nbsp;
                            <asp:RadioButton ID="rbMigrationNepalUnDocumented" GroupName="MigrationNepal"  runat="server" />Undocumented<br />
                            <label>Destination Country&nbsp;</label>
                           <asp:RadioButton ID="rbMigrationDestinationDocumented" GroupName="MigrationDestination"  runat="server" />Documented&nbsp;
                            <asp:RadioButton ID="rbMigrationDestinationUnDocumented" GroupName="MigrationDestination"  runat="server" />Undocumented
                        </td>
                    </tr>
                    
                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>

                    <tr>
                        <td valign="top">
                            <label> Insurance (Dest. Country)</label>
                        </td>
                        <td>
                            <asp:RadioButton ID="rbDestInsuranceYes" GroupName="rbDestInsurance" runat="server" />Yes&nbsp; 
                            <asp:RadioButton ID="rbDestInsuranceNo" GroupName="rbDestInsurance"  runat="server" />No&nbsp;
                            <table width="100%">
                                <tr>
                                    <td width="18%"><label>Name of Insurance Company:</label></td>
                                    <td><asp:TextBox ID="txtDestInsuranceCompany" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                 <tr>
                                    <td><label>Date of Issue of Insurance:</label></td>
                                    <td><asp:TextBox ID="txtDestInsuranceIssuedDate" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                 <tr>
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


                <h3>Details about the person who has contacted you on behalf of client</h3>
                <table id="Table2" width="100%" cellpadding="5" cellspacing="0" border="0" class="table-tab">
                    <tr>
                        <td width="15%"><label>Name</label></td>
                        <td><asp:TextBox ID="txtNameBehalfVictim" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>Address</label></td>
                        <td><asp:TextBox ID="txtAddressBehalfVictim" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>Phone Number</label></td>
                        <td><asp:TextBox ID="txtPhoneBehalfVictim" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>How is the person related to victim?</label></td>
                        <td><asp:TextBox ID="txtRelationBehalfVictim" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>                    
                    <tr>
                        <td><label>Date when case was received</label></td>
                        <td><asp:TextBox ID="txtCaseReceivedDate" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>From where was case referred</label></td>
                        <td><asp:TextBox ID="txtFromWhereCaseReffered" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                </table>


                <h3>Details about the case</h3>
                <table id="Table1" width="100%" cellpadding="5" cellspacing="0" border="0" class="table-tab">
                    
                    <tr>
                        <td width="20%"><label>Country of destination</label></td>
                        <td><asp:TextBox ID="txtCountryOfDestination" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>How long did the sufferer stay in the country?</label></td>
                        <td><asp:TextBox ID="txtSuffereStayDuration" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>Stay abroad</label></td>
                        <td>
                            
                            <asp:DropDownList ID="ddlStayAbroad" runat="server" CssClass="form-control input-sm">
                                <asp:ListItem Value="">[--Stay Abroad--]</asp:ListItem>
                                <asp:ListItem Value="First Contract">First Contract</asp:ListItem>
                                <asp:ListItem Value="Second Contract">Second Contract</asp:ListItem>
                                <asp:ListItem Value="Third Contract">Third Contract</asp:ListItem>
                                <asp:ListItem Value="Other">Other</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Employer details (name, address)</label></td>
                        <td><asp:TextBox ID="txtEmployerDetails" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>When was the person last time in contact?How long has the person been out of contact?</label></td>
                        <td><asp:TextBox ID="txtOutOfContactDetails" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>When did the person last time send money?</label></td>
                        <td><asp:TextBox ID="txtLastTimeSendMoney" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>Amount of money sent to date by the missing person</label></td>
                        <td><asp:TextBox ID="txtAmountOfMoneySent" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>All information related to the person’s disappearance and possible whereabouts</label></td>
                        <td><asp:TextBox ID="txtPersonDisappearanceDetails" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>
                    
                </table>

                <h3>Steps taken to resolve the case</h3>
                <table id="Table3" width="100%" cellpadding="5" cellspacing="0" border="0" class="table-tab">
                     <tr>
                        <td width="35%"><label>Who referred the case to you?</label></td>
                        <td><asp:TextBox ID="txtWhoReferredCase" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Before the family reached your organization, did s/he take any steps to resolve the situation?</label></td>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td width="10%">Contacted</td>
                                    <td>
                                        <asp:DropDownList ID="ddlContactedOrganization" runat="server" CssClass="form-control input-sm">
                                            <asp:ListItem Value="None">None</asp:ListItem>
                                            <asp:ListItem Value="Embassy">Embassy</asp:ListItem>
                                            <asp:ListItem Value="Recruitment agency ">Recruitment agency </asp:ListItem>
                                            <asp:ListItem Value="Agent">Agent</asp:ListItem>
                                            <asp:ListItem Value="Family">Family</asp:ListItem>
                                            <asp:ListItem Value="Police">Police</asp:ListItem>
                                            <asp:ListItem Value="Labour Court">Label Court</asp:ListItem>
                                            <asp:ListItem Value="Other Organization">Other Organization</asp:ListItem>
                                        </asp:DropDownList>
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
                        <td><label>How was the reaction by those other support structures?</label></td>
                        <td>
                            <asp:TextBox ID="txtOtherSupportReactionDetail" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><label>What did the person or his/her family ask you to do?</label> </td>
                        <td><asp:TextBox ID="txtAskToDoDetails" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>
                                What are the steps taken after the victim contacted your organization?
                                Pls describe all actions taken and the reaction
                            </label>
                        </td>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td width="20%">With embassy</td>
                                    <td><asp:TextBox ID="txtWithEmbassy" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                
                                <tr>
                                    <td>With FEPB</td>
                                    <td><asp:TextBox ID="txtWithFEPB" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>With DOFE</td>
                                    <td><asp:TextBox ID="txtWithDOFE" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>With Manpower Agent</td>
                                    <td><asp:TextBox ID="txtWithManPowerAgent" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>With Support Organization in the Destination Country</td>
                                    <td><asp:TextBox ID="TextBox1" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>                                
                                <tr>
                                    <td>Others</td>
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
                            <td colspan="2">
                            <table width="100%">
                                <tr>
                                    <td width="10%">Case Solved?</td>
                                    <td>
                                        <asp:RadioButton ID="rbCompensationSolvedYes" GroupName="rbCompensationSolved" runat="server" />Solved&nbsp; 
                                        <asp:RadioButton ID="rbCompensationSolvedNo" GroupName="rbCompensationSolved"  runat="server" />Not Solved&nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">Describe the final result when the case is resolved/Describe why 
                                        <asp:TextBox ID="txtFinalResult" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox></td>
                                </tr>                                
                            </table>
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
</asp:Content>