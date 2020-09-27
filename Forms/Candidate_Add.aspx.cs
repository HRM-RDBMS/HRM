using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using System.IO;
public partial class Forms_Candidate_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //protected void UploadFile(object sender, EventArgs e)
    //{
    //    //if (FileUpload2.HasFiles)
    //    //{
    //    //    foreach (HttpPostedFile uploadedFile in FileUpload2.PostedFiles)
    //    //    {
    //    //        uploadedFile.SaveAs(System.IO.Path.Combine(Server.MapPath("~/Images/"), uploadedFile.FileName));
    //    //        listofuploadedfiles.Text += String.Format("{0}<br />", uploadedFile.FileName);
    //    //    }
    //    //}  
    //    string folderPath = Server.MapPath("~/Files/");

    //    //////Check whether Directory (Folder) exists.
    //    if (!Directory.Exists(folderPath))
    //    {
    //        ////    //If Directory (Folder) does not exists Create it.
    //        Directory.CreateDirectory(folderPath);
    //    }

    //    //////Save the File to the Directory (Folder).
    //    FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));
    //    //////Display the Picture in Image control.
    //    Image2.ImageUrl = "~/Files/" + Path.GetFileName(FileUpload1.FileName);
    //    ////Save the File to the Directory (Folder).

    //    ////Display the Picture in Image control.

    //}

}