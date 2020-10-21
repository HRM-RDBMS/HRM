<%@ Page Language="C#" AutoEventWireup="true" CodeFile="training_view.aspx.cs" Inherits="Training_training_view" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/trainingDetails.css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server"> 
    <center>
<div class="hom">
    
    <a class="link" href="training_delete.aspx"><b>Delete Training</b></a>
        <a class="link" href="training_edit.aspx"><b>Edit Training</b></a>
        <a class="link" href="training_add.aspx"><b>Add Training</b></a>
        <a class="link" href="add_employee_training.aspx"><b>Add Employee</b></a>
        <a class="link" href="training_view.aspx"><b>View Trainings</b></a>
        <a href="../main.aspx"><b>Home</b></a></div>
    <br />
        <h3 align="center"style="color:brown"><b>View Training Details</b></h3>
    
    <asp:GridView ID="GridView1" runat="server" Width="643px" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="training_id" DataSourceID="SqlDataSource1" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="training_id" HeaderText="training_id" InsertVisible="False" ReadOnly="True" SortExpression="training_id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:BoundField DataField="start_date" HeaderText="start_date" SortExpression="start_date" />
            <asp:BoundField DataField="end_date" HeaderText="end_date" SortExpression="end_date" />
            <asp:BoundField DataField="company" HeaderText="company" SortExpression="company" />
            <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    </center>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" SelectCommand="SELECT * FROM [training_details]"></asp:SqlDataSource>
    

    </form>
    </body>
</html>