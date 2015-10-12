<%@ Page Title="Add | Contract Issue" Language="C#" MasterPageFile="~/CaseMaster.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="SaMI.Web.FLAC.ContractIssue.Add" %>
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
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top"><label>Case Type:</label></td>
                        <td>
                            <asp:DropDownList ID="ddlCaseType" runat="server" CssClass="form-control input-sm">
                                <asp:ListItem Value="individual">Individual Case</asp:ListItem>
                                <asp:ListItem Value="group">Group Case</asp:ListItem>
                            </asp:DropDownList><br />

                            
                            <label>If Group Case, please mention number of clients.</label><br />
                            <table width="100%">
                                <tr>
                                    <td width="5%"><label>Male:</label></td>
                                    <td><asp:TextBox ID="txtNoMaleGroup" runat="server" Text="0"  CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><label>Female:</label></td>
                                    <td><asp:TextBox ID="txtNoFemaleGroup" runat="server" Text="0" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><label>Other:</label></td>
                                    <td><asp:TextBox ID="txtNoOtherGroup" runat="server" Text="0" CssClass="form-control input-sm"></asp:TextBox></td>
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
                        <td><label>Address</label></td>
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
                        <td><label>Issued Date</label></td>
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
                            <label>If married, then Children and their Age.</label>
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
                        <td><label>Agent Full Name</label></td>
                        <td>
                            <asp:TextBox ID="txtAgentName" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Agent's Contact No.</label></td>
                        <td>
                            <asp:TextBox ID="txtAgentContactNumber" runat="server" CssClass="form-control input-sm"></asp:TextBox>
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
                        <td valign="top"><label>Insurance in Nepal</label></td>
                        <td>
                            <asp:RadioButton ID="rbInsuranceYes" GroupName="rbInsurance" runat="server" />Yes&nbsp; 
                            <asp:RadioButton ID="rbInsuranceNo" GroupName="rbInsurance"  runat="server" />No&nbsp;
                            <asp:RadioButton ID="rbInsuranceNotAvailable" GroupName="rbInsurance"  runat="server" />Not Availabe

                        <em>If Insurance in Nepal Available please specify below.</em><br />
                            <table width="100%">
                                <tr>
                                    <td width="18%"><label>Name of Insurance Company:</label></td>
                                    <td><asp:TextBox ID="txtInsuranceCompany" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                 <tr>
                                    <td><label>Insurance Policy Number:</label></td>
                                    <td><asp:TextBox ID="txtInsurancePolicyNumber" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                 <tr>
                                    <td><label>Date of Issue of Insurance:</label></td>
                                    <td><asp:TextBox ID="txtInsuranceIssuedDate" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                 <tr>
                                    <td><label>Duration of Insurance:</label></td>
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
                        <td valign="top"><label>Medical Test</label></td>
                        <td>
                            <table width="100%">
	                            <tr>
		                            <td width="18%"><label>Name of Medical Institute:</label></td>
		                            <td><asp:TextBox ID="txtMedicalInstitute" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
	                            </tr>
                                <tr>
		                            <td><label>Certified Date in Nepal:</label></td>
		                            <td><asp:TextBox ID="txtMedicalCertifiedDate" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
	                            </tr>
                                <tr>
		                            <td><label>Status:</label></td>
		                            <td>
                                        <asp:DropDownList ID="ddlMedicalStatus" runat="server" CssClass="form-control input-sm">
                                             <asp:ListItem Value="Not-Available">Fit</asp:ListItem>
                                            <asp:ListItem Value="Fit">Fit</asp:ListItem>
                                            <asp:ListItem Value="Unfit">Unfit</asp:ListItem>
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
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top"><label>Receipt Taken</label></td>
                        <td>
                            <asp:RadioButton ID="rbReceiptTakenYes" GroupName="receipt-taken" runat="server" />Yes&nbsp;
                            <asp:RadioButton ID="rbReceiptTakenNo" GroupName="receipt-taken" runat="server" />No&nbsp;
                            <asp:RadioButton ID="rbReceiptTakenNotAvailable" GroupName="receipt-taken" runat="server" />Not available&nbsp;<br />

                            <em>If yes then how much</em><br />
                            <table width="100%">
                                <tr>
                                    <td width="20"><label>Amount:</label></td>
                                    <td><asp:TextBox ID="txtReceiptAmount" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
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
                            <label>As per contract in Nepal:</label><br />
                            
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
                        <td>
                            <label>How much salary was not paid?</label>
                                
                        </td>
                        <td>
                            <asp:TextBox ID="txtUnpaidAmount" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                             <label>How many months salary was not paid?</label>
                        </td>
                        <td>
                             <asp:TextBox ID="txtUnpaidMonths" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <label>Did the person complained about the non-payment of salary?</label>
                            <asp:RadioButton ID="rbComplainedYes" GroupName="Complained-NonPayment" runat="server" />Yes&nbsp;
                            <asp:RadioButton ID="rbComplainedNo" GroupName="Complained-NonPayment"  runat="server" />No<br />
                            <label>Reaction</label>
                            <asp:TextBox ID="txtNonPaymentComplainReaction" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>

                    </tr>
                    <tr>
                        <td colspan="2">
                            <label>Did the person complained about the difference between contract?</label>
                            <asp:RadioButton ID="rbComplainedContractYes" GroupName="Complained-Contract"  runat="server" />Yes&nbsp;
                            <asp:RadioButton ID="rbComplainedContractNo" GroupName="Complained-Contract"  runat="server" />No<br />
                            <label>Reaction</label>
                            <asp:TextBox ID="txtDifferenceContractComplainReaction" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <label><strong>Not allowed to leave</strong></label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <label>When did the person wanted to leave the employer and why?</label><br />
                            <asp:TextBox ID="txtWhenWantedToLeave" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <label>How did the employer react?</label><br />
                            <asp:TextBox ID="txtEmployerReact" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label><strong>Dismissal</strong></label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <label>When did the employer dismiss the person?</label><br />
                            <asp:TextBox ID="txtWhenDismiss" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <label>What was the reason given?</label><br />
                            <asp:TextBox ID="txtDismissalReason" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <label>How did the employer dismiss the person? Circumstances of the dismissal?</label><br />
                            <asp:TextBox ID="txtDismissalCircumstances" runat="server" CssClass="form-control input-sm"></asp:TextBox>
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


                <h3>Incident Information</h3>
                <table id="Table1" width="100%" cellpadding="5" cellspacing="0" border="0" class="table-tab">
                    <tr>
                        <td width="20%"><label>Date of incident</label></td>
                        <td><asp:TextBox ID="txtDateOfIncident" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>Country/place of incident</label></td>
                        <td><asp:TextBox ID="txtPlaceOfIncident" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>Problem faced : nature of cases categories</label></td>
                        <td><asp:TextBox ID="txtProblemFacedDetails" placeholder="Please specify whether the person is in deportation center or in jail" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>Incident details</label></td>
                        <td><asp:TextBox ID="txtIncidentDetails" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>Situation/circumstances before incident</label></td>
                        <td><asp:TextBox ID="txtSituationCircumstancesBeforeIncident" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>Incident witness</label></td>
                        <td><asp:TextBox ID="txtIncidentWitness" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
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
                        <td><label>Before the person reached your organization, did s/he take any steps to resolve the situation?</label></td>
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
                        <td><label>If support was sought, how did the respective institution response? What did they do?</label></td>
                        <td>
                            <asp:TextBox ID="txtRespectiveInstutionResponse" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><label>What did the person or his/her family ask you to do?</label> </td>
                        <td><asp:TextBox ID="txtFamilyAskToDoDetails" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>What was the role of ICC to support in this case? Please mention</label> </td>
                        <td><asp:TextBox ID="txtICCSuportDetail" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox></td>
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
                                <br /><br /></label>
                                <span style="font-style:italic;">
                                    This part has to be filled as the case is being handled, i.e. each time a new measure is taken, 
                                    it should be noted and the result of the step taken should be described
                                </span>
                        </td>
                        <td>
                            <asp:TextBox Height="200" ID="txtOrganizationStepsTakenDetails" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>

                    <tr>
                        <td><label>Compensation</label></td>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td colspan="2"><asp:RadioButton ID="rbCompensationReceivedYes" GroupName="rbCompensationReceived" runat="server" />Received&nbsp; </td>
                                </tr>
                                <tr>
                                    <td width="25%">How much was received?</td>
                                    <td><asp:TextBox ID="txtCompensationReceivedHowMuch" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>

                                <tr>
                                    <td>When was the compensation received?</td>
                                    <td><asp:TextBox ID="txtCompensationReceivedWhen" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td colspan="2"><asp:RadioButton ID="rbCompensationReceivedNo" GroupName="rbCompensationReceived" runat="server" />Not Recieved&nbsp; </td>
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
                                    <td width="10%">Solved or Closed?</td>
                                    <td>
                                        <asp:RadioButton ID="rbCompensationSolvedYes" GroupName="rbCompensationSolved" runat="server" />Solved&nbsp; 
                                        <asp:RadioButton ID="rbCaseClosed" GroupName="rbCompensationSolved" runat="server" />Closed&nbsp; 
                                        <asp:RadioButton ID="rbCompensationSolvedNo" GroupName="rbCompensationSolved"  runat="server" />Not Solved&nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">If closed , why please explain
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
