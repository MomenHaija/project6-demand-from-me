<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edituser.aspx.cs" Inherits="project6users.edituser" %>

<!DOCTYPE html>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.css">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../../vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="../../vendors/base/vendor.bundle.base.css">
  
  <link rel="stylesheet" href="../../css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="../../images/favicon.png" />
    
  <style>
            .parentdiv {
        font-size: 24px;
    }
    #Label1{
        width:80%;
        margin-left:auto;
        margin-right:auto;
    }
   body{
    background-color:rgba(58 150 121 / 0.1);
   }
  .container {
    margin: 0 auto;
    padding-left:9px;
  }
  
  .choose {
    height: 40px;
  }
  .fa {
    margin-right: 20px;
    font-size: 30px;
    color: gray;
    float: right;
  }  
  .categorybook{
      display:grid;
      grid-template-columns:repeat(auto-fill,minmax(300px,1fr));

  }
  
  .book {
      background-color:white;
    display: inline-block;
    width:300px;
    height: fit-content;
    box-shadow: 0 0 20px #aaa;
    margin: 25px;
    padding: 10px 10px 0 10px;
    vertical-align: top;
    transition: height 1s;
  }
  #Label1{
      display:flex;
      justify-content:center;

  }
  .cover {
    
    height: 80%;
    overflow: hidden;
  }
  .parentdiv{
      margin-top:5px;
  }
  .cover img {
    width: 100%;
    height:350px;
  }
  
  .book p {
    margin-top: 12px;
    font-size: 20px;
  }
  
  .book .author {
    font-size: 1.25rem;
    color:gray;

  }
  @media (max-width: 941px) {
    .container {
      max-width: 700px;
      display:flex;
      justify-content:center;
    }
   
    .book {
      margin: 49px;
    }
  }
  @media only screen and (max-width: 768px) {
    .book {
      display: block;
      margin: 0 auto;
      margin-top: 50px;
    }

    .container{
        padding-left:27px;
    }
  }
  
  h1 {
    color: gray;
    text-align: center;
    font-size: 50px;
    margin-bottom: -3px;
  }
      @media only screen and (min-device-width:1000px) {

          #list-th {
              padding-left: 46px;
          }
          .container{
              margin-left:3.5%;
          }
}
@media only screen and (min-device-width: 0px) and (max-device-width:480px) {

    .book .author {
        font-size: 20px;
    }

    #list-th {
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .book{
        width:400px;
    }
    .book p {
        font-size: 3rem;
    }

    .parentdiv {
        font-size: 3rem;
    }
    .container{
        display: flex;
    flex-direction: column;
        align-items: center;
    }
 
}
      .containerdiv{
          display:flex;
          justify-content:center;
          background-color:white;
          align-items:center;
          
          width:50%;
          margin-left:auto;
          margin-right:auto;
          height:fit-content;
          width:fit-content;
          padding:2% 5%;
          border-radius:10px;
      }
      .containeredit{
          display:flex;
          justify-content:center;
          align-items:center;
          height:100vh !important;
      }
      table tr{
          margin-bottom:2.5% !important;
      }
  </style>
       
</head>
<body>
    <form id="form1" runat="server">
  <div class="containeredit">

 
            <div class="containerdiv">
<div class="containertable form-group">
    <table>

        
       
                <tr>
            <td>
                            <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>

            </td>
            <td>
                            <asp:TextBox ID="FirstName" CssClass="tb form-control input-lg" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>
                            <asp:Label ID="lbcategoryname" runat="server" Text="Last Name"></asp:Label>

            </td>
            <td>
                                            <asp:TextBox ID="LastName" CssClass="tb form-control input-lg" runat="server"></asp:TextBox>


            </td>
        </tr>
        <tr>
            <td>
                            <asp:Label ID="Author" runat="server" Text="City"></asp:Label>

            </td>
            <td>
                            <asp:DropDownList ID="City"  runat="server" cssClass="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></asp:DropDownList>

            </td>
        </tr>
        <tr>
            <td>
                            <asp:Label ID="lbproductprice" runat="server" Text="Address"></asp:Label>

            </td>
            <td>
                            <asp:TextBox ID="Address" CssClass="tb form-control input-lg" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>
                            <asp:Label ID="lbquantity" runat="server" Text="Phone Number"></asp:Label>

            </td>
            <td>
                            <asp:TextBox ID="PhoneNumber" CssClass="tb form-control input-lg" runat="server"></asp:TextBox>

            </td>
        </tr>
     
        <tr>
            <td>
                            <asp:Label ID="lbsale" runat="server" Text="Email"></asp:Label>

            </td>
            <td>
                            <asp:TextBox ID="Email" CssClass="tb form-control input-lg" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" accept=".png,.jpg,.jpeg,.gif" />

            </td>
            <td>

            </td>
        </tr>
      <tr>
        <td>

        </td>
            <td>
                            <asp:Image ID="Image1" runat="server" width="200px" Height="200px"/>

            </td>
        </tr>

    </table>
    <div class="btnadd">

                    <asp:Button ID="addedit" cssclass="btn btn-primary"  runat="server" Text="Update" OnClick="addedit_Click"  />

    </div>
    </div>
     </div>
         </div>
    </form>
</body>
        
</html>
