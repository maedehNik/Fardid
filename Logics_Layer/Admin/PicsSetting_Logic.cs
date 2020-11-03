using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DB_Connect;
using Logics_Layer.Models;

namespace Logics_Layer.Admin
{
    class PicsSetting_Logic:PDBC
    {
        public PicsSettingModel GetPicsSetting()
        {
            PicsSettingModel model = new PicsSettingModel();

            base.Connect();
            ////////MainLogo
            DataTable dt = base.Select("SELECT A.[PicId],[PicAddress],[PicThumbnailAddress] FROM [tbl_PicUploader] as A inner join [tbl_PicUse] as B on A.PicId=B.PicId where B.PicUseAs LIke N'MainLogo'");
            if (dt.Rows.Count != 0)
            {
                model.MainLogo_Path = dt.Rows[0]["PicAddress"].ToString();
                model.MainLogo_Id = Convert.ToInt32(dt.Rows[0]["PicId"]);
            }
            else
            {
                model.MainLogo_Path = "";
                model.MainLogo_Id = 0;
            }

            ////////FooterLogo
            dt = base.Select("SELECT A.[PicId],[PicAddress],[PicThumbnailAddress] FROM [tbl_PicUploader] as A inner join [tbl_PicUse] as B on A.PicId=B.PicId where B.PicUseAs LIke N'FooterLogo'");
            if (dt.Rows.Count != 0)
            {
                model.FooterLogo_Path = dt.Rows[0]["PicAddress"].ToString();
                model.FooterLogo_Id = Convert.ToInt32(dt.Rows[0]["PicId"]);
            }
            else
            {
                model.FooterLogo_Path = "";
                model.FooterLogo_Id = 0;
            }

            ////////MenuLogo
            dt = base.Select("SELECT A.[PicId],[PicAddress],[PicThumbnailAddress] FROM [tbl_PicUploader] as A inner join [tbl_PicUse] as B on A.PicId=B.PicId where B.PicUseAs LIke N'MenuLogo'");
            if (dt.Rows.Count != 0)
            {
                model.MenuLogo_Path = dt.Rows[0]["PicAddress"].ToString();
                model.MenuLogo_Id = Convert.ToInt32(dt.Rows[0]["PicId"]);
            }
            else
            {
                model.MenuLogo_Path = "";
                model.MenuLogo_Id = 0;
            }

            ////////VideoLogo
            dt = base.Select("SELECT A.[PicId],[PicAddress],[PicThumbnailAddress] FROM [tbl_PicUploader] as A inner join [tbl_PicUse] as B on A.PicId=B.PicId where B.PicUseAs LIke N'VideoLogo'");
            if (dt.Rows.Count != 0)
            {
                model.VideoLogo_Path = dt.Rows[0]["PicAddress"].ToString();
                model.VideoLogo_Id = Convert.ToInt32(dt.Rows[0]["PicId"]);
            }
            else
            {
                model.VideoLogo_Path = "";
                model.VideoLogo_Id = 0;
            }

            ////////FoIcon
            dt = base.Select("SELECT A.[PicId],[PicAddress],[PicThumbnailAddress] FROM [tbl_PicUploader] as A inner join [tbl_PicUse] as B on A.PicId=B.PicId where B.PicUseAs LIke N'FoIcon'");
            if (dt.Rows.Count != 0)
            {
                model.FoIcon_Path = dt.Rows[0]["PicAddress"].ToString();
                model.FoIcon_Id = Convert.ToInt32(dt.Rows[0]["PicId"]);
            }
            else
            {
                model.FoIcon_Path = "";
                model.FoIcon_Id = 0;
            }

            ////////
            base.DC();
            return model;
        }

