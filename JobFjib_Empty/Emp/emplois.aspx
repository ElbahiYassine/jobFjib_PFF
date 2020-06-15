<%@ Page Title="" Language="C#" MasterPageFile="~/mainLayout.Master" AutoEventWireup="true" CodeBehind="emplois.aspx.cs" Inherits="JobFjib_Empty.Emp.emplois" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <label>Filtre Par: </label>
            <div class="dropdown">
                <asp:DropDownList class="form-control" ID="dlDomain" runat="server"></asp:DropDownList>
            </div>
        </div>


        <div class="row">

        </div>

    </div>
</asp:Content>
