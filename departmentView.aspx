<%@ Page Language="C#" AutoEventWireup="true" CodeFile="departmentView.aspx.cs" Inherits="departmentView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/departmentstyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="hom">
        <a class="link" href="departmentDel.aspx"><b>Delete Department</b></a>
        <a class="link" href="departmentEdit.aspx"><b>Edit Department</b></a>
        <a class="link" href="departmentAdd.aspx"><b>Add Department</b></a>
        <a class="link" href="departmentView.aspx"><b>View Department</b></a>
        <a href="main.aspx"><b>Home</b></a></div><br />
        
        
            <h3 align="center"style="color:cyan"><b>View  Departments</b></h3>
        <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Department_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Department_id" HeaderText="Department_id" InsertVisible="False" ReadOnly="True" SortExpression="Department_id" />
                <asp:BoundField DataField="Department_name" HeaderText="Department_name" SortExpression="Department_name" />
                <asp:BoundField DataField="Department_type" HeaderText="Department_type" SortExpression="Department_type" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" SelectCommand="SELECT * FROM [department_details]"></asp:SqlDataSource>
        </center>
    </form>
</body>
</html>
