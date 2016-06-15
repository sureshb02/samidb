<%@ Page Title="Nature of Case Report" Language="C#" MasterPageFile="~/CaseMaster.Master" AutoEventWireup="true" CodeBehind="CaseNatureReport.aspx.cs" Inherits="SaMI.Web.FLAC.Reports.CaseNatureReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-12">
        <h3>
            Nature of cases</h3>
        <asp:Panel runat="server" ID="Panel3">
            <asp:GridView ID="gvNatureOfCase" runat="server" ShowHeaderWhenEmpty="True" 
                AutoGenerateColumns="False" ShowHeader="True" CssClass="table table-hover table-condensed" ShowFooter="true">
                <Columns>
                    <asp:TemplateField HeaderText="S.N">
                        <ItemTemplate>
                            <%#Container.DataItemIndex + 1 %>.
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="District" HeaderText="Districts"/>
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
    <div class="col-md-12">
        <h3>
            Death cases</h3>
        <asp:Panel runat="server" ID="Panel1">
            <asp:GridView ID="gvDeathCases" runat="server" ShowHeaderWhenEmpty="True" 
                AutoGenerateColumns="False" ShowHeader="True" CssClass="table table-hover table-condensed" ShowFooter="true">
                <Columns>
                    <asp:TemplateField HeaderText="S.N">
                        <ItemTemplate>
                            <%#Container.DataItemIndex + 1 %>.
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="DestinationCountry" HeaderText="Destination Country"/>
                    <asp:BoundField DataField="District" HeaderText="Districts"/>
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
    <div class="col-md-12">
        <h3>
            Missing cases</h3>
        <asp:Panel runat="server" ID="Panel2">
            <asp:GridView ID="gvMissingCases" runat="server" ShowHeaderWhenEmpty="True" 
                AutoGenerateColumns="False" ShowHeader="True" CssClass="table table-hover table-condensed" ShowFooter="true">
                <Columns>
                    <asp:TemplateField HeaderText="S.N">
                        <ItemTemplate>
                            <%#Container.DataItemIndex + 1 %>.
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="DestinationCountry" HeaderText="Destination Country"/>
                    <asp:BoundField DataField="District" HeaderText="Districts"/>
                    <asp:BoundField DataField="TotalNoOfCaseReceived" HeaderText="Total no of case received"/>
                    <asp:BoundField DataField="TotalCaseSolved" HeaderText="Total Case Solved"/>
                    <asp:BoundField DataField="TotalCaseInProgress" HeaderText="Total Case In Progress"/>
                    <asp:BoundField DataField="TotalCaseClosed" HeaderText="Total Case Closed"/>
                </Columns>
            </asp:GridView>
        </asp:Panel>
    </div>


    <div class="clearfix">&nbsp;</div>
    <div class="col-md-12">
        <h3>Deportation and jail cases</h3>
        <asp:Panel runat="server" ID="Panel4">
            <asp:GridView ID="gvJailedCases" runat="server" ShowHeaderWhenEmpty="True" 
                AutoGenerateColumns="False" ShowHeader="True" CssClass="table table-hover table-condensed" ShowFooter="true">
                <Columns>
                    <asp:TemplateField HeaderText="S.N">
                        <ItemTemplate>
                            <%#Container.DataItemIndex + 1 %>.
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="DestinationCountry" HeaderText="Destination Country"/>
                    <asp:BoundField DataField="District" HeaderText="Districts"/>
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
    <div class="col-md-12">
        <h3>Health and safety related cases</h3>
        <asp:Panel runat="server" ID="Panel5">
            <asp:GridView ID="gvHealthAndSafteyCases" runat="server" ShowHeaderWhenEmpty="True" 
                AutoGenerateColumns="False" ShowHeader="True" CssClass="table table-hover table-condensed" ShowFooter="true">
                <Columns>
                    <asp:TemplateField HeaderText="S.N">
                        <ItemTemplate>
                            <%#Container.DataItemIndex + 1 %>.
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="DestinationCountry" HeaderText="Destination Country"/>
                    <asp:BoundField DataField="District" HeaderText="Districts"/>
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
    <div class="col-md-12">
        <h3>Contract Issue</h3>
        <asp:Panel runat="server" ID="Panel6">
            <asp:GridView ID="gvContractIssue" runat="server" ShowHeaderWhenEmpty="True" 
                AutoGenerateColumns="False" ShowHeader="True" CssClass="table table-hover table-condensed" ShowFooter="true">
                <Columns>
                    <asp:TemplateField HeaderText="S.N">
                        <ItemTemplate>
                            <%#Container.DataItemIndex + 1 %>.
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="DestinationCountry" HeaderText="Destination Country"/>
                    <asp:BoundField DataField="District" HeaderText="Districts"/>
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
    <div class="col-md-12">
        <h3>Destination country wise case summary</h3>
        <asp:Panel runat="server" ID="Panel7">
            <asp:GridView ID="gvDestinationCountrySummary" runat="server" ShowHeaderWhenEmpty="True" 
                AutoGenerateColumns="False" ShowHeader="True" CssClass="table table-hover table-condensed" ShowFooter="true">
                <Columns>
                    <asp:TemplateField HeaderText="S.N">
                        <ItemTemplate>
                            <%#Container.DataItemIndex + 1 %>.
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Country" HeaderText="Destination Country"/>
                    <asp:BoundField DataField="NatureOfCases" HeaderText="Nature of cases"/>
                    <asp:BoundField DataField="TotalNoOfCaseReceived" HeaderText="Total no of case received"/>
                    <asp:BoundField DataField="TotalCaseSolved" HeaderText="Total Case Solved"/>
                    <asp:BoundField DataField="TotalCaseInProgress" HeaderText="Total Case In Progress"/>
                    <asp:BoundField DataField="TotalCaseClosed" HeaderText="Total Case Closed"/>
                </Columns>
            </asp:GridView>
        </asp:Panel>
    </div>


</asp:Content>
