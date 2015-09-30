<%@ Page Title="Summary Phone Follow Up Report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReportPhoneFollowUp.aspx.cs" Inherits="SaMI.Web.Reports.ReportPhoneFollowUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">

        $(document).ready(function () {
            $('#ctl00_MainContent_txtRegistrationDateFrom').datepicker({ dateFormat: 'yy-mm-dd', changeYear: true, changeMonth: true });
            $('#ctl00_MainContent_txtRegistrationDateTo').datepicker({ dateFormat: 'yy-mm-dd', changeYear: true, changeMonth: true });

        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager EnablePartialRendering="true" ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="clearfix">
    </div>
    <div style="min-height: 64px; margin:10px 0px 10px;" class="page-header">
        <div data-spy="affix" data-offset-top="135" id="fix-page-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h3>Phone Follow Up Report</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container" style="">
        <div class="row">
            <div class="clearfix">
            </div>
            <div class="col-md-12">
                

                <div class="col-md-12">
                    <div style="min-height: 10px; margin:0px 0px 10px;" class="page-header">
                        <div data-spy="affix" data-offset-top="10" id="fix-page-header">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h4>Phone Follow Up (Year and District)</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <asp:UpdatePanel ID="UpdatePanelYearAndDistrict" runat="server">
                        <ContentTemplate>


                    <div class="col-lg-8">
                         <table width="100%" cellpadding="5" cellspacing="0">
                            <tr>
                                <td>
                                    <asp:DropDownList ID="ddlYearRange" runat="server" CssClass="form-control" AutoPostBack="True"
                                OnSelectedIndexChanged="txtRegistrationDate_TextChanged">
                            </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtRegistrationDateFrom" runat="server" CssClass="form-control"
                                Placeholder="[Registration From]" AutoPostBack="True" OnTextChanged="txtRegistrationDate_TextChanged"></asp:TextBox>
                                </td>
                                <td>
                                     <asp:TextBox ID="txtRegistrationDateTo" runat="server" CssClass="form-control" Placeholder="[Registration To]"
                                AutoPostBack="True" OnTextChanged="txtRegistrationDate_TextChanged"></asp:TextBox>
                                </td>

                                <td>
                                    <asp:DropDownList ID="ddlDistrict" runat="server" CssClass="form-control" 
                            OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged" AutoPostBack="true">
                            </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <br />
                                </td>
                            </tr>
                        </table>
                        
                    </div>

                    <div class="clearfix"></div>

                    <div class="col-lg-8">
                     
                    
                            <table width="100%" cellpadding="5" cellspacing="0" border="1">
                                <thead style="font-weight: 100; font-size: small">
                                    <tr>
                                        <td>Results</td>
                                        <td>Men</td>
                                        <td>Women</td>
                                        <td>Total Number</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Number of clients follow up
                                        </td>
                                        <td style="width: 60px">
                                            <asp:Label ID="lblFollowUpMaleDistrict" runat="server"></asp:Label>
                                        </td>
                                        <td style="width: 60px">
                                            <asp:Label ID="lblFollowUpFemaleDistrict" runat="server"></asp:Label>
                                        </td>
                                        <td style="width: 70px">
                                            <asp:Label ID="lblFollowUpTotalDistrict" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Number of clients left for foreign employment 
                                        </td>
                                        <td>
                                            <asp:Label ID="lblLeftForFEMaleDistrict" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblLeftForFEFemaleDistrict" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblLeftForFETotalDistrict" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Number of clients who took skills training  
                                        </td>
                                        <td>
                                            <asp:Label ID="lblSkillTraineeMaleDistrict" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblSkillTraineeFemaleDistrict" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblSkillTraineeTotalDistrict" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Number of clients who left documents at home  
                                        </td>
                                        <td>
                                            <asp:Label ID="lblLeftDocumentsMaleDistrict" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblLeftDocumentsFemaleDistrict" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblLeftDocumentsTotalDistrict" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Number of clients who asked for receipts  
                                        </td>
                                        <td>
                                            <asp:Label ID="lblAskedReceiptsMaleDistrict" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblAskedReceiptsFemaleDistrict" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblAskedReceiptsTotalDistrict" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Number of clients who really got receipts   
                                        </td>
                                        <td>
                                            <asp:Label ID="lblGotReceiptsMaleDistrict" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblGotReceiptsFemaleDistrict" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblGotReceiptsTotalDistrict" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Number of clients who paid less    
                                        </td>
                                        <td>
                                            <asp:Label ID="lblPaidLessMaleDistrict" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblPaidLessFemaleDistrict" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblPaidLessTotalDistrict" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>No of clients who paid  within the govt. ceiling    
                                        </td>
                                        <td>
                                            <asp:Label ID="lblPaidWithinGovtCeilingMaleDistrict" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblPaidWithinGovtCeilingFemaleDistrict" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblPaidWithinGovtCeilingTotalDistrict" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>No of clients who have not yet decided     
                                        </td>
                                        <td>
                                            <asp:Label ID="lblNotDecidedMaleDistrict" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblNotDecidedFemaleDistrict" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblNotDecidedTotalDistrict" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>No of clients who have not left yet       
                                        </td>
                                        <td>
                                            <asp:Label ID="lblNotLeftMaleDistrict" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblNotLeftFemaleDistrict" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblNotLeftTotalDistrict" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Number of clients decided not to go       
                                        </td>
                                        <td>
                                            <asp:Label ID="lblNotDecidedToGoMaleDistrict" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblNotDecidedToGoFemaleDistrict" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblNotDecidedToGoTotalDistrict" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        

                    </div>



                            </ContentTemplate>
                    </asp:UpdatePanel>
                  
                </div>
            
                    
            </div>
        </div>
    </div>

    <script type="text/javascript">

        var prm = Sys.WebForms.PageRequestManager.getInstance();
        prm.add_beginRequest(BeginRequestHandler);
        prm.add_endRequest(EndRequestHandler);

        function BeginRequestHandler(sender, args) {
            $('#ctl00_MainContent_txtRegistrationDateFrom').datepicker({ dateFormat: 'yy-mm-dd', changeYear: true, changeMonth: true });
            $('#ctl00_MainContent_txtRegistrationDateTo').datepicker({ dateFormat: 'yy-mm-dd', changeYear: true, changeMonth: true });

        }

        function EndRequestHandler(sender, args) {
            $('#ctl00_MainContent_txtRegistrationDateFrom').datepicker({ dateFormat: 'yy-mm-dd', changeYear: true, changeMonth: true });
            $('#ctl00_MainContent_txtRegistrationDateTo').datepicker({ dateFormat: 'yy-mm-dd', changeYear: true, changeMonth: true });

        }
    </script>

</asp:Content>
