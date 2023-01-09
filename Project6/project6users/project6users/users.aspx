<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="users.aspx.cs" Inherits="project6users.users" %>

<!DOCTYPE html>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        #GridView3,#GridView4{
            width:80%;
            margin-left:auto;
            margin-right:auto;
            text-align:center;
        }
        #Image6,#Image5{
           

        }
        #buttons{
            display:flex;
            justify-content:center;
            margin:5%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projecttestConnectionString %>" SelectCommand="
SELECT U.id ,phoneNumber,Email,C.city_name, firstname, lastname, user_image, birthofdate, user_address,
A.Name FROM AspNetUsers AS U JOIN AspNetUserRoles AS R ON U.Id=R.UserId JOIN AspNetRoles AS A ON A.Id=R.RoleId 
join city As C on U.city_id=C.city_id where A.id=2;
"></asp:SqlDataSource>
        </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:projecttestConnectionString %>" SelectCommand="SELECT U.Id, U.PhoneNumber, U.Email, C.city_name, U.firstname, U.lastname, U.user_image, U.birthofdate, U.user_address, A.Name FROM AspNetUsers AS U INNER JOIN AspNetUserRoles AS R ON U.Id = R.UserId INNER JOIN AspNetRoles AS A ON A.Id = R.RoleId INNER JOIN city AS C ON U.city_id = C.city_id WHERE (A.Id = 3)"></asp:SqlDataSource>
        <div class="auto-style1" id="buttons">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Bieneficiaries" CssClass="btn btn-primary" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Donatories" CssClass="btn btn-primary" />
            <br />
            <br />
        </div>
        <asp:MultiView ID="MultiView2" runat="server" ActiveViewIndex="1">
            <asp:View ID="View3" runat="server">
                <div class="auto-style1">
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" cssClass="table table-responsive table-hover table-striped">
                        <Columns   >
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="firstname" HeaderText="First Name" SortExpression="firstname" />
                            <asp:BoundField DataField="lastname" HeaderText="Last Name" SortExpression="lastname" />
                            <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" SortExpression="PhoneNumber" />
                            <asp:BoundField DataField="city_name" HeaderText="City" SortExpression="city_name" />
                            <asp:TemplateField HeaderText="Picture" SortExpression="user_image">
                                <EditItemTemplate>
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("user_image") %>' width="100px" Height="100px"/>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="user_address" HeaderText="Address" SortExpression="user_address" />
                            <asp:BoundField DataField="Name" HeaderText="Role" SortExpression="Name" />
                            <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="deleteuseradmin?id={0}" Text="Delete" HeaderText="Delete" />
                            <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="edituser?id={0}" Text="Edit" HeaderText="Edit" />
                        </Columns>
                    </asp:GridView>
                </div>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" cssClass="table table-responsive table-hover table-striped">
                    <Columns>
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="firstname" HeaderText="First Name" SortExpression="firstname" />
                        <asp:BoundField DataField="lastname" HeaderText="Last Name" SortExpression="lastname" />
                        <asp:BoundField DataField="phoneNumber" HeaderText="Phone Number" SortExpression="phoneNumber" />
                        <asp:BoundField DataField="city_name" HeaderText="City" SortExpression="city_name" />
                        <asp:TemplateField HeaderText="Picture" SortExpression="user_image">
                            <EditItemTemplate>
                                <asp:FileUpload ID="FileUpload2" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("user_image") %>' width="100px" Height="100px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="user_address" HeaderText="Address" SortExpression="user_address" />
                        <asp:BoundField DataField="Name" HeaderText="Role" SortExpression="Name" />
                        <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="DonnerDeleteAdmin?id={0}" Text="Delete" HeaderText="Delete" />
                        <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="edituser?id={0}" Text="Edit" HeaderText="Edit" />
                    </Columns>
                </asp:GridView>
            </asp:View>
        </asp:MultiView>
    </form>
</body>
</html>
