using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project6forme
{
    public partial class Singlecategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                string id = Request.QueryString["category_id"];
                string categoryname = Request.QueryString["category_name"];
                SqlConnection CONN = new SqlConnection("data source=DESKTOP-B9B8CS7;database=projecttest;Integrated security=SSPI");
                SqlCommand command = new SqlCommand($"SELECT*FROM books where category_id={id} and taken=0 and approve=1;", CONN);
                CONN.Open();
                SqlDataReader reader = command.ExecuteReader();
                Label1.Text = "<div class=containerbook>";
                while (reader.Read())
                {
                    Label1.Text +=
                        "<div class=\"book read\">" +
                        $"<div class=\"cover\"><img src='{reader[8]}'>" +
                        $"</div><div class=\"description\"><p class=\"title\">{reader[4]}<br>" +
                        $"<p class=\"parentdiv\"><span class=\"author\">author:{reader[9]}</span></p>" +
                        $"<p><a href =\"http://localhost:54245/Single%20Book?book_id={reader[0]}\" class=\"btn btn-info\">See More Details</a></p>" +
                        "</div></div>";
                }
                Label1.Text += "</div>";

                CONN.Close();
            }
            catch (Exception E)
            {
                Response.Redirect("http://localhost:53925/Category.aspx");
            }
        }
    }
}