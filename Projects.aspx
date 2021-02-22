<%@ Page Title="Projects" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Projects.aspx.cs" Inherits="COMP229_S2016_Lesson2.Projects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-offset-1 col-md-12" style="left: 0px; top: 40px; height: 159px">
                <div class="control-label">
                    <label for="PageSizeDropDownList">Records per Page:</label>
                    <asp:DropDownList ID="PageSizeDropDownList" runat="server"
                                      AutoPostBack="true" CssClass="btn btn-default btn-sm dropdown-toggle"
                                      OnSelectedIndexChanged="PageSizeDropDown_SelectedIndexChanged">       
                        <asp:ListItem Text="3" Value="3" runat="server"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5" runat="server"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10" runat="server"></asp:ListItem>
                        <asp:ListItem Text="1000" Value="1000" runat="server"></asp:ListItem>


                    </asp:DropDownList>
                </div>
                <br><br>
                <asp:GridView ID="ProjectsGridView" runat="server" AutoGenerateColumns="False"
                    CssClass="table table-bordered" DataKeyNames="ProjectID" Height="163px" AllowPagining="true" PageSize="5" OnSorting="ProjectsGridView_Sorting" OnRowDataBound="ProjectsGridView_RowDataBound" OnRowDeleting="ProjectsGridView_RowDeleting">

                    <Columns>
                        <asp:BoundField DataField="projectID" HeaderText="Project ID " Visible="True" />
                        <asp:BoundField DataField="projectName" HeaderText="Project Name" Visible="True" />
                        <asp:BoundField DataField="languagesUsed" HeaderText="Languages used in production" Visible="True" />
                        <asp:BoundField DataField="description" HeaderText="Description" Visible="True" />
                        <asp:BoundField DataField="resources" HeaderText="Code resources (video link, code link)" Visible="True" />
                        <asp:BoundField DataField="LastModified" HeaderText="Last Modified" DataFormatString="{0:MMM dd, yyyy}" Visible="True" />
                        <asp:CommandField HeaderText="" DeleteText="<i class='fa fa-trash-o fa-lg'></i> Delete" ShowDeleteButton="True" ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />
                    </Columns>

                </asp:GridView>
                <p id="AddProject">
                    Want to list a project I worked for/with you?  <a href="~/AddProject.aspx" class="btn btn-success btn-sm" runat="server">
                        <i class="fa fa-plus">Add project</i>
                    </a>
                </p>

            </div>
        </div>
    </div>
    <br>
    <br>
</asp:Content>
