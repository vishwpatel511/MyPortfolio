<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="COMP229_S2016_Lesson2.contact" %>
  
<asp:content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <div class="col-md-4 col-md-6">
                <h2 style="color: snow">Let's connect</h2>
    
        
            <h6 style="color: snow">First Name: 
            <input type="text" class="form-control" id="firstName" placeholder="Enter first name">
        </h6>
        <div class="form-group">
            <h6 style="color: snow">Last Name: 
                <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Enter Last name">
            </h6>
        </div>
        <div class="form-group">
            <label for="exampleFormControlSelect2">Example multiple select</label>
            <select multiple class="form-control" id="exampleFormControlSelect2">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
            </select>
        </div>
        <div class="form-group">
            <label for="exampleFormControlTextarea1">Example textarea</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
        </div>
  
    </div>
   </asp:content>