﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using IntellidateR1;
using System.Web;


namespace IntelliWebR1.API
{
    public class DeletePhotoController : ApiController
    {
        // GET api/<controller>
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<controller>/5
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<controller>
        public bool Post([FromBody]DeletePhotoClass DeletePhoto)
        {
            int _UserID = Convert.ToInt32(HttpContext.Current.User.Identity.Name);
            return new Photo().DeletePhoto(_UserID, DeletePhoto.PhotoID);
        }

        // PUT api/<controller>/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/<controller>/5
        public void Delete(int id)
        {
        }
    }

    public class DeletePhotoClass
    {
        public int PhotoID { get; set; }
    }
}
