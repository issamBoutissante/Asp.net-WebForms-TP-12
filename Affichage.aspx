﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Principale.Master" AutoEventWireup="true" CodeBehind="Affichage.aspx.cs" Inherits="Asp.net_WevForms_TP12.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:DropDownList ID="DropDownList1" runat="server">
    </asp:DropDownList>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
        <Columns>
            <asp:BoundField DataField="IdStg" HeaderText="IdStg" SortExpression="IdStg" />
            <asp:BoundField DataField="IdMat" HeaderText="IdMat" SortExpression="IdMat" />
            <asp:BoundField DataField="Note" HeaderText="Note" SortExpression="Note" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MonConnection %>" SelectCommand="SELECT * FROM [Note]"></asp:SqlDataSource>
    
</asp:Content>