﻿<%@  Page Title="Mapua MCL WebDev Club Registration" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Exercise4.aspx.cs" Inherits="Module1Exercise1.Exercise4" %>

<%-- Exercise 4: Using validation controls --%>
<asp:Content ID="Exercise4Content" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Mapua MCL WebDev Club Registration</h1>
    <asp:Label runat="server" Text="Full Name"></asp:Label><br />
    <asp:TextBox runat="server" ID="fullName" /><br />
    <%-- Todo 4.1 Add a validator that makes sure the text box is not empty --%>
    <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_validators.htm#:~:text=RequiredFieldValidator%20Control --%>
    <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ControlToValidate="fullName" ErrorMessage="Full name is required" /><br />

    <asp:Label runat="server" Text="Age"></asp:Label><br />
    <asp:TextBox runat="server" ID="age" TextMode="Number" /><br />
    <%-- Todo 4.2 Add a range validator that checks if the value inputted in the text box is within 0 and 100--%>
    <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_validators.htm#:~:text=RangeValidator%20Control--%>
    <asp:RangeValidator ID="rvAge" runat="server" ControlToValidate="age" Type="Integer" MinimumValue="0" MaximumValue="100" ErrorMessage="Age must be between 0 and 100" /><br />

    <asp:Label runat="server" Text="Email"></asp:Label><br />
    <asp:TextBox runat="server" ID="email" /><br />
    <%-- Todo 4.3 Add a regex validator that checks if the inputted value is a valid email. The regex for validating email is /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/ --%>
    <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_validators.htm#:~:text=The%20RegularExpressionValidator%20allows --%>
    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="email" ValidationExpression="^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$" ErrorMessage="Invalid email format" /><br />

    <asp:Label runat="server" Text="Confirm Email"></asp:Label><br />
    <asp:TextBox runat="server" ID="confirmEmail" /><br />
    <%-- Todo 4.4 Add a compare validator that checks if the confirmation email is the same as the original email --%>
    <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_validators.htm#:~:text=CompareValidator%20Control --%>
    <asp:CompareValidator ID="cvConfirmEmail" runat="server" ControlToValidate="confirmEmail" ControlToCompare="email" Operator="Equal" ErrorMessage="Emails do not match" /><br />

    <asp:Button Text="Submit" runat="server" UseSubmitBehavior="true" OnClick="Submit_Click" />
    <br /> <br />
    <asp:Label ID="result" runat="server" />
    <%-- Todo 4.5 When the user submits the form and all validations pass, display all the inputted texts in the "result" label --%>
</asp:Content>
