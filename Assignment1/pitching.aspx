<%@ Page Title="Pitching Stats" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pitching.aspx.cs" Inherits="Assignment1.pitching" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        Innings: <asp:TextBox runat="server" id="txtInnings"></asp:TextBox>
        <asp:RangeValidator ID="validatePositiveInnings" Display="Dynamic" ControlToValidate="txtInnings" MaximumValue="9999"
         MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Innings must be an integer with a positive value."></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="validatePresenceInnings" runat="server" 
            ErrorMessage="Innings Required." ControlToValidate="txtInnings" 
            Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
    <div>
        Earned runs: <asp:TextBox runat="server" id="txtEarnedRuns"></asp:TextBox>
       <asp:RangeValidator ID="validatePositiveEarnedRuns" Display="Dynamic" ControlToValidate="txtEarnedRuns" MaximumValue="9999"
         MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Earned Runs must be an integer with a positive value."></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="validatePresenceEarnedRuns" runat="server" 
            ErrorMessage="Earned Runs Required." ControlToValidate="txtEarnedRuns" 
            Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:Button runat="server" ID="btnCalculatePitching" Text="Calculate" 
            onclick="btnCalculatePitching_Click" />
    </div>
    <div>
        <asp:Label ID="lblPitchingResult" runat="server"></asp:Label>
    </div>
</asp:Content>