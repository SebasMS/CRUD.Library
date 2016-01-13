using Logic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD.Library
{
    public partial class CRUD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Person person = new Person();
            person.document = txtCedula.Text;
            person.name = txtNombre.Text;
            person.lastName = txtApellido.Text;
            person.gender = txtGenero.Text;
            person.city = txtCiudad.Text;
            person.address = txtDireccion.Text;
            person.phone = txtTelefono.Text;

            if (person.NewPerson(person) == 1)
                msg.Text = person.Message;
            else msg.Text = person.Message;
        }

        protected void btnSelect_Click(object sender, EventArgs e)
        {
            Person person = new Person();
            if ((person = person.GetPerson(txtCedula.Text)) != null)
            {
                txtCedula.Text = person.document;
                txtNombre.Text = person.name;
                txtApellido.Text = person.lastName;
                txtGenero.Text = person.gender;
                txtCiudad.Text = person.city;
                txtDireccion.Text = person.address;
                txtTelefono.Text = person.phone;
                /*ClientScript.RegisterClientScriptBlock(this.GetType(),
                        "registro", "<script>alert('registro encontrado')</script>");*/
                msg.Text = person.Message;
            }
            else
            {
                msg.Text = person.Message;
                /*ClientScript.RegisterClientScriptBlock(this.GetType(),
                            "registro", "<script>alert('registro no encontrado')</script>");*/

            }
        }

        protected void btnList_Click(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Person person = new Person();
            person.document = txtCedula.Text;
            person.name = txtNombre.Text;
            person.lastName = txtApellido.Text;
            person.gender = txtGenero.Text;
            person.city = txtCiudad.Text;
            person.address = txtDireccion.Text;
            person.phone = txtTelefono.Text;

            if (person.NewPerson(person) == 1)
                msg.Text = person.Message;
            else msg.Text = person.Message;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Person person = new Person();
            if (person.DeletePerson(txtCedula.Text) == 1)
                msg.Text = person.Message;
            else msg.Text = person.Message;
        }
    }
}