<%@ Page Title="Education, Age, Martial Status Report" Language="C#" MasterPageFile="~/CaseMaster.Master" AutoEventWireup="true" CodeBehind="SummaryReport3.aspx.cs" Inherits="SaMI.Web.FLAC.Reports.Pourakhi.Summary3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-12">
     <div class="col-md-4">
        <h3>Education Summary</h3>
        <asp:Panel runat="server" ID="Panel1">
            <asp:GridView ID="gvEducationStatus" runat="server" ShowHeaderWhenEmpty="True" 
                AutoGenerateColumns="False" ShowHeader="True" CssClass="table table-hover table-condensed" ShowFooter="true">
                <Columns>
                    <asp:TemplateField HeaderText="S.N">
                        <ItemTemplate>
                            <%#Container.DataItemIndex + 1 %>.
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="EducationStatus" HeaderText="Education Status"/>
                    <asp:BoundField DataField="Total" HeaderText="Total"/>
                </Columns>
            </asp:GridView>
        </asp:Panel>
    </div>

    <div class="col-md-4">
        <h3>Age Summary</h3>
        <asp:Panel runat="server" ID="Panel2">
            <asp:GridView ID="gvAgeStatus" runat="server" ShowHeaderWhenEmpty="True" 
                AutoGenerateColumns="False" ShowHeader="True" CssClass="table table-hover table-condensed" ShowFooter="true">
                <Columns>
                    <asp:TemplateField HeaderText="S.N">
                        <ItemTemplate>
                            <%#Container.DataItemIndex + 1 %>.
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="AgeStatus" HeaderText="Age Status"/>
                    <asp:BoundField DataField="Total" HeaderText="Total"/>
                </Columns>
            </asp:GridView>
        </asp:Panel>
    </div>

    <div class="col-md-4">
        <h3>Marital Status summary</h3>
        <asp:Panel runat="server" ID="Panel3">
            <asp:GridView ID="gvMaritalStatus" runat="server" ShowHeaderWhenEmpty="True" 
                AutoGenerateColumns="False" ShowHeader="True" CssClass="table table-hover table-condensed" ShowFooter="true">
                <Columns>
                    <asp:TemplateField HeaderText="S.N">
                        <ItemTemplate>
                            <%#Container.DataItemIndex + 1 %>.
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="MaritalStatus" HeaderText="MartialStatus"/>
                    <asp:BoundField DataField="Total" HeaderText="Total"/>
                </Columns>
            </asp:GridView>
        </asp:Panel>
    </div>
        </div>
</asp:Content>
