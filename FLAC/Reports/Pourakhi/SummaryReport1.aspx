<%@ Page Title="Women Clients | Legal Status" Language="C#" MasterPageFile="~/CaseMaster.Master" AutoEventWireup="true" CodeBehind="SummaryReport1.aspx.cs" Inherits="SaMI.Web.FLAC.Reports.Pourakhi.SummaryReport1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-12">
        <h3>Summary of women clients in shelter house</h3>
        <asp:Panel runat="server" ID="Panel3">
            <asp:GridView ID="gvWomenClients" runat="server" ShowHeaderWhenEmpty="True" 
                AutoGenerateColumns="False" ShowHeader="True" CssClass="table table-hover table-condensed" ShowFooter="true">
                <Columns>
                    <asp:TemplateField HeaderText="S.N">
                        <ItemTemplate>
                            <%#Container.DataItemIndex + 1 %>.
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="District" HeaderText="Districts"/>
                    <asp:TemplateField HeaderText="Total">
                            <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("DistrictTotal").ToString() == "0"? "" : Eval("DistrictTotal") %>'></asp:Label>
                            </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="DestinationCountry" HeaderText="Destination country"/>
                    <asp:BoundField DataField="DestinationCountryTotal" HeaderText="Total"/>
                </Columns>
            </asp:GridView>
        </asp:Panel>
    </div>

    <div class="col-md-12">
        <h3>Legal status of shelter clients</h3>
        <asp:Panel runat="server" ID="Panel1">
            <asp:GridView ID="gvLegalStatus" runat="server" ShowHeaderWhenEmpty="True" 
                AutoGenerateColumns="False" ShowHeader="True" CssClass="table table-hover table-condensed" ShowFooter="true">
                <Columns>
                    <asp:TemplateField HeaderText="S.N">
                        <ItemTemplate>
                            <%#Container.DataItemIndex + 1 %>.
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="DocumentedNepal" HeaderText="Documented in Nepal"/>
                    <asp:BoundField DataField="UndocumentedNepal" HeaderText="UndocumentedNepal"/>
                    <asp:BoundField DataField="NepalTotal" HeaderText="Total"/>
                    <asp:BoundField DataField="DocumentedDestination" HeaderText="Documented in Destination"/>
                    <asp:BoundField DataField="UnDocumentedDestination" HeaderText="Undocumented in Destination"/>
                    <asp:BoundField DataField="DestinationTotal" HeaderText="Total"/>
                </Columns>
            </asp:GridView>
        </asp:Panel>
    </div>
</asp:Content>
