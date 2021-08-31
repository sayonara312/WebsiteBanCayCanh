using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website
{
    public partial class DangKy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        private static string[] VietNamChar = new string[]
       {
           "aAeEoOuUiIdDyY",
           "áàạảãâấầậẩẫăắằặẳẵ",
           "ÁÀẠẢÃÂẤẦẬẨẪĂẮẰẶẲẴ",
           "éèẹẻẽêếềệểễ",
           "ÉÈẸẺẼÊẾỀỆỂỄ",
           "óòọỏõôốồộổỗơớờợởỡ",
           "ÓÒỌỎÕÔỐỒỘỔỖƠỚỜỢỞỠ",
           "úùụủũưứừựửữ",
           "ÚÙỤỦŨƯỨỪỰỬỮ",
           "íìịỉĩ",
           "ÍÌỊỈĨ",
           "đ",
           "Đ",
           "ýỳỵỷỹ",
           "ÝỲỴỶỸ"
       };
        public static string ReplaceUnicode(string strInput)
        {
            for (int i = 1; i < VietNamChar.Length; i++)
            {
                for (int j = 0; j < VietNamChar[i].Length; j++)
                {
                    strInput = strInput.Replace(VietNamChar[i][j], VietNamChar[0][i - 1]);
                }
            }
            return strInput;
        }
        protected void btnDN_Click(object sender, EventArgs e)
        {
            
            
                string tendn = ReplaceUnicode(tbTK.Text);
                string ktr = @"select 1 from taikhoan where tendn='" + tendn + "'";
                if (XLDL.GetData(ktr).Rows.Count > 0)
                {
                    lbThongBao.Text = "Tên tài khoản đã tồn tại!!!";
                    tbTK.Focus();
                }
                else
                {
                    string tentk = tbTenTK.Text;
                    string email = tbEmail.Text;
                    string dc = tbDiaChi.Text;
                    string sdt = tbSDT.Text;
                    
                    string mk = tbMK.Text;
                    string sql = "insert into Taikhoan  values (N'" + tentk + "','" + email + "',N'" + dc + "','" + sdt + "','" + tendn + "','" + mk + "',2)";
                    XLDL.Excute(sql);
                    Response.Write("<script>alert('Đăng Ký Thành Công');</script>");
                    Server.Transfer("DangNhap.aspx", true);
                    
                }
            
            
            
            
        }
    }
}