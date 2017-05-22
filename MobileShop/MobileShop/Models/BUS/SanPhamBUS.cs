using MobileShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MobileShop.Models.BUS
{
    public class SanPhamBUS
    {
        public static IEnumerable<SanPham> DanhSach()
        {
            var db = new MobileShopConnectionDB();
            return db.Query<SanPham>("Select * from SanPham where BiXoa!=1");
        }
       
    }
}