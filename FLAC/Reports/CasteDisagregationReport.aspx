<%@ Page Title="Caste Disagregation Report | PNCC" Language="C#" MasterPageFile="~/CaseMaster.Master" AutoEventWireup="true" CodeBehind="CasteDisagregationReport.aspx.cs" Inherits="SaMI.Web.FLAC.Reports.CasteDisagregationReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-12">
        <table width="100%" cellpadding="5" cellspacing="0" border="1" class="table table-bordered">
            <thead style="font-weight: 100; font-size: small">
                <tr>
                    <td style="text-align: center">&nbsp;</td>
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
                    <td>Total</td>
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
</asp:Content>
