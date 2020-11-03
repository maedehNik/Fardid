using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Security.Cryptography;
namespace Logics_Layer.Other
{
    public class Security
    {
        private string MD5_key = "TSHPANDA-1005";
        public string HMACMD5Generator(string plaintext)
        {
            var data = Encoding.UTF8.GetBytes(plaintext);
            var key = Encoding.UTF8.GetBytes(MD5_key);
            var hmac = new HMACMD5(key);
            var hashBytes = hmac.ComputeHash(data);
            return System.BitConverter.ToString(hashBytes).Replace("-", "").ToLower();
        }
    }
}
