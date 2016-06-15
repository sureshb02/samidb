<%@ Page Title="Foreign Employment Duration | Predearutre Cost | Recruitment Process | Report" Language="C#" MasterPageFile="~/CaseMaster.Master" AutoEventWireup="true" CodeBehind="SummaryReport4.aspx.cs" Inherits="SaMI.Web.FLAC.Reports.Pourakhi.SummaryReport4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-12">
     <div class="col-md-4">
        <h3>Summary of  duration of Foreign Employment</h3>
        <asp:Panel runat="server" ID="Panel1">
            <asp:GridView ID="gvForeignEmployment" runat="server" ShowHeaderWhenEmpty="True" 
                AutoGenerateColumns="False" ShowHeader="True" CssClass="table table-hover table-condensed" ShowFooter="true">
                <Columns>
                    <asp:TemplateField HeaderText="S.N">
                        <ItemTemplate>
                            <%#Container.DataItemIndex + 1 %>.
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="ForeignEmploymentDuration" HeaderText="Duration of Foreign Employment"/>
                    <asp:BoundField DataField="Total" HeaderText="Total"/>
                </Columns>
            </asp:GridView>
        </asp:Panel>
    </div>

    <div class="col-md-4">
        <h3>Summary of predeparute cost</h3>
        <asp:Panel runat="server" ID="Panel2">
            <asp:GridView ID="gvPredepartureCost" runat="server" ShowHeaderWhenEmpty="True" 
                AutoGenerateColumns="False" ShowHeader="True" CssClass="table table-hover table-condensed" ShowFooter="true">
                <Columns>
                    <asp:TemplateField HeaderText="S.N">
                        <ItemTemplate>
                            <%#Container.DataItemIndex + 1 %>.
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="PredepartureCost" HeaderText="Predeparute cost"/>
                    <asp:BoundField DataField="Total" HeaderText="Total"/>
                </Columns>
            </asp:GridView>
        </asp:Panel>
    </div>

    <div class="col-md-4">
        <h3>Recruitment process</h3>
        <asp:Panel runat="server" ID="Panel3">
            <asp:GridView ID="gvRecruitmentProcess" runat="server" ShowHeaderWhenEmpty="True" 
                AutoGenerateColumns="False" ShowHeader="True" CssClass="table table-hover table-condensed" ShowFooter="true">
                <Columns>
                    <asp:TemplateField HeaderText="S.N">
                        <ItemTemplate>
                            <%#Container.DataItemIndex + 1 %>.
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="RecruitmentProcess" HeaderText="Recruitment process"/>
                    <asp:BoundField DataField="Total" HeaderText="Total"/>
                </Columns>
            </asp:GridView>
        </asp:Panel>
    </div>
        </div>
</asp:Content>
