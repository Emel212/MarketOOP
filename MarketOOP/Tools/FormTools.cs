using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MarketOOP.Tools
{
    public static class FormTools
    {
        public static void ClearAllText(Control con)
        {
            foreach (Control c in con.Controls)
            {

                if (c is TextBox)
                    ((TextBox)c).Clear();

                if (c is MaskedTextBox)
                    ((MaskedTextBox)c).Clear();

                if (c is NumericUpDown)
                    ((NumericUpDown)c).Value = 0;
            }
        }


        public static bool IsEmpty(Control control)
        {
            bool result = false;
            foreach (Control c in control.Controls)
            {
                if (c is TextBox && ((TextBox)c).Text == string.Empty)
                      result = true;
                    result = false;
            }
            return result;

        }

        public static void OpenForm<T>() where T : Form, new()
        {
           
            var IsOpen = Application.OpenForms.OfType<T>().FirstOrDefault();
            if (IsOpen==null)
            {
                T form = new T();
                form.MdiParent = Application.OpenForms.OfType<YoneticiPaneli>().FirstOrDefault();
                form.Show();
                form.WindowState = FormWindowState.Maximized;
            }
        }
    }
}
