using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Trayectoria_escolar_wpf
{
    /// <summary>
    /// Lógica de interacción para Test.xaml
    /// </summary>
    public partial class Test : Window
    {
        System.Windows.Forms.WebBrowser navegador = new System.Windows.Forms.WebBrowser();
        public Test()
        {
            InitializeComponent(); 
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            
        }

        private void datos_cargados(object sender, EventArgs e)
        {
            try
            {
                    HtmlElementCollection tables = this.navegador.Document.GetElementsByTagName("table");

                    foreach (HtmlElement TBL in tables)
                    {
                        //foreach (HtmlElement ROW in TBL.All)
                        //{

                          //  foreach (HtmlElement CELL in ROW.All)
                            //{

                            //System.Windows.MessageBox.Show(CELL.InnerText);
                            textBlock.Text += TBL.InnerText;
                            //}
                        //}
                    }

                    //txt_nombre.Text = navegador.Document.GetElementById("page-title").InnerText;
                    //rtbdescripcion.Text = navegador.Document.GetElementById("eow-description").InnerText;

                    /*foreach (HtmlElement etiqueta in navegador.Document.All)
                    {
                        string titulo = "";
                        string imagen = "@";

                        if (etiqueta.GetAttribute("classname").Contains("post-thumbnail"))
                        {
                            int start = etiqueta.InnerHtml.IndexOf("300w,") + 1;
                            int end = etiqueta.InnerHtml.IndexOf(" 768w,", start);
                            string result = etiqueta.InnerHtml.Substring(start, end - start);
                            int ts = etiqueta.InnerHtml.IndexOf("\"") + 1;
                            int te = etiqueta.InnerHtml.IndexOf(" href=", ts);
                            result = result.Substring(5);
                            string resulttitle = etiqueta.InnerHtml.Substring(ts, te - ts);
                            resulttitle = resulttitle.Substring(20);
                            this.eventos.Items.Add(new Image { Description = "\"" + resulttitle, Thumbnail = result });
                            //txt_titulo.Text = etiqueta.InnerText;
                        }

                    }*/
                }
            catch (Exception ex)
            {

            }
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            textBlock.Text = "";
            navegador.Navigate("http://siia2.uasnet.mx/alumnos/home.php?txtCuenta=" + txt_cuenta.Text + "&txtNip=" + txt_nip.Text);
            navegador.Navigate("http://siia2.uasnet.mx/alumnos/Con_HistoriaAC.php?Escuela=2700");
            navegador.ScriptErrorsSuppressed = true;
            navegador.DocumentCompleted += new WebBrowserDocumentCompletedEventHandler(this.datos_cargados);
        }
    }
}
