using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web
{
    public partial class CryptoWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var dominio = System.Net.Dns.GetHostEntry(Request.ServerVariables["REMOTE_HOST"]).HostName.ToLower();

            if (!dominio.Contains("sulamerica."))
            {
                Response.Redirect("http://www.sulamerica.com.br");
            }
        }

        protected void btnCript_Click(object sender, EventArgs e)
        {
            try
            {
                txtResultCript.Text = CryptoHelper.Encrypt(txtPass.Text, txtCript.Text);
                if (txtResultCript.Text == "Senha inválida.")
                {
                    Session["pass"] = null;
                }
                else
                {
                    Session["pass"] = txtPass.Text;
                }
            }
            catch (Exception ex)
            {
                txtResultCript.Text = "Problema para criptografar o texto. Erro sistêmico: " + ex.Message;
            }
        }

        protected void btnDecript_Click(object sender, EventArgs e)
        {
            try
            {
                txtResultDecript.Text = CryptoHelper.Decrypt(txtPass.Text, txtDeCript.Text);
                if (txtResultDecript.Text == "Senha inválida.")
                {
                    Session["pass"] = null;
                }
                else
                {
                    Session["pass"] = txtPass.Text;
                }
            }
            catch (Exception ex)
            {
                txtResultDecript.Text = "Problema para descriptografar o texto. Erro sistêmico: " + ex.Message;
            }
        }
    }
}