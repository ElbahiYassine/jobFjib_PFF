<%@ Page Title="" Language="C#" MasterPageFile="~/mainLayout.Master" AutoEventWireup="true" CodeBehind="CInfosE.aspx.cs" Inherits="JobFjib_Empty.CInfosE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <div class="container">

        <div class="form-row">

            <div class="form-group col-md-6">

                <label for="txtNom">Nom de Entreprise</label>
                <input type="text" class="form-control" id="txtNom" runat="server" placeholder="Nom de Entreprise">
            </div>

            <div class="form-group col-md-6">
                <label for="logoUp">LOGO</label>
                <asp:FileUpload ID="logoUp" class="form-control-file form-control" runat="server" />
            </div>

        </div>

        <div class="form-group">
            <label for="txtdescription">Description D'entreprise</label>
            <input type="text" class="form-control" id="txtdescription" runat="server" placeholder="Description">
        </div>

        <div class="form-row">

            <div class="form-group col-md-6">
                <label for="txtAdresse">Adresse</label>
                <input type="text" class="form-control" id="txtAdresse" runat="server" placeholder="Adresse">
            </div>

            <div class="form-group col-md-3">
                <label for="txtVille">Ville</label>
                <input type="text" class="form-control" id="txtVille" runat="server" placeholder="Ville">
            </div>

            <div class="form-group col-md-3">
                <label for="txtDate">Dete de Creation</label>
                <input type="date" class="form-control" id="txtDate" runat="server">
            </div>

        </div>
        
        <button type="submit" class="btn btn-primary" runat="server" id="btn_Completez" onserverclick="btn_Completez_ServerClick">Completez</button>
    </div>
     <script src="../Scripts/alerts.js"></script>
</asp:Content>
