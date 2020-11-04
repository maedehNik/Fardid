using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace Fardid
{
    public class MyButton:LinkButton
    {
        public int RowNum { get; set; }
        public int Item_Id { get; set; }
    }
}