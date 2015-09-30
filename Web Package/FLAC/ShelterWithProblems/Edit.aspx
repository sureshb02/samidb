<%@ Page Title="Edit | Shelter With Problems" Language="C#" MasterPageFile="~/CaseMaster.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="SaMI.Web.FLAC.ShelterWithProblems.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager EnablePartialRendering="true" ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <div class="container" style="margin-top:10px">
            <div class="row">
                <asp:UpdatePanel ID="UpdatePanelAdd" runat="server">
                <ContentTemplate>

                
               

                <h3>Detail about victim</h3>
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
                        <td><label>Sex of victim</label></td>
                        <td>
                            <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control input-sm">
                                <asp:ListItem Value="M">Male</asp:ListItem>
                                <asp:ListItem Value="F">Female</asp:ListItem>
                                <asp:ListItem Value="O">Other</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Date of Birth</label></td>
                        <td>
                            <asp:TextBox ID="txtDateOfBirth" runat="server" CssClass="form-control input-sm"></asp:TextBox>
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
                            <asp:DropDownList ID="ddlEducationStatus" runat="server" CssClass="form-control input-sm">
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
                            <label>Family Genogram</label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFamilyGenogram"  CssClass="form-control input-sm" runat="server" TextMode="MultiLine"></asp:TextBox>
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
                </table>


                     </ContentTemplate>
                </asp:UpdatePanel>

             

                <h3>Details about the person who has contacted you on behalf of victim</h3>
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
                </table>

                 <h3>Questions related to pre-departure situation and transit</h3>
                <table>
                    <tr>
                        <td width="20%"><label>Reasons for FE</label></td>
                        <td><asp:TextBox ID="txtReasonsForFE" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>Pre-departure costs</label></td>
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
                        <td><label>How is the person related to victim?</label></td>
                        <td><asp:TextBox ID="txtRelationNepal" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td><label>Address Recruitment agency</label></td>
                        <td><asp:TextBox ID="txtAddressRecruitmentAgency" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>Address Agent (in case of individual)</label></td>
                        <td><asp:TextBox ID="txtAddressAgent" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>Did the person sign a contract before leaving Nepal?</label></td>
                        <td>
                            <asp:DropDownList ID="ddlSignContractOption" runat="server" CssClass="form-control input-sm">
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
                                    <asp:ListItem Value="India">India</asp:ListItem>
                                    <asp:ListItem Value="Bangladesh">Bangladesh</asp:ListItem>
                                    <asp:ListItem Value="TIA">TIA</asp:ListItem>
                                <asp:ListItem Value="Other">Other</asp:ListItem>
                                </asp:DropDownList>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Status at departure</label></td>
                        <td>
                            Documented:<asp:RadioButton ID="rbStatusAtDepartureDocumented" GroupName="rbStatusAtDeparture" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            Undocumented:<asp:RadioButton ID="rbStatusAtDepartureUnDocumented" GroupName="rbStatusAtDeparture"  runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td valign=""><label>Problems faced during transit</label></td>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td width="20%">Long waiting time:<asp:RadioButton ID="rbProblemTransitLongWaiting" GroupName="rbProblemTransit" runat="server" /> (how long)</td>
                                    <td>
                                        <asp:TextBox ID="txtLongWaitingTransitDetails" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">Harassment:<asp:RadioButton ID="rbProblemTransitHarassment" GroupName="rbProblemTransit" runat="server" /></td>
                                </tr>
                                <tr>
                                    <td colspan="2">Other:<asp:RadioButton ID="rbProblemTransitOther" GroupName="rbProblemTransit" runat="server" /></td>
                                </tr>
                                <tr>
                                    <td colspan="2">None:<asp:RadioButton ID="rbProblemTransitNone" GroupName="rbProblemTransit" runat="server" /></td>
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
                        <td><label>When did the victim arrive in the destination country?</label></td>
                        <td><asp:TextBox ID="txtArrivedInDestinationCountry" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>How long did the victim stay in the country?</label> </td>
                        <td><asp:TextBox ID="txtCountryStayDuration" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>Employer details (name, address)</label> </td>
                        <td><asp:TextBox ID="txtEmployerDetails" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top"><label>When did the person arrive in Nepal/is the person still in the country</label></td>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td width="18%">Date of arrival in Nepal</td>
                                    <td><asp:TextBox ID="txtDateOfArrivalNepal" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>Still in the country</td>
                                    <td><asp:CheckBox ID="chkStillInTheCountry" runat="server" /></td>
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
                        <td><label>Status in the country of destination before return</label></td>
                        <td>
                            Documented:<asp:RadioButton ID="rbDestinationStatusBeforeReturnDocumented" GroupName="rbDestinationStatusBeforeReturn" runat="server" />&nbsp; 
                            &nbsp; &nbsp; &nbsp; &nbsp; 
                            Undocumented:<asp:RadioButton ID="rbDestinationStatusBeforeReturnUndocumented" GroupName="rbDestinationStatusBeforeReturn"  runat="server" />&nbsp;
                        </td>
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
                        <td><label>How many years in total did the person spend in FE (including previous contracts)</label> </td>
                        <td><asp:TextBox ID="txtTotalYearsSpent" runat="server" CssClass="form-control input-sm" ></asp:TextBox></td>
                    </tr>

                </table>

                 <h3>Questions related to experience in the destination country</h3>
                <table>
                    <tr>
                        <td width="25%"><label>Did the person sign another contract in the destination country?</label></td>
                        <td>
                            <asp:DropDownList ID="ddlSignedContractDest" runat="server" CssClass="form-control input-sm">
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
                        <td><label>What did the victim do when the salary was not paid? 
