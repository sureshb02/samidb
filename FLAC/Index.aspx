<%@ Page Title="Free Legal Aid Clinic" Language="C#" MasterPageFile="~/CaseMaster.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SaMI.Web.FLAC.Index" %>
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
                
                <asp:Panel ID="pnlHealthNSaftey" runat="server">
                    <a name="health-and-safety"></a>
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
                            <asp:BoundField DataField="VDCName" HeaderText="VDC" />
                            <asp:BoundField DataField="EthnicityName" HeaderText="Ethnicity" />
                            <asp:BoundField DataField="GeoBasedRegion" HeaderText="Region" />
                            
                            <asp:BoundField DataField="CountryName" HeaderText="Destination Country" />
                            <asp:BoundField DataField="CaseType" HeaderText="Case Type" />
                            <asp:BoundField DataField="CreatedDate" HeaderText="Date" />
                            <asp:HyperLinkField HeaderText="Edit" DataNavigateUrlFields="FLACProfileID" Text="Edit"
                                DataNavigateUrlFormatString="HealthNSaftey/Edit.aspx?ID={0}" />
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
                </asp:Panel>

                <div class="clearfix"></div>
                <asp:Panel ID="pnlJailed" runat="server">
                    <a name="jailed"></a>
                    <div class="col-md-12">
                        <h3>
                           Jailed
                            <a href="Jailed/Add.aspx">
                                <span class="btn btn-default">Add</span>
                            </a>
                        </h3>
                    </div>  
                    <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                    <ContentTemplate>
                          <div class="col-md-12">
                                 <asp:GridView ID="gvFLACJailed" runat="server" ShowHeaderWhenEmpty="True" AutoGenerateColumns="False"
                        ShowHeader="True" CssClass="table table-striped table-hover pagination" PagerStyle-CssClass="paging"
                        AllowPaging="True" OnRowCommand="gvFLACJailed_RowCommand" PageSize="10" GridLines="None"
                        OnPageIndexChanging="gvFLACJailed_PageIndexChanging">
                        <PagerSettings Mode="NumericFirstLast" PageButtonCount="10" FirstPageText="<<" LastPageText=">>"
                            NextPageText="&gt;" PreviousPageText="<" />
                        <Columns>
                            <asp:TemplateField>
                            <ItemTemplate>
                                <%#Container.DataItemIndex + 1 %>.
                            </ItemTemplate>
                        </asp:TemplateField>
                           
                            <asp:HyperLinkField HeaderText="Case Number" DataTextField="CaseNumber" DataNavigateUrlFields="FLACProfileID"
                                DataNavigateUrlFormatString="~/FLAC/OutOfContact/View.aspx?ID={0}" />
                            <asp:BoundField DataField="FullName" HeaderText="Full Name" />
                            <asp:BoundField DataField="DistrictName" HeaderText="District" />
                            <asp:BoundField DataField="VDCName" HeaderText="VDC" />
                            <asp:BoundField DataField="EthnicityName" HeaderText="Ethnicity" />
                            <asp:BoundField DataField="GeoBasedRegion" HeaderText="Region" />
                            
                            <asp:BoundField DataField="CountryName" HeaderText="Destination Country" />
                            <asp:BoundField DataField="CaseType" HeaderText="Case Type" />
                            <asp:BoundField DataField="CreatedDate" HeaderText="Date" />
                            <asp:HyperLinkField HeaderText="Edit" DataNavigateUrlFields="FLACProfileID" Text="Edit"
                                DataNavigateUrlFormatString="Jailed/Edit.aspx?ID={0}" />
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
                </asp:Panel>

                <asp:Panel ID="pnlOutOfContact" runat="server">
                    <div class="clearfix"></div>
                    <a name="out-of-contact"></a>
                    <div class="col-md-12">
                        <h3>
                           Out Of Contact
                            <a href="OutOfContact/Add.aspx">
                                <span class="btn btn-default">Add</span>
                            </a>
                        </h3>
                    </div>  
                    <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                    <ContentTemplate>
                          <div class="col-md-12">
                                 <asp:GridView ID="gvOutOfContact" runat="server" ShowHeaderWhenEmpty="True" AutoGenerateColumns="False"
                        ShowHeader="True" CssClass="table table-striped table-hover pagination" PagerStyle-CssClass="paging"
                        AllowPaging="True" OnRowCommand="gvOutOfContact_RowCommand" PageSize="10" GridLines="None"
                        OnPageIndexChanging="gvOutOfContact_PageIndexChanging">
                        <PagerSettings Mode="NumericFirstLast" PageButtonCount="10" FirstPageText="<<" LastPageText=">>"
                            NextPageText="&gt;" PreviousPageText="<" />
                        <Columns>
                            <asp:TemplateField>
                            <ItemTemplate>
                                <%#Container.DataItemIndex + 1 %>.
                            </ItemTemplate>
                        </asp:TemplateField>
                           
                            <asp:HyperLinkField HeaderText="Case Number" DataTextField="CaseNumber" DataNavigateUrlFields="FLACProfileID"
                                DataNavigateUrlFormatString="~/FLAC/OutOfContact/View.aspx?ID={0}" />
                            <asp:BoundField DataField="FullName" HeaderText="Full Name" />
                            <asp:BoundField DataField="DistrictName" HeaderText="District" />
                            <asp:BoundField DataField="VDCName" HeaderText="VDC" />
                            <asp:BoundField DataField="EthnicityName" HeaderText="Ethnicity" />
                            <asp:BoundField DataField="GeoBasedRegion" HeaderText="Region" />
                            
                            <asp:BoundField DataField="CountryName" HeaderText="Destination Country" />
                            <asp:BoundField DataField="CaseType" HeaderText="Case Type" />
                            <asp:BoundField DataField="CreatedDate" HeaderText="Date" />
                            <asp:HyperLinkField HeaderText="Edit" DataNavigateUrlFields="FLACProfileID" Text="Edit"
                                DataNavigateUrlFormatString="OutOfContact/Edit.aspx?ID={0}" />
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
                </asp:Panel>


                <asp:Panel ID="pnlContractIssue" runat="server">
                    <div class="clearfix"></div>
                    <a name="contract-issue"></a>
                    <div class="col-md-12">
                        <h3>
                           Contract Issue
                            <a href="ContractIssue/Add.aspx">
                                <span class="btn btn-default">Add</span>
                            </a>
                        </h3>
                    </div>  
                    <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                    <ContentTemplate>
                          <div class="col-md-12">
                                 <asp:GridView ID="gvContractIssue" runat="server" ShowHeaderWhenEmpty="True" AutoGenerateColumns="False"
                        ShowHeader="True" CssClass="table table-striped table-hover pagination" PagerStyle-CssClass="paging"
                        AllowPaging="True" OnRowCommand="gvContractIssue_RowCommand" PageSize="10" GridLines="None"
                        OnPageIndexChanging="gvContractIssue_PageIndexChanging">
                        <PagerSettings Mode="NumericFirstLast" PageButtonCount="10" FirstPageText="<<" LastPageText=">>"
                            NextPageText="&gt;" PreviousPageText="<" />
                        <Columns>
                            <asp:TemplateField>
                            <ItemTemplate>
                                <%#Container.DataItemIndex + 1 %>.
                            </ItemTemplate>
                        </asp:TemplateField>
                           
                            <asp:HyperLinkField HeaderText="Case Number" DataTextField="CaseNumber" DataNavigateUrlFields="FLACProfileID"
                                DataNavigateUrlFormatString="~/FLAC/ContractIssue/View.aspx?ID={0}" />
                            <asp:BoundField DataField="FullName" HeaderText="Full Name" />
                            <asp:BoundField DataField="DistrictName" HeaderText="District" />
                            <asp:BoundField DataField="VDCName" HeaderText="VDC" />
                            <asp:BoundField DataField="EthnicityName" HeaderText="Ethnicity" />
                            <asp:BoundField DataField="GeoBasedRegion" HeaderText="Region" />
                            
                            <asp:BoundField DataField="CountryName" HeaderText="Destination Country" />
                            <asp:BoundField DataField="CaseType" HeaderText="Case Type" />
                            <asp:BoundField DataField="CreatedDate" HeaderText="Date" />
                            <asp:HyperLinkField HeaderText="Edit" DataNavigateUrlFields="FLACProfileID" Text="Edit"
                                DataNavigateUrlFormatString="ContractIssue/Edit.aspx?ID={0}" />
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
                </asp:Panel>


                <asp:Panel ID="pnlDeath" runat="server">
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
                            <asp:BoundField DataField="VDCName" HeaderText="VDC" />
                            <asp:BoundField DataField="EthnicityName" HeaderText="Ethnicity" />
                            <asp:BoundField DataField="GeoBasedRegion" HeaderText="Region" />
                            
                            <asp:BoundField DataField="CountryName" HeaderText="Destination Country" />
                            <asp:BoundField DataField="CaseType" HeaderText="Case Type" />
                            <asp:BoundField DataField="CreatedDate" HeaderText="Date" />
                            
                            <asp:HyperLinkField HeaderText="Edit" DataNavigateUrlFields="FLACProfileID" Text="Edit"
                                DataNavigateUrlFormatString="Death/Edit.aspx?ID={0}" />
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

                </asp:Panel>
                
                <asp:Panel ID="pnlShelterWithProblems" runat="server">
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
                            <asp:BoundField DataField="EthnicityName" HeaderText="Ethnicity" />
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
                </asp:Panel>


                
                <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                    <ContentTemplate>
                          <div class="col-md-12">
                                 <asp:GridView Visible="false" ID="gvFLACShelterWithoutProblem" runat="server" ShowHeaderWhenEmpty="True" AutoGenerateColumns="False"
                        ShowHeader="True" CssClass="table table-striped table-hover pagination" PagerStyle-CssClass="paging"
                        AllowPaging="True" OnRowCommand="gvFLACShelterWithoutProblem_RowCommand" PageSize="10" GridLines="None"
                        OnPageIndexChanging="gvFLACShelterWithoutProblem_PageIndexChanging">
                        <PagerSettings Mode="NumericFirstLast" PageButtonCount="10" FirstPageText="<<" LastPageText=">>"
                            NextPageText="&gt;" PreviousPageText="<" />
                        <Columns>
                            <asp:TemplateField>
                            <ItemTemplate>
                                <%#Container.DataItemIndex + 1 %>.
                            </ItemTemplate>
                        </asp:TemplateField>
                           
                            <asp:HyperLinkField HeaderText="Name" DataTextField="FullName" DataNavigateUrlFields="FLACShelterProfileID"
                                DataNavigateUrlFormatString="~/FLAC/ShelterWithoutProblems/View.aspx?ID={0}" />

                            <asp:BoundField DataField="Gender" HeaderText="Gender" />
                            <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" />
                            <asp:BoundField DataField="DistrictName" HeaderText="District" />
                            <asp:BoundField DataField="VDCName" HeaderText="VDC" />
                            <asp:BoundField DataField="EthnicityName" HeaderText="Ethnicity" />
                            <asp:BoundField DataField="GeoBasedRegion" HeaderText="Region" />
                            <asp:BoundField DataField="CreatedDate" HeaderText="Date" />
                            
                            <asp:HyperLinkField HeaderText="Edit" DataNavigateUrlFields="FLACShelterProfileID" Text="Edit"
                                DataNavigateUrlFormatString="ShelterWithoutProblems/Edit.aspx?ID={0}" />
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

                
        
                <asp:Panel ID="pnlFLPAS" runat="server">
                    <div class="clearfix"></div>
                    <a name="free-legal-and-paralegal-service"></a>
                    <div class="col-md-12">
                        <h3>
                            Free Legal and Paralegal Service (PF)
                            <a href="FLAPS/Add.aspx">
                                <span class="btn btn-default">Add</span>
                            </a>
                        </h3>
                    </div>  
                    <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                    <ContentTemplate>
                          <div class="col-md-12">
                                 <asp:GridView ID="gvFLAPS" runat="server" ShowHeaderWhenEmpty="True" AutoGenerateColumns="False"
                        ShowHeader="True" CssClass="table table-striped table-hover pagination" PagerStyle-CssClass="paging"
                        AllowPaging="True" OnRowCommand="gvFLAPS_RowCommand" PageSize="10" GridLines="None"
                        OnPageIndexChanging="gvFLAPS_PageIndexChanging">
                        <PagerSettings Mode="NumericFirstLast" PageButtonCount="10" FirstPageText="<<" LastPageText=">>"
                            NextPageText="&gt;" PreviousPageText="<" />
                        <Columns>
                            <asp:TemplateField>
                            <ItemTemplate>
                                <%#Container.DataItemIndex + 1 %>.
                            </ItemTemplate>
                        </asp:TemplateField>
                           
                            <asp:HyperLinkField HeaderText="Applicant Name" DataTextField="FullName" DataNavigateUrlFields="FLAC_FLPS_ProfileID"
                                DataNavigateUrlFormatString="~/FLAC/FLAPS/View.aspx?ID={0}" />

                            <asp:BoundField DataField="Gender" HeaderText="Applicant Gender" />
                            <asp:BoundField DataField="ContactNumber1" HeaderText="Applicant Contact" />
                            <asp:BoundField DataField="Name" HeaderText="Victim's Name" />
                            <asp:BoundField DataField="GenderVictim" HeaderText="Victim's Gender" />
                            <asp:BoundField DataField="ContactNumberVictim1" HeaderText="Victim Contact" />
                            <asp:BoundField DataField="VictimDistrictName" HeaderText=" Victim District" />
                            <asp:BoundField DataField="VictimVDCName" HeaderText="VictimVDC" />
                            <asp:BoundField DataField="EthnicityName" HeaderText="Ethnicity" />
                            <asp:BoundField DataField="CreatedDate" HeaderText="Date" />
                            
                            <asp:HyperLinkField HeaderText="Edit" DataNavigateUrlFields="FLAC_FLPS_ProfileID" Text="Edit"
                                DataNavigateUrlFormatString="FLAPS/Edit.aspx?ID={0}" />
                            <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <asp:LinkButton ID="DeleteLinkButton" runat="server" CommandArgument='<%# Eval("FLAC_FLPS_ProfileID") %>' 
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
                </asp:Panel> 


                
    </div>

</asp:Content>
