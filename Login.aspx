<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="COMP229_S2016_Lesson2.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  

    <div class="container">    
        <div class="row">
            <div class="col-md-offset-2 col-md-5"> 
                <div class="alert alert-danger" id="AlertFlash" runat="server" visible="false">
                    <asp:Label runat="server" ID="StatusLabel" />
                </div>

                <br><br>
                <div class=" card border-primary mb-3">
                <div class="card-header"><h3 class="loginLabel"> Login</h3><br>
                    <h6> * You must log in or register your-self in order to perform any operation on this site such as delete or add project </h6>
                       </div> 
                    <div class="card-body">
                        <div class="form-group">
                            <label class="control-label" for="UserNameTextBox">Username:</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="UserNameTextBox" placeholder="Username" required="true" TabIndex="0"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label class="control-label" for="PasswordTextBox">Password:</label>
                            <asp:TextBox runat="server" TextMode="Password" CssClass="form-control" ID="PasswordTextBox" placeholder="Password" required="true" TabIndex="0"></asp:TextBox>
                        </div>

                        <div class="text-right">
                            <asp:Button Text="Login" ID="LoginButton" runat="server" CssClass="btn btn-primary" OnClick="LoginButton_OnClick" TabIndex="0" />
                        </div>

                    </div>

                </div>

            </div>

        <div class="col-md-5 secondCard">    
            <div class="alert alert-danger" id="Div1" runat="server" visible="false">
                <asp:Label runat="server" ID="Label1" />
            </div>

            <br><br>
            <div class=" card border-primary mb-3">
                <div class="card-header"><h3 class="loginLabel"> Register</h3><br>
                    <h6> * You must log in or register your-self in order to perform any operation on this site such as delete or add project </h6>
                </div> 
                <div class="card-body">
                    <div class="form-group">
                        <label class="control-label" for="TextBox">First Name: </label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="FirstNameTextBox" 
                                     placeholder="First Name" required="true"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="TextBox">Last Name: </label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="LastNameTextBox" 
                                     placeholder="Last Name" required="true"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="PhoneNumberTextBox">Phone Number:</label>
                        <asp:TextBox runat="server" TextMode="Phone" CssClass="form-control" ID="PhoneNumberTextBox" placeholder="Phone Number" required="true" TabIndex="0"></asp:TextBox>
                    </div>
                    
                    <div class="form-group">
                        <label class="control-label" for="EmailTextBox">Email:</label>
                        <asp:TextBox runat="server" TextMode="Email" CssClass="form-control" ID="EmailTextBox" placeholder="Email" required="true" TabIndex="0"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label class="control-label" for="PasswordTextBox">Password:</label>
                        <asp:TextBox runat="server" TextMode="Password" CssClass="form-control" ID="PasswordTextBox1" placeholder="Password" required="true" TabIndex="0"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label class="control-label" for="ConfirmPasswordTextBox">Confirm:</label>
                        <asp:TextBox runat="server" TextMode="Password" CssClass="form-control" ID="ConfirmPasswordTextBox" placeholder="Confirm Password" required="true" TabIndex="0"></asp:TextBox>
                        <asp:CompareValidator ErrorMessage="Your Passwords Must Match" Type="String" Operator="Equal"  ControlToValidate="ConfirmPasswordTextBox" runat="server"
                                              ControlToCompare="PasswordTextBox" CssClass="label label-danger" />
                    </div>

                    <div class="text-right">
                        <asp:Button Text="Register" ID="Button13" runat="server" CssClass="btn btn-primary" OnClick="LoginButton_OnClick" TabIndex="0" />


                    </div>


                </div>
            </div>
        </div>
        </div>
    </div>
</asp:Content>
