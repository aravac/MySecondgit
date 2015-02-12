using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Admin_Default2 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Config"].ToString());
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr; Boolean b; int k;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;
        cn.Open();
        cmd.Connection = cn;
        cmd.CommandText = "select * from BankDetails where UserName='" + row.Cells[0].Text + "'";
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                txt_Username.Text = dr.GetValue(1).ToString();
                txt_AccountId.Text = dr.GetValue(0).ToString();
                txt_Accamount.Text = dr.GetValue(8).ToString();
                txt_Loanid.Text = dr.GetValue(4).ToString();
                txt_Loanamt.Text = dr.GetValue(7).ToString();
            }
        } cn.Close();
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {

    }
    protected void btn_Loan_Click(object sender, EventArgs e)
    {
        k =Convert.ToInt32(txt_Loanamt.Text) +Convert.ToInt32(txt_Accamount.Text);
        cn.Open();
        cmd.Connection = cn;
        cmd.CommandText = "Update BankDetails set AccountId='"+txt_AccountId.Text+"',LoanId='"+txt_Loanid.Text+"',MaxLoanAmount='"+txt_Loanamt.Text+"',"
            +"AccountAmount='"+Convert.ToInt32( k)+"' where UserName='" + txt_Username.Text + "'";
        int i = cmd.ExecuteNonQuery();
        GridView1.DataBind();
        if (i == 1)
        {
            Label1.Text = "Successfully Loan Sanction";
            Label1.Visible = true;
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else 
        {
            Label1.Text = "Loan Not Transfer";
            Label1.Visible = true;
            Label1.ForeColor = System.Drawing.Color.Red;
        }

    }
    protected void btn_Clear_Click(object sender, EventArgs e)
    {
        txt_Accamount.Text = "";
        txt_AccountId.Text = "";
        txt_Loanid.Text = "";
        
    }
}
