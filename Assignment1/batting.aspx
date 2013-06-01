<%@ Page Title="Batting Stats" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="batting.aspx.cs" Inherits="Assignment1._Batting" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div>
        At Bats: <asp:TextBox runat="server" id="txtAtBats"></asp:TextBox>
        <asp:RangeValidator ID="validatePositiveAtBats" Display="Dynamic" ControlToValidate="txtAtBats" MaximumValue="9999"
         MinimumValue="0" Type="Integer" runat="server" ErrorMessage="At Bats must be an integer with a positive value."></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="validatePresenceAtBats" runat="server" 
            ErrorMessage="At Bats Required." ControlToValidate="txtAtBats" 
            Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
    <div>
        Hits: <asp:TextBox runat="server" id="txtHits"></asp:TextBox>
        <asp:RangeValidator ID="validatePositiveHits" Display="Dynamic" ControlToValidate="txtHits" MaximumValue="9999"
         MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Hits must be an integer with a positive value."></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="validatePresenceHits" runat="server" 
            ErrorMessage="Hits Required." ControlToValidate="txtHits" 
            Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
    <div>ByPi
        Walks: <asp:TextBox runat="server" id="txtWalks"></asp:TextBox>
        <asp:RangeValidator ID="validatePositiveWalks" Display="Dynamic" ControlToValidate="txtWalks" MaximumValue="9999"
         MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Walks must be an integer with a positive value."></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="validatePresenceWalks" runat="server" 
            ErrorMessage="Walks Required." ControlToValidate="txtWalks" 
            Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
    <div>
        Hit By Pitch: <asp:TextBox runat="server" id="txtHitByPitch"></asp:TextBox>
        <asp:RangeValidator ID="validatePositiveHitByPitch" Display="Dynamic" ControlToValidate="txtHitByPitch" MaximumValue="9999"
         MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Hit By Pitch must be an integer with a positive value."></asp:RangeValidator>
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
