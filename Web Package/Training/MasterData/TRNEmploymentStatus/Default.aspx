﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Trainings.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SaMI.Web.Training.MasterData.TRNEmploymentStatus.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TrainingBody" runat="server">
    <div class="col-lg-12 panel-group" id="accordion">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <button type="button" class="btn btn-default" data-toggle="collapse" data-parent="#accordion" data-target="#addEmploymentStatus">Add Employment Status</button>
                    <button type="button" class="btn btn-default" data-toggle="collapse" data-parent="#accordion" data-target="#listEmploymentStatus">Employment Status List</button>
                </h4>
            </div>
            <div id="addEmploymentStatus" class="panel-collapse collapse  <% if (collapse == 0) { Response.Write(valueIn); } %>">
                <table>
                    <tr>
                        <td>
                            <label>
                                Employment Status</label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtEmploymentStatus" runat="server" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblID" runat="server" Visible="false"></asp:Label>
                        </td>
                        <td>
                            <asp:Button runat="server" Text="Save" ID="btnSave" CssClass="btn btn-default" OnClick="btnSave_Click" />
                            <input type="reset" value="Reset" class="btn btn-default" />
                        </td>
                    </tr>
                </table>
                 <div><br /></div>
            </div>

            <div id="listEmploymentStatus" class="panel-collapse collapse  <% if (collapse == 1) { Response.Write(valueIn); } %>">
                <div>
                    <br />
                </div>
                <asp:GridView ID="gvEmploymentStatus" OnRowCommand="gvEmploymentStatus_RowCommand" AutoGenerateColumns="false"
                    runat="server" CssClass="table table-striped table-hover">
                    <Columns>
                        <asp:BoundField DataField="EmploymentStatus" HeaderText="Employment Status" />
                        <asp:TemplateField HeaderText="">
                            <ItemTemplate>
                                <asp:LinkButton ID="EditLinkButton" runat="server" CommandArgument='<%# Eval("ID") %>'
                                    CommandName="cmdEdit" Text="Edit"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="">
                            <ItemTemplate>
                                <asp:LinkButton ID="DeleteLinkButton" runat="server" CommandArgument='<%# Eval("ID") %>'
                                    CommandName="cmdDelete" Text="Delete" OnClientClick="return confirm('Are you sure to delete?');"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
