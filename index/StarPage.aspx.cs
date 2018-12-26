using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace index
{
    public partial class StarPage : System.Web.UI.Page
    {
        private void RecuperarSessao()
        {
            try
            {
                lblSessao.Text = Session["SalvarSessao"].ToString();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            RecuperarSessao();
        }
        protected void btnContrProvas_Click(object sender, ImageClickEventArgs e)
        {

        }


    }
}