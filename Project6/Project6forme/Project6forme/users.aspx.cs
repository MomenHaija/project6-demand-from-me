using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project6forme
{
    public partial class users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
     
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            //string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            //SqlConnection Con = new SqlConnection(connectionString);
            //// SqlConnection Con = new SqlConnection("data source=DESKTOP-V50HPE1\\SQLEXPRESS; database=project6; integrated security=SSPI");

            //Con.Open();
            //string query = $"select count(category_id) from  category";
            //SqlCommand rolecommand = new SqlCommand(query, Con);
            //int id = Convert.ToInt32(rolecommand.ExecuteScalar()) + 2;
            //Con.Close();

            //ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);


            ////SqlDataSource1.InsertParameters["category_name"].DefaultValue = TextBox4.Text;
            ////SqlDataSource1.InsertParameters["category_description"].DefaultValue = TextBox2.Text;
            ////SqlDataSource1.InsertParameters["category_id"].DefaultValue = Convert.ToString(id);

            ////////////////////////////////////////////////////////////////////////////////////////////////



            //if (FileUpload1.HasFile)
            //{
            //    FileUpload1.SaveAs(System.IO.Path.Combine(Server.MapPath("img"), FileUpload1.FileName));
            //    SqlDataSource1.InsertParameters["catergoy_image"].DefaultValue = "img\\" + FileUpload1.FileName;
            //}
            //else
            //{
            //}
            ////SqlDataSource1.InsertParameters["catergoy_image"].DefaultValue = TextBox2.Text;
            //SqlDataSource1.Insert();

        }
    }
}