<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="VAReport.About" %>


<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
 
  
     <div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Sign In</h1>
            <div class="account-wall">
                
                <asp:TextBox type="text" class="form-control" placeholder="Email" required autofocus ID="TextBox2" runat="server"></asp:TextBox>
                <asp:TextBox type="password" class="form-control" placeholder="Password" required ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button class="btn btn-lg btn-primary btn-block" ID="Button1" 
                    runat="server" Text="Button" />
                
    </div>
</div>
      </div>
</div>


  
  
</asp:Content>
