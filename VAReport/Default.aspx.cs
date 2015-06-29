using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;


namespace VAReport
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            NeonateEntities NeonateEntitie = new NeonateEntities();
            if (!IsPostBack)
            {
                List<string> empQuery1 = (from emp in NeonateEntitie.ViewForRpts
                                          orderby emp.dataid
                                          select emp.dataid).ToList();
                empQuery1.Insert(0, "Select");
                DropDownList1.DataSource = empQuery1;
                DropDownList1.DataBind();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex == 0)
            {
                return;

            }
           // Thread.Sleep(5000);
            NeonateEntities NeonateEntitie = new NeonateEntities();
            var empQuery = from emp in NeonateEntitie.ViewForRpts
                           where emp.dataid == DropDownList1.SelectedValue
                           select emp;
            ViewForRpt empList = empQuery.SingleOrDefault();

            if (!string.IsNullOrEmpty(empList.hospitalid))
            {
                HospitalList.SelectedValue = empList.hospitalid;
            }
            ClusterID.InnerText = empList.clusterid; 
            if (!string.IsNullOrEmpty(empList.decedanttype))
            {
                Decedentlist.SelectedValue = empList.decedanttype;
            }
            DecedantID.InnerText = empList.decedantid; 

            q1_1id1.InnerText = empList.q1_1id1.ToString();
            q1_1name1.InnerText =  empList.q1_1name1;
            q1_1name1.InnerText = empList.q1_1name1;

            q1_1relp1.InnerText = empList.q1_1relp1.ToString();
            q1_1relp1_other.InnerText = empList.q1_1relp1_other;
            if (!string.IsNullOrEmpty(empList.q1_1pre1.ToString()))
            {
                q1_1pre1.SelectedValue = empList.q1_1pre1.ToString();
            }

            q1_1id2.InnerText = empList.q1_1id2.ToString();
            q1_1name2.InnerText = empList.q1_1name2;
            q1_1relp2.InnerText = empList.q1_1relp2.ToString();
            q1_1relp2_other.InnerText = empList.q1_1relp2_other;
            if (!string.IsNullOrEmpty(empList.q1_1pre2.ToString()))
            {
                q1_1pre2.SelectedValue = empList.q1_1pre2.ToString();
            }
            q1_1id3.InnerText = empList.q1_1id3.ToString();
            q1_1name3.InnerText = empList.q1_1name3;
            q1_1relp3.InnerText = empList.q1_1relp3.ToString();
            q1_1relp3_other.InnerText = empList.q1_1relp3_other;
            if (!string.IsNullOrEmpty(empList.q1_1pre3.ToString()))
            {
                q1_1pre3.SelectedValue = empList.q1_1pre3.ToString();
            }
              q1_2.InnerText = empList.q1_2;
              q1_3.InnerText = empList.q1_3.ToString()  ;
              if (!string.IsNullOrEmpty(empList.q1_3other))
              {
                  q1_3.InnerText += " (" + empList.q1_3other + ")";
              }
              q1_4.InnerText = empList.q1_4.ToString();
              q1_5.InnerText = empList.q1_5.ToString();

              if (!string.IsNullOrEmpty(empList.q1_6.ToString()))
              {
                  rbtnq1_6.SelectedValue = empList.q1_6.ToString();
              }
              q2_1.InnerText = empList.q2_1;
              q2_2.InnerText = empList.q2_2.ToString();
              q2_3.InnerText = empList.q2_3.ToString();


              q3_1.InnerText = empList.q3_1;
              q3_1_1.InnerText = empList.q3_1_1;
              q3_1_2.InnerText = empList.q3_1_2;
              q3_2.InnerText = empList.q3_2;
              q3_3.InnerText = empList.q3_3;
              q3_3code.InnerText = empList.q3_3code;

              q3_4.InnerText = empList.q3_4.ToString();
              q3_5.InnerText = empList.q3_5.ToString();
              q3_6.InnerText = empList.q3_6days + "/" + empList.q3_6hours + "/" + empList.q3_6mins;
              if (!string.IsNullOrEmpty(empList.q3_7.ToString()))
              {
                  rbtnq3_7.SelectedValue = empList.q3_7.ToString();
              }

              q4_1_1.InnerText = empList.q4_1_1;
              q4_1_2.InnerText = empList.q4_1_2;

              if (!string.IsNullOrEmpty(empList.q5_1.ToString()))
              {
                  rbtnq5_1.SelectedValue = empList.q5_1.ToString();
              }

              if (!string.IsNullOrEmpty(empList.q5_1_1.ToString()))
              {
                  rbtnq5_1_1.SelectedValue = empList.q5_1_1.ToString();
              }
              q5_1_1Other.InnerText = empList.q5_1_1Other;
              if (!string.IsNullOrEmpty(empList.q5_2.ToString()))
              {
                  rbtnq5_2.SelectedValue = empList.q5_2.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q5_3.ToString()))
              {
                  rbtnq5_3.SelectedValue = empList.q5_3.ToString();
              }
              q5_4.InnerText = empList.q5_4days + "/" + empList.q5_4hours + "/" + empList.q5_4mins;
              if (!string.IsNullOrEmpty(empList.q5_5.ToString()))
              {
                  rbtnq5_5.SelectedValue = empList.q5_5.ToString();
              }

              if (!string.IsNullOrEmpty(empList.q6_1_1.ToString()))
              {
                  rbtnq6_1_1.SelectedValue = empList.q6_1_1.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_1_2.ToString()))
              {
                  rbtnq6_1_2.SelectedValue = empList.q6_1_2.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_1_3.ToString()))
              {
                  rbtnq6_1_3.SelectedValue = empList.q6_1_3.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_1_4.ToString()))
              {
                  rbtnq6_1_4.SelectedValue = empList.q6_1_4.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_1_5.ToString()))
              {
                  rbtnq6_1_5.SelectedValue = empList.q6_1_5.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_1_6.ToString()))
              {
                  rbtnq6_1_6.SelectedValue = empList.q6_1_6.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_1_7.ToString()))
              {
                  rbtnq6_1_7.SelectedValue = empList.q6_1_7.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_1_8.ToString()))
              {
                  rbtnq6_1_8.SelectedValue = empList.q6_1_8.ToString();
              }
              q6_1Other.InnerText = empList.q6_1Other;
              q6_2_1_1T.InnerText = empList.q6_2_1_1T.ToString();
              q6_2_1_2T.InnerText = empList.q6_2_1_2T.ToString();
              q6_2_1_3T.InnerText = empList.q6_2_1_3T.ToString();
              q6_2_1_4T.InnerText = empList.q6_2_1_4T.ToString();

              q6_2_2.InnerText = empList.q6_2_2.ToString();
              q6_2_3.InnerText = empList.q6_2_3.ToString();
              q6_2_4.InnerText = empList.q6_2_4days + "/" + empList.q6_2_4months + "/" + empList.q6_2_4years;
              q6_2_5.InnerText = empList.q6_2_5.ToString();
              if (!string.IsNullOrEmpty(empList.q6_3_1.ToString()))
              {
                  rbtnq6_3_1.SelectedValue = empList.q6_3_1.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3_2.ToString()))
              {
                  rbtnq6_3_2.SelectedValue = empList.q6_3_2.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3_3.ToString()))
              {
                  rbtnq6_3_3.SelectedValue = empList.q6_3_3.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3_4.ToString()))
              {
                  rbtnq6_3_4.SelectedValue = empList.q6_3_4.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3_5.ToString()))
              {
                  rbtnq6_3_5.SelectedValue = empList.q6_3_5.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3_6.ToString()))
              {
                  rbtnq6_3_6.SelectedValue = empList.q6_3_6.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3_7.ToString()))
              {
                  rbtnq6_3_7.SelectedValue = empList.q6_3_7.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3_8.ToString()))
              {
                  rbtnq6_3_8.SelectedValue = empList.q6_3_8.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3_9.ToString()))
              {
                  rbtnq6_3_9.SelectedValue = empList.q6_3_9.ToString();
              }

              if (!string.IsNullOrEmpty(empList.q6_3_10.ToString()))
              {
                  rbtnq6_3_10.SelectedValue = empList.q6_3_10.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3_11.ToString()))
              {
                  rbtnq6_3_11.SelectedValue = empList.q6_3_11.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3_12.ToString()))
              {
                  rbtnq6_3_12.SelectedValue = empList.q6_3_12.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3_13.ToString()))
              {
                  rbtnq6_3_13.SelectedValue = empList.q6_3_13.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3_14.ToString()))
              {
                  rbtnq6_3_14.SelectedValue = empList.q6_3_14.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3_15.ToString()))
              {
                  rbtnq6_3_15.SelectedValue = empList.q6_3_15.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3_16.ToString()))
              {
                  rbtnq6_3_16.SelectedValue = empList.q6_3_16.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3_17.ToString()))
              {
                  rbtnq6_3_17.SelectedValue = empList.q6_3_17.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3_18.ToString()))
              {
                  rbtnq6_3_18.SelectedValue = empList.q6_3_18.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3_19.ToString()))
              {
                  rbtnq6_3_19.SelectedValue = empList.q6_3_19.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3_19a.ToString()))
              {
                  rbtnq6_3_19a.SelectedValue = empList.q6_3_19a.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3_20.ToString()))
              {
                  rbtnq6_3_20.SelectedValue = empList.q6_3_20.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3_21.ToString()))
              {
                  rbtnq6_3_21.SelectedValue = empList.q6_3_21.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3_22.ToString()))
              {
                  rbtnq6_3_22.SelectedValue = empList.q6_3_22.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3_23.ToString()))
              {
                  rbtnq6_3_23.SelectedValue = empList.q6_3_23.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3_24.ToString()))
              {
                  rbtnq6_3_24.SelectedValue = empList.q6_3_24.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3_25.ToString()))
              {
                  rbtnq6_3_25.SelectedValue = empList.q6_3_25.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3_26.ToString()))
              {
                  rbtnq6_3_26.SelectedValue = empList.q6_3_26.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3_27.ToString()))
              {
                  rbtnq6_3_27.SelectedValue = empList.q6_3_27.ToString();
              }
              q6_3Other.InnerText = empList.q6_3Other;

              q6_3a_1.InnerText = empList.q6_3a_1months + "/" + empList.q6_3a_1days;
              q6_3a_2a.InnerText = empList.q6_3a_2amonth + "/" + empList.q6_3a_2adays;
              q6_3a_2b.InnerText = empList.q6_3a_2bmonth + "/" + empList.q6_3a_2bdays;

              if (!string.IsNullOrEmpty(empList.q6_3a_3.ToString()))
              {
                  rbtnq6_3a_3.SelectedValue = empList.q6_3a_3.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3a_4.ToString()))
              {
                  rbtnq6_3a_4.SelectedValue = empList.q6_3a_4.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3a_5.ToString()))
              {
                  rbtnq6_3a_5.SelectedValue = empList.q6_3a_5.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3a_6.ToString()))
              {
                  rbtnq6_3a_6.SelectedValue = empList.q6_3a_6.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_3a_7.ToString()))
              {
                  rbtnq6_3a_7.SelectedValue = empList.q6_3a_7.ToString();
              }
              q6_3a_8.InnerText = empList.q6_3a_8.ToString();
              if (!string.IsNullOrEmpty(empList.q6_4.ToString()))
              {
                  rbtnq6_4.SelectedValue = empList.q6_4.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_5.ToString()))
              {
                  rbtnq6_5.SelectedValue = empList.q6_5.ToString();
              }
              q6_5Other.InnerText = empList.q6_5Other;
              q6_5_1.InnerText = empList.q6_5_1;

              if (!string.IsNullOrEmpty(empList.q6_5_2_1.ToString()))
              {
                  rbtnq6_5_2_1.SelectedValue = empList.q6_5_2_1.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_5_2_2.ToString()))
              {
                  rbtnq6_5_2_2.SelectedValue = empList.q6_5_2_2.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_5_2_3.ToString()))
              {
                  rbtnq6_5_2_3.SelectedValue = empList.q6_5_2_3.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_5_2_4.ToString()))
              {
                  rbtnq6_5_2_4.SelectedValue = empList.q6_5_2_4.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_5_2_5.ToString()))
              {
                  rbtnq6_5_2_5.SelectedValue = empList.q6_5_2_5.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_5_2_6.ToString()))
              {
                  rbtnq6_5_2_6.SelectedValue = empList.q6_5_2_6.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_5_2_7.ToString()))
              {
                  rbtnq6_5_2_7.SelectedValue = empList.q6_5_2_7.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_5_2_8.ToString()))
              {
                  rbtnq6_5_2_8.SelectedValue = empList.q6_5_2_8.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_5_2_9.ToString()))
              {
                  rbtnq6_5_2_9.SelectedValue = empList.q6_5_2_9.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_5_2_10.ToString()))
              {
                  rbtnq6_5_2_10.SelectedValue = empList.q6_5_2_10.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_5_2_11.ToString()))
              {
                  rbtnq6_5_2_11.SelectedValue = empList.q6_5_2_11.ToString();
              }
              q6_5_2Other.InnerText = empList.q6_5_2Other;

              if (!string.IsNullOrEmpty(empList.q6_5_3_1.ToString()))
              {
                  rbtnq6_5_3_1.SelectedValue = empList.q6_5_3_1.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_5_3_2.ToString()))
              {
                  rbtnq6_5_3_2.SelectedValue = empList.q6_5_3_2.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_5_3_3.ToString()))
              {
                  rbtnq6_5_3_3.SelectedValue = empList.q6_5_3_3.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_5_3_4.ToString()))
              {
                  rbtnq6_5_3_4.SelectedValue = empList.q6_5_3_4.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_5_3_5.ToString()))
              {
                  rbtnq6_5_3_5.SelectedValue = empList.q6_5_3_5.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_5_3_6.ToString()))
              {
                  rbtnq6_5_3_6.SelectedValue = empList.q6_5_3_6.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_5_3_7.ToString()))
              {
                  rbtnq6_5_3_7.SelectedValue = empList.q6_5_3_7.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_5_3_8.ToString()))
              {
                  rbtnq6_5_3_8.SelectedValue = empList.q6_5_3_8.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_5_3_9.ToString()))
              {
                  rbtnq6_5_3_9.SelectedValue = empList.q6_5_3_9.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_5_3_10.ToString()))
              {
                  rbtnq6_5_3_10.SelectedValue = empList.q6_5_3_10.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_5_3_11.ToString()))
              {
                  rbtnq6_5_3_11.SelectedValue = empList.q6_5_3_11.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_5_3_12.ToString()))
              {
                  rbtnq6_5_3_12.SelectedValue = empList.q6_5_3_12.ToString();
              }
              q6_5_3Other.InnerText = empList.q6_5_3Other;
              q6_5_4.InnerText = empList.q6_5_4.ToString();
              if (!string.IsNullOrEmpty(empList.q6_5_5.ToString()))
              {
                  rbtnq6_5_5.SelectedValue = empList.q6_5_5.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_5_6.ToString()))
              {
                  rbtnq6_5_6.SelectedValue = empList.q6_5_6.ToString();
              }
              q6_5_7.InnerText = empList.q6_5_7.ToString();
              if (!string.IsNullOrEmpty(empList.q6_5_8.ToString()))
              {
                  rbtnq6_5_8.SelectedValue = empList.q6_5_8.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_6_1.ToString()))
              {
                  rbtnq6_6_1.SelectedValue = empList.q6_6_1.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_6_2.ToString()))
              {
                  rbtnq6_6_2.SelectedValue = empList.q6_6_2.ToString();
              }
              q6_6_2Other.InnerText = empList.q6_6_2Other;
              if (!string.IsNullOrEmpty(empList.q6_6_3.ToString()))
              {
                  rbtnq6_6_3.SelectedValue = empList.q6_6_3.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_6_4.ToString()))
              {
                  rbtnq6_6_4.SelectedValue = empList.q6_6_4.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_6_5.ToString()))
              {
                  rbtnq6_6_5.SelectedValue = empList.q6_6_5.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_6_6.ToString()))
              {
                  rbtnq6_6_6.SelectedValue = empList.q6_6_6.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_6_6a.ToString()))
              {
                  rbtnq6_6_6a.SelectedValue = empList.q6_6_6a.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_6_6b.ToString()))
              {
                  rbtnq6_6_6b.SelectedValue = empList.q6_6_6b.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_6_6d.ToString()))
              {
                  rbtnq6_6_6d.SelectedValue = empList.q6_6_6d.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q6_6_7.ToString()))
              {
                  rbtnq6_6_7.SelectedValue = empList.q6_6_7.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q7_1.ToString()))
              {
                  rbtnq7_1.SelectedValue = empList.q7_1.ToString();
              }

              if (!string.IsNullOrEmpty(empList.q7_2.ToString()))
              {
                  rbtnq7_2.SelectedValue = empList.q7_2.ToString();
              }
              q7_3.InnerText = empList.q7_3;
              q7_4.InnerText = empList.q7_4.ToString();
              if (!string.IsNullOrEmpty(empList.q7_5.ToString()))
              {
                  rbtnq7_5.SelectedValue = empList.q7_5.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q7_6.ToString()))
              {
                  rbtnq7_6.SelectedValue = empList.q7_6.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q7_7.ToString()))
              {
                  rbtnq7_7.SelectedValue = empList.q7_7.ToString();
              }
              q7_8.InnerText = empList.q7_8.ToString(); ;
              if (!string.IsNullOrEmpty(empList.q7_9.ToString()))
              {
                  rbtnq7_9.SelectedValue = empList.q7_9.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q7_10.ToString()))
              {
                  rbtnq7_10.SelectedValue = empList.q7_10.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q7_11.ToString()))
              {
                  rbtnq7_11.SelectedValue = empList.q7_11.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q7_12.ToString()))
              {
                  rbtnq7_12.SelectedValue = empList.q7_12.ToString();
              }
              q7_13.InnerText = empList.q7_13;
              if (!string.IsNullOrEmpty(empList.q7_14.ToString()))
              {
                  rbtnq7_14.SelectedValue = empList.q7_14.ToString();
              }
              q7_14Other.InnerText = empList.q7_14Other;
              q8_1.InnerText = empList.q8_1;
              if (!string.IsNullOrEmpty(empList.q8_2.ToString()))
              {
                  rbtnq8_2.SelectedValue = empList.q8_2.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_3.ToString()))
              {
                  rbtnq8_3.SelectedValue = empList.q8_3.ToString();
              }
              q8_4.InnerText = empList.q8_4;
              if (!string.IsNullOrEmpty(empList.q8_5.ToString()))
              {
                  rbtnq8_5.SelectedValue = empList.q8_5.ToString();
              }
              q8_5_1.InnerText = empList.q8_5_1days + "/" + empList.q8_5_1hours;
              if (!string.IsNullOrEmpty(empList.q8_5_2.ToString()))
              {
                  rbtnq8_5_2.SelectedValue = empList.q8_5_2.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_6.ToString()))
              {
                  rbtnq8_6.SelectedValue = empList.q8_6.ToString();
              }
              q8_7.InnerText = empList.q8_7;
              if (!string.IsNullOrEmpty(empList.q8_8.ToString()))
              {
                  rbtnq8_8.SelectedValue = empList.q8_8.ToString();
              }
              q8_9.InnerText = empList.q8_9;
              if (!string.IsNullOrEmpty(empList.q8_10.ToString()))
              {
                  rbtnq8_10.SelectedValue = empList.q8_10.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_10_1.ToString()))
              {
                  rbtnq8_10_1.SelectedValue = empList.q8_10_1.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_11.ToString()))
              {
                  rbtnq8_11.SelectedValue = empList.q8_11.ToString();
              }
              q8_12.InnerText = empList.q8_12;
              if (!string.IsNullOrEmpty(empList.q8_13.ToString()))
              {
                  rbtnq8_13.SelectedValue = empList.q8_13.ToString();
              }
              q8_14.InnerText = empList.q8_14.ToString();
              if (!string.IsNullOrEmpty(empList.q8_15.ToString()))
              {
                  rbtnq8_15.SelectedValue = empList.q8_15.ToString();
              }
              q8_16.InnerText = empList.q8_16;

              if (!string.IsNullOrEmpty(empList.q8_17.ToString()))
              {
                  rbtnq8_17.SelectedValue = empList.q8_17.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_18.ToString()))
              {
                  rbtnq8_18.SelectedValue = empList.q8_18.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_19.ToString()))
              {
                  rbtnq8_19.SelectedValue = empList.q8_19.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_20.ToString()))
              {
                  rbtnq8_20.SelectedValue = empList.q8_20.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_21.ToString()))
              {
                  rbtnq8_21.SelectedValue = empList.q8_21.ToString();
              }
              q8_22.InnerText = empList.q8_22;
              if (!string.IsNullOrEmpty(empList.q8_23.ToString()))
              {
                  rbtnq8_23.SelectedValue = empList.q8_23.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_24.ToString()))
              {
                  rbtnq8_24.SelectedValue = empList.q8_24.ToString();
              }
              q8_25.InnerText = empList.q8_25days + "/" + empList.q8_25hours;
              if (!string.IsNullOrEmpty(empList.q8_26.ToString()))
              {
                  rbtnq8_26.SelectedValue = empList.q8_26.ToString();
              }
              q8_27.InnerText = empList.q8_27days + "/" + empList.q8_27hours;
              if (!string.IsNullOrEmpty(empList.q8_28.ToString()))
              {
                  rbtnq8_28.SelectedValue = empList.q8_28.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_29.ToString()))
              {
                  rbtnq8_29.SelectedValue = empList.q8_29.ToString();
              }
              q8_30.InnerText = empList.q8_30days + "/" + empList.q8_27hours;
              if (!string.IsNullOrEmpty(empList.q8_31.ToString()))
              {
                  rbtnq8_31.SelectedValue = empList.q8_31.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_31_1_1.ToString()))
              {
                  rbtnq8_31_1_1.SelectedValue = empList.q8_31_1_1.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_31_1_2.ToString()))
              {
                  rbtnq8_31_1_2.SelectedValue = empList.q8_31_1_2.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_31_1_3.ToString()))
              {
                  rbtnq8_31_1_3.SelectedValue = empList.q8_31_1_3.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_31_1_4.ToString()))
              {
                  rbtnq8_31_1_4.SelectedValue = empList.q8_31_1_4.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_31_1_5.ToString()))
              {
                  rbtnq8_31_1_5.SelectedValue = empList.q8_31_1_5.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_31_1_6.ToString()))
              {
                  rbtnq8_31_1_6.SelectedValue = empList.q8_31_1_6.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_31_1_7.ToString()))
              {
                  rbtnq8_31_1_7.SelectedValue = empList.q8_31_1_7.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_31_1_8.ToString()))
              {
                  rbtnq8_31_1_8.SelectedValue = empList.q8_31_1_8.ToString();
              }
              q8_31_1Other.InnerText = empList.q8_31_1Other;
              q8_31_2.InnerText = empList.q8_31_2days + "/" + empList.q8_31_2hours;
              if (!string.IsNullOrEmpty(empList.q8_31_3.ToString()))
              {
                  rbtnq8_31_3.SelectedValue = empList.q8_31_3.ToString();
              }
              q8_31_4.InnerText = empList.q8_31_4weeks + "/" + empList.q8_31_4days;
              if (!string.IsNullOrEmpty(empList.q8_32_1.ToString()))
              {
                  rbtnq8_32_1.SelectedValue = empList.q8_32_1.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_32_2.ToString()))
              {
                  rbtnq8_32_2.SelectedValue = empList.q8_32_2.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_32_3.ToString()))
              {
                  rbtnq8_32_3.SelectedValue = empList.q8_32_3.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_32_4.ToString()))
              {
                  rbtnq8_32_4.SelectedValue = empList.q8_32_4.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_32_5.ToString()))
              {
                  rbtnq8_32_5.SelectedValue = empList.q8_32_5.ToString();
              }
              q8_32Other.InnerText = empList.q8_32Other;

              if (!string.IsNullOrEmpty(empList.q8_33.ToString()))
              {
                  rbtnq8_33.SelectedValue = empList.q8_33.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_33a.ToString()))
              {
                  rbtnq8_33a.SelectedValue = empList.q8_33a.ToString();
              }
              q8_34.InnerText = empList.q8_34days + "/" + empList.q8_34hours;
              if (!string.IsNullOrEmpty(empList.q8_35.ToString()))
              {
                  rbtnq8_35.SelectedValue = empList.q8_35.ToString();
              }
              q8_36.InnerText = empList.q8_36;
              q8_37.InnerText = empList.q8_37.ToString();
              if (!string.IsNullOrEmpty(empList.q8_37a.ToString()))
              {
                  rbtnq8_37a.SelectedValue = empList.q8_37a.ToString();
              }
              q8_37b.InnerText = empList.q8_37b.ToString();
              if (!string.IsNullOrEmpty(empList.q8_38.ToString()))
              {
                  rbtnq8_38.SelectedValue = empList.q8_38.ToString();
              }
              q8_39.InnerText = empList.q8_39.ToString();
              if (!string.IsNullOrEmpty(empList.q8_40.ToString()))
              {
                  rbtnq8_40.SelectedValue = empList.q8_40.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_41.ToString()))
              {
                  rbtnq8_41.SelectedValue = empList.q8_41.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_42.ToString()))
              {
                  rbtnq8_42.SelectedValue = empList.q8_42.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_43.ToString()))
              {
                  rbtnq8_43.SelectedValue = empList.q8_43.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_44_1.ToString()))
              {
                  rbtnq8_44_1.SelectedValue = empList.q8_44_1.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_44_2.ToString()))
              {
                  rbtnq8_44_2.SelectedValue = empList.q8_44_2.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_44_3.ToString()))
              {
                  rbtnq8_44_3.SelectedValue = empList.q8_44_3.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_44_4.ToString()))
              {
                  rbtnq8_44_4.SelectedValue = empList.q8_44_4.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_44_5.ToString()))
              {
                  rbtnq8_44_5.SelectedValue = empList.q8_44_5.ToString();
              }
              q8_44Other.InnerText = empList.q8_44Other;
              if (!string.IsNullOrEmpty(empList.q8_45.ToString()))
              {
                  rbtnq8_45.SelectedValue = empList.q8_45.ToString();
              }
              q8_46.InnerText = empList.q8_46.ToString();
              if (!string.IsNullOrEmpty(empList.q8_46a.ToString()))
              {
                  rbtnq8_46a.SelectedValue = empList.q8_46a.ToString();
              }
              q8_47.InnerText = empList.q8_47.ToString();
              if (!string.IsNullOrEmpty(empList.q8_48.ToString()))
              {
                  rbtnq8_48.SelectedValue = empList.q8_48.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_49.ToString()))
              {
                  rbtnq8_49.SelectedValue = empList.q8_49.ToString();
              }
             q8_50.InnerText = empList.q8_50;
             q8_51.InnerText = empList.q8_51.ToString();
             if (!string.IsNullOrEmpty(empList.q8_52.ToString()))
              {
                  rbtnq8_52.SelectedValue = empList.q8_52.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_53.ToString()))
              {
                  rbtnq8_53.SelectedValue = empList.q8_53.ToString();
              }
              q8_54.InnerText = empList.q8_54days + "/" + empList.q8_54hours;
             if (!string.IsNullOrEmpty(empList.q8_55.ToString()))
              {
                  rbtnq8_55.SelectedValue = empList.q8_55.ToString();
              }
             if (!string.IsNullOrEmpty(empList.q8_56.ToString()))
              {
                  rbtnq8_56.SelectedValue = empList.q8_56.ToString();
              }
             if (!string.IsNullOrEmpty(empList.q8_57.ToString()))
              {
                  rbtnq8_57.SelectedValue = empList.q8_57.ToString();
              }
             if (!string.IsNullOrEmpty(empList.q8_58.ToString()))
              {
                  rbtnq8_58.SelectedValue = empList.q8_58.ToString();
              }
             if (!string.IsNullOrEmpty(empList.q8_58a.ToString()))
              {
                  rbtnq8_58a.SelectedValue = empList.q8_58a.ToString();
              }
              q8_58aOther.InnerText = empList.q8_58aOther;
              if (!string.IsNullOrEmpty(empList.q8_59.ToString()))
              {
                  rbtnq8_59.SelectedValue = empList.q8_59.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_60.ToString()))
              {
                  rbtnq8_60.SelectedValue = empList.q8_60.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_61.ToString()))
              {
                  rbtnq8_61.SelectedValue = empList.q8_61.ToString();
              }
              if (!string.IsNullOrEmpty(empList.q8_62.ToString()))
              {
                  rbtnq8_62.SelectedValue = empList.q8_62.ToString();
              }














            //ClusterID.
            //GridView1.DataSource = empList;
            //GridView1.DataBind();
        }
    }
}
