<%@ Page Title="AddProject" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddProject.aspx.cs" Inherits="COMP229_S2016_Lesson2.AddProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    
    <div class="container centered_div">
        <br /><br />
        <h5> * Please use the Project ID provided to you. If you don't have or misplaced contact us to get the new one.</h5>
        <div class="row">
            <div class="col-md-offset-2 col-md-10">
                
               
                
                <br />
                <form class="form-inline">
                    <div class="form-group">
                        <label class="control-label" for="TextBox">Project ID: </label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="ProjectID" 
                                     placeholder="Project ID" required="true"></asp:TextBox>
                    </div>
                    
                    <div class="form-group">
                        <label class="control-label" for="TextBox">Project Name: </label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="ProjectName" 
                                     placeholder="Project Name" required="true"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="TextBox">Languages used: </label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="LanguagesUsed" 
                                     placeholder="Languages Used" required="true"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label class="control-label" for="exampleFormControlTextarea1">Project description: </label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="ProjectDescription" Rows="3"
                                     placeholder="Project description" required="true"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="Text">Resources: </label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="Resources"
                                     placeholder="Available resources" required="true"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="Text">Last modified: </label>
                        <asp:TextBox runat="server" TextMode="Date" CssClass="form-control" ID="LastModified"
                                     placeholder="Last Date of modification" required="true"></asp:TextBox>
                    </div>


                <div class="text-right">

                    <asp:Button Text="Cancel" ID="CancelButton" CssClass="btn btn-warning btn-lg" runat="server"
                                UseSubmitBehavior="false" CausesValidation="false" OnClick="CancelButton_OnClick" />
                    <asp:Button Text="Submit" ID="SaveButton" CssClass="btn btn-primary btn-lg" runat="server"
                                OnClick="SaveButton_OnClick" />

                </div>
                </form>
            </div>
        </div>
    </div>
    
    
    
    </asp:Content>
