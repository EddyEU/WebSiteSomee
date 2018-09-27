<%@ page language="C#" autoeventwireup="true" inherits="index, App_Web_byy2voxa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h1>
                Hola Mundo
            </h1>

            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="idPersona" DataSourceID="SqlDataSource1">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

                <Columns>
                    <asp:BoundField DataField="idPersona" HeaderText="idPersona" ReadOnly="True" SortExpression="idPersona"></asp:BoundField>
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre"></asp:BoundField>
                    <asp:BoundField DataField="apellidoP" HeaderText="apellidoP" SortExpression="apellidoP"></asp:BoundField>
                    <asp:BoundField DataField="apellidoM" HeaderText="apellidoM" SortExpression="apellidoM"></asp:BoundField>
                    <asp:BoundField DataField="fechaNacimiento" HeaderText="fechaNacimiento" SortExpression="fechaNacimiento"></asp:BoundField>
                    <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado"></asp:BoundField>
                </Columns>

                <EditRowStyle BackColor="#2461BF"></EditRowStyle>

                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

                <RowStyle BackColor="#EFF3FB"></RowStyle>

                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#F5F7FB"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#6D95E1"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#E9EBEF"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#4870BE"></SortedDescendingHeaderStyle>
            </asp:GridView>

            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:EBoSoftConnectionString %>' DeleteCommand="DELETE FROM [PERSONA] WHERE [idPersona] = @original_idPersona AND [nombre] = @original_nombre AND [apellidoP] = @original_apellidoP AND [apellidoM] = @original_apellidoM AND (([fechaNacimiento] = @original_fechaNacimiento) OR ([fechaNacimiento] IS NULL AND @original_fechaNacimiento IS NULL)) AND [estado] = @original_estado" InsertCommand="INSERT INTO [PERSONA] ([idPersona], [nombre], [apellidoP], [apellidoM], [fechaNacimiento], [estado]) VALUES (@idPersona, @nombre, @apellidoP, @apellidoM, @fechaNacimiento, @estado)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [PERSONA]" UpdateCommand="UPDATE [PERSONA] SET [nombre] = @nombre, [apellidoP] = @apellidoP, [apellidoM] = @apellidoM, [fechaNacimiento] = @fechaNacimiento, [estado] = @estado WHERE [idPersona] = @original_idPersona AND [nombre] = @original_nombre AND [apellidoP] = @original_apellidoP AND [apellidoM] = @original_apellidoM AND (([fechaNacimiento] = @original_fechaNacimiento) OR ([fechaNacimiento] IS NULL AND @original_fechaNacimiento IS NULL)) AND [estado] = @original_estado">
                <DeleteParameters>
                    <asp:Parameter Name="original_idPersona" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="original_nombre" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_apellidoP" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_apellidoM" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_fechaNacimiento" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="original_estado" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="idPersona" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="nombre" Type="String"></asp:Parameter>
                    <asp:Parameter Name="apellidoP" Type="String"></asp:Parameter>
                    <asp:Parameter Name="apellidoM" Type="String"></asp:Parameter>
                    <asp:Parameter Name="fechaNacimiento" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="estado" Type="Int32"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nombre" Type="String"></asp:Parameter>
                    <asp:Parameter Name="apellidoP" Type="String"></asp:Parameter>
                    <asp:Parameter Name="apellidoM" Type="String"></asp:Parameter>
                    <asp:Parameter Name="fechaNacimiento" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="estado" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="original_idPersona" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="original_nombre" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_apellidoP" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_apellidoM" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_fechaNacimiento" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="original_estado" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
