using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bank
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public abstract class BankAccount
        {
            public long AccNO;
            public double balance=60000;
            public abstract double withdraw(double amt);
        }

        public class CurrentAccount : BankAccount
        {
          
            public CurrentAccount(long acc)
            {
                AccNO = acc;
            }
            public override double withdraw(double amt)
            {
                if (amt <= balance && balance>=5000)
                {
                    balance = balance - amt;
                    return balance;
                }
                return -1;
            }
        }

        public class SavingAccount : BankAccount
        {

            public SavingAccount(long acc)
            {
                AccNO = acc;
            }
            public override double withdraw(double amt)
            {
                if (balance - amt >= 0)
                {
                    balance = balance - amt;
                    return balance;
                }
                return -1;
            }
        }


        

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedItem.Text == "CurrentACC")
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
            }
            if(RadioButtonList1.SelectedItem.Text == "SavingAcc")
            {
                Panel2.Visible = true;
                Panel1.Visible = false;
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            long acc = long.Parse(TextBox1.Text);
            double amt = double.Parse(TextBox3.Text);
            CurrentAccount c1 = new CurrentAccount(acc);
            double result = c1.withdraw(amt);
            if (result == -1)
            {
                Label1.Text = "Insufficient balance";
            }
            else
            {
                Label1.Text = "Withdraw successful "+result;
            }
        }

       

        protected void Button2_Click(object sender, EventArgs e)
        {
            long acc = long.Parse(TextBox1.Text);
            double amt = double.Parse(TextBox4.Text);
            SavingAccount s1 = new SavingAccount(acc);
            double result = s1.withdraw(amt);
            if (result == -1)
            {
                Label2.Text = "Insufficient balance";
            }
            else
            {
                Label2.Text = "Withdraw successful " + result;
            }
        }

        public class Calculator
        {
            public string add(int a, int b)
            {
                return "Add : " + (a + b);
            }
            public string add(double a, double b)
            {
                return "Add : " + (a + b);
            }
            public string add(int a, int b,int c)
            {
                return "Add : " + (a+b+c);
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Calculator cal1 = new Calculator();
            Label3.Text = cal1.add(2,2) + "<br>"+cal1.add(2.5, 2.5)+ "<br>" + cal1.add(1,2,3);

        }
    }
    }
