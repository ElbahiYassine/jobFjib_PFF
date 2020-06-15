﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mainLayout.Master" AutoEventWireup="true" CodeBehind="CInfosC.aspx.cs" Inherits="JobFjib_Empty.CInfosC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

   <section id="Info-Etape1">
        <ul class="nav nav-pills nav-justified" role="tablist">
            <li class="nav-item">
                <a class="nav-link active"  role="tab" aria-controls="Etape1" aria-selected="true" onclick="slide('Info-Etape1', 'Info-Etape2')">Etape 1</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" role="tab"  aria-controls="Etape2" aria-selected="false" onclick="slide('Info-Etape2', 'Info-Etape1')">Etape 2</a>
            </li>
        </ul>
            <!-- Tab panes -->
            <div class="tab-content py-3 px-3 px-sm-0 events-tab-content">
                <div class="tab-pane fade show active" id="Etape1" role="tabpanel" aria-labelledby="Etape1-tab">

                    <div class="form-row">
                    <%--<div class="form-group col-md-12">
                        <label for="photoUp">Photo</label>
                        <div class="custom-file">
                            <asp:FileUpload ID="photoUp" runat="server" class="custom-file-input" aria-describedby="inputGroupFileAddon03" />
                            <label class="custom-file-label" for="inputGroupFile03">Choisir Votre Photo</label>
                        </div>
                    </div>--%>

                        <div class="form-group">
                            <label for="photoUp">Photo</label>
                            <asp:FileUpload ID="photoUp" class="form-control-file" runat="server" />
                        </div>
                </div>

                    <div class="form-row">
                        <div class="form-group col-md-6">
                          <label for="txtNom">Nom</label>
                            <asp:TextBox ID="txtNom" runat="server" class="form-control" placeholder="Nom"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Nom est Obligatoire" ControlToValidate="txtNom" CssClass="valErreur"/>
                        </div>
                        <div class="form-group col-md-6">
                          <label for="txtPrenom">Prénom</label>
                            <asp:TextBox ID="txtPrenom" runat="server" class="form-control" placeholder="Prénom"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Prénom est Obligatoire" ControlToValidate="txtPrenom" CssClass="valErreur"/>
                        </div>
                    </div>

                    <div class="form-row">
                   <div class="form-group col-md-6">
                       <label for="txtDate">Date de Naissance</label>
                       <asp:TextBox ID="txtDate" runat="server" class="form-control" placeholder="Date de Naissance" TextMode="Date"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Date de Naissance est Obligatoire" ControlToValidate="txtDate" CssClass="valErreur"/>
                   </div>
                   <div class="form-group col-md-6">
                       <label for="genre">Genre</label>
                       <div class="form-check">
                           <div class="row">
                               <div class="col-6">
                                   <input class="form-check-input" type="radio" name="rbGenre" id="rbHomme" value="homme" runat="server" checked>
                                   <label class="form-check-label" for="rbHomme">
                                       Homme
                   
                                   </label>
                               </div>
                               <div class="col-6">
                                   <input class="form-check-input" type="radio" name="rbGenre" id="rbFemme" runat="server" value="femme">
                                   <label class="form-check-label" for="rbFemme">
                                       Femme
                   
                                   </label>
                               </div>
                           </div>
                       </div>
                   </div>
               </div>

                   <div class="form-row">
                       <div class="form-group col-md-6">
                           <label for="txtPhone">Telephone</label>
                           <asp:TextBox class="form-control" ID="txtPhone" runat="server" placeholder="telephone" required="required" value="0"></asp:TextBox>
                       </div>
                       <div class="form-group col-md-6">
                           <label for="txtVille">Ville</label>
                           <asp:TextBox class="form-control" ID="txtVille" runat="server" placeholder="Ville"></asp:TextBox>
                       </div>
                   </div>

                     <div class="btn-check-log text-center">
                        <a class="btn-check-login ripple-effect" onclick="slide('Info-Etape2', 'Info-Etape1')">SUIVANT</a>
                     </div>
                 
               </div>
            </div>
    </section>




    <section id="Info-Etape2">

        <ul class="nav nav-pills nav-justified" role="tablist">
            <li class="nav-item">
                <a class="nav-link"  role="tab" aria-controls="Etape1" aria-selected="false" onclick="slide('Info-Etape1', 'Info-Etape2')">Etape 1</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" role="tab"  aria-controls="Etape2" aria-selected="true" onclick="slide('Info-Etape2', 'Info-Etape1')">Etape 2</a>
            </li>
        </ul>

        <div class="tab-content py-3 px-3 px-sm-0 events-tab-content">

             <div class="tab-pane fade show active" id="Etape2" role="tabpanel" aria-labelledby="Etape1-tab">

                 <div class="form-row">
                    <div class="form-group col-md-12">
                        <label for="txtNom">Profil</label>
                        <asp:TextBox ID="txtProfil" runat="server" class="form-control" placeholder="Profil"></asp:TextBox>
                    </div>
                </div>

                 <div class="form-row">
                    <div class="form-group col-md-12">
                        <label for="cvUP">C.V</label>
                        <div class="custom-file">
                            <asp:fileupload runat="server" class="custom-file-input" ID="cvUP" aria-describedby="inputGroupFileAddon03"></asp:fileupload>
                            <label class="custom-file-label" for="inputGroupFile03">Choisir Votre C.V</label>
                        </div>
                    </div>
                </div>

                 <div class="form-row">
                    <div class="form-group col-md-12">
                        <label for="txtProffesion">Profession</label>
                        <asp:TextBox ID="txtProffesion" runat="server"  placeholder="Profession" value=""></asp:TextBox>
                    </div>
                </div>

                 <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="txtExpe">Niveau d'etude</label>
                            <asp:DropDownList class="form-control" ID="dlNiveau" runat="server"></asp:DropDownList>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="txtExpe">Diplome</label>
                            <asp:DropDownList class="form-control" ID="dlDiplom" runat="server"></asp:DropDownList>
                        </div>
                </div>

                <div class="form-row">
                    <div class="form-group col-md-12">
                        <label for="txtExpe">Années d'experience</label>
                        <asp:TextBox ID="txtExpe" runat="server" class="form-control" placeholder="Profil" required="required" value="0"></asp:TextBox>
                    </div>
                </div>

             </div>

            <div class="btn-check-log text-center">

                <asp:Button ID="btnComp" class="btn btn-primary" runat="server" Text="Completer" OnClick="btnComp_Click" />

            </div>

        </div>
    </section>

    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red"/>

</div>
     <script src="../Scripts/alerts.js"></script>
    <script>
            document.getElementById('Info-Etape2').hidden = true;
        function slide(id1, id2)
        {
                    document.getElementById(id1).hidden = false;
                    document.getElementById(id2).hidden = true;
        }

    </script>

</asp:Content>