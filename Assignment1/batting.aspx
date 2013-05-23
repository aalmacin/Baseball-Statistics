<%@ Page Title="Batting Stats" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="batting.aspx.cs" Inherits="Assignment1._Batting" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div>
        At Bats: <asp:TextBox runat="server" id="txtAtBats"></asp:TextBox>
        <asp:CompareValidator ID="validateAtBats" runat="server" ErrorMessage="At bats must be positive." ControlToValidate="txtAtBats" Operator="GreaterThanEqual" ValueToCompare="0"></asp:CompareValidator>
    </div>
    <div>
        Hits: <asp:TextBox runat="server" id="txtHits"></asp:TextBox>
    </div>
    <div>
        Walks: <asp:TextBox runat="server" id="txtWalks"></asp:TextBox>
    </div>
    <div>
        Hit By Pitch: <asp:TextBox runat="server" id="txtHitByPitch"></asp:TextBox>
    </div>
    <asp:Button runat="server" ID="btnCalculate" Text="Calculate" />
</asp:Content>
