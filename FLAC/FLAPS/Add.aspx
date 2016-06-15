<%@ Page Title="Add | Free Legal and Paralegal Service" Language="C#" MasterPageFile="~/CaseMaster.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="SaMI.Web.FLAC.FLAPS.Add" %>
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

                               

                <h3>Personal Detail of Client</h3>
                <table id="personalDetails"width="100%" cellpadding="5" cellspacing="0" border="0" class="table-tab">
                    <tr>
                        <td width="15%"><label>Name of Appicant</label></td>
                        <td>
                            <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control input-sm" required="required"></asp:TextBox>
                        </td>
                  
                        <td><label>Sex</label></td>
                        <td>
                            <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control input-sm" required="required">
                                <asp:ListItem Value="">--Select--</asp:ListItem>
                                <asp:ListItem Value="M">Male</asp:ListItem>
                                <asp:ListItem Value="F">Female</asp:ListItem>
                                <asp:ListItem Value="U">Undisclosed</asp:ListItem>
                                <asp:ListItem Value="O">Other</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                 </tr>

                    <tr>
                        <td><label>Address</label></td>
                        <td colspan="3">
                            <table width="100%">
                                <tr>
                                    <td width="5%"><label>District</label></td>
                                    <td><asp:DropDownList ID="ddlDistrict" runat="server" CssClass="form-control input-sm" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged" AutoPostBack="true" ></asp:DropDownList></td>
                               
                                    <td><label>VDC / Municipality</label></td>
                                    <td><asp:DropDownList ID="ddlVDC" runat="server" CssClass="form-control input-sm" required="required"></asp:DropDownList></td>
                               
                                    <td><label>Ward</label></td>
                                    <td><asp:TextBox ID="txtWardNo" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>

                                    <td><label>Tole</label></td>
                                    <td><asp:TextBox ID="txtTole" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
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
                        <td><label>Contact Numbers.</label></td>
                        <td colspan="3">
                            <table width="100%">
                                <tr>
                                    <td width="10%"><label>Contact no 1:</label></td>
                                    <td><asp:TextBox ID="txtContactNumber1" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td width="10%"><label>Contact no 2:</label></td>
                                    <td><asp:TextBox ID="txtContactNumber2" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                            </table>
                            
                        </td>
                       <td>&nbsp;</td>
                    </tr>

                    <tr>
                        <td colspan="4">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td ><label>Email ID</label></td>
                        <td>
                            <asp:TextBox ID="txtEmailID" runat="server" CssClass="form-control input-sm" required="required"></asp:TextBox>
                        </td>
                        <td colspan="2"></td>
                    </tr>
                </table>

                <h3>Victim's personal details</h3>
                <table id="Table6"width="100%" cellpadding="5" cellspacing="0" border="0" class="table-tab">
                    <tr>
                        <td width="15%"><label>Name of Victim</label></td>
                        <td>
                            <asp:TextBox ID="txtNameOfVictim" runat="server" CssClass="form-control input-sm" required="required"></asp:TextBox>
                        </td>
                        <td><label>Age</label></td>
                        <td>
                            <asp:TextBox ID="txtAgeVictim" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                        <td><label>Passport No.</label></td>
                        <td>
                            <asp:TextBox ID="txtPassportNumberVictim" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>                       
                 </tr>
                 <tr>
                     <td><label>Ethnicity</label></td>
                        <td>
                            <asp:DropDownList ID="ddlEthnicityVictim" runat="server" CssClass="form-control input-sm"
                                AutoPostBack="true">
                            </asp:DropDownList>
                        </td>
                      <td><label>Sex</label></td>
                        <td>
                            <asp:DropDownList ID="ddlGenderVictim" runat="server" CssClass="form-control input-sm" required="required">
                                <asp:ListItem Value="">--Select--</asp:ListItem>
                                <asp:ListItem Value="M">Male</asp:ListItem>
                                <asp:ListItem Value="F">Female</asp:ListItem>
                                <asp:ListItem Value="U">Undisclosed</asp:ListItem>
                                <asp:ListItem Value="O">Other</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                     <td colspan="2"></td>
                 </tr>

                    <tr>
                        <td colspan="6">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Address in Nepal</label></td>
                        <td colspan="5">
                            <table width="100%">
                                <tr>
                                    <td width="5%"><label>District</label></td>
                                    <td><asp:DropDownList ID="ddlDistrictVictim" runat="server" CssClass="form-control input-sm" OnSelectedIndexChanged="ddlDistrictVictim_SelectedIndexChanged" AutoPostBack="true" ></asp:DropDownList></td>
                               
                                    <td><label>VDC / Municipality</label></td>
                                    <td><asp:DropDownList ID="ddlVDCVictim" runat="server" CssClass="form-control input-sm" required="required"></asp:DropDownList></td>
                               
                                    <td><label>Ward</label></td>
                                    <td><asp:TextBox ID="txtWardVictim" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>

                                    <td><label>Tole</label></td>
                                    <td><asp:TextBox ID="txtToleVictim" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
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
                        <td><label>Contact Numbers.</label></td>
                        <td colspan="5">
                            <table width="100%">
                                <tr>
                                    <td width="10%"><label>Contact no 1:</label></td>
                                    <td><asp:TextBox ID="txtContactNumberVictim1" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td width="10%"><label>Contact no 2:</label></td>
                                    <td><asp:TextBox ID="txtContactNumberVictim2" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                            </table>
                            
                        </td>
                       <td colspan="2">&nbsp;</td>
                    </tr>

                    <tr>
                        <td colspan="6">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td ><label>Email ID</label></td>
                        <td>
                            <asp:TextBox ID="txtEmailIDVictim" runat="server" CssClass="form-control input-sm" required="required"></asp:TextBox>
                        </td>
                        <td colspan="4"></td>
                    </tr>

                    <tr>
                        <td colspan="6">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                
                    <tr>                        
                        <td><label> Case Identification No ( Reg no of PF):</label></td>
                        <td>
                            <asp:TextBox ID="txtCaseIdentificationNumber" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </td>
                   
                        <td><label> Case Received Date:</label></td>
                        <td><asp:TextBox ID="txtVictimCaseReceivedDate" runat="server" CssClass="form-control input-sm date_input"></asp:TextBox></td>

                        <td><label>Legal status:</label></td>
                        <td>
                            <asp:RadioButton ID="rbLegalStatusDocumented" GroupName="rbLegalStatus" runat="server" />Documented&nbsp;
                            <asp:RadioButton ID="rbLegalStatusUndocumented" GroupName="rbLegalStatus" runat="server" />Undocumented
                        </td>
                    </tr>
                    <tr>                        
                        <td><label>Date of Departure</label></td>
                        <td>
                            <asp:TextBox ID="txtDepartureDate" runat="server" CssClass="form-control input-sm date_input"></asp:TextBox>
                        </td>
                        <td><label>Route of Departure</label></td>
                        <td>
                            <asp:DropDownList ID="ddlDepartureRoute" runat="server" CssClass="form-control input-sm">
                                <asp:ListItem Value="">--Select--</asp:ListItem>
                                <asp:ListItem Value="TIA Kathmandu">TIA Kathmandu</asp:ListItem>
                                <asp:ListItem Value="India">India</asp:ListItem>
                                <asp:ListItem Value="Other">Other</asp:ListItem>
                            </asp:DropDownList><br />
                        </td>
                        <td>If Other, please specify</td>
                        <td><asp:TextBox ID="txtDepartureRouteOther" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                </table>


                     

                <h3>Case Details</h3>
                <table id="casedetails" width="100%" cellpadding="5" cellspacing="0" border="0" class="table-tab">
                    <tr>
                        <td width="15%"><label>Origin of Case:</label></td>
                        <td width="25%">
                            <asp:DropDownList ID="ddlOriginOfCase" runat="server" CssClass="form-control input-sm">
                                <asp:ListItem Value="">--Select--</asp:ListItem>
                                <asp:ListItem Value="Nepal">Nepal</asp:ListItem>
                                <asp:ListItem Value="Destination">Destination</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td colspan="2"></td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td width="20%"><label>IF Nepal , Nature of case:</label></td>
                        <td>
                            <asp:DropDownList ID="ddlNatureOfCaseNepal" runat="server" CssClass="form-control input-sm">
                                <asp:ListItem Value="">--Select--</asp:ListItem>
                                <asp:ListItem Value="Cheating">Cheating</asp:ListItem>
                                <asp:ListItem Value="Money taken but not send">Money taken but not send</asp:ListItem>
                                <asp:ListItem Value="Money & Passport taken but not send"></asp:ListItem>
                                <asp:ListItem Value="Overcharged"></asp:ListItem>
                                <asp:ListItem Value="Others"></asp:ListItem>
                                <asp:ListItem Value="Withhold of passport"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td colspan="2"></td>
                    </tr>

                    <tr>
                        <td colspan="4">
                            <table width="100%">
                                <tr>
                                    <td width="20%"><label>If IF over charged Claimed money NRS:</label></td>
                                    <td><asp:TextBox ID="txtOverChargedClaimedNRS" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td width="18%"><label>IF withhold of passport : </label></td>
                                    <td>
                                        Date of passport given:
                                        <asp:TextBox ID="txtDateOfPassportGiven" runat="server" CssClass="form-control input-sm date_input"></asp:TextBox>
                                        Duration of passport held
                                        <asp:TextBox ID="txtDurationOfPassportHeld" runat="server" CssClass="form-control input-sm"></asp:TextBox>
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
                    <tr>
                        <td width="20%"><label>Nature of Opponent:</label></td>
                        <td>
                            <asp:DropDownList ID="ddlNatureOfOpponent" runat="server" CssClass="form-control input-sm">
                                <asp:ListItem Value="">--Select--</asp:ListItem>
                                <asp:ListItem Value="Individual">Individual</asp:ListItem>
                                <asp:ListItem Value="Institutional">Institutional</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td colspan="2"></td>
                    </tr>
                    <tr>
                        <td><label>If Individual:</label></td>
                        <td colspan="3">
                            <table width="100%">
                                <tr>
                                    <td><label>Name of Opponent:</label></td>
                                    <td><asp:TextBox ID="txtNameOfOpponent" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td><label>Address: District</label></td>
                                    <td>
                                        <asp:DropDownList ID="ddlDistrictOpponent" runat="server" CssClass="form-control input-sm" OnSelectedIndexChanged="ddlDistrictOpponent_SelectedIndexChanged" AutoPostBack="true">
                                            </asp:DropDownList>
                                    </td>
                                    <td><label>VDC/Municipality</label></td>
                                    <td>
                                        <asp:DropDownList ID="ddlVDCOpponent" runat="server" CssClass="form-control input-sm">
                                            </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td><label>Address: Ward No:</label></td>
                                    <td><asp:TextBox ID="txtWardOpponent" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td><label>Contact Number</label></td>
                                    <td><asp:TextBox ID="txtContactNumberOpponent" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td><label>Licence no if available:</label></td>
                                    <td><asp:TextBox ID="txtLicenceNumberOpponent" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
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
                        <td><label>IF Destination country:</label></td>
                        <td colspan="3">
                            <table width="100%">
                                <tr>
                                    <td><label>Nature of Case</label></td>
                                    <td>
                                        <asp:DropDownList ID="ddlNatureOfCaseDestination" runat="server" CssClass="form-control input-sm">
                                            <asp:ListItem Value="">--Select--</asp:ListItem>
                                            <asp:ListItem Value="Wage withholding">Wage withholding</asp:ListItem>
                                            <asp:ListItem Value="Work  not given">Work  not given</asp:ListItem>
                                            <asp:ListItem Value="Different work">Different work</asp:ListItem>
                                            <asp:ListItem Value="Different Employer">Different Employer</asp:ListItem>
                                            <asp:ListItem Value="Medical Unfit">Medical Unfit</asp:ListItem>
                                            <asp:ListItem Value="Accident">Accident</asp:ListItem>
                                            <asp:ListItem Value="Death">Death</asp:ListItem>
                                            <asp:ListItem Value="Rescue">Rescue</asp:ListItem>
                                            <asp:ListItem Value="Low wage">Low wage</asp:ListItem>
                                            <asp:ListItem Value="Person trafficked">Person trafficked</asp:ListItem>
                                            <asp:ListItem Value="Other">Other</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <span class="col-md-2"><label>If Other:</label></span>
                                        <span class="col-md-10"><asp:TextBox ID="txtNatureOfCaseDestinationOther" runat="server" CssClass="form-control input-sm"></asp:TextBox></span>
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
                    <tr>
                        <td><label>IF Wage withholding:</label></td>
                        <td colspan="3">
                            <table width="100%">
                                <tr>
                                    <td><label>Months of wage withhold</label></td>
                                    <td><asp:TextBox ID="txtWWMonths" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td><label>Amount in</label></td>
                                    <td>
                                        <asp:DropDownList ID="ddlWWAmountIn" runat="server" CssClass="form-control input-sm">
                                            <asp:ListItem Value="">--Select--</asp:ListItem>
                                            <asp:ListItem Value="Dhiram">Dhiram</asp:ListItem>
                                            <asp:ListItem Value="Ringit">Ringit</asp:ListItem>
                                            <asp:ListItem Value="Dinar">Dinar</asp:ListItem>
                                            <asp:ListItem Value="Other">Other</asp:ListItem>
                                         </asp:DropDownList>
                                    </td>
                                    <td><label>Claimed amount</label></td>
                                    <td><asp:TextBox ID="txtWWClaimedAmount" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
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
                        <td><label>IF Work  not given:</label></td>
                        <td colspan="3">
                            <table width="100%">
                                <tr>
                                    <td><label>No of months:</label></td>
                                    <td><asp:TextBox ID="txtWNGNoOfMonths" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td><label>OR  no of days:</label></td>
                                    <td><asp:TextBox ID="txtWNGNoOfDays" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td colspan="2"></td>
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
                        <td><label>IF Different work:</label></td>
                        <td colspan="3">
                            <table width="100%">
                                <tr>
                                    <td width="18%"><label>Position/work in contract:</label></td>
                                    <td><asp:TextBox ID="txtDFPositionWorkInContract" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td><label>Actual position/work:</label></td>
                                    <td><asp:TextBox ID="txtDFActualPositionWork" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td colspan="2"></td>
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
                        <td><label>IF Different Employer:</label></td>
                        <td colspan="3">
                            <table width="100%">
                                <tr>
                                    <td width="18%"><label>Employer in Contract:</label></td>
                                    <td><asp:TextBox ID="txtDEEmployerInContract" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td><label>Actual employer: </label></td>
                                    <td><asp:TextBox ID="txtDEActualEmployer" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td colspan="2"></td>
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
                        <td><label>IF Medical Unfit:</label></td>
                        <td colspan="3">
                            <table width="100%">
                                <tr>
                                    <td><label>Medical check up date in destination</label></td>
                                    <td><asp:TextBox ID="txtMUMedicalCheckupDateDest" runat="server" CssClass="form-control input-sm date_input"></asp:TextBox></td>
                                    <td><label>Date of arrival</label></td>
                                    <td><asp:TextBox ID="txtMUDateOfArrival" runat="server" CssClass="form-control input-sm date_input"></asp:TextBox></td>
                                    <td><label>Medical check up date in Nepal</label></td>
                                    <td><asp:TextBox ID="txtMUMedicalCheckupDateNepal" runat="server" CssClass="form-control input-sm date_input"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><label>Name of medical center in Nepal:</label></td>
                                    <td><asp:TextBox ID="txtMUNameOfMedicalCenterNepal" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td><label>Claimed amount</label></td>
                                    <td><asp:TextBox ID="txtMUClaimedAmount" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td colspan="2"></td>
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
                        <td><label>IF Accident:</label></td>
                        <td colspan="3">
                            <table width="100%">
                                <tr>
                                    <td><label>Date of accident</label></td>
                                    <td><asp:TextBox ID="txtADateOfAccident" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td><label>Labour attached date</label></td>

                                    <td><asp:TextBox ID="txtALabourAttachedDate" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    
                                    <td colspan="2"></td>
                                </tr>
                                <tr>
                                    <td><label>Date of arrival</label></td>
                                    <td><asp:TextBox ID="txtADateOfArrival" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                
                                    <td><label>Refered to FEPB:</label></td>
                                    <td><asp:TextBox ID="txtAReferedToFEPB" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td colspan="2"></td>
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
                        <td><label>IF Death:</label></td>
                        <td colspan="3">
                            <table width="100%">
                                <tr>
                                    <td width="19%"><label>Date of death</label></td>
                                    <td><asp:TextBox ID="txtDDateOfDeath" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td><label>Labour attached date</label></td>
                                    <td><asp:TextBox ID="txtDLabourAttachedDate" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td colspan="2"></td>
                                 </tr>
                                <tr>
                                    <td><label>Arrival date of dead body</label></td>
                                    <td><asp:TextBox ID="txtDArrivalDateOfDeadBody" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                               
                                    <td><label>Refered to FEPB:</label></td>
                                    <td><asp:TextBox ID="txtDReferedToFEPB" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td colspan="2"></td>
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
                        <td><label>IF person trafficked:</label></td>
                        <td colspan="3"><asp:TextBox ID="txtPersonTraffickedDetails" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td colspan="4">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                </table>


                    </ContentTemplate>
                </asp:UpdatePanel>
                <h3>Details of Opponent in destination</h3>
                <table id="Table5" width="100%" cellpadding="5" cellspacing="0" border="0" class="table-tab">
                    <tr>
                        <td width="15%"><label>Nature of Employer</label></td>
                        <td width="25%">
                            <asp:DropDownList ID="ddlNatureOfEmployer" runat="server" CssClass="form-control input-sm">
                                <asp:ListItem Value="">--Select--</asp:ListItem>
                                <asp:ListItem Value="Individual">Individual</asp:ListItem>
                                <asp:ListItem Value="Institutional">Institutional</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td colspan="2"></td>
                    </tr>

                    <tr>
                        <td colspan="4">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td><label>IF individual:</label></td>
                        <td colspan="3">
                            <table width="100%">
                                <tr>
                                    <td><label>Name of Employer</label></td>
                                    <td><asp:TextBox ID="txtNameOfEmployer" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td><label>Address: State/Province</label></td>
                                    <td><asp:TextBox ID="txtStateProvinceEmployer" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td><label>City</label></td>
                                    <td><asp:TextBox ID="txtCityEmployer" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><label>Street:</label></td>
                                    <td><asp:TextBox ID="txtStreetEmployer" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td><label>House No</label></td>
                                    <td><asp:TextBox ID="txtHouseNoEmployer" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td><label>Contact Number</label></td>
                                    <td><asp:TextBox ID="txtContactNumberEmployer" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
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
                        <td><label>IF Institutional:</label></td>
                        <td colspan="3">
                            <table width="100%">
                                <tr>
                                    <td><label>Name of Company</label></td>
                                    <td><asp:TextBox ID="txtNameOfCompany" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td><label>Address: State/Province</label></td>
                                    <td><asp:TextBox ID="txtStateProvinceCompany" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td><label>City</label></td>
                                    <td><asp:TextBox ID="txtCityCompany" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><label>Street:</label></td>
                                    <td><asp:TextBox ID="txtStreetCompany" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td><label>House No</label></td>
                                    <td><asp:TextBox ID="txtHouseNoCompany" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td><label>Contact Number</label></td>
                                    <td><asp:TextBox ID="txtContactNumberCompany" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>

                <h3>Remedies</h3>
                <table id="tblRemedies" width="100%" cellpadding="5" cellspacing="0" border="0" class="table-tab">
                    <tr>
                        <td><label>Action taken</label></td>
                        <td>
                            <asp:DropDownList ID="ddlRemediesActionTaken" runat="server" CssClass="form-control input-sm">
                                <asp:ListItem Value="">--Select--</asp:ListItem>
                                <asp:ListItem Value="FIR Drafted">FIR Drafted</asp:ListItem>
                                <asp:ListItem Value="Application drafted">Application drafted</asp:ListItem>
                                <asp:ListItem Value="Adjourn property">Adjourn property</asp:ListItem>
                                <asp:ListItem Value="Counseling">Counseling</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td colspan="2"></td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>

                    <tr>
                        <td><label>Case to DoFE</label></td>
                        <td colspan="3">
                            <table width="100%">
                                <tr>
                                    <td><label>Case registered date:</label></td>
                                    <td><asp:TextBox ID="txtRemediesCaseRegisteredDate" runat="server" CssClass="form-control input-sm date_input"></asp:TextBox></td>
                                    <td><label>Registration no:</label></td>
                                    <td><asp:TextBox ID="txtRemediesRegistrationNumber" runat="server" CssClass="form-control input-sm date_input"></asp:TextBox></td>
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
                        <td><label>Follow up status of case at DoFE</label></td>
                        <td colspan="3">
                            <table width="100%">
                                <tr>
                                    <td><label>Date:</label></td>
                                    <td><asp:TextBox ID="txtRemediesFollowupDate" runat="server" CssClass="form-control input-sm date_input"></asp:TextBox></td>
                                    <td><label>Services:</label></td>
                                    <td>
                                        <asp:DropDownList ID="ddlRemediesFollowupServices" runat="server" CssClass="form-control input-sm">
                                            <asp:ListItem Value="">--Select--</asp:ListItem>
                                            <asp:ListItem Value="Supplement Application">Supplement Application</asp:ListItem>
                                            <asp:ListItem Value="Visited DoFE">Visited DoFE</asp:ListItem>
                                            <asp:ListItem Value="Adjourn Business">Adjourn Business</asp:ListItem>
                                            <asp:ListItem Value="Present in Negotiation">Present in Negotiation</asp:ListItem>
                                        </asp:DropDownList>
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
                    <tr>
                        <td><label>Status of case:</label></td>
                        <td width="25%">
                            <asp:DropDownList ID="ddlRemediesCaseStatus" runat="server" CssClass="form-control input-sm">
                                <asp:ListItem Value="">--Select--</asp:ListItem>
                                <asp:ListItem Value="Pending">Pending</asp:ListItem>
                                <asp:ListItem Value="Case Filed in FET">Case Filed in FET</asp:ListItem>
                                <asp:ListItem Value="Closed">Closed</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td width="15%"><label>Date of Decision:</label></td>
                        <td><asp:TextBox ID="txtRemediesDateOfDecision" runat="server" CssClass="form-control input-sm date_input"></asp:TextBox></td>

                    </tr>
                     <tr>
                        <td><label>If closed, Results:</label></td>
                        <td>
                            <asp:DropDownList ID="ddlRemediesClosedResults" runat="server" CssClass="form-control input-sm">
                                <asp:ListItem Value="">--Select--</asp:ListItem>
                                <asp:ListItem Value="Success">Success</asp:ListItem>
                                <asp:ListItem Value="Unsuccess">Unsuccess</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td><label>If unsucess, Reason given:</label></td>
                        <td><asp:TextBox ID="txtRemediesUnsuccessReasonGiven" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>

                    </tr>
                    <tr>
                        <td colspan="4">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td><label>IF Success:</label></td>
                        <td colspan="3">
                            <table width="100%">
                                <tr>
                                    <td><label>Compensation amount to victim NRS</label></td>
                                    <td><asp:TextBox ID="txtRCompensationAmountToVictim" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td><label>Fined to opponent NRS</label></td>
                                    <td><asp:TextBox ID="txtRFinedToOpponent" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td><label>Passport returned </label></td>
                                    <td><asp:TextBox ID="txtRPassportReturned" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><label>Victim Rescued :</label></td>
                                    <td><asp:TextBox ID="txtRVictimRescued" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td><label> Date of arrival</label></td>
                                    <td><asp:TextBox ID="txtRDateOfArrival" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td><label>Provided job according to contract</label></td>
                                    <td><asp:TextBox ID="txtProvidedJobAccordingToContact" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
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


                 <h3>Case in FET</h3>
                <table id="Table2" width="100%" cellpadding="5" cellspacing="0" border="0" class="table-tab">
                    <tr>
                        <td  width="15%"><label>Case registered date</label></td>
                        <td><asp:TextBox ID="txtFETCaseRegisteredDate" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                    
                        <td><label>Registration no</label></td>
                        <td><asp:TextBox ID="txtFETRegistrationNumber" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>Unit of FET</label></td>
                        <td>
                             <asp:DropDownList ID="ddlUnitOfFET" runat="server" CssClass="form-control input-sm">
                                 <asp:ListItem Value="">--Select--</asp:ListItem>
                                <asp:ListItem Value="1">1</asp:ListItem>
                                <asp:ListItem Value="2">2</asp:ListItem>
                                <asp:ListItem Value="3">3</asp:ListItem>
                                 <asp:ListItem Value="4">4</asp:ListItem>
                                 <asp:ListItem Value="5">5</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    
                        <td><label>Action taken</label></td>
                        <td>
                             <asp:DropDownList ID="ddlFETActionTaken" runat="server" CssClass="form-control input-sm">
                                 <asp:ListItem Value="">--Select--</asp:ListItem>
                                <asp:ListItem Value="Interim Application Drafted">Interim Application Drafted</asp:ListItem>
                                <asp:ListItem Value="Witness Testimony">Witness Testimony</asp:ListItem>
                                <asp:ListItem Value="Application for Compensation">Application for Compensation</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    
                    <tr>
                        <td colspan="4">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>                    
                    <tr>
                        <td><label>Pleading dates</label></td>
                        <td colspan="3">
                            <table width="100%">
                                <tr>
                                    <td><asp:TextBox ID="txtFETPleadingDate1" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td><asp:TextBox ID="txtFETPleadingDate2" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td><asp:TextBox ID="txtFETPleadingDate3" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td><asp:TextBox ID="txtFETPleadingDate4" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><asp:TextBox ID="txtFETPleadingDate5" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td><asp:TextBox ID="txtFETPleadingDate6" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td><asp:TextBox ID="txtFETPleadingDate7" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td><asp:TextBox ID="txtFETPleadingDate8" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
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
                        <td><label>Status of case</label></td>
                        <td width="25%">
                             <asp:DropDownList ID="ddlFETCaseStatus" runat="server" CssClass="form-control input-sm">
                                 <asp:ListItem Value="">--Select--</asp:ListItem>
                                <asp:ListItem Value="Pending">Pending</asp:ListItem>
                                <asp:ListItem Value="Filed in Superme Court">Filed in Superme Court</asp:ListItem>
                                <asp:ListItem Value="Closed">Closed</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    
                        <td width="15%"><label>Date of Decision:</label></td>
                        <td><asp:TextBox ID="txtFETDateOfDecision" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                    </tr> 

                    <tr>
                        <td><label>If closed, Results:</label></td>
                        <td>
                             <asp:DropDownList ID="ddlFETClosedResults" runat="server" CssClass="form-control input-sm">
                                 <asp:ListItem Value="">--Select--</asp:ListItem>
                                <asp:ListItem Value="Success">Success</asp:ListItem>
                                <asp:ListItem Value="Unsuccess">Unsuccess</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    
                        <td><label>If unsuccess, Reason given:</label></td>
                        <td><asp:TextBox ID="txtFETUnsuccessReasonGiven" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr> 

                    <tr>
                        <td colspan="4">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td><label>IF Success:</label></td>
                        <td colspan="3">
                            <table width="100%">
                                <tr>
                                    <td><label>Compensation decided by FET NRS:</label></td>
                                    <td><asp:TextBox ID="txtFETCompensationDecided" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td><label>Actual compensation received by victim: NRS</label></td>
                                    <td><asp:TextBox ID="txtFETActualCompensationReceived" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td><label>Fined to Opponent NRS:</label></td>
                                    <td><asp:TextBox ID="txtFETFinedToOpponent" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><label>Imprisonment to opponent:</label></td>
                                    <td><asp:TextBox ID="txtFETImprisonmentToOpponent" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td><label>Months:</label></td>
                                    <td><asp:TextBox ID="txtFETSuccessMonth" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td><label>Year:</label></td>
                                    <td><asp:TextBox ID="txtFETSuccessYear" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>

                <!-- Case in SC-->
                <table id="Table7" width="100%" cellpadding="5" cellspacing="0" border="0" class="table-tab">
                    <tr>
                        <td colspan="4">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td width="15%"><label>Case registered date at SC</label></td>
                        <td><asp:TextBox ID="txtSCCaseRegisteredDate" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                    
                        <td><label>Registration no</label></td>
                        <td><asp:TextBox ID="txtSCRegistrationNumber" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                    <tr>                    
                        <td><label>Action taken</label></td>
                        <td>
                             <asp:DropDownList ID="ddlSCActionTaken" runat="server" CssClass="form-control input-sm">
                                 <asp:ListItem Value="">--Select--</asp:ListItem>
                                <asp:ListItem Value="Interim Application Drafted">Interim Application Drafted</asp:ListItem>
                                <asp:ListItem Value="Witness Testimony">Witness Testimony</asp:ListItem>
                                 <asp:ListItem Value="Adjourn property">Adjourn property</asp:ListItem>
                                <asp:ListItem Value="Application for Compensation">Application for Compensation</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td colspan="2"></td>
                    </tr> 
                    
                    <tr>
                        <td colspan="4">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>                   
                    <tr>
                        <td><label>Pleading dates</label></td>
                        <td colspan="3">
                            <table width="100%">
                                <tr>
                                    <td><asp:TextBox ID="txtSCPleadingDate1" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td><asp:TextBox ID="txtSCPleadingDate2" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td><asp:TextBox ID="txtSCPleadingDate3" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td><asp:TextBox ID="txtSCPleadingDate4" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><asp:TextBox ID="txtSCPleadingDate5" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td><asp:TextBox ID="txtSCPleadingDate6" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td><asp:TextBox ID="txtSCPleadingDate7" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td><asp:TextBox ID="txtSCPleadingDate8" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
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
                        <td><label>Status of case</label></td>
                        <td width="25%">
                             <asp:DropDownList ID="ddlSCCaseStatus" runat="server" CssClass="form-control input-sm">
                                 <asp:ListItem Value="">--Select--</asp:ListItem>
                                <asp:ListItem Value="Pending">Pending</asp:ListItem>
                                <asp:ListItem Value="Closed">Closed</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    
                        <td width="15%"><label>Date of Decision:</label></td>
                        <td><asp:TextBox ID="txtSCDateOfDecision" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                    </tr> 

                    <tr>
                        <td><label>If closed, Results:</label></td>
                        <td>
                             <asp:DropDownList ID="ddlSCClosedResults" runat="server" CssClass="form-control input-sm">
                                 <asp:ListItem Value="">--Select--</asp:ListItem>
                                <asp:ListItem Value="Success">Success</asp:ListItem>
                                <asp:ListItem Value="Unsuccess">Unsuccess</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    
                        <td><label>If unsuccess, Reason given:</label></td>
                        <td><asp:TextBox ID="txtSCUnsuccessReasonGiven" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr> 

                    <tr>
                        <td colspan="4">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td><label>IF Success:</label></td>
                        <td colspan="3">
                            <table width="100%">
                                <tr>
                                    <td><label>Compensation decided by SC NRS:</label></td>
                                    <td><asp:TextBox ID="txtSCCompensationDecided" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td><label>Actual compensation received by victim: NRS</label></td>
                                    <td><asp:TextBox ID="txtSCActualCompensationReceived" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td><label>Fined to Opponent NRS:</label></td>
                                    <td><asp:TextBox ID="txtSCFinedToOpponent" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><label>Imprisonment to opponent:</label></td>
                                    <td><asp:TextBox ID="txtSCImprisonmentToOpponent" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td><label>Months:</label></td>
                                    <td><asp:TextBox ID="txtSCSuccessMonth" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td><label>Year:</label></td>
                                    <td><asp:TextBox ID="txtSCSuccessYear" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>


                <h3>Case in FEPB</h3>
                <table id="Table1" width="100%" cellpadding="5" cellspacing="0" border="0" class="table-tab">
                    <tr>
                        <td ><label>Case registered date to FEPB</label></td>
                        <td><asp:TextBox ID="txtFEPBCaseRegisteredDate" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                    
                        <td><label>Registration no</label></td>
                        <td><asp:TextBox ID="txtFEPBRegistrationNumber" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td colspan="4">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>                    
                        <td><label>Action taken</label></td>
                        <td colspan="3">
                            <table width="100%">
                                <tr>
                                    <td>
                                        <asp:DropDownList ID="ddlFEPBActionTaken" runat="server" CssClass="form-control input-sm">
                                            <asp:ListItem Value="">--Select--</asp:ListItem>
                                            <asp:ListItem Value="Application Drafted">Interim Application Drafted</asp:ListItem>
                                            <asp:ListItem Value="Follow up">Follow up</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td colspan="2"></td>

                                </tr>
                                <tr>
                                    <td colspan="4">Follow up dates:</td>
                                </tr>
                                <tr>
                                    <td><asp:TextBox ID="txtFEPBFollowupDate1" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td><asp:TextBox ID="txtFEPBFollowupDate2" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td><asp:TextBox ID="txtFEPBFollowupDate3" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td><asp:TextBox ID="txtFEPBFollowupDate4" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><asp:TextBox ID="txtFEPBFollowupDate5" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td><asp:TextBox ID="txtFEPBFollowupDate6" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td><asp:TextBox ID="txtFEPBFollowupDate7" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td><asp:TextBox ID="txtFEPBFollowupDate8" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
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
                        <td><label>Status of case</label></td>
                        <td width="25%">
                             <asp:DropDownList ID="ddlFEPBCaseStatus" runat="server" CssClass="form-control input-sm">
                                 <asp:ListItem Value="">--Select--</asp:ListItem>
                                <asp:ListItem Value="Pending">Pending</asp:ListItem>
                                <asp:ListItem Value="Closed">Closed</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    
                        <td width="15%"><label>Date of Decision:</label></td>
                        <td><asp:TextBox ID="txtFEPBDateOfDecision" runat="server" CssClass="form-control input-sm date_input"></asp:TextBox></td>
                    </tr> 

                    <tr>
                        <td><label>If closed, Results:</label></td>
                        <td>
                             <asp:DropDownList ID="ddlFEPBClosedResults" runat="server" CssClass="form-control input-sm">
                                 <asp:ListItem Value="">--Select--</asp:ListItem>
                                <asp:ListItem Value="Success">Success</asp:ListItem>
                                <asp:ListItem Value="Unsuccess">Unsuccess</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    
                        <td><label>If unsuccess, Reason given:</label></td>
                        <td><asp:TextBox ID="txtFEPBUnsucessReasonGiven" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr> 
                    <tr>
                        <td colspan="4">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td><label>IF Success:</label></td>
                        <td colspan="3">
                            <table width="100%">
                                <tr>
                                    <td width="22%"><label>Financial support Received NRS:</label></td>
                                    <td><asp:TextBox ID="txtFEPBFinancialSupportReceived" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td width="16%"><label>Dead body arrived date:</label></td>
                                    <td><asp:TextBox ID="txtFEPBDeadBodyArrivedDate" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>

                <h3>Expert Committee on medical fail</h3>
                <table id="Table3" width="100%" cellpadding="5" cellspacing="0" border="0" class="table-tab">
                    <tr>
                        <td ><label>Case registered date</label></td>
                        <td><asp:TextBox ID="txtECMFCaseRegisteredDate" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                    
                        <td><label>Registration no</label></td>
                        <td><asp:TextBox ID="txtECMFRegistrationNumber" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td colspan="4">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>                    
                        <td><label>Action taken</label></td>
                        <td colspan="3">
                            <table width="100%">
                                <tr>
                                    <td>
                                        <asp:DropDownList ID="ddlECMFActionTaken" runat="server" CssClass="form-control input-sm">
                                            <asp:ListItem Value="">--Select--</asp:ListItem>
                                            <asp:ListItem Value="Application Drafted">Interim Application Drafted</asp:ListItem>
                                            <asp:ListItem Value="Follow up">Follow up</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td colspan="2"></td>

                                </tr>
                                <tr>
                                    <td colspan="4">Follow up dates:</td>
                                </tr>
                                <tr>
                                    <td><asp:TextBox ID="txtECMFFollowupDate1" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td><asp:TextBox ID="txtECMFFollowupDate2" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td><asp:TextBox ID="txtECMFFollowupDate3" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td><asp:TextBox ID="txtECMFFollowupDate4" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><asp:TextBox ID="txtECMFFollowupDate5" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td><asp:TextBox ID="txtECMFFollowupDate6" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td><asp:TextBox ID="txtECMFFollowupDate7" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
                                    <td><asp:TextBox ID="txtECMFFollowupDate8" runat="server" CssClass="form-control input-sm date_input" placeholder="DD/MM/YY"></asp:TextBox></td>
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
                        <td><label>Status of case</label></td>
                        <td width="25%">
                             <asp:DropDownList ID="ddlECMFCaseStatus" runat="server" CssClass="form-control input-sm">
                                 <asp:ListItem Value="">--Select--</asp:ListItem>
                                <asp:ListItem Value="Pending">Pending</asp:ListItem>
                                <asp:ListItem Value="Closed">Closed</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    
                        <td width="15%"><label>Date of Decision:</label></td>
                        <td><asp:TextBox ID="txtECMFDateOfDecision" runat="server" CssClass="form-control input-sm date_input"></asp:TextBox></td>
                    </tr> 

                    <tr>
                        <td><label>If closed, Results:</label></td>
                        <td>
                             <asp:DropDownList ID="ddlECMFClosedResults" runat="server" CssClass="form-control input-sm">
                                 <asp:ListItem Value="">--Select--</asp:ListItem>
                                <asp:ListItem Value="Success">Success</asp:ListItem>
                                <asp:ListItem Value="Unsuccess">Unsuccess</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    
                        <td><label>If unsuccess, Reason given:</label></td>
                        <td><asp:TextBox ID="txtECMFUnsuccessReasonGiven" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr> 
                    <tr>
                        <td colspan="4">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td><label>IF Success:</label></td>
                        <td colspan="3">
                            <table width="100%">
                                <tr>
                                    <td width="20%"><label>Compensation Received NRS:</label></td>
                                    <td width="25%"><asp:TextBox ID="txtECMFCompensationReceived" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                    <td></td><td></td>
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
