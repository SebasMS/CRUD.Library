using Logic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD.Library
{
    public partial class PeopleList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Person person = new Person();
            gdPersonas.DataSource = person.PeopleList();
            gdPersonas.DataBind();
        }
    }
}