<%@ Page Title="Summary Report | PNCC" Language="C#" MasterPageFile="~/CaseMaster.Master" AutoEventWireup="true" CodeBehind="SummaryReport.aspx.cs" Inherits="SaMI.Web.FLAC.Reports.SummaryReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-md-12">
        <h3>
            Summary of case received</h3>
        <asp:Panel runat="server" ID="Panel3">
            <asp:GridView ID="gvSummaryCaseReceived" runat="server" ShowHeaderWhenEmpty="True" 
                AutoGenerateColumns="False" ShowHeader="True" CssClass="table table-hover table-condensed">
                <Columns>
                    <asp:BoundField DataField="Districts" HeaderText="Districts"/>
                    <asp:BoundField DataField="TotalNoOfCaseReceived" HeaderText="Total no of case received"/>
                    <asp:BoundField DataField="TotalCaseSolved" HeaderText="Total Case Solved"/>
                    <asp:BoundField DataField="TotalCaseInProgress" HeaderText="Total Case In Progress"/>
                    <asp:BoundField DataField="TotalCaseClosed" HeaderText="Total Case Closed"/>
                    <asp:BoundField DataField="TotalIndividualCaseReceived" HeaderText="Total Individual Case Received"/>
                    <asp:BoundField DataField="TotalGroupCaseReceived" HeaderText="Total Group Case Received"/>
                </Columns>
            </asp:GridView>
        </asp:Panel>

        <div class="clearfix">&nbsp;</div>
        <asp:Panel runat="server" ID="Panel1">
            <asp:GridView ID="gvCaseReceived" runat="server" ShowHeaderWhenEmpty="True" 
                AutoGenerateColumns="False" ShowHeader="True" CssClass="table table-hover table-condensed">
                <Columns>
                    <asp:TemplateField HeaderText="S.N">
                        <ItemTemplate>
                            <%#Container.DataItemIndex + 1 %>.
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="District" HeaderText="Districts"/>
                    <asp:BoundField DataField="TotalNoOfCaseReceived" HeaderText="Total no of case received"/>
                    <asp:BoundField DataField="TotalCaseSolved" HeaderText="Total Case Solved"/>
                    <asp:BoundField DataField="TotalCaseInProgress" HeaderText="Total Case In Progress"/>
                    <asp:BoundField DataField="TotalCaseClosed" HeaderText="Total Case Closed"/>
                    <asp:BoundField DataField="TotalIndividualCaseReceived" HeaderText="Total Individual Case Received"/>
                    <asp:BoundField DataField="TotalGroupCaseReceived" HeaderText="Total Group Case Received"/>
                </Columns>
            </asp:GridView>
        </asp:Panel>
    </div>

    <div class="clearfix">&nbsp;</div>
    
    <div class="col-md-12">
        <h3>
            Summary of sex disagregation</h3>
        <asp:Panel runat="server" ID="Panel4">
            <asp:GridView ID="gvSummarySexDisagregation" runat="server" ShowHeaderWhenEmpty="True" 
                AutoGenerateColumns="False" ShowHeader="True" CssClass="table table-hover table-condensed">
                <Columns>
                    <asp:BoundField DataField="Districts" HeaderText="Districts"/>
                    <asp:BoundField DataField="TotalMenWomen" HeaderText="Total No Of CaseReceived"/>
                    <asp:BoundField DataField="TotalMen" HeaderText="Men"/>
                    <asp:BoundField DataField="TotalWomen" HeaderText="Women"/>
                    <asp:BoundField DataField="TotalCaseSolved" HeaderText="Total Case Solved"/>
                    <asp:BoundField DataField="TotalCaseSolvedIndividual" HeaderText="Total Case Solved Individual"/>
                    <asp:BoundField DataField="TotalCaseSolvedIndividualMen" HeaderText="Men"/>
                    <asp:BoundField DataField="TotalCaseSolvedIndividualWomen" HeaderText="Women"/>
                    <asp:BoundField DataField="TotalCaseSolvedGroup" HeaderText="Total Case Solved in Group"/>
                    <asp:BoundField DataField="TotalCaseSolvedGroupMen" HeaderText="Men"/>
                    <asp:BoundField DataField="TotalCaseSolvedGroupWomen" HeaderText="Women"/>
                </Columns>
            </asp:GridView>
        </asp:Panel>

        <div class="clearfix">&nbsp;</div>
        <asp:Panel runat="server" ID="Panel2">
            <asp:GridView ID="gvSexDisagregation" runat="server" ShowHeaderWhenEmpty="True" 
                AutoGenerateColumns="False" ShowHeader="True" CssClass="table table-hover table-condensed">
                <Columns>
                    <asp:TemplateField HeaderText="S.N">
                        <ItemTemplate>
                            <%#Container.DataItemIndex + 1 %>.
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="District" HeaderText="Districts"/>
                    <asp:BoundField DataField="TotalMenWomen" HeaderText="Total No Of CaseReceived"/>
                    <asp:BoundField DataField="TotalMen" HeaderText="Men"/>
                    <asp:BoundField DataField="TotalWomen" HeaderText="Women"/>
                    <asp:BoundField DataField="TotalCaseSolved" HeaderText="Total Case Solved"/>
                    <asp:BoundField DataField="TotalCaseSolvedIndividual" HeaderText="Total Case Solved Individual"/>
                    <asp:BoundField DataField="TotalCaseSolvedIndividualMen" HeaderText="Men"/>
                    <asp:BoundField DataField="TotalCaseSolvedIndividualWomen" HeaderText="Women"/>
                    <asp:BoundField DataField="TotalCaseSolvedGroup" HeaderText="Total Case Solved in Group"/>
                    <asp:BoundField DataField="TotalCaseSolvedGroupMen" HeaderText="Men"/>
                    <asp:BoundField DataField="TotalCaseSolvedGroupWomen" HeaderText="Women"/>
                </Columns>
            </asp:GridView>
        </asp:Panel>
    </div>
</asp:Content>
