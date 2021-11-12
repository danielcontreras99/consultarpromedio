using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace pregunta1
{
    public partial class consultarpromedio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=sersqldan.database.windows.net;Initial Catalog=universidad;user id=dancon;password=nosequeponer1?";
            SqlCommand command = new SqlCommand();
            command.Connection = conn;
            command.CommandText = "SELECT * FROM alumnos A WHERE A.codalu = '" + txtcodigo.Text + "'";
            DataTable data1 = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            adapter.Fill(data1);

            DataRow[] rows = data1.Select();

            lblcodigo.Text = rows[0]["codalu"].ToString();
            lblnombre.Text = rows[0]["nomalu"].ToString();
            lblapellido.Text = rows[0]["apealu"].ToString();

            command.CommandText = "SELECT C.codcur AS 'Codigo', C.nomcur AS 'Nombre', A.nota AS 'Nota' FROM cursos C JOIN alu_cur A ON C.codcur = A.codcur WHERE A.codalu = '" + txtcodigo.Text + "'";
            adapter = new SqlDataAdapter(command);
            DataTable data2 = new DataTable();
            adapter.Fill(data2);
            GridView1.DataSource = data2;
            GridView1.DataBind();
            
            float prom = 0;
            float suma1 = 0;
            float suma2 = 0;
            command.CommandText = "SELECT C.credito, A.nota FROM cursos C JOIN alu_cur A ON C.codcur = A.codcur WHERE A.codalu = '" + txtcodigo.Text + "'";
            DataTable data3 = new DataTable();
            adapter = new SqlDataAdapter(command);
            adapter.Fill(data3);

            rows = data3.Select();

            for(int i = 0; i < rows.Length; i++)
            {
                suma1 = suma1 + float.Parse(rows[i]["credito"].ToString()) * int.Parse(rows[i]["nota"].ToString());
                suma2 = suma2 + float.Parse(rows[i]["credito"].ToString());
            }

            prom = suma1 / suma2;

            lblpromedio.Text = prom.ToString("0.00");
        }
    }
}