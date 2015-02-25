using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IntellidateR1;

namespace IntelliWebR1.web.inner
{
    public partial class discusscompose : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string _Scripts = "";
                List<string> _LoadMessages = new List<string>();
                List<string> _LoadJs = new List<string>();
                //_LoadJs.Add("Scripts\\js_fun");
                _LoadJs.Add("web\\js\\discusscompose");
                _Scripts = _Scripts + "\n" + Helper.LoadScripts(_LoadJs.ToArray(), _LoadMessages.ToArray(), true);
                ltScripts.Text = _Scripts;

                if (Request.QueryString["recid"] != null)
                {
                     string _OtherUserID = Request.QueryString["recid"].ToString();
                     int UserID = Convert.ToInt32(HttpContext.Current.User.Identity.Name);
                     if (_OtherUserID == "0")
                     {
                         divCanSend.Visible = false;
                         divCantSend.Visible = true;
                     }
                     else
                     {
                         bool _IsUserAbleToCompose = new Conversation().IsUserAbleToSendSecoundMessage(UserID, Convert.ToInt32(_OtherUserID));
                         divCanSend.Visible = _IsUserAbleToCompose;
                         divCantSend.Visible = !_IsUserAbleToCompose;
                     }
                }


            }
        }
    }
}