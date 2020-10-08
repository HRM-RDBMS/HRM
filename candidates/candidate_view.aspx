<%@ Page Language="C#" AutoEventWireup="true" CodeFile="candidate_view.aspx.cs" Inherits="candidates_candidate_view" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="applying_date" HeaderText="applying_date" SortExpression="applying_date" />
                    <asp:ImageField DataImageUrlField="cv" HeaderText="cv">
                    </asp:ImageField>
                    <asp:ImageField DataImageUrlField="profile_pic" HeaderText="pic">
                    </asp:ImageField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" SelectCommand="SELECT [id], [name], [dob], [applying_date], [profile_pic], [cv] FROM [candidate_details]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
