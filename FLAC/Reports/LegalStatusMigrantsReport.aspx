<%@ Page Title="Legal Status of Migrants Report" Language="C#" MasterPageFile="~/CaseMaster.Master" AutoEventWireup="true" CodeBehind="LegalStatusMigrantsReport.aspx.cs" Inherits="SaMI.Web.FLAC.Reports.LegalStatusMigrantsReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-12">
        <h3>Legal status of migrants ( documented status in Nepal)</h3>
        <asp:Panel runat="server" ID="Panel3">
            <asp:GridView ID="gvDocumentedNepal" runat="server" ShowHeaderWhenEmpty="True" 
                AutoGenerateColumns="False" ShowHeader="True" CssClass="table table-hover table-condensed" ShowFooter="true">
                <Columns>
                    <asp:TemplateField HeaderText="S.N">
                        <ItemTemplate>
                            <%#Container.DataItemIndex + 1 %>.
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="NatureOfCases" HeaderText="Nature of cases"/>
                    <asp:BoundField DataField="TotalNoOfCaseReceived" HeaderText="Total no of case received"/>
                    <asp:BoundField DataField="TotalCaseSolved" HeaderText="Total Case Solved"/>
                    <asp:BoundField DataField="TotalCaseInProgress" HeaderText="Total Case In Progress"/>
                    <asp:BoundField DataField="TotalCaseClosed" HeaderText="Total Case Closed"/>
                </Columns>
            </asp:GridView>
        </asp:Panel>
    </div>

    <div class="col-md-12">
        <h3>Legal status of migrants ( undocumented status in Nepal)</h3>
        <asp:Panel runat="server" ID="Panel1">
            <asp:GridView ID="gvUndocumentedNepal" runat="server" ShowHeaderWhenEmpty="True" 
                AutoGenerateColumns="False" ShowHeader="True" CssClass="table table-hover table-condensed" ShowFooter="true">
                <Columns>
                    <asp:TemplateField HeaderText="S.N">
                        <ItemTemplate>
                            <%#Container.DataItemIndex + 1 %>.
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="NatureOfCases" HeaderText="Nature of cases"/>
                    <asp:BoundField DataField="TotalNoOfCaseReceived" HeaderText="Total no of case received"/>
                    <asp:BoundField DataField="TotalCaseSolved" HeaderText="Total Case Solved"/>
                    <asp:BoundField DataField="TotalCaseInProgress" HeaderText="Total Case In Progress"/>
                    <asp:BoundField DataField="TotalCaseClosed" HeaderText="Total Case Closed"/>
                </Columns>
            </asp:GridView>
        </asp:Panel>
    </div>


    <div class="col-md-12">
        <h3>Legal status of migrants ( documented status in Destination)</h3>
        <asp:Panel runat="server" ID="Panel2">
            <asp:GridView ID="gvDocumentedDestination" runat="server" ShowHeaderWhenEmpty="True" 
                AutoGenerateColumns="False" ShowHeader="True" CssClass="table table-hover table-condensed" ShowFooter="true">
                <Columns>
                    <asp:TemplateField HeaderText="S.N">
                        <ItemTemplate>
                            <%#Container.DataItemIndex + 1 %>.
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="NatureOfCases" HeaderText="Nature of cases"/>
                    <asp:BoundField DataField="TotalNoOfCaseReceived" HeaderText="Total no of case received"/>
                    <asp:BoundField DataField="TotalCaseSolved" HeaderText="Total Case Solved"/>
                    <asp:BoundField DataField="TotalCaseInProgress" HeaderText="Total Case In Progress"/>
                    <asp:BoundField DataField="TotalCaseClosed" HeaderText="Total Case Closed"/>
                </Columns>
            </asp:GridView>
        </asp:Panel>
    </div>


    <div class="col-md-12">
        <h3>Legal status of migrants ( undocumented status in Destination)</h3>
        <asp:Panel runat="server" ID="Panel4">
            <asp:GridView ID="gvUndocumentedDestination" runat="server" ShowHeaderWhenEmpty="True" 
                AutoGenerateColumns="False" ShowHeader="True" CssClass="table table-hover table-condensed" ShowFooter="true">
                <Columns>
                    <asp:TemplateField HeaderText="S.N">
                        <ItemTemplate>
                            <%#Container.DataItemIndex + 1 %>.
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="NatureOfCases" HeaderText="Nature of cases"/>
                    <asp:BoundField DataField="TotalNoOfCaseReceived" HeaderText="Total no of case received"/>
                    <asp:BoundField DataField="TotalCaseSolved" HeaderText="Total Case Solved"/>
                    <asp:BoundField DataField="TotalCaseInProgress" HeaderText="Total Case In Progress"/>
                    <asp:BoundField DataField="TotalCaseClosed" HeaderText="Total Case Closed"/>
                </Columns>
            </asp:GridView>
        </asp:Panel>
    </div>

    <div class="clearfix">&nbsp;</div>
</asp:Content>
