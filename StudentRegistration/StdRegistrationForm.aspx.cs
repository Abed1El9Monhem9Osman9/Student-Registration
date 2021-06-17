using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentRegistration
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void Add(object sender, EventArgs e)
        {
            // we can't add the first item -- code -- into ListBox2
            if (ListBox1.SelectedIndex == 0 || ListBox1.SelectedIndex == -1)
            {
                Label2.Text = "Pick your choice -_- ";
                return;
            }
            else Label2.Text = "";

            if (TextBox1.Text == "")
            {
                Label2.Text = "Add the credits number ";
                return;
            }

            // can't add an item twice
            String code = ListBox1.SelectedItem.Text;
            for (int i = 0; i < ListBox2.Items.Count; i++)
                if (ListBox2.Items[i].Text.Substring(0, 5).Equals(code))
                {
                    // compare with the first 5 char of item text
                    TextBox1.Text = "";
                    return;
                }


            // we can add items while the maximum "4" is unreachable
            if (ListBox2.Items.Count < 5)
            {
                // add the value of txtBox to the label's value
                double totalNumber = Convert.ToDouble(Label1.Text) + Convert.ToDouble(TextBox1.Text);
                // when the nb of credits exceed 15 stop adding the item
                if (totalNumber > 15)
                {
                    TextBox1.Text = "";
                    return;
                }
                Label1.Text = totalNumber.ToString();

                ListBox2.Items.Add(ListBox1.SelectedItem.Text + "/" + TextBox1.Text);
            }
            
            TextBox1.Text = "";
            
        }

       /* protected void Add(object sender, EventArgs e)
        { 
        if (ListBox2.Items.Count < 5)
            {
                if (ListBox1.SelectedItem.Text != "--Code--")
                {
                    if (ListBox2.Items.Contains(ListBox1.SelectedItem) == false)
                    {
                        decimal cr = Convert.ToDecimal(Label1.Text);
                        decimal c = Convert.ToDecimal(TextBox1.Text);
                        decimal nbc = cr + c;
                        Label1.Text = nbc.ToString();
                        ListBox2.Items.Insert(1, string.Format("{0}", ListBox1.SelectedItem.Text));
                    }
                }
            }
        }*/

        // remove the selected item with editing the total of credits
        protected void Del(object sender, EventArgs e)
        {
            // can't remove the first item
             if (ListBox2.SelectedIndex == 0)
            {
                return;
            }
           
            // get the number of credits from the selected item in the ListBox2
             // then subtract it from the total credits number
            double nb = Convert.ToDouble(ListBox2.SelectedItem.Text.Substring(6, 1));
            double lab1 = Convert.ToDouble(Label1.Text);
            Label1.Text = (lab1 - nb).ToString();

            ListBox2.Items.Remove(ListBox2.SelectedItem);
        }

        // drop the list except the first item with resetting the total credits number
        protected void DelAll(object sender, EventArgs e)
        {
            var firstItm = ListBox2.Items[0];
            ListBox2.Items.Clear();
            ListBox2.Items.Add(firstItm);

            Label1.Text = "0";
        }

        // easy peasy, save the selected item in a temporary variable,then assign the previous item in its place 
        // finally get the value of tempo's variable and assign it in the previous place
        // e.g tmp=x; x=y; y=tmp
        protected void moveUp(object sender, EventArgs e)
        {
            var index = ListBox2.Items.IndexOf(ListBox2.SelectedItem);
            var previousIndex = index - 1;
            var temp = ListBox2.SelectedItem.Text;

            // stop moving when the 1st or 2nd item is selected
            if(index < 2)
            {
                return;
            }

            ListBox2.Items[index].Text = ListBox2.Items[previousIndex].Text;
            ListBox2.Items[previousIndex].Text = temp;
        }

        // same way, we are gonna save the selected item in a temporary variable, then assign the next item in its place 
        // finally get the value of tempo's variable and assign it in the next place
        protected void moveDown(object sender, EventArgs e)
        {
            var index = ListBox2.Items.IndexOf(ListBox2.SelectedItem);
            var nextIndex = index + 1;
            var temp = ListBox2.SelectedItem.Text;

            // stop moving when the 1st or last item is selected
            if (index < 1 || nextIndex > ListBox2.Items.Count-1)
            {
                return;
            }

            ListBox2.Items[index].Text = ListBox2.Items[nextIndex].Text;
            ListBox2.Items[nextIndex].Text = temp;
        }

    }
}