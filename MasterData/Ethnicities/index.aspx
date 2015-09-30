﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true"
    CodeBehind="index.aspx.cs" Inherits="SaMI.Web.MasterData.Ethnicities.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">
        function ValidateInput() {
            if ($('#ctl00_MainContent_txtEthnicityName').val() == '')
                return false;
            else
                return true;
        }

        function Reset() {
            $('#ctl00_MainContent_txtEthnicityName').val('');
            $('#ctl00_MainContent_hfEthnicityID').val('');
            $('#ctl00_MainContent_chkValidRegions_0').prop('checked', false);
            $('#ctl00_MainContent_chkValidRegions_1').prop('checked', false);
            $('#ctl00_MainContent_chkValidRegions_2').prop('checked', false);
            $('#ctl00_MainContent_chkValidRegions_3').prop('checked', false);
            $('#ctl00_MainContent_chkValidRegions_4').prop('checked', false);
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager EnablePartialRendering="true" ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePannel1" runat="server">
        <ContentTemplate>
            <div class="container" style="margin-top: 40px;">
                <table cellpadding="5" cellspacing="0" border="0" width="100%" class="table-tab">
                    <tbody>
                        <tr>
                            <td width="20%">
                                <label>
                                    Ethnicity Name:</label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtEthnicityName" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                            </td>
                        </tr>
                          <tr>
                            <td width="20%">
                                <label>
                                    Category:</label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlEthnicityCategory" CssClass="form-control input-sm" runat="server">
                                    <asp:ListItem Value="" Text="[Category]"></asp:ListItem>
                                    <asp:ListItem Value="A" Text="A"></asp:ListItem>
                                    <asp:ListItem Value="B" Text="B"></asp:ListItem>
                                    <asp:ListItem Value="C" Text="C"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>
                                    Geo-based Regions:</label>
                            </td>
                            <td>
                                <asp:CheckBoxList ID="chkValidRegions" runat="server" RepeatDirection="Horizontal">
                                </asp:CheckBoxList>
                            </td>
                        </tr>
                        <tr>
                            <td width="20%">
                                <label>
                                    &nbsp</label>
                            </td>
                            <td>
                                <asp:Button ID="btnSave" runat="server" Text="Save" OnClientClick="return ValidateInput();"
                                    OnClick="btnSave_Click" CssClass="btn btn-default" />
                                <input type="button" value="Reset" onclick="Reset();" class="btn btn-default" />
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="clearfix">
                </div>
                <div>
                    <asp:GridView ID="gvEthnicity" runat="server" ShowHeaderWhenEmpty="True" OnRowCommand="gvEthnicity_RowCommand"
                        AutoGenerateColumns="False" ShowHeader="True" CssClass="table table-striped table-hover">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="EthnicityCategory" HeaderText="Category" />
                            <asp:BoundField DataField="EthnicityName" HeaderText="Ethnicity Name" />  
                            <asp:BoundField DataField="GeoBasedRegions" HeaderText="Geo-based Regions" />                           
                            <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <asp:LinkButton ID="EditLinkButton" runat="server" CommandArgument='<%# Eval("EthnicityID") %>'
                                        CommandName="cmdEdit" Text="Edit"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <asp:LinkButton ID="DeleteLinkButton" runat="server" CommandArgument='<%# Eval("EthnicityID") %>'
                                        CommandName="cmdDelete" Text="Delete" OnClientClick="return confirm('Are you sure to delete?');"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:HiddenField ID="hfEthnicityID" runat="server" Value="" />
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
