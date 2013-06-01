<%@ Page Title="Slugging Stats" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="slugging.aspx.cs" Inherits="Assignment1.slugging" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        At Bats: <asp:TextBox runat="server" id="txtAtBats"></asp:TextBox>
        <asp:RangeValidator ID="validatePositiveAtBats" Display="Dynamic" ControlToValidate="txtAtBats" MaximumValue="9999"
         MinimumValue="0" Type="Integer" runat="server" ErrorMessage="At Bats must be an integer with a positive value."></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="validatePresenceAtBats" runat="server" 
            ErrorMessage="At Bats Required." ControlToValidate="txtAtBats" 
            Display="Dynamic" ></asp:RequiredFieldValidator>
        <asp:Label ID="labelCompareHitsToAtBats" runat="server" Display="Dynamic" Visible="false"
            Text="At Bat's value must be greater than the values of hits."></asp:Label>
    </div>
    <div>
        Singles: <asp:TextBox runat="server" id="txtSingles"></asp:TextBox>
        <asp:RangeValidator ID="validatePositiveSingles" Display="Dynamic" ControlToValidate="txtSingles" MaximumValue="9999"
         MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Singles must be an integer with a positive value."></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="validatePresenceSingles" runat="server" 
            ErrorMessage="Singles Required." ControlToValidate="txtSingles" 
            Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
    <div>
        Doubles: <asp:TextBox runat="server" id="txtDoubles"></asp:TextBox> 
        <asp:RangeValidator ID="validatePositiveDoubles" Display="Dynamic" ControlToValidate="txtDoubles" MaximumValue="9999"
         MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Doubles must be an integer with a positive value."></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="validatePresenceDoubles" runat="server" 
            ErrorMessage="Doubles Required." ControlToValidate="txtDoubles" 
            Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
    <div>
        Triples: <asp:TextBox runat="server" id="txtTriples"></asp:TextBox>
        <asp:RangeValidator ID="validatePositiveTriples" Display="Dynamic" ControlToValidate="txtTriples" MaximumValue="9999"
         MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Triples must be an integer with a positive value."></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="validatePresenceTriples" runat="server" 
            ErrorMessage="Triples Required." ControlToValidate="txtTriples" 
            Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
    <div>
        Home Runs: <asp:TextBox runat="server" id="txtHomeRuns"></asp:TextBox>
        <asp:RangeValidator ID="validatePositiveHomeRuns" Display="Dynamic" ControlToValidate="txtHomeRuns" MaximumValue="9999"
         MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Home Runs must be an integer with a positive value."></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="validatePresenceHomeRuns" runat="server" 
            ErrorMessage="HomeRuns Required." ControlToValidate="txtHomeRuns" 
            Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:Button runat="server" ID="btnCalculateSlugging" Text="Calculate" 
            onclick="btnCalculateSlugging_Click" />
    </div>
    <div>
        <asp:Label ID="lblSluggingResult" runat="server"></asp:Label>
    </div>
</asp:Content>
