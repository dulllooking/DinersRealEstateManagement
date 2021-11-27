using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DinersRealEstateManagement.SYS
{
    public class Person
    {
        public string name { get; set; }
        public string password { get; set; }
        public Person()
        {
            name = "";
            password = "";
        }
    }
}