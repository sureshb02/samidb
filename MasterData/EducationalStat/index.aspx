﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SaMI.Web.MasterData.EducationalStat.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<script type="text/javascript">
    function ValidateInput() {
        if ($('#ctl00_MainContent_txtEducationalStatusDesc').val() == '')
            return false;
        else
            return true;
    }

    function Reset() {
        $('#ctl00_MainContent_txtEducationalStatusDesc').val('');
        $('#ctl00_MainContent_hfEducationalStatusID').val('');
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<asp:ScriptManager EnablePartialRendering="true" ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePannel1" runat="server">
<ContentTemplate>
<div class="container" style="margin-top:40px;">
<table cellpadding="5" cellspacing="0" border="0" width="100%" class="table-tab">
        <tbody>
            <tr>
                <td width="20%">
                    <label>Educational Status:</label>
                </td>
                
                <td>
                    <asp:TextBox ID="txtEducationalStatusDesc" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td width="20%">
                    <label>&nbsp</label>
                </td>
                
                <td>
                    <asp:Button ID="btnSave" runat="server" Text="Save"  OnClientClick="return ValidateInput();" onclick="btnSave_Click" CssClass = "btn btn-default"    />
                    <input type="button" value="Reset" onclick="Reset();" class = "btn btn-default"  />
                </td>
            </tr>
        </tbody>
    </table>

<div class="clearfix"></div>

<div>
    <asp:GridView ID="gvEducationalStatus" runat="server" ShowHeaderWhenEmpty="True" OnRowCommand = "gvEducationalStatus_RowCommand"
        AutoGenerateColumns="False" ShowHeader="True" CssClass="table table-striped table-hover">
    <AlternatingRowStyle BackColor="White"  />

    <Columns>
        <asp:BoundField DataField="EducationalStatusDesc" HeaderText="Educational Status" />    
            
            <asp:TemplateField HeaderText="">
            <ItemTemplate>
                <asp:LinkButton ID="EditLinkButton" runat="server" CommandArgument='<%# Eval("EducationalStatusID") %>'
                    CommandName="cmdEdit" Text="Edit"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>  
        <asp:TemplateField HeaderText="">
            <ItemTemplate>
                <asp:LinkButton ID="DeleteLinkButton" runat="server" CommandArgument='<%# Eval("EducationalStatusID") %>'
                    CommandName="cmdDelete" Text="Delete" OnClientClick="return confirm('Are you sure to delete?');"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>      
                   
    </Columns>
    </asp:GridView>
    <asp:HiddenField ID="hfEducationalStatusID" runat="server" Value="" />  
</div>
</div>





</ContentTemplate>
</asp:UpdatePanel>
</asp:Content>
