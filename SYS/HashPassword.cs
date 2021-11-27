using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace DinersRealEstateManagement.SYS
{
    public class HashPassword
    {
        public static string GetHash(string str)
        {
            string hashResult = BitConverter.ToString(SHA1.Create().ComputeHash(Encoding.UTF8.GetBytes(str))).Replace("-", null);
            return hashResult;
        }
    }
}