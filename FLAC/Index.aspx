<%@ Page Title="Free Legal Aid & Clinic" Language="C#" MasterPageFile="~/CaseMaster.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SaMI.Web.FLAC.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="margin-top: 20px;">
        <asp:ScriptManager EnablePartialRendering="true" ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
                <div class="col-md-5">
                    <h1>
                       Case List
                    </h1>
                </div>
                
                <a name="health-and-saftey"></a>
                <div class="col-md-12">
                    <h3>
                            Health And Saftey
                        <a href="HealthNSaftey/Add.aspx">
                            <span class="btn btn-default">Add</span>
                        </a>
                    </h3>
                </div>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                          <div class="col-md-12">
                                 <asp:GridView ID="gvFLACHealthNSaftey" runat="server" ShowHeaderWhenEmpty="True" AutoGenerateColumns="False"
                        ShowHeader="True" CssClass="table table-striped table-hover pagination" PagerStyle-CssClass="paging"
                        AllowPaging="True" OnRowCommand="gvFLACHealthNSaftey_RowCommand" PageSize="10" GridLines="None"
                        OnPageIndexChanging="gvFLACHealthNSaftey_PageIndexChanging">
                        <PagerSettings Mode="NumericFirstLast" PageButtonCount="10" FirstPageText="<<" LastPageText=">>"
                            NextPageText="&gt;" PreviousPageText="<" />
                        <Columns>
                            <asp:TemplateField>
                            <ItemTemplate>
                                <%#Container.DataItemIndex + 1 %>.
                            </ItemTemplate>
                        </asp:TemplateField>
                           
                            <asp:HyperLinkField HeaderText="Case Number" DataTextField="CaseNumber" DataNavigateUrlFields="FLACProfileID"
                                DataNavigateUrlFormatString="~/FLAC/HealthNSaftey/View.aspx?ID={0}" />
                            <asp:BoundField DataField="FullName" HeaderText="Full Name" />
                            <asp:BoundField DataField="DistrictName" HeaderText="District" />
                            <asp:BoundField DataField="CountryName" HeaderText="Destination Country" />
                            <asp:BoundField DataField="CaseType" HeaderText="Case Type" />
                            <asp:HyperLinkField HeaderText="Edit" DataNavigateUrlFields="FLACProfileID" Text="Edit"
                                DataNavigateUrlFormatString="HealthNSaftey/Edit.aspx?FLACProfileID={0}" />
                            <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <asp:LinkButton ID="DeleteLinkButton" runat="server" CommandArgument='<%# Eval("FLACProfileID") %>' 
                                         Text="Delete"
                                        CommandName="cmdDelete" OnClientClick="return confirm('Are you sure to delete?');"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerStyle CssClass="paging" />
                    </asp:GridView>
                         </div>                         
                    </ContentTemplate>
                </asp:UpdatePanel>

                <div class="clearfix"></div>
                <a name="death"></a>
                <div class="col-md-12">
                    <h3>
                        Death
                        <a href="Death/Add.aspx">
                            <span class="btn btn-default">Add</span>
                        </a>
                    </h3>
                </div>
                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                    <ContentTemplate>
                          <div class="col-md-12">
                                 <asp:GridView ID="gvFLACDeath" runat="server" ShowHeaderWhenEmpty="True" AutoGenerateColumns="False"
                        ShowHeader="True" CssClass="table table-striped table-hover pagination" PagerStyle-CssClass="paging"
                        AllowPaging="True" OnRowCommand="gvFLACDeath_RowCommand" PageSize="10" GridLines="None"
                        OnPageIndexChanging="gvFLACDeath_PageIndexChanging">
                        <PagerSettings Mode="NumericFirstLast" PageButtonCount="10" FirstPageText="<<" LastPageText=">>"
                            NextPageText="&gt;" PreviousPageText="<" />
                        <Columns>
                            <asp:TemplateField>
                            <ItemTemplate>
                                <%#Container.DataItemIndex + 1 %>.
                            </ItemTemplate>
                        </asp:TemplateField>
                           
                            <asp:HyperLinkField HeaderText="Case Number" DataTextField="CaseNumber" DataNavigateUrlFields="FLACProfileID"
                                DataNavigateUrlFormatString="~/FLAC/Death/View.aspx?ID={0}" />
                            
                            <asp:BoundField DataField="FullName" HeaderText="Full Name" />
                            <asp:BoundField DataField="DistrictName" HeaderText="District" />
                            <asp:BoundField DataField="CountryName" HeaderText="Destination Country" />
                            <asp:BoundField DataField="CaseType" HeaderText="Case Type" />

                            
                            <asp:HyperLinkField HeaderText="Edit" DataNavigateUrlFields="FLACProfileID" Text="Edit"
                                DataNavigateUrlFormatString="Death/Edit.aspx?FLACProfileID={0}" />
                            <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <asp:LinkButton ID="DeleteLinkButton" runat="server" CommandArgument='<%# Eval("FLACProfileID") %>' 
                                         Text="Delete"
                                        CommandName="cmdDelete" OnClientClick="return confirm('Are you sure to delete?');"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerStyle CssClass="paging" />
                    </asp:GridView>
                         </div>                         
                    </ContentTemplate>
                </asp:UpdatePanel> 
        
                <div class="clearfix"></div>
                <a name="shelter-with-problems"></a>
                <div class="col-md-12">
                    <h3>
                        Shelter with problems
                        <a href="ShelterWithProblems/Add.aspx">
                            <span class="btn btn-default">Add</span>
                        </a>
                    </h3>
                </div>  
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                          <div class="col-md-12">
                                 <asp:GridView ID="gvFLACShelterWithProblem" runat="server" ShowHeaderWhenEmpty="True" AutoGenerateColumns="False"
                        ShowHeader="True" CssClass="table table-striped table-hover pagination" PagerStyle-CssClass="paging"
                        AllowPaging="True" OnRowCommand="gvFLACShelterWithProblem_RowCommand" PageSize="10" GridLines="None"
                        OnPageIndexChanging="gvFLACShelterWithProblem_PageIndexChanging">
                        <PagerSettings Mode="NumericFirstLast" PageButtonCount="10" FirstPageText="<<" LastPageText=">>"
                            NextPageText="&gt;" PreviousPageText="<" />
                        <Columns>
                            <asp:TemplateField>
                            <ItemTemplate>
                                <%#Container.DataItemIndex + 1 %>.
                            </ItemTemplate>
                        </asp:TemplateField>
                           
                            <asp:HyperLinkField HeaderText="Name" DataTextField="FullName" DataNavigateUrlFields="FLACShelterProfileID"
                                DataNavigateUrlFormatString="~/FLAC/ShelterWithProblems/View.aspx?ID={0}" />

                            <asp:BoundField DataField="Gender" HeaderText="Gender" />
                            <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" />
                            <asp:BoundField DataField="DistrictName" HeaderText="District" />
                            <asp:BoundField DataField="VDCName" HeaderText="VDC" />
                            <asp:BoundField DataField="EthnicityName" HeaderText="EthnicityName" />
                            <asp:BoundField DataField="GeoBasedRegion" HeaderText="Region" />
                            <asp:BoundField DataField="CreatedDate" HeaderText="Date" />
                            
                            <asp:HyperLinkField HeaderText="Edit" DataNavigateUrlFields="FLACShelterProfileID" Text="Edit"
                                DataNavigateUrlFormatString="ShelterWithProblems/Edit.aspx?ID={0}" />
                            <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <asp:LinkButton ID="DeleteLinkButton" runat="server" CommandArgument='<%# Eval("FLACShelterProfileID") %>' 
                                         Text="Delete"
                                        CommandName="cmdDelete" OnClientClick="return confirm('Are you sure to delete?');"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerStyle CssClass="paging" />
                    </asp:GridView>
                         </div>                         
                    </ContentTemplate>
                </asp:UpdatePanel> 
    </div>

</asp:Content>
