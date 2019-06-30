<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="BHHC.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="scripts/bootstrap.min.js"></script>
    <link rel="stylesheet" href="BHHCstylesheet.css">
    <%-- This page is used for demonstrate how data flow into database from 3 layers --%>
    <div class="form-group">
        <label>Reason for contact:</label>
        <asp:TextBox ID="TextBoxReason" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorReason" runat="server" ErrorMessage="This field is not allowed to be empty."
                        ControlToValidate="TextBoxReason" ValidationGroup="Submit" Height="16px" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>
                 
    </div>
    <div class="form-group">
        <label>First Name</label>
        <asp:TextBox ID="TextBoxFirstName" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorFirstName" runat="server" ErrorMessage="This field is not allowed to be empty."
                        ControlToValidate="TextBoxFirstName" ValidationGroup="Submit" Height="16px" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <label>Last Name</label>
        <asp:TextBox ID="TextBoxLastName" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorLastName" runat="server" ErrorMessage="This field is not allowed to be empty."
                        ControlToValidate="TextBoxLastName" ValidationGroup="Submit" Height="16px" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>
    </div>
     <div class="form-group">
        <label>Phone Number</label>
        <asp:TextBox ID="TextBoxPhoneNumber" runat="server" CssClass="form-control"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhoneNumber" runat="server" ErrorMessage="This field is not allowed to be empty."
                        ControlToValidate="TextBoxPhoneNumber" ValidationGroup="Submit" Height="16px" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>
    </div>
    <div class="checkbox">
        <label>Best time to call (Optional)</label>
        <asp:CheckBoxList ID="CheckBoxListContactTime" runat="server">
            <asp:ListItem Value="Morning">Morning</asp:ListItem>
            <asp:ListItem Value="Afternoon">Afternoon</asp:ListItem>
            <asp:ListItem Value="Evening">Evening</asp:ListItem>
        </asp:CheckBoxList>
    </div>
    <div class="form-group">
        <label>Email Address (Optional)</label>
        <asp:TextBox ID="TextBoxEmail" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <label>Message</label>
        <br/>
        <TextArea ID="TextBoxMessage" runat="server" CssClass="form-control" Rows="5"  cols="60" ></TextArea>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorMessage" runat="server" ErrorMessage="This field is not allowed to be empty."
                        ControlToValidate="TextBoxMessage" ValidationGroup="Submit" Height="16px" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>
    </div>

    <asp:Button ID="ButtonSubmit" runat="server" Text="Contact Us" CssClass="btn btn-lg btn-primary" OnClick="ButtonSubmit_Click" />

</asp:Content>
