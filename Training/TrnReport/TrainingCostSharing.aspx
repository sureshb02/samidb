﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Trainings.Master" AutoEventWireup="true"
    CodeBehind="TrainingCostSharing.aspx.cs" Inherits="SaMI.Web.Training.TrnReport.TrainingCostSharing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $('#ctl00_TrainingBody_txtSearchText').on('keypress', function (e) {
                if (e.keyCode == 13 || e.keyCode == '13') {
                    e.preventDefault();
                    $('#ctl00_TrainingBody_btnSearch').trigger("click");
                }
            });

            $('#ctl00_TrainingBody_txtRegistrationDateFrom').datepicker({ dateFormat: 'yy-mm-dd', changeYear: true, changeMonth: true });
            $('#ctl00_TrainingBody_txtRegistrationDateTo').datepicker({ dateFormat: 'yy-mm-dd', changeYear: true, changeMonth: true });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TrainingBody" runat="server">

    <div class="col-lg-9">
        <div class="col-md-12 pull-left" style="margin-left: -5px; margin-top: 16px">
            <span class="col-md-3">
                <asp:DropDownList ID="ddlYearRange" runat="server" CssClass="form-control" AutoPostBack="True"
                    OnSelectedIndexChanged="txtRegistrationDate_TextChanged">
                </asp:DropDownList>
            </span>
            <span class="col-md-3">
                <asp:TextBox ID="txtRegistrationDateFrom" runat="server" CssClass="form-control"
                    Placeholder="[Date From]" AutoPostBack="True" OnTextChanged="txtRegistrationDate_TextChanged"></asp:TextBox>
            </span>
            
            <span class="col-md-3">
                <asp:TextBox ID="txtRegistrationDateTo" runat="server" CssClass="form-control" Placeholder="[Date To]"
                    AutoPostBack="True" OnTextChanged="txtRegistrationDate_TextChanged"></asp:TextBox>
            </span>
        </div>
        <div class="clearfix"></div>
        <div class="col-md-12 pull-left" style="margin-left: -5px; margin-top: 8px">
            <span class="col-md-2">
                <asp:DropDownList ID="ddlEthnicityCategory" AutoPostBack="true" CssClass="form-control input-sm" runat="server" OnSelectedIndexChanged="ddlEthnicityCategory_SelectedIndexChanged">
		            <asp:ListItem Value="" Text="[Category]"></asp:ListItem>
		            <asp:ListItem Value="A" Text="A"></asp:ListItem>
		            <asp:ListItem Value="B" Text="B"></asp:ListItem>
		            <asp:ListItem Value="C" Text="C"></asp:ListItem>
	            </asp:DropDownList>
            </span>
            <span class="col-md-2">
                <asp:DropDownList ID="ddlEthnicity" runat="server" CssClass="form-control" AutoPostBack="True"
                    OnSelectedIndexChanged="ddlEthnicity_SelectedIndexChanged">
                </asp:DropDownList>
            </span><span class="col-md-2">
                <asp:DropDownList ID="ddlDistrict" runat="server" CssClass="form-control" AutoPostBack="True"
                    OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged">
                </asp:DropDownList>
            </span><span class="col-md-2">
                <asp:DropDownList ID="ddlTrainingEvent" runat="server" CssClass="form-control" AutoPostBack="True"
                    OnSelectedIndexChanged="ddlTrainingEvent_SelectedIndexChanged">
                </asp:DropDownList>
            </span><span class="col-md-3">
                <asp:Button ID="btnExportTrainingRegular" runat="server" Text="Export" OnClick="btnExportTrainingRegular_Click"
                    CssClass="btn btn-primary" />
            </span>
        </div>
        <div class="clearfix"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 pull-right" style="margin-top: 16px">
                    <div class="col-md-9">
                        <asp:TextBox ID="txtSearchText" runat="server" CssClass="form-control" placeholder="Name/EventId/Batch"></asp:TextBox>
                    </div>
                    <div class="col-md-2">
                        <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-default"
                            OnClick="btnSearch_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="clearfix">
        &nbsp
    </div>
    <div class="clearfix">
        &nbsp
    </div>
    <div class="col-lg-12">
        <asp:CheckBoxList ID="chkOptions" runat="server" OnSelectedIndexChanged="chkOptions_CheckedChanged"
            AutoPostBack="true" RepeatDirection="Horizontal">
        </asp:CheckBoxList>
    </div>
    <h6 class="col-md-2 pull-right" style="margin-top: 10px">
                <asp:Label ID="lblNoOfRecords" runat="server" Width="80"></asp:Label>
    </h6>
    <div class="col-lg-12" style="margin-top: 8px; margin-left: 0px; overflow:scroll">
        <asp:Panel runat="server" ID="Panel1">
            <asp:GridView ID="gdvTrainingCostSharingReport" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-hover"
                AllowPaging="true" PageSize="20" OnPageIndexChanging="gdvTrainingCostSharingReport_PageIndexChanging"
                ShowHeader="true" ShowHeaderWhenEmpty="true" PagerStyle-CssClass="paging" GridLines="None">
                <PagerSettings Mode="NumericFirstLast" PageButtonCount="10" FirstPageText="<<" LastPageText=">>"
                    NextPageText="&gt;" PreviousPageText="<" />
                <Columns>
                    <asp:TemplateField HeaderText="S.N.">
                        <ItemTemplate>
                            <%#Container.DataItemIndex + 1 %>.
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </asp:Panel>
    </div>
</asp:Content>
