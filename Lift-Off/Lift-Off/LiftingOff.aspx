<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LiftingOff.aspx.cs" Inherits="Lift_Off.LiftingOff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        Welcome to LiftOff!!!!!<br />
        <br />
        These are our current lifters<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                <asp:BoundField DataField="BodyFat" HeaderText="BodyFat" SortExpression="BodyFat" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LiftOffConnectionString %>" SelectCommand="SELECT * FROM [Person]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
