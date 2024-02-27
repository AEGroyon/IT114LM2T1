<%@ Page Title="Malayan Music Player" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"  CodeBehind="~/Exercise1.aspx.cs" Inherits="Module1Exercise1.Exercise1" %>

<%-- Exercise 1: Exploring Basic Controls of ASP.NET WebForms--%>
<%-- Useful References: https://www.tutorialspoint.com/asp.net/index.htm --%>
<asp:Content ID="Exercise1Content" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        h1 {
            margin-top: 20px;
        }

        #player-container {
            display: inline-block;
            background-color: #ffffff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
            margin-top: 20px;
        }

        #album-cover {
            width: 200px;
            height: 200px;
            border-radius: 10px;
            margin-bottom: 20px;
        }

        #control-buttons {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }

        #control-buttons button {
            background-color: #1db954;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            margin: 0 10px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        #control-buttons button:hover {
            background-color: #18a74c;
        }

        #now-playing {
            font-size: 18px;
            font-weight: bold;
            color: #1db954;
        }
    </style>
    <h1>Malayan Music Player</h1>
    <%-- !! IMPORTANT: Make sure to use the asp tag for each TODO  !! --%>

    <div id="player-container">
        <%-- TODO 2.1 Create a label displaying the name of your favorite song and its artist (e.g. Yesterday - The Beatles)--%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_custom_controls.htm#:~:text=Label --%>
        <asp:Label ID="lblSongInfo" runat="server" Text="嘘月 - Yorushika"></asp:Label> <br />

        <%-- TODO 2.2 Create an image that is 200px by 200x big showing the album cover of your favorite song. Make sure to set the alternative text. --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Image%20Control --%> 
        <asp:Image ID="imgAlbumCover" runat="server" ImageUrl="https://upload.wikimedia.org/wikipedia/commons/2/27/Yorushika_Logo.jpg" Width="200px" Height="200px" AlternateText="Album Cover"></asp:Image> <br />

        <%-- TODO 2.3 Create three buttons with texts. "Prev", "Play", and "Next" --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Button%20Controls --%>
        <div id="control-buttons">
            <asp:Button ID="btnPrev" runat="server" Text="Prev" />
            <asp:Button ID="btnPlay" runat="server" Text="Play" OnClick="btnPlay_Click" />
            <asp:Button ID="btnNext" runat="server" Text="Next" />
        </div>

        <%-- TODO 2.4 Create a span. Once the play button is pressed, the span should display "Now playing <favorite song>" --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_event_handling.htm#:~:text=onclick=%22btnclick_Click%22 --%>
        <asp:Label ID="lblNowPlaying" runat="server"> </asp:Label> <br />

        <%-- TODO 2.5 Display the current time using the template syntax <%= %> --%>
        <%-- Hint: https://learn.microsoft.com/en-us/troubleshoot/developer/webapps/aspnet/development/inline-expressions#:~:text=displays%20the%20current%20time --%>
        <span><%= DateTime.Now.ToString("hh:mm:ss tt") %></span> <br />
        <%= DateTime.Now.ToShortDateString() %>
    </div>
</asp:Content>
