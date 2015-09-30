<%@ Page Title="ICC Report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReportICC.aspx.cs" Inherits="SaMI.Web.Reports.ReportICC" %>

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
    <div style="min-height: 64px;" class="page-header">
        <div data-spy="affix" data-offset-top="135" id="fix-page-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h3>ICC Report
                        </h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="col-md-12">
            <span class="col-md-3">
                <asp:Button ID="btnExportTrainingRegular" runat="server" Text="Export All" OnClick="btnExportTrainingRegular_Click"
                                CssClass="btn btn-primary" />
            </span>
        </div>
    </div>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="container" style="">
                
                <div class="col-md-12">
                    <h4>Caste Desecration</h4>
                </div>
                <div class="well" style="display: inline-block; float: left; margin: 5px; overflow: hidden;">
                    <div class="clearfix">
                    </div>
                    <div class="col-lg-10">
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
                                    <asp:DropDownList ID="ddlDistrict" runat="server" CssClass="form-control" AutoPostBack="True"
                                        OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged">
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
                    <div class="col-md-12">
                        <table width="100%" cellpadding="5" cellspacing="0" border="1" class="table table-bordered">
                            <thead style="font-weight: 100; font-size: small">
                                <tr>
                                    <td style="text-align: center">No. of Participants</td>
                                    <td style="text-align: center" colspan="4">Dalit</td>
                                    <td style="text-align: center" colspan="6">Janajati</td>
                                    <td style="text-align: center" colspan="4">Janajati Newar</td>
                                    <td style="text-align: center" colspan="4">Brahmin</td>
                                    <td style="text-align: center" colspan="4">Chhetri</td>
                                    <td style="text-align: center" colspan="2">Thakuri</td>
                                    <td style="text-align: center" colspan="2">Other Madhesh Caste and Ethnicity</td>
                                    <td style="text-align: center">Total Men</td>
                                    <td style="text-align: center">Total Women</td>
                                    <td style="text-align: center">Grand Total</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td colspan="2">Hill</td>
                                    <td colspan="2">Madhesh/Terai</td>
                                    <td colspan="2">Mountain</td>
                                    <td colspan="2">Hill</td>
                                    <td colspan="2">Madhesh/Terai</td>
                                    <td colspan="2">Discriminated</td>
                                    <td colspan="2">Non Discriminated</td>
                                    <td colspan="2">Hill</td>
                                    <td colspan="2">Madhesh/Terai</td>
                                    <td colspan="2">Hill</td>
                                    <td colspan="2">Madhesh/Terai</td>
                                    <td colspan="2">Hill</td>
                                    <td colspan="2"></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>M</td>
                                    <td>W</td>
                                    <td>M</td>
                                    <td>W</td>
                                    <td>M</td>
                                    <td>W</td>
                                    <td>M</td>
                                    <td>W</td>
                                    <td>M</td>
                                    <td>W</td>
                                    <td>M</td>
                                    <td>W</td>
                                    <td>M</td>
                                    <td>W</td>
                                    <td>M</td>
                                    <td>W</td>
                                    <td>M</td>
                                    <td>W</td>
                                    <td>M</td>
                                    <td>W</td>
                                    <td>M</td>
                                    <td>W</td>
                                    <td>M</td>
                                    <td>W</td>
                                    <td>M</td>
                                    <td>W</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblNoOfParticipantsDistrict" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblDalitHillMaleDistrict" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblDalitHillFemaleDistrict" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblDalitMadheshMaleDistrict" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblDalitMadheshFemaleDistrict" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblJanajatiMountainMaleDistrict" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblJanajatiMountainFemaleDistrict" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblJanajatiHillMaleDistrict" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblJanajatiHillFemaleDistrict" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblJanajatiMadheshMaleDistrict" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblJanajatiMadheshFemaleDistrict" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblJanajatiNewarDiscMaleDistrict" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblJanajatiNewarDiscFemaleDistrict" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblJanajatiNewarNonDiscMaleDistrict" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblJanajatiNewarNonDiscFemaleDistrict" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblBrahminHillMaleDistrict" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblBrahminHillFemaleDistrict" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblBrahminMadheshMaleDistrict" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblBrahminMadheshFemaleDistrict" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblChhetriHillMaleDistrict" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblChhetriHillFemaleDistrict" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblChhetriMadheshMaleDistrict" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblChhetriMadheshFemaleDistrict" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblThakuriHillMaleDistrict" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblThakuriHillFemaleDistrict" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblOtherMaleDistrict" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblOtherFemaleDistrict" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblNoOfMenDistrict" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblNoOfFemaleDistrict" runat="server"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblGrandTotalDistrict" runat="server"></asp:Label></td>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                </div>

                 </div>
        </ContentTemplate>
    </asp:UpdatePanel>
                              

                <%--Template 4 Total visitors District--%>
                <asp:UpdatePanel ID="visitorsDistrict" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="col-md-12">
                            <h4>Total Visitors</h4>
                        </div>
                        <div class="well" style="display: inline-block; float: left; margin: 5px; overflow: hidden; width:510px">
                            <div class="clearfix"></div>
                            <div class="col-lg-6">
                                <table width="100%" cellpadding="5" cellspacing="0">
                                    <tr>
                                        <td>
                                            <asp:DropDownList ID="ddlDistrictVisitors" runat="server" CssClass="form-control" AutoPostBack="True"
                                                OnSelectedIndexChanged="ddlDistrictVisitors_SelectedIndexChanged">
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
                            <div class="col-md-12">
                                <asp:Label ID="lblTableYearlySummary" runat="server">

                                </asp:Label>
                                
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>


    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
    <div class="col-md-12">
                            <h4>Means  of referrel</h4>
                        </div>
                        <div class="well" style="display: inline-block; float: left; margin: 5px; overflow: hidden; width:610px">
                            <div class="clearfix"></div>
                            <div class="col-lg-6">
                                <table width="100%" cellpadding="5" cellspacing="0">
                                    <tr>
                                        <td>
                                            <asp:DropDownList ID="ddlReferalDistrict" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlReferalDistrict_SelectedIndexChanged"
                                                >
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
                            <div class="col-md-12">
                                <asp:Label ID="lblMeansOfReferal" runat="server">

                                </asp:Label>
                                
                            </div>
                        </div>
    </ContentTemplate>
                </asp:UpdatePanel>       

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
