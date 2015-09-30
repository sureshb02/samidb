<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SaMI.Web.MasterData.GovCeilings.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<script type="text/javascript">
    $(function () {
        $("#ctl00_MainContent_txtEffectiveFrom").datepicker();
        $("#ctl00_MainContent_txtEffectvieTo").datepicker();
    });
    function ValidateInput() {
        if ($('#ctl00_MainContent_txtExpenseAmount').val() == '' || $('#ctl00_MainContent_ddlCountryID').val() == '0' || $('#ctl00_MainContent_txtEffectiveFrom').val() == '' || $('#ctl00_MainContent_txtEffectvieTo').val() == '')
            return false;
        else
            return true;
    }

    function Reset() {
        $('#ctl00_MainContent_ddlCountryID').val(0);
        $('#ctl00_MainContent_txtExpenseAmount').val('');
        $('#ctl00_MainContent_txtEffectiveFrom').val('');
        $('#ctl00_MainContent_txtEffectvieTo').val('');
        $('#ctl00_MainContent_hfGovCeilingID').val('');
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
                    <label>Country</label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlCountry" runat="server" CssClass="form-control input-sm"></asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td width="20%">
                    <label>Amount</label>
                </td>
                
                <td>
                    <asp:TextBox ID="txtExpenseAmount" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td width="20%">
                    <label>Effective From</label>
                </td>
                
                <td>
                    <asp:TextBox ID="txtEffectiveFrom" runat="server" CssClass="date_input form-control input-sm"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td width="20%">
                    <label>Effective To</label>
                </td>
                
                <td>
                    <asp:TextBox ID="txtEffectiveTo" runat="server" CssClass="date_input form-control input-sm"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td width="20%">
                    <label>&nbsp</label>
                </td>
                
                <td>
                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClientClick="return ValidateInput();" onclick="btnSave_Click" CssClass = "btn btn-default"/>
                    <input type="button" value="Reset" onclick="Reset();" class = "btn btn-default" />
                </td>
            </tr>
        </tbody>
    </table>

    <div class="clearfix"></div>

    <div>
    <asp:GridView ID="gvGovCeiling" runat="server" ShowHeaderWhenEmpty="True" OnRowCommand = "gvGovCeiling_RowCommand"
        AutoGenerateColumns="False" ShowHeader="True" CssClass="table table-striped table-hover">
    <AlternatingRowStyle BackColor="White"  />

    <Columns>
        <asp:BoundField DataField="CountryName" HeaderText="Country" />    
        <asp:BoundField DataField="ExpenseAmount" HeaderText="Expense Amount" />  
        <asp:BoundField DataField="EffectiveFrom" HeaderText="Effective From" /> 
        <asp:BoundField DataField="EffectiveTo" HeaderText="Effective To" />   
        
        <asp:TemplateField HeaderText="">
            <ItemTemplate>
                <asp:LinkButton ID="EditLinkButton" runat="server" CommandArgument='<%# Eval("GovCeilingID") %>'
                    CommandName="cmdEdit" Text="Edit"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>  
        <asp:TemplateField HeaderText="">
            <ItemTemplate>
                <asp:LinkButton ID="DeleteLinkButton" runat="server" CommandArgument='<%# Eval("GovCeilingID") %>'
                    CommandName="cmdDelete" Text="Delete" OnClientClick="return confirm('Are you sure to delete?');"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>   
                       
    </Columns>
    </asp:GridView>

    <asp:HiddenField ID="hfGovCeilingID" runat="server" Value="" />
</div>
</div>





</ContentTemplate>
</asp:UpdatePanel>

    <script type="text/javascript">
        var prm = Sys.WebForms.PageRequestManager.getInstance();
        prm.add_beginRequest(BeginRequestHandler);
        prm.add_endRequest(EndRequestHandler);

        function BeginRequestHandler(sender, args) {
            $("#ctl00_MainContent_txtEffectiveFrom").datepicker();
            $("#ctl00_MainContent_txtEffectvieTo").datepicker();
        }

        function EndRequestHandler(sender, args) {
            $(function () {
                $("#ctl00_MainContent_txtEffectiveFrom").datepicker();
                $("#ctl00_MainContent_txtEffectvieTo").datepicker();
            });

        }
    </script>

</asp:Content>
