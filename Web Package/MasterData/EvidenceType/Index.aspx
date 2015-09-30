﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SaMI.Web.MasterData.EvidenceType.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<script type="text/javascript">
    function ValidateInput() {
        if ($('#ctl00_MainContent_txtEvidenceTypeDesc').val() == '')
            return false;
        else
            return true;
    }

    function Reset() {
        $('#ctl00_MainContent_txtEvidenceTypeDescc').val('');
        $('#ctl00_MainContent_hfEvidenceTypeID').val('');
    }
</script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<asp:ScriptManager EnablePartialRendering="true" ID="ScriptManager2" runat="server"></asp:ScriptManager>
<asp:UpdatePanel ID="UpadatePanel1" runat="server">
<ContentTemplate>

<div class="container" style="margin-top:40px;">
    <table cellpadding="5" cellspacing="0" border="0" width="100%" class="table-tab">
        <tbody>
            <tr>
                <td width="20%">
                    <label>Evidence Type</label>
                </td>
                
                <td>
                    <asp:TextBox ID="txtEvidenceTypeDesc" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td width="20%">
                    <label>&nbsp</label>
                </td>
                
                <td>
                    <asp:Button ID="btnSave" runat="server" Text="Save" onclick="btnSave_Click" OnClientClick="return ValidateInput();"  CssClass = "btn btn-default"/>
                    <input type="button" value="Reset" onclick="Reset();"   class = "btn btn-default"/>

                </td>
            </tr>
        </tbody>
    </table>

    <div class="clearfix"></div>

    <div>
    <asp:GridView ID="gvEvidenceType" runat="server" ShowHeaderWhenEmpty="True" OnRowCommand = "gvEvidenceType_RowCommand"
        AutoGenerateColumns="False" ShowHeader="True" CssClass="table table-striped table-hover">
    <AlternatingRowStyle BackColor="White"  />

    <Columns>
        <asp:BoundField DataField="EvidenceTypeDesc" HeaderText="Evidence Type" />          
        <asp:TemplateField HeaderText="">
            <ItemTemplate>
                <asp:LinkButton ID="EditLinkButton" runat="server" CommandArgument='<%# Eval("EvidenceTypeID") %>'
                    CommandName="cmdEdit" Text="Edit"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>  
        <asp:TemplateField HeaderText="">
            <ItemTemplate>
                <asp:LinkButton ID="DeleteLinkButton" runat="server" CommandArgument='<%# Eval("EvidenceTypeID") %>'
                    CommandName="cmdDelete" Text="Delete" OnClientClick="return confirm('Are you sure to delete?');"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>    
                
    </Columns>
    </asp:GridView>

    <asp:HiddenField ID="hfEvidenceTypeID" runat="server" Value="" />
</div>
</div>
</ContentTemplate>
</asp:UpdatePanel>
</asp:Content>