How did the employer react?
</label></td>
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

                    <tr>
                        <td colspan="2"><h4><label>Dismissal</label></h4></td>
                    </tr>
                    <tr>
                        <td><label>When did the employer dismiss the person?</label></td>
                        <td><asp:TextBox ID="txtPersonDismissalWhen" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td><label>What was the reason given?</label></td>
                        <td><asp:TextBox ID="txtDismissalGivenReason" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td><label>How did the employer dismiss the person? Circumstances of the dismissal</label></td>
                        <td><asp:TextBox ID="txtDismisallCircumstances" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td><label>Physical abuse:Did the person suffer from physical abuse? If yes, pls describe</label></td>
                        <td><asp:TextBox ID="txtPhysicalAbuse" runat="server" CssClass="form-control input-sm" TextMode="MultiLine" placeholder="pls describe...  Perpetrator: Name and relation to the employer"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Emotional abuse: Did the person suffer from emotional abuse</label></td>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td colspan="2">
                                        <asp:DropDownList ID="ddlEmotionalAbuse" runat="server" CssClass="form-control input-sm">
                                            <asp:ListItem Value="">None</asp:ListItem>
                                            <asp:ListItem Value="">Shouting</asp:ListItem>
                                            <asp:ListItem Value="One">Humiliating talk</asp:ListItem>
                                            <asp:ListItem Value="Two">Other</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="10%">If Other:</td>
                                    <td><asp:TextBox ID="txtEmotionalAbuseOther" runat="server" CssClass="form-control input-sm" placeholder="Perpetrator: Name and relation to the employer"></asp:TextBox></td>
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
                        <td><label>Sexual abuse: did the person suffer from sexual abuse. </label></td>
                        <td><asp:TextBox ID="txtSexualAbuse" runat="server" CssClass="form-control input-sm" TextMode="MultiLine" placeholder="pls describe....  Perpetrator: Name and relation to the employer"></asp:TextBox></td>
                    </tr>
                </table>



                <h3>Steps taken to resolve the case</h3>
                <table id="Table1" width="100%" cellpadding="5" cellspacing="0" border="0" class="table-tab">
                    <tr>
                        <td width="35%"><label>Before the person reached your organization, did s/he take any steps to resolve the situation?</label></td>
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
                        <td><label>Pls describe how the service by other institutions contacted was perceived by the victim</label></td>
                        <td>
                            <asp:TextBox ID="txtServiceByOtherInstitutionsDetails" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
            </table>

                <h3>Services by Pourakhi</h3>
                <table id="Table5" width="100%" cellpadding="5" cellspacing="0" border="0" class="table-tab">
                    <tr>
                        <td width="25%"><label>Date when case was received</label></td>
                        <td><asp:TextBox ID="txtCaseReceivedDate" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
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
                        <td colspan="2"><h4><label>Psychosocial support</label></h4></td>
                    </tr>
                    <tr>
                        <td><label>What was the psychosocial situation of the victim?</label> </td>
                        <td><asp:TextBox ID="txtPsychosocialSitutaionOfVictim" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>What service did Pourakhi provide? Who provided what service?</label> </td>
                        <td><asp:TextBox ID="txtPourakhiServiceDetails" runat="server" CssClass="form-control input-sm" TextMode="MultiLine" 
                            placeholder="Name of counselor
                            How many sessions?
                            What was done/discussed?
                            "></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td><label>Pls describe progress/situation at the date of discharge from Pourakhi: what progress was observed and what is still problematic?</label> </td>
                        <td><asp:TextBox ID="txtProgressStituationDetails" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>


                    <tr>
                        <td colspan="2"><h4><label>Health support</label></h4></td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Helath Checkup</label></td>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td width="18%"><label>By Whom?</label> </td>
                                    <td><asp:TextBox ID="txtHealthCheckupBy" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><label>What was the diagnosis?</label> </td>
                                    <td><asp:TextBox ID="txtHealthCheckupDiagnosis" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox></td>
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
                        <td><label>Treatment</label></td>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td width="18%"><label>By Whom?</label> </td>
                                    <td><asp:TextBox ID="txtTreatmentBy" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><label>Medication provided – by POurakhi – by hospital/clinic?</label> </td>
                                    <td><asp:TextBox ID="txtMedicationProvidedBy" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
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
                        <td><label>Pls describe progress at the date of discharge from Pourakhi</label> </td>
                        <td><asp:TextBox ID="txtProgressOnDischarge" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td colspan="2"><label>Paralegal service</label></td>
                    </tr>
                    <tr>
                        <td><label>Problem addressed: For what reason was paralegal service provided </label> </td>
                        <td><asp:TextBox ID="txtParalegalProblemAddressed" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>Organization referred to if any</label> </td>
                        <td><asp:TextBox ID="txtOrganizationReferred" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><label>Progress at the date of discharge from Pourakhi</label> </td>
                        <td><asp:TextBox ID="txtParalegalProgressOnDischarge" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top"><label>Compensation</label></td>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td colspan="2">Received:<asp:RadioButton ID="rbCompensationReceivedYes" GroupName="rbCompensationReceived"  runat="server" /></td>
                                </tr>
                                <tr>
                                    <td width="15%">How much?</td>
                                    <td><asp:TextBox ID="txtCompensationReceivedHowMuch" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>By Whom?</td>
                                    <td><asp:TextBox ID="txtCompensationReceivedBy" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>Not Received:<asp:RadioButton ID="rbCompensationReceivedNo" GroupName="rbCompensationReceived"  runat="server" /></td>
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
                </table>



                <h3>Follow-up of the case What kind of follow-up does the person need</h3>
                <table id="Table4" width="100%" cellpadding="5" cellspacing="0" border="0" class="table-tab">
                    <tr>
                        <td width="25%"><label>Was the SaMI or other ICC in the home district informed of her return?</label></td>
                        <td>
                            <asp:RadioButton ID="rbSaMIICCInformedYes" GroupName="rbSaMIICCInformed" runat="server" />Yes&nbsp; 
                            <asp:RadioButton ID="rbSaMIICCInformedNo" GroupName="rbSaMIICCInformed"  runat="server" />No&nbsp;
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top"><label>Psychosocial – if yes, to whom was the case referred</label> </td>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td colspan="2">Yes&nbsp;&nbsp;<asp:RadioButton ID="rbPsychologicalCaseReferredYes" GroupName="rbPsychologicalCaseReferred"  runat="server" /></td>
                                </tr>
                                <tr>
                                    <td width="20%">To whom case was referred?</td>
                                    <td><asp:TextBox ID="txtCaseReferredWhom" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>No&nbsp;&nbsp;<asp:RadioButton ID="rbPsychologicalCaseReferredNo" GroupName="rbPsychologicalCaseReferred"  runat="server" /></td>
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
                        <td><label>How many visits or other contacts was done?</label></td>
                        <td><asp:TextBox ID="txtHowManyVisistsOrContacts" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <div class="liner">&nbsp;</div>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top"><label>Health</label></td>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td width="10%">For what</td>
                                    <td><asp:TextBox ID="txtHealthForWhat" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>Referred to whom</td>
                                    <td><asp:TextBox ID="txtHealthReferredToWhom" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
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
                        <td valign="top"><label>Legal</label></td>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td width="10%">For what</td>
                                    <td><asp:TextBox ID="txtLegalForWhat" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>Referred to whom</td>
                                    <td><asp:TextBox ID="txtLegalReferredToWhom" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
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
                        <td><label>Any information about the progress of the case after discharge from Pourakhi?</label></td>
                        <td><asp:TextBox ID="txtProgressAfterDischarge" runat="server" CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox></td>
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
    <asp:HiddenField ID="hfFLACShelterVictimBehalfID" runat="server" Value="" />
    <asp:HiddenField ID="hfFLACShelterQRelatedPreDepartureID" runat="server" Value="" />
    <asp:HiddenField ID="hfFLACShelterQRelatedDestinationID" runat="server" Value="" />
    <asp:HiddenField ID="hfFLACShelterQRelatedExpDestinationID" runat="server" Value="" />
    <asp:HiddenField ID="hfFLACShelterStepsTakenID" runat="server" Value="" />
    <asp:HiddenField ID="hfFLACShelterPourakhiServiceID" runat="server" Value="" />
    <asp:HiddenField ID="hfFLACShelterCaseFollowupID" runat="server" Value="" />
</asp:Content>
