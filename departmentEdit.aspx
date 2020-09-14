<%@ Page Language="VB" AutoEventWireup="false" CodeFile="departmentEdit.aspx.vb" Inherits="departmentEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/departmentstyle.css" rel="stylesheet" />
    <style>
        .image {
            content:url('images/cool-background.jpg');
        }
    </style>
</head>
<body bgcolor="#00FCB0" >
    <div >
    <form id="form1" runat="server">
        <div class="hom">
        <a class="link" href="departmentDelete.aspx"><b>Delete Department</b></a>
        <a class="link" href="departmentEdit.aspx"><b>Edit Department</b></a>
        <a class="link" href="departmentAdd.aspx"><b>Add Department</b></a>
        <a class="link" href="departmentView.aspx"><b>View Department</b></a>
        <a href="main.html"><b>Home</b></a></div>
            <h3 align="center"><b>Edit Department Details </b></h3>
            <center>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Department_id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Department_id" HeaderText="Department_id" InsertVisible="False" ReadOnly="True" SortExpression="Department_id" />
                        <asp:BoundField DataField="Department_name" HeaderText="Department_name" SortExpression="Department_name" />
                        <asp:BoundField DataField="Department_type" HeaderText="Department_type" SortExpression="Department_type" />
                        <asp:CommandField ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" DeleteCommand="DELETE FROM [department_details] WHERE [Department_id] = @original_Department_id AND (([Department_name] = @original_Department_name) OR ([Department_name] IS NULL AND @original_Department_name IS NULL)) AND (([Department_type] = @original_Department_type) OR ([Department_type] IS NULL AND @original_Department_type IS NULL))" InsertCommand="INSERT INTO [department_details] ([Department_name], [Department_type]) VALUES (@Department_name, @Department_type)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [department_details]" UpdateCommand="UPDATE [department_details] SET [Department_name] = @Department_name, [Department_type] = @Department_type WHERE [Department_id] = @original_Department_id AND (([Department_name] = @original_Department_name) OR ([Department_name] IS NULL AND @original_Department_name IS NULL)) AND (([Department_type] = @original_Department_type) OR ([Department_type] IS NULL AND @original_Department_type IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Department_id" Type="Int32" />
                        <asp:Parameter Name="original_Department_name" Type="String" />
                        <asp:Parameter Name="original_Department_type" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Department_name" Type="String" />
                        <asp:Parameter Name="Department_type" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Department_name" Type="String" />
                        <asp:Parameter Name="Department_type" Type="String" />
                        <asp:Parameter Name="original_Department_id" Type="Int32" />
                        <asp:Parameter Name="original_Department_name" Type="String" />
                        <asp:Parameter Name="original_Department_type" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </center>
                
                
  
    </form>
        </div>
</body>
</html>
