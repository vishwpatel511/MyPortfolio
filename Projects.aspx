<%@ Page Title="Projects" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Projects.aspx.cs" Inherits="COMP229_S2016_Lesson2.Projects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
        <div class="container">
            <div class="row">
                <div class="col-md-offset-1 col-md-12" style="left: 0px; top: 40px; height: 159px">
                    
                    
                   
                    <asp:GridView ID="ProjectsGridView" runat="server" AutoGenerateColumns="False" 
                                  CssClass="table table-bordered" DataKeyNames="ProjectID" Height="163px" OnRowDeleting="ProjectsGridView_RowDeleting">  
       
                    <Columns>
                        <asp:BoundField DataField="projectID" HeaderText="Project ID " Visible="True" />
                        <asp:BoundField DataField="projectName" HeaderText="Project Name" Visible="True"/>
                        <asp:BoundField DataField="languagesUsed" HeaderText="Languages used in production" Visible="True"/>
                        <asp:BoundField DataField="description" HeaderText="Description" Visible="True"/>
                        <asp:BoundField DataField="resources" HeaderText="Code resources (video link, code link)" Visible="True"/>
                        <asp:BoundField DataField="LastModified" HeaderText="Last Modified" DataFormatString="{0:MMM dd, yyyy}" Visible="True"/>
                        <asp:CommandField HeaderText="" DeleteText="<i class='fa fa-trash-o fa-lg'></i> Delete" ShowDeleteButton="True" ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm"/>
                    </Columns>

                    </asp:GridView>
                 <p id ="AddProject">Want to list a project I worked for/with you?  <a href="AddProject.aspx" class="btn btn-success btn-sm">
                        <i class="fa fa-plus">Add project</i>
                    </a></p>
                    <br><br>
                </div>
            </div>
        </div>

    </asp:Content>