using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication7
{
    public partial class Custom_Validator_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string str = args.Value.ToUpper();
            if (str.StartsWith("LJ"))
                args.IsValid = true;
            else
                args.IsValid = false;
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = args.Value.Length == 6 && long.TryParse(args.Value, out _);
        }

        protected void CustomValidator3_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = args.Value == "1" || args.Value == "3" || args.Value == "5" || args.Value == "7";
        }
        protected void CustomValidator4_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = args.Value.Length == 10 && long.TryParse(args.Value, out _) && args.Value[0] >= '6' && args.Value[0] <= '9';
        }

        protected void CustomValidator5_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string username = args.Value;

            args.IsValid = username.Length >= 6 && username.StartsWith("MCA") && char.IsDigit(username[username.Length - 1]);
        }

        protected void CustomValidator6_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int persons;

            args.IsValid = int.TryParse(args.Value, out persons) && persons >= 1 && persons <= 100 && persons % 2 == 0 && persons % 4 == 0;

        }
    }
}