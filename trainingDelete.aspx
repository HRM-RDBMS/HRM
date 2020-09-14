<%@ Page Language="C#" AutoEventWireup="true" CodeFile="trainingDelete.aspx.cs" Inherits="trainingDelete" %>

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
        <a href="main.html"><b>Home</b></a></div>
    <br />
    
        <h3 align="center"style="color:brown"><b>Delete Training Details</b></h3>
    <asp:GridView ID="GridView1" runat="server" Width="643px" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="training_id" DataSourceID="SqlDataSource1" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="training_id" HeaderText="training_id" InsertVisible="False" ReadOnly="True" SortExpression="training_id" />
            <asp:BoundField DataField="training_name" HeaderText="training_name" SortExpression="training_name" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" DeleteCommand="DELETE FROM [training_details] WHERE [training_id] = @training_id" InsertCommand="INSERT INTO [training_details] ([training_name], [tcategory_code], [tcategory_name], [training_description], [start_date], [end_date], [training_company], [training_place], [training_time]) VALUES (@training_name, @tcategory_code, @tcategory_name, @training_description, @start_date, @end_date, @training_company, @training_place, @training_time)" SelectCommand="SELECT * FROM [training_details]" UpdateCommand="UPDATE [training_details] SET [training_name] = @training_name, [tcategory_code] = @tcategory_code, [tcategory_name] = @tcategory_name, [training_description] = @training_description, [start_date] = @start_date, [end_date] = @end_date, [training_company] = @training_company, [training_place] = @training_place, [training_time] = @training_time WHERE [training_id] = @training_id">
            <DeleteParameters>
                <asp:Parameter Name="training_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="training_name" Type="String" />
                <asp:Parameter Name="tcategory_code" Type="Int32" />
                <asp:Parameter Name="tcategory_name" Type="String" />
                <asp:Parameter Name="training_description" Type="String" />
                <asp:Parameter DbType="Date" Name="start_date" />
                <asp:Parameter DbType="Date" Name="end_date" />
                <asp:Parameter Name="training_company" Type="String" />
                <asp:Parameter Name="training_place" Type="String" />
                <asp:Parameter DbType="Time" Name="training_time" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="training_name" Type="String" />
                <asp:Parameter Name="tcategory_code" Type="Int32" />
                <asp:Parameter Name="tcategory_name" Type="String" />
                <asp:Parameter Name="training_description" Type="String" />
                <asp:Parameter DbType="Date" Name="start_date" />
                <asp:Parameter DbType="Date" Name="end_date" />
                <asp:Parameter Name="training_company" Type="String" />
                <asp:Parameter Name="training_place" Type="String" />
                <asp:Parameter DbType="Time" Name="training_time" />
                <asp:Parameter Name="training_id" Type="Int32" />
            </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
