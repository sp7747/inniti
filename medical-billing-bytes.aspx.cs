using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class medical_billing_bytes : System.Web.UI.Page
{
    string ReportID;
    string ReportName;
    PagedDataSource _PageDataSource = new PagedDataSource();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["page"] != null)
            {
                CurrentPage = Convert.ToInt16(Convert.ToString(Request.QueryString["page"])) - 1;
            }
            GetInfographs();
        }

    }

    private void GetInfographs()
    {
        DataSet dsInfoGraphs = new InfoGraphs().GetInfoGraphs();

        # region Paging Code : Create and Limit paging Data Source

        DataTable dataTable = dsInfoGraphs.Tables[0];
        _PageDataSource.DataSource = dataTable.DefaultView;
        _PageDataSource.AllowPaging = true;
        _PageDataSource.PageSize = 6;



        _PageDataSource.CurrentPageIndex = CurrentPage;
        ViewState["TotalPages"] = _PageDataSource.PageCount;

        //this.lbtnFirst.Enabled = !_PageDataSource.IsFirstPage;
        //this.lbtnLast.Enabled = !_PageDataSource.IsLastPage;



        //Repeater1.DataSource = _PageDataSource;
        //Repeater1.DataBind();  //Databinding to Repeater Control


        #endregion

        this.doPaging();

        if (dataTable.Rows.Count != 0)
        {
            //lbtnFirst.Visible = true;
            //lbtnLast.Visible = true;

        }
        else
        {
            //lbtnFirst.Visible = false;
            //lbtnLast.Visible = false;

        }

        //DataSet dsInfoGraphs = new InfoGraphs().GetInfoGraphs();
        //if (dsInfoGraphs.Tables.Count > 0 && dsInfoGraphs.Tables[0].Rows.Count > 0)
        //{
        //    Repeater1.DataSource = dsInfoGraphs;
        //    Repeater1.DataBind();
        //}

        #region Data
        //DataTable dtInfographs = new DataTable("Infographs");

        //DataColumn ID = new DataColumn("ID");
        //ID.DataType = System.Type.GetType("System.Int32");
        //dtInfographs.Columns.Add(ID);

        //DataColumn ThumbnilImage = new DataColumn("ThumbnilImage");
        //ThumbnilImage.DataType = System.Type.GetType("System.String");
        //dtInfographs.Columns.Add(ThumbnilImage);

        //DataColumn PDFFile = new DataColumn("PDFFile");
        //PDFFile.DataType = System.Type.GetType("System.String");
        //dtInfographs.Columns.Add(PDFFile);

        //DataColumn Description = new DataColumn("Description");
        //Description.DataType = System.Type.GetType("System.String");
        //dtInfographs.Columns.Add(Description);

        //DataRow cardiology = dtInfographs.NewRow();
        //cardiology["ID"] = 1;
        //cardiology["ThumbnilImage"] = "cardiology-billing-infograph.jpg";
        //cardiology["PDFFile"] = "cardiology-billing-infograph.pdf";
        //cardiology["Description"] = "Cardiology";
        //dtInfographs.Rows.Add(cardiology);

        //DataRow FamilyPractice = dtInfographs.NewRow();
        //FamilyPractice["ID"] = 2;
        //FamilyPractice["ThumbnilImage"] = "family-practice-billing-infograph.jpg";
        //FamilyPractice["PDFFile"] = "family-practice-billing-infograph.pdf";
        //FamilyPractice["Description"] = "Family Practice";
        //dtInfographs.Rows.Add(FamilyPractice);

        //DataRow gastroenterology = dtInfographs.NewRow();
        //gastroenterology["ID"] = 3;
        //gastroenterology["ThumbnilImage"] = "gastroenterology-billing-infograph.jpg";
        //gastroenterology["PDFFile"] = "gastroenterology-billing-infograph.pdf";
        //gastroenterology["Description"] = "Gastroenterology";
        //dtInfographs.Rows.Add(gastroenterology);

        //DataRow GeneralSurgery = dtInfographs.NewRow();
        //GeneralSurgery["ID"] = 4;
        //GeneralSurgery["ThumbnilImage"] = "general-surgery-billing-infograph.jpg";
        //GeneralSurgery["PDFFile"] = "general-surgery-billing-infograph.pdf";
        //GeneralSurgery["Description"] = "General Surgery";
        //dtInfographs.Rows.Add(GeneralSurgery);

        //DataRow ICD10 = dtInfographs.NewRow();
        //ICD10["ID"] = 5;
        //ICD10["ThumbnilImage"] = "icd-10-billing-infograph.jpg";
        //ICD10["PDFFile"] = "icd-10-billing-infograph.pdf";
        //ICD10["Description"] = "ICD-10";
        //dtInfographs.Rows.Add(ICD10);

        //DataRow InternalMedical = dtInfographs.NewRow();
        //InternalMedical["ID"] = 6;
        //InternalMedical["ThumbnilImage"] = "internal-medical-billing-infograph.jpg";
        //InternalMedical["PDFFile"] = "internal-medical-billing-infograph.pdf";
        //InternalMedical["Description"] = "Internal Medical";
        //dtInfographs.Rows.Add(InternalMedical);

        //DataRow Neurologists = dtInfographs.NewRow();
        //Neurologists["ID"] = 7;
        //Neurologists["ThumbnilImage"] = "neurologists-billing-infograph.jpg";
        //Neurologists["PDFFile"] = "neurologists-billing-infograph.pdf";
        //Neurologists["Description"] = "Neurologists";
        //dtInfographs.Rows.Add(Neurologists);

        //DataRow Podiatry = dtInfographs.NewRow();
        //Podiatry["ID"] = 8;
        //Podiatry["ThumbnilImage"] = "podiatry-billing-infograph.jpg";
        //Podiatry["PDFFile"] = "podiatry-billing-infograph.pdf";
        //Podiatry["Description"] = "Podiatry";
        //dtInfographs.Rows.Add(Podiatry);

        //DataRow Radiology = dtInfographs.NewRow();
        //Radiology["ID"] = 9;
        //Radiology["ThumbnilImage"] = "radiology-billing-infograph.jpg";
        //Radiology["PDFFile"] = "radiology-billing-infograph.pdf";
        //Radiology["Description"] = "Radiology";
        //dtInfographs.Rows.Add(Radiology);



        //// Create a DataSet.
        //DataSet dsInfographs = new DataSet("dsInfographs");
        //dsInfographs.Tables.Add(dtInfographs);

        //Repeater1.DataSource = dsInfographs;
        //Repeater1.DataBind();
        #endregion Data
    }


    # region All About Paging


    #region Paging Properties and There Viewstate
    private int CurrentPage
    {
        get
        {
            object objPage = ViewState["_CurrentPage"];
            int _CurrentPage = 0;
            if (objPage == null)
            {
                _CurrentPage = 0;
            }
            else
            {
                _CurrentPage = (int)objPage;
            }
            return _CurrentPage;
        }
        set { ViewState["_CurrentPage"] = value; }
    }
    private int fistIndex
    {
        get
        {

            int _FirstIndex = 0;
            if (ViewState["_FirstIndex"] == null)
            {
                _FirstIndex = 0;
            }
            else
            {
                _FirstIndex = Convert.ToInt32(ViewState["_FirstIndex"]);
            }
            return _FirstIndex;
        }
        set { ViewState["_FirstIndex"] = value; }
    }
    private int lastIndex
    {
        get
        {

            int _LastIndex = 0;
            if (ViewState["_LastIndex"] == null)
            {
                _LastIndex = 0;
            }
            else
            {
                _LastIndex = Convert.ToInt32(ViewState["_LastIndex"]);
            }
            return _LastIndex;
        }
        set { ViewState["_LastIndex"] = value; }
    }

    #endregion

    # region Do paging

    //Code to Perform Paging
    private void doPaging()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("PageIndex");
        dt.Columns.Add("PageText");
        dt.Columns.Add("LinkUrl");

        fistIndex = CurrentPage - 5;


        if (CurrentPage > 5)
        {
            lastIndex = CurrentPage + 5;
        }
        else
        {
            lastIndex = 10;
        }
        if (lastIndex > Convert.ToInt32(ViewState["TotalPages"]))
        {
            lastIndex = Convert.ToInt32(ViewState["TotalPages"]);
            fistIndex = lastIndex - 10;
        }

        if (fistIndex < 0)
        {
            fistIndex = 0;
        }

        for (int i = fistIndex; i < lastIndex; i++)
        {
            DataRow dr = dt.NewRow();
            dr[0] = i;
            dr[1] = i + 1;
            dr[2] = (Request.Url.DnsSafeHost == "localhost" ? "~/medical-billing-bytes.aspx" : "/medical-billing-bytes.aspx") + (i > 0 ? ("?page=" + (i + 1)) : "");
            dt.Rows.Add(dr);
        }


        string strLastPageno = Convert.ToString(ViewState["TotalPages"]);   //Get Toal number of Pages


        //This is To link Page Number For First and Last LinkButtons
        if (Request.Url.DnsSafeHost == "localhost")
        {
            //this.lbtnFirst.NavigateUrl = "~/medical-billing-bytes.aspx?page=1";

            //this.lbtnLast.NavigateUrl = "~/medical-billing-bytes.aspx?page=" + strLastPageno;

        }
        else
        {

            //this.lbtnFirst.NavigateUrl = "/medical-billing-bytes.aspx?page=1";

            //this.lbtnLast.NavigateUrl = "/medical-billing-bytes.aspx?page=" + strLastPageno;


        }


        //this.dlPagingUp.DataSource = dt;
        //this.dlPagingUp.DataBind();
    }

    #endregion


    #region Datalist Binding (paging numbers 1234..)


    protected void dlPaging_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName.Equals("Paging"))
        {
            CurrentPage = Convert.ToInt16(e.CommandArgument.ToString());
            GetInfographs();


        }
    }
    protected void dlPaging_ItemDataBound(object sender, DataListItemEventArgs e)
    {

        HyperLink hyp_Link = (HyperLink)e.Item.FindControl("hyp_link_Paging");


        if (hyp_Link != null)
        {
            hyp_Link.Style.Add("font-size", "12px");  //to increse the font size //suyash

        }


        if (Convert.ToInt32(hyp_Link.Text) == (CurrentPage + 1))
        {
            hyp_Link.Enabled = false;
            hyp_Link.Style.Add("color", "red");  //to increse the font size //suyash
        }




    }

    # endregion






    #endregion
}