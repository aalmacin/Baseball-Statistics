<%@ Page Title="Pitching Stats" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pitching.aspx.cs" Inherits="Assignment1.pitching" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        Innings: <asp:TextBox runat="server" id="txtInnings"></asp:TextBox>
        <asp:CompareValidator ID="validatePositiveInnings" runat="server" ErrorMessage="Innings must be an integer with a positive value." 
            ControlToValidate="txtInnings" Operator="GreaterThanEqual" 
            ValueToCompare="0" Display="Dynamic" Type="Double"></asp:CompareValidator>
        <asp:RequiredFieldValidator ID="validatePresenceInnings" runat="server" 
            ErrorMessage="Innings Required." ControlToValidate="txtInnings" 
            Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
    <div>
        Earned runs: <asp:TextBox runat="server" id="txtEarnedRuns"></asp:TextBox>
        <asp:CompareValidator ID="validatePositiveEarnedRuns" runat="server" ErrorMessage="Earned runs must be an integer with a positive value." 
            ControlToValidate="txtEarnedRuns" Operator="GreaterThanEqual" 
            ValueToCompare="0" Display="Dynamic" Type="Double"></asp:CompareValidator>
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