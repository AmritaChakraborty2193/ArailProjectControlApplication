using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;
using System.Data;

namespace ArailProjectControlApplication
{
    public partial class Login : System.Web.UI.Page
    {
        string connect = ConfigurationManager.ConnectionStrings["connect"].ToString();
       
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void LoginForm(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connect);
            con.Open();
            string query = "submitlogin";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Password", loginpassword.Text);
            cmd.Parameters.AddWithValue("@Name", emailid.Text);
            string output = cmd.ExecuteScalar().ToString();
            if(output =="1")
            {
                Session["user"] = emailid.Text;
                string query1 = "verifyuser";  
                SqlCommand cmd1 = new SqlCommand(query1, con);
                cmd1.CommandType = CommandType.StoredProcedure;
                cmd1.Parameters.AddWithValue("@Name", emailid.Text);
                string output1 = cmd1.ExecuteScalar().ToString();
                if (output1 == "Admin")
                {
                    Response.Redirect("RunMaster.aspx");
                }
                else if (output1 == "Procurement")
                {
                    Response.Redirect("RunProc.aspx");
                }
                else if (output1 == "BOQ")
                {
                    Response.Redirect("RunBoq.aspx");
                }
                else if (output1 == "Drawing")
                {
                    Response.Redirect("RunDraw.aspx");
                }
                else if (output1 == "Procurement User")
                {
                    Response.Redirect("RunProcUser.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('LOGIN FAILED');</script>");
            }

        }
        protected void ForgotForm(object sender, EventArgs e)
        {
            string username = string.Empty;
            string password = string.Empty;
            string constr = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT Name, [Password] FROM Users WHERE Name = @Name"))
                {
                    cmd.Parameters.AddWithValue("@Name", email.Text.Trim());
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        if (sdr.Read())
                        {
                            username = sdr["Name"].ToString();
                            password = sdr["Password"].ToString();
                        }
                    }
                    con.Close();
                }
            }
            if (!string.IsNullOrEmpty(password))
            {
                MailMessage mm = new MailMessage("sender@gmail.com", email.Text.Trim());
                mm.Subject = "Password Recovery";
                mm.Body = string.Format("Hi {0},<br /><br />Your password is {1}.<br /><br />Thank You.", username, password);
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential();
                NetworkCred.UserName = "sender@gmail.com";
                NetworkCred.Password = "<Password>";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
                Response.Write("<script>alert('Password has been sent to your email address.');</script>");

            }
            else
            {
                Response.Write("<script>alert('This email address does not match our records.');</script>");
            }

        }
    }
}