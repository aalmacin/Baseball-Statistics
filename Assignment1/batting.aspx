<%@ Page Title="Batting Stats" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="batting.aspx.cs" Inherits="Assignment1._Batting" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div>
        At Bats: <asp:TextBox runat="server" id="txtAtBats"></asp:TextBox>
        <asp:CompareValidator ID="validatePositiveAtBats" runat="server" ErrorMessage="At Bats must be an integer with a positive value." 
            ControlToValidate="txtAtBats" Operator="GreaterThanEqual" 
            ValueToCompare="0" Display="Dynamic" Type="Integer"></asp:CompareValidator>
        <asp:RequiredFieldValidator ID="validatePresenceAtBats" runat="server" 
            ErrorMessage="At Bats Required." ControlToValidate="txtAtBats" 
            Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
    <div>
        Hits: <asp:TextBox runat="server" id="txtHits"></asp:TextBox>
        <asp:CompareValidator ID="validatePositiveHits" runat="server" ErrorMessage="Hits must be an integer with a positive value." 
            ControlToValidate="txtHits" Operator="GreaterThanEqual" ValueToCompare="0" 
            Display="Dynamic" Type="Integer"></asp:CompareValidator>
        <asp:RequiredFieldValidator ID="validatePresenceHits" runat="server" 
            ErrorMessage="Hits Required." ControlToValidate="txtHits" 
            Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
    <div>
        Walks: <asp:TextBox runat="server" id="txtWalks"></asp:TextBox>
        <asp:CompareValidator ID="validatePositiveWalks" runat="server" ErrorMessage="Walks must be an integer with a positive value." 
            ControlToValidate="txtWalks" Operator="GreaterThanEqual" 
            ValueToCompare="0" Display="Dynamic" Type="Double"></asp:CompareValidator>
        <asp:RequiredFieldValidator ID="validatePresenceWalks" runat="server" 
            ErrorMessage="Walks Required." ControlToValidate="txtWalks" 
            Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
    <div>
        Hit By Pitch: <asp:TextBox runat="server" id="txtHitByPitch"></asp:TextBox>
        <asp:CompareValidator ID="validatePositiveHitByPitch" runat="server" ErrorMessage="Hit By Pitch must be an integer with a positive value." 
            ControlToValidate="txtHitByPitch" Operator="GreaterThanEqual" 
            ValueToCompare="0" Display="Dynamic" Type="Integer"></asp:CompareValidator>
        <asp:RequiredFieldValidator ID="validatePresenceHitByPitch" runat="server" 
            ErrorMessage="Hit by Pitch Required." ControlToValidate="txtHitByPitch" 
            Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:DropDownList runat="server" ID="dllStatType">
            <asp:Listitem Value="Batting Average" Text="Batting Average"></asp:Listitem>
            <asp:Listitem Value="On-Base %" Text="On-Base %"></asp:Listitem>
        </asp:DropDownList>
    </div>
    <div>
        <asp:Button runat="server" ID="btnCalculateBatting" Text="Calculate" 
            onclick="btnCalculateBatting_Click" />
    </div>
    <div>
        <asp:Label ID="lblBattingResult" runat="server"></asp:Label>
    </div>
</asp:Content>
