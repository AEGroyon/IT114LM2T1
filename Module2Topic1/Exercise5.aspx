<%@ Page Title="Reflections" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Exercise5.aspx.cs" Inherits="Module1Exercise1.Exercise5" %>

<%-- Exercise 5: Creating reusable layouts using master pages--%>
<%-- TODO 5.1 Create a master page that contains a navigation bar, a main content, and a footer. --%>
<%-- The navigation bar should contain links to the other exercises --%>
<%-- The main content must include the content that the other pages will implement --%>
<%-- The footer should contain the copyright information of the page. I.e. it should display "Copyright <your name> 2024" --%>
<%-- Hint: https://www.c-sharpcorner.com/article/how-to-create-master-page-in-asp-net/ --%>

<%-- TODO 5.2 Make this page use the master page that you have created --%>
<%-- In the main content of this page, write your reflection about the following: --%>
<%-- * How would you compare plain HTML to ASP.NET WebForms --%>
<%-- * The code behind (C#) and JavaScript seem to share many use cases. When should you implement logic in the code behind and when should you implement logic in JavaScript? Provide examples. --%>
<%-- * Explain what post backs are. --%>

<asp:Content ID="Exercise5Content" ContentPlaceHolderID="MainContent" runat="server">
    <h1>My Reflection</h1>
    <h2>How would you compare plain HTML to ASP.NET WebForms?</h2>
    <p>
        Plain HTML provides the basic structure and content of a web page, 
        but it lacks server-side processing capabilities and dynamic interactivity. 
        On the other hand, ASP.NET WebForms allow for the creation of dynamic web 
        applications with server-side processing, rich controls, and built-in state 
        management features.
    </p>
        
    <h2>The code behind (C#) and JavaScript seem to share many use cases. When should you implement logic in the code behind and when should you implement logic in JavaScript? Provide examples.</h2>
    <p>
        Logic should be implemented in the code-behind (C#) when it requires server-side 
        resources, complex business rules, or security-related operations. For example, 
        handling form submissions, accessing databases, or performing authentication checks. 
        Conversely, JavaScript is ideal for client-side interactions, such as user interface
        enhancements, form validation, and dynamic content updates without requiring server 
        interaction.
    </p>
        
    <h2>Explain what postbacks are.</h2>
    <p>
        Postbacks are a mechanism in ASP.NET WebForms where the entire page is submitted to 
        the server for processing. This includes sending form data, control values, and view 
        state to the server. The server processes the request, performs necessary actions, and 
        sends a response back to the client. Postbacks enable server-side processing and 
        stateful interactions in ASP.NET WebForms applications.
    </p>
</asp:Content>
