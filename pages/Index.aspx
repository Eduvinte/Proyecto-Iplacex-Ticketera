<%@ Page   EnableEventValidation="false" Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Peces.pages.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container">
        <div class="row mb-5">
            <div class="col">
                <h2>Todos los tickets</h2>
            </div>
        </div>
        <!--Use  EnableEventValidation="false" para omitir error, en el servidor de produccion se debe eliminar por riesgos de seguridad-->
        <!--El template se usa para crear tablas el OnRowCommand="GvTickets_RowCommand" llame la funcion en el .cs    CommandName="EliminarTicket"  contiene el nombre del valor     CommandArgument='<%# Eval("ID") %>' el id en el este caso-->
        <asp:GridView ID="gvTickets" runat="server" CssClass="table table-striped" AutoGenerateColumns="False" OnRowCommand="GvTickets_RowCommand" DataKeyNames="ID">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                <asp:BoundField DataField="Rut" HeaderText="RUT" />
                <asp:BoundField DataField="Telefono" HeaderText="Teléfono" />
                <asp:BoundField DataField="Clienttype" HeaderText="Tipo de Cliente" />
                <asp:BoundField DataField="Nombreproducto" HeaderText="Producto" />
                <asp:BoundField DataField="DescriptionProduct" HeaderText="Descripción" />
                <asp:BoundField DataField="CreateDate" HeaderText="Fecha de Creación" DataFormatString="{0:dd/MM/yyyy HH:mm}" />
                <asp:TemplateField HeaderText="Acciones">
                    <ItemTemplate>
                        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" 
                            CommandName="EliminarTicket" 
                            CommandArgument='<%# Eval("ID") %>'
                            CssClass="btn btn-danger btn-sm"
                            OnClientClick="return confirm('¿Está seguro de que desea eliminar este ticket?');" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:Label ID="lblMensajIndex" runat="server" CssClass="alert alert-info" Visible="false"></asp:Label>
    </div>
</asp:Content>
