﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IntelliWebR1.web.inner
{
    public partial class receivedmsgs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string _Scripts = "";
            List<string> _LoadMessages = new List<string>();
            List<string> _LoadJs = new List<string>();
            _LoadJs.Add("web\\js\\receivedmsgs");
            _Scripts = _Scripts + "\n" + Helper.LoadScripts(_LoadJs.ToArray(), _LoadMessages.ToArray(), false);
            ltScripts.Text = _Scripts;
        }
    }
}