using ConnectionLibrary;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logic
{
    public class Person
    {
        #region Properties
        ModelConnection mc = new ModelConnection("parameters.xml");
        
        private static string message;
        public string Message
        {
            get { return message; }
        }

        public string document { get; set; }
        public string name { get; set; }
        public string lastName { get; set; }
        public string gender { get; set; }
        public string city { get; set; }
        public string address { get; set; }
        public string phone { get; set; }
        #endregion

        #region Public Method
        public int NewPerson(Person person)
        {
            string[] parameters = { "@operacion", "@cedula", "@nombres", "@apellidos",
                                  "@genero", "@ciudad", "@direccion", "@telefono"};
            if (!mc.OpenConnection())
            {
                mc.CloseConnection();
                message = mc.Error;
                return 0;
            }
            else {
                if (mc.ExecuteProcedures("spPersonIA", parameters, "I", 
                    person.document, person.name, person.lastName, person.gender, person.city, 
                    person.address, person.phone) > 0)
              message = "Registro ingresado correctamente";
              mc.CloseConnection();
              return 1;
            }
        }

        public int UpdatePerson(Person person)
        {
            string[] parameters = { "@operacion", "@cedula", "@nombres", "@apellidos",
                                  "@genero", "@ciudad", "@direccion", "@telefono"};
            if (!mc.OpenConnection())
            {
                message = mc.Error;
                mc.CloseConnection();
                return 0;
            }
            else
            {
                if (mc.ExecuteProcedures("spPersonIA", parameters, "A", 
                    person.document, person.name, person.lastName, person.gender, person.city, 
                    person.address, person.phone) > 0)
                message = "Registro actualizado";
                mc.CloseConnection();
                return 1;
            }
        }

        public DataTable PeopleList() 
        {
            if (!mc.OpenConnection())
            {
                message = mc.Error;
                mc.CloseConnection();
                return null;
            }
            else
            {
                string[] parameters = { "@operacion", "@cedula" };
                return mc.GetData("spPersonSE", parameters, "T", 0);
            }
        }

        public int DeletePerson(string document)
        {
            string[] parameters = { "@operacion", "@cedula" };            
            if (!mc.OpenConnection())
            {
                message = mc.Error;
                mc.CloseConnection();
                return 0;
            }
            else if (mc.ExecuteProcedures("spPersonSE", parameters, "E", document) > 0)
            {
                message = "Registro eliminado";
                mc.CloseConnection();
            }
            return 1;
        }

        public Person GetPerson(string document)
        {
            DataTable dt = new DataTable();
            Person person = new Person();
            string[] parameters = { "@operacion", "@cedula" };
            dt = mc.GetData("spPersonSE", parameters, "S", document);   
            foreach (DataRow fila in dt.Rows)
            {
                person.document = fila["cedula"].ToString();
                person.name = fila["nombres"].ToString();
                person.lastName = fila["apellidos"].ToString();
                person.gender = fila["genero"].ToString();
                person.city = fila["ciudad"].ToString();
                person.address = fila["direccion"].ToString();
                person.phone = fila["telefono"].ToString();
                message = "Registros encontrados";
            }
            return person;
        }
        #endregion
    }
}
