<%@ Page Title="Slugging Stats" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="slugging.aspx.cs" Inherits="Assignment1.slugging" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
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
        Singles: <asp:TextBox runat="server" id="txtSingles"></asp:TextBox>
        <asp:CompareValidator ID="validatePositiveSingles" runat="server" ErrorMessage="Singles must be an integer with a positive value." 
            ControlToValidate="txtSingles" Operator="GreaterThanEqual" 
            ValueToCompare="0" Display="Dynamic" Type="Double"></asp:CompareValidator>
        <asp:RequiredFieldValidator ID="validatePresenceSingles" runat="server" 
            ErrorMessage="Singles Required." ControlToValidate="txtSingles" 
            Display="Dynamic" ></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="validateSinglesLessThanAtBats" runat="server" ErrorMessage="Number of singles cannot be greater than at bats." 
            ControlToValidate="txtSingles" Operator="LessThanEqual" 
            ControlToCompare="txtAtBats" Display="Dynamic" Type="Integer"></asp:CompareValidator>
    </div>
    <div>
        Doubles: <asp:TextBox runat="server" id="txtDoubles"></asp:TextBox>
        <asp:CompareValidator ID="validatePositiveDoubles" runat="server" ErrorMessage="Doubles must be an integer with a positive value." 
            ControlToValidate="txtDoubles" Operator="GreaterThanEqual" 
            ValueToCompare="0" Display="Dynamic" Type="Double"></asp:CompareValidator>
        <asp:RequiredFieldValidator ID="validatePresenceDoubles" runat="server" 
            ErrorMessage="Doubles Required." ControlToValidate="txtDoubles" 
            Display="Dynamic" ></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="validateDoublesLessThanAtBats" runat="server" ErrorMessage="Number of Doubles cannot be greater than at bats." 
            ControlToValidate="txtDoubles" Operator="LessThanEqual" 
            ControlToCompare="txtAtBats" Display="Dynamic" Type="Integer"></asp:CompareValidator>
    </div>
    <div>
        Triples: <asp:TextBox runat="server" id="txtTriples"></asp:TextBox>
        <asp:CompareValidator ID="validatePositiveTriples" runat="server" ErrorMessage="Triples must be an integer with a positive value." 
            ControlToValidate="txtTriples" Operator="GreaterThanEqual" 
            ValueToCompare="0" Display="Dynamic" Type="Double"></asp:CompareValidator>
        <asp:RequiredFieldValidator ID="validatePresenceTriples" runat="server" 
            ErrorMessage="Triples Required." ControlToValidate="txtTriples" 
            Display="Dynamic" ></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="validateTriplesLessThanAtBats" runat="server" ErrorMessage="Number of Triples cannot be greater than at bats." 
            ControlToValidate="txtTriples" Operator="LessThanEqual" 
            ControlToCompare="txtAtBats" Display="Dynamic" Type="Integer"></asp:CompareValidator>
    </div>
    <div>
        HomeRuns: <asp:TextBox runat="server" id="txtHomeRuns"></asp:TextBox>
        <asp:CompareValidator ID="validatePositiveHomeRuns" runat="server" ErrorMessage="HomeRuns must be an integer with a positive value." 
            ControlToValidate="txtHomeRuns" Operator="GreaterThanEqual" 
            ValueToCompare="0" Display="Dynamic" Type="Double"></asp:CompareValidator>
        <asp:RequiredFieldValidator ID="validatePresenceHomeRuns" runat="server" 
            ErrorMessage="HomeRuns Required." ControlToValidate="txtHomeRuns" 
            Display="Dynamic" ></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="validateHomeRunsLessThanAtBats" runat="server" ErrorMessage="Number of HomeRuns cannot be greater than at bats." 
            ControlToValidate="txtHomeRuns" Operator="LessThanEqual" 
            ControlToCompare="txtAtBats" Display="Dynamic" Type="Integer"></asp:CompareValidator>
    </div>
    <div>
        <asp:Button runat="server" ID="btnCalculateSlugging" Text="Calculate" 
            onclick="btnCalculateSlugging_Click" />
    </div>
    <div>
        <asp:Label ID="lblSluggingResult" runat="server"></asp:Label>
    </div>
</asp:Content>
