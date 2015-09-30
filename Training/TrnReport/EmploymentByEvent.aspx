<%@ Page Title="" Language="C#" MasterPageFile="~/Trainings.Master" AutoEventWireup="true" CodeBehind="EmploymentByEvent.aspx.cs" Inherits="SaMI.Web.Training.TrnReport.EmploymentByEvent" %>
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

        $('#ctl00_TrainingBody_txtRegistrationDateFrom').datepicker({ dateFormat: 'yy-mm-dd', changeYear: true, changeMonth: true });
        $('#ctl00_TrainingBody_txtRegistrationDateTo').datepicker({ dateFormat: 'yy-mm-dd', changeYear: true, changeMonth: true });
    </script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="TrainingBody" runat="server">

    <div class="col-lg-9">
        
        <div class="clearfix"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12 pull-right" style="margin-top: 16px">
                    <div class="col-md-3">
                        <asp:TextBox ID="txtSearchText" required="required" runat="server" CssClass="form-control" placeholder="Event ID"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-default"
                            OnClick="btnSearch_Click" />
                    </div>
                    <div class="col-md-3">
                        <asp:Button ID="btnExportEmploymentRegular" runat="server" Text="Export" OnClick="btnExportEmploymentRegular_Click"
                    CssClass="btn btn-primary" />
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
    <div class="col-lg-12" style="margin-top: 8px; margin-left: 0px; overflow:scroll"">
        <asp:Panel runat="server" ID="Panel1">
            <asp:GridView ID="gdvEmploymentRegularReport" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-hover"
                AllowPaging="true" PageSize="20" OnPageIndexChanging="gdvEmploymentRegularReport_PageIndexChanging"
                ShowHeader="true" ShowHeaderWhenEmpty="true" PagerStyle-CssClass="paging" GridLines="None">
                <PagerSettings Mode="NumericFirstLast" PageButtonCount="10" FirstPageText="<<" LastPageText=">>"
                    NextPageText="&gt;" PreviousPageText="<" />
                <Columns>
                    <asp:TemplateField HeaderText="S.N.">
                        <ItemTemplate>
                            <%#Container.DataItemIndex + 1 %>.
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="Name" HeaderText="Name of Trainee" />
                    <asp:BoundField DataField="EthnicityCategory" HeaderText="Cat" />
                    <asp:BoundField DataField="Gender" HeaderText="Gen" />
                    <asp:BoundField DataField="DistrictName" HeaderText="District" />
                    <asp:BoundField DataField="VDCName" HeaderText="VDC" />
                    <asp:BoundField DataField="EmploymentType" HeaderText="Employement Type" />
                    <asp:BoundField DataField="Organization" HeaderText="Employed Organization" />
                    <asp:BoundField DataField="CountryName" HeaderText="Employment Country" />
                    <asp:TemplateField HeaderText="Departure Date">
                        <ItemTemplate>
                            <asp:Label ID="lblDepartureDate" Text='<%# ConvertDepartureDate(Eval("DepartureDate").ToString()) %>'
                                runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Salary" HeaderText="Salary" />
                    <asp:BoundField DataField="EmploymentStatus" HeaderText="Status" />

                </Columns>
            </asp:GridView>
        </asp:Panel>
    </div>
</asp:Content>