        public string UpdatePicsSetting(PicsSettingModel model)
        {
            string s = "";
            List<ExcParameters> parss;
            ExcParameters par;
            base.Connect();

            ////////MainLogo
            DataTable dt = base.Select("SELECT A.[PicId],[PicAddress],[PicThumbnailAddress] FROM [tbl_PicUploader] as A inner join [tbl_PicUse] as B on A.PicId=B.PicId where B.PicUseAs LIke N'MainLogo'");

            parss = new List<ExcParameters>();
            par = new ExcParameters
            {
                _KEY = "@PicUseAs",
                _VALUE = "MainLogo"
            };
            parss.Add(par);
            par = new ExcParameters
            {
                _KEY = "@PicId",
                _VALUE = model.MainLogo_Id
            };
            parss.Add(par);

            if (dt.Rows.Count != 0)
            {
                s += base.Script("UPDATE [tbl_PicUse] SET [PicId] = @PicId WHERE [PicUseAs] =@PicUseAs", parss);
            }
            else
            {
                s += base.Script("INSERT INTO [tbl_PicUse]([PicId],[PicUseAs]) VALUES(@PicId,@PicUseAs)", parss);
            }

            ////////FooterLogo
            dt = base.Select("SELECT A.[PicId],[PicAddress],[PicThumbnailAddress] FROM [tbl_PicUploader] as A inner join [tbl_PicUse] as B on A.PicId=B.PicId where B.PicUseAs LIke N'FooterLogo'");

            parss = new List<ExcParameters>();
            par = new ExcParameters
            {
                _KEY = "@PicUseAs",
                _VALUE = "FooterLogo"
            };
            parss.Add(par);
            par = new ExcParameters
            {
                _KEY = "@PicId",
                _VALUE = model.FooterLogo_Id
            };
            parss.Add(par);

            if (dt.Rows.Count != 0)
            {
                s += base.Script("UPDATE [tbl_PicUse] SET [PicId] = @PicId WHERE [PicUseAs] =@PicUseAs", parss);
            }
            else
            {
                s += base.Script("INSERT INTO [tbl_PicUse]([PicId],[PicUseAs]) VALUES(@PicId,@PicUseAs)", parss);
            }

            ////////MenuLogo
            dt = base.Select("SELECT A.[PicId],[PicAddress],[PicThumbnailAddress] FROM [tbl_PicUploader] as A inner join [tbl_PicUse] as B on A.PicId=B.PicId where B.PicUseAs LIke N'MenuLogo'");

            parss = new List<ExcParameters>();
            par = new ExcParameters
            {
                _KEY = "@PicUseAs",
                _VALUE = "MenuLogo"
            };
            parss.Add(par);
            par = new ExcParameters
            {
                _KEY = "@PicId",
                _VALUE = model.MenuLogo_Id
            };
            parss.Add(par);

            if (dt.Rows.Count != 0)
            {
                s += base.Script("UPDATE [tbl_PicUse] SET [PicId] = @PicId WHERE [PicUseAs] =@PicUseAs", parss);
            }
            else
            {
                s += base.Script("INSERT INTO [tbl_PicUse]([PicId],[PicUseAs]) VALUES(@PicId,@PicUseAs)", parss);
            }

            ////////VideoLogo
            dt = base.Select("SELECT A.[PicId],[PicAddress],[PicThumbnailAddress] FROM [tbl_PicUploader] as A inner join [tbl_PicUse] as B on A.PicId=B.PicId where B.PicUseAs LIke N'VideoLogo'");

            parss = new List<ExcParameters>();
            par = new ExcParameters
            {
                _KEY = "@PicUseAs",
                _VALUE = "VideoLogo"
            };
            parss.Add(par);
            par = new ExcParameters
            {
                _KEY = "@PicId",
                _VALUE = model.VideoLogo_Id
            };
            parss.Add(par);

            if (dt.Rows.Count != 0)
            {
                s += base.Script("UPDATE [tbl_PicUse] SET [PicId] = @PicId WHERE [PicUseAs] =@PicUseAs", parss);
            }
            else
            {
                s += base.Script("INSERT INTO [tbl_PicUse]([PicId],[PicUseAs]) VALUES(@PicId,@PicUseAs)", parss);
            }

            ////////FoIcon
            dt = base.Select("SELECT A.[PicId],[PicAddress],[PicThumbnailAddress] FROM [tbl_PicUploader] as A inner join [tbl_PicUse] as B on A.PicId=B.PicId where B.PicUseAs LIke N'FoIcon'");

            parss = new List<ExcParameters>();
            par = new ExcParameters
            {
                _KEY = "@PicUseAs",
                _VALUE = "FoIcon"
            };
            parss.Add(par);
            par = new ExcParameters
            {
                _KEY = "@PicId",
                _VALUE = model.FoIcon_Id
            };
            parss.Add(par);

            if (dt.Rows.Count != 0)
            {
                s += base.Script("UPDATE [tbl_PicUse] SET [PicId] = @PicId WHERE [PicUseAs] =@PicUseAs", parss);
            }
            else
            {
                s += base.Script("INSERT INTO [tbl_PicUse]([PicId],[PicUseAs]) VALUES(@PicId,@PicUseAs)", parss);
            }

            ////////
            base.DC();

            if (s == "11111")
            {
                return "Success";
            }
            else
            {
                return "Fail";
            }
        }
    }
}
