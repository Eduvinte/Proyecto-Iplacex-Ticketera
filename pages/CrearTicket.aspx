
<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="CrearTicket.aspx.cs" Inherits="Peces.pages.CrearTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <h1 class="text-center">Crear ticket</h1>
    <div class="container">
        <div class="row">
            <div class="col">

                <!--Usar los asp: Para poder reconocer y obtener la data en el archivo .cs por el ID del TextBox se puede obtener la data en el .cs-->

                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="vgCrearTicket" />

                <div class="mb-3">

                    <asp:Label runat="server" AssociatedControlID="txtNombre" CssClass="form-label">Nombre</asp:Label>

                    <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" placeholder="Ingrese tu nombre"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre"
                        
                        ErrorMessage="El nombre es obligatorio" Display="Dynamic" ValidationGroup="vgCrearTicket">

                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="revNombre" runat="server" ControlToValidate="txtNombre" 

                        ErrorMessage="El nombre debe tener al menos 5 caracteres" ValidationExpression=".{5,}" 
                        Display="Dynamic" ValidationGroup="vgCrearTicket">

                    </asp:RegularExpressionValidator>

                    <!---Campo Rut--->

                    <asp:Label runat="server" AssociatedControlID="txtRut" CssClass="form-label">Rut</asp:Label>

                    <asp:TextBox ID="txtRut" runat="server" CssClass="form-control" placeholder="Ingrese tu rut">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator ID="rfvRut" runat="server" ControlToValidate="txtRut" 
                        ErrorMessage="El rut es obligatorio" Display="Dynamic" ValidationGroup="vgCrearTicket">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="revRut" runat="server" ControlToValidate="txtRut" 
                        ErrorMessage="Formato de RUT inválido" ValidationExpression="^(\d{8,9}-[\dkK])$" 
                        Display="Dynamic" ValidationGroup="vgCrearTicket">
                    </asp:RegularExpressionValidator>

                     <!---Fim Campo Rut--->

                    <asp:Label runat="server" AssociatedControlID="txtTelefono" CssClass="form-label">Teléfono</asp:Label>
                    <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control" placeholder="Ingrese tu teléfono"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono" 
                        ErrorMessage="El número telefónico es obligatorio" Display="Dynamic" ValidationGroup="vgCrearTicket"></asp:RequiredFieldValidator>

                    <asp:Label runat="server" AssociatedControlID="txtEmail" CssClass="form-label">Email</asp:Label>

                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Ingrese tu email" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" 
                        ErrorMessage="El email es obligatorio" Display="Dynamic" ValidationGroup="vgCrearTicket"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" 
                        ErrorMessage="Formato de email inválido" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" 
                        Display="Dynamic" ValidationGroup="vgCrearTicket"></asp:RegularExpressionValidator>

                    <asp:Label runat="server" AssociatedControlID="ddlTipoCliente" CssClass="form-label">Tipo de Cliente</asp:Label>
                    <asp:DropDownList ID="ddlTipoCliente" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Seleccionar" Value="" />
                        <asp:ListItem Text="Persona Natural" Value="PersonaNatural" />
                        <asp:ListItem Text="Empresa" Value="Empresa" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvTipoCliente" runat="server" ControlToValidate="ddlTipoCliente" 
                        ErrorMessage="Debe seleccionar un tipo de cliente" InitialValue="" 
                        Display="Dynamic" ValidationGroup="vgCrearTicket"></asp:RequiredFieldValidator>

                    <h3 class="mt-5">Detalles del ticket</h3>

                    <asp:Label runat="server" AssociatedControlID="txtNombreProducto" CssClass="form-label">Nombre del producto</asp:Label>
                    <asp:TextBox ID="txtNombreProducto" runat="server" CssClass="form-control" placeholder="Nombre del producto"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvNombreProducto" runat="server" ControlToValidate="txtNombreProducto" 
                        ErrorMessage="El nombre del producto es obligatorio" Display="Dynamic" ValidationGroup="vgCrearTicket"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revNombreProducto" runat="server" ControlToValidate="txtNombreProducto" 
                        ErrorMessage="El nombre del producto debe tener al menos 10 caracteres" ValidationExpression=".{10,}" 
                        Display="Dynamic" ValidationGroup="vgCrearTicket"></asp:RegularExpressionValidator>

                    <asp:Label runat="server" AssociatedControlID="txtDescripcionProducto" CssClass="form-label">Descripción del producto</asp:Label>
                    <asp:TextBox ID="txtDescripcionProducto" runat="server" CssClass="form-control" placeholder="Descripción del producto" TextMode="MultiLine" Rows="4"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvDescripcionProducto" runat="server" ControlToValidate="txtDescripcionProducto" 
                        ErrorMessage="La descripción del producto es obligatoria" Display="Dynamic" ValidationGroup="vgCrearTicket"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revDescripcionProducto" runat="server" ControlToValidate="txtDescripcionProducto" 
                        ErrorMessage="La descripción del producto debe tener al menos 10 caracteres" ValidationExpression=".{10,}" 
                        Display="Dynamic" ValidationGroup="vgCrearTicket"></asp:RegularExpressionValidator>
                </div>
                <asp:Button ID="btnCrearTicket" runat="server" Text="Crear Ticket" CssClass="btn btn-primary" ValidationGroup="vgCrearTicket" OnClick="BtnCrearTicket_Click" />
                <asp:Label ID="lblMensaje" runat="server" CssClass="alert alert-info" Visible="false"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>