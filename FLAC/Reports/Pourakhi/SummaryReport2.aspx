<%@ Page Title="Documents in possession | Status of route of departure | Report" Language="C#" MasterPageFile="~/CaseMaster.Master" AutoEventWireup="true" CodeBehind="SummaryReport2.aspx.cs" Inherits="SaMI.Web.FLAC.Reports.Pourakhi.SummaryReport2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-12">
        <h3>Documents in possession while return to Nepal</h3>
        <asp:Panel runat="server" ID="Panel1">
            <asp:GridView ID="gvDocumentsInPossession" runat="server" ShowHeaderWhenEmpty="True" 
                AutoGenerateColumns="False" ShowHeader="True" CssClass="table table-hover table-condensed" ShowFooter="true">
                <Columns>
                    <asp:TemplateField HeaderText="S.N">
                        <ItemTemplate>
                            <%#Container.DataItemIndex + 1 %>.
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="DocumentTypes" HeaderText="Document Types"/>
                    <asp:BoundField DataField="DocumentTotal" HeaderText="Total"/>
                </Columns>
            </asp:GridView>
        </asp:Panel>
    </div>

    <div class="clear">&nbsp;</div>
    <div class="col-md-12">
        <h3>Sumarry status of route of departure while going for foreing employment</h3>
        <asp:Panel runat="server" ID="Panel2">
            <asp:GridView ID="gvRouteOfDeparture" runat="server" ShowHeaderWhenEmpty="True" 
                AutoGenerateColumns="False" ShowHeader="True" CssClass="table table-hover table-condensed" ShowFooter="true">
                <Columns>
                    <asp:TemplateField HeaderText="S.N">
                        <ItemTemplate>
                            <%#Container.DataItemIndex + 1 %>.
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="RouteOfDeparture" HeaderText="Route of departure"/>
                    <asp:BoundField DataField="RouteOfDepartureTotal" HeaderText="Total"/>
                </Columns>
            </asp:GridView>
        </asp:Panel>
    </div>
</asp:Content>
