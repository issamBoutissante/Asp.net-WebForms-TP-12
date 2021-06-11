<%@ Page Title="" Language="C#" MasterPageFile="~/Principale.Master" AutoEventWireup="true" CodeBehind="AjoutStagiare.aspx.cs" Inherits="Asp.net_WevForms_TP12.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label runat="server">Nom Stagiare</asp:Label>
    <asp:TextBox ID="NomStagiare" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NomStagiare" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <asp:Button ID="Ajouter" Text="Ajouter" OnClick="Ajouter_Click" runat="server"/>
    <br />
    <asp:Label ID="Message" runat="server"></asp:Label>
</asp:Content>
