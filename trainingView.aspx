<%@ Page Language="C#" AutoEventWireup="true" CodeFile="trainingView.aspx.cs" Inherits="trainingView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/trainingDetails.css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server"> 
    <center>
<div class="hom">
    
    <a class="link" href="trainingDelete.aspx"><b>Delete Training</b></a>
        <a class="link" href="trainingEdit.aspx"><b>Edit Training</b></a>
        <a class="link" href="trainingAdd.aspx"><b>Add Training</b></a>
        <a class="link" href="comingsoon_02/soon/comingSoon.html"><b>Add Employee</b></a>
        <a class="link" href="trainingView.aspx"><b>View Trainings</b></a>
        <a href="main.aspx"><b>Home</b></a></div>
    <br />
        <h3 align="center"style="color:brown"><b>View Training Details</b></h3>
    
    <asp:GridView ID="GridView1" runat="server" Width="643px" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="training_id" DataSourceID="SqlDataSource1" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="training_id" HeaderText="training_id" InsertVisible="False" ReadOnly="True" SortExpression="training_id" />
            <asp:BoundField DataField="Expr1" HeaderText="Expr1" SortExpression="Expr1" />
            <asp:BoundField DataField="tcategory_code" HeaderText="tcategory_code" SortExpression="tcategory_code" />
            <asp:BoundField DataField="training_description" HeaderText="training_description" SortExpression="training_description" />
            <asp:BoundField DataField="start_date" HeaderText="start_date" SortExpression="start_date" />
            <asp:BoundField DataField="end_date" HeaderText="end_date" SortExpression="end_date" />
            <asp:BoundField DataField="training_company" HeaderText="training_company" SortExpression="training_company" />
            <asp:BoundField DataField="training_place" HeaderText="training_place" SortExpression="training_place" />
            <asp:BoundField DataField="training_time" HeaderText="training_time" SortExpression="training_time" />
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

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" SelectCommand="SELECT training_details.training_id, training_details.tcategory_code, training_details.tcategory_name, training_details.training_description, training_details.start_date, training_details.end_date, training_details.training_company, training_details.training_place, training_details.training_time, training_category.tcategory_name AS Expr1 FROM training_details INNER JOIN training_category ON training_details.tcategory_code = training_category.tcategory_code"></asp:SqlDataSource>
    

    </form>
    </body>
</html>