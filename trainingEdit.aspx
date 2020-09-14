<%@ Page Language="C#" AutoEventWireup="true" CodeFile="trainingEdit.aspx.cs" Inherits="trainingEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/trainingDetails.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="hom">
    <a class="link" href="trainingDelete.aspx"><b>Delete Training</b></a>
        <a class="link" href="trainingEdit.aspx"><b>Edit Training</b></a>
        <a class="link" href="trainingAdd.aspx"><b>Add Training</b></a>
        <a class="link" href="comingsoon_02/soon/comingSoon.html"><b>Add Employee</b></a>
        <a class="link" href="trainingView.aspx"><b>View Trainings</b></a>
        <a href="index.html"><b>Home</b></a></div>
    <br />
        <center>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="training_id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="training_id" HeaderText="training_id" InsertVisible="False" ReadOnly="True" SortExpression="training_id" />
                    <asp:BoundField DataField="training_name" HeaderText="training_name" SortExpression="training_name" />
                    <asp:BoundField DataField="tcategory_code" HeaderText="tcategory_code" SortExpression="tcategory_code" />
                    <asp:BoundField DataField="training_description" HeaderText="training_description" SortExpression="training_description" />
                    <asp:BoundField DataField="start_date" HeaderText="start_date" SortExpression="start_date" />
                    <asp:BoundField DataField="end_date" HeaderText="end_date" SortExpression="end_date" />
                    <asp:BoundField DataField="training_company" HeaderText="training_company" SortExpression="training_company" />
                    <asp:BoundField DataField="training_time" HeaderText="training_time" SortExpression="training_time" />
                    <asp:BoundField DataField="training_place" HeaderText="training_place" SortExpression="training_place" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" DeleteCommand="DELETE FROM [training_details] WHERE [training_id] = @original_training_id AND (([training_name] = @original_training_name) OR ([training_name] IS NULL AND @original_training_name IS NULL)) AND (([tcategory_code] = @original_tcategory_code) OR ([tcategory_code] IS NULL AND @original_tcategory_code IS NULL)) AND (([training_description] = @original_training_description) OR ([training_description] IS NULL AND @original_training_description IS NULL)) AND (([start_date] = @original_start_date) OR ([start_date] IS NULL AND @original_start_date IS NULL)) AND (([end_date] = @original_end_date) OR ([end_date] IS NULL AND @original_end_date IS NULL)) AND (([training_company] = @original_training_company) OR ([training_company] IS NULL AND @original_training_company IS NULL)) AND (([training_time] = @original_training_time) OR ([training_time] IS NULL AND @original_training_time IS NULL)) AND (([training_place] = @original_training_place) OR ([training_place] IS NULL AND @original_training_place IS NULL))" InsertCommand="INSERT INTO [training_details] ([training_name], [tcategory_code], [training_description], [start_date], [end_date], [training_company], [training_time], [training_place]) VALUES (@training_name, @tcategory_code, @training_description, @start_date, @end_date, @training_company, @training_time, @training_place)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [training_id], [training_name], [tcategory_code], [training_description], [start_date], [end_date], [training_company], [training_time], [training_place] FROM [training_details]" UpdateCommand="UPDATE [training_details] SET [training_name] = @training_name, [tcategory_code] = @tcategory_code, [training_description] = @training_description, [start_date] = @start_date, [end_date] = @end_date, [training_company] = @training_company, [training_time] = @training_time, [training_place] = @training_place WHERE [training_id] = @original_training_id AND (([training_name] = @original_training_name) OR ([training_name] IS NULL AND @original_training_name IS NULL)) AND (([tcategory_code] = @original_tcategory_code) OR ([tcategory_code] IS NULL AND @original_tcategory_code IS NULL)) AND (([training_description] = @original_training_description) OR ([training_description] IS NULL AND @original_training_description IS NULL)) AND (([start_date] = @original_start_date) OR ([start_date] IS NULL AND @original_start_date IS NULL)) AND (([end_date] = @original_end_date) OR ([end_date] IS NULL AND @original_end_date IS NULL)) AND (([training_company] = @original_training_company) OR ([training_company] IS NULL AND @original_training_company IS NULL)) AND (([training_time] = @original_training_time) OR ([training_time] IS NULL AND @original_training_time IS NULL)) AND (([training_place] = @original_training_place) OR ([training_place] IS NULL AND @original_training_place IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_training_id" Type="Int32" />
                    <asp:Parameter Name="original_training_name" Type="String" />
                    <asp:Parameter Name="original_tcategory_code" Type="Int32" />
                    <asp:Parameter Name="original_training_description" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_start_date" />
                    <asp:Parameter DbType="Date" Name="original_end_date" />
                    <asp:Parameter Name="original_training_company" Type="String" />
                    <asp:Parameter DbType="Time" Name="original_training_time" />
                    <asp:Parameter Name="original_training_place" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="training_name" Type="String" />
                    <asp:Parameter Name="tcategory_code" Type="Int32" />
                    <asp:Parameter Name="training_description" Type="String" />
                    <asp:Parameter DbType="Date" Name="start_date" />
                    <asp:Parameter DbType="Date" Name="end_date" />
                    <asp:Parameter Name="training_company" Type="String" />
                    <asp:Parameter DbType="Time" Name="training_time" />
                    <asp:Parameter Name="training_place" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="training_name" Type="String" />
                    <asp:Parameter Name="tcategory_code" Type="Int32" />
                    <asp:Parameter Name="training_description" Type="String" />
                    <asp:Parameter DbType="Date" Name="start_date" />
                    <asp:Parameter DbType="Date" Name="end_date" />
                    <asp:Parameter Name="training_company" Type="String" />
                    <asp:Parameter DbType="Time" Name="training_time" />
                    <asp:Parameter Name="training_place" Type="String" />
                    <asp:Parameter Name="original_training_id" Type="Int32" />
                    <asp:Parameter Name="original_training_name" Type="String" />
                    <asp:Parameter Name="original_tcategory_code" Type="Int32" />
                    <asp:Parameter Name="original_training_description" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_start_date" />
                    <asp:Parameter DbType="Date" Name="original_end_date" />
                    <asp:Parameter Name="original_training_company" Type="String" />
                    <asp:Parameter DbType="Time" Name="original_training_time" />
                    <asp:Parameter Name="original_training_place" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </center>
    </form>
</body>
</html>
