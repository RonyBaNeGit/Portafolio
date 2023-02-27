﻿using System.Collections.Generic;

namespace EMedicineBE.Models
{
    public class Response
    {
        public int StatusCode { get; set; }
        public string StatusMessage { get; set; }

        public List<Users> listUsers { get; set; }
        public Users user { get; set; }

        public List<Medicine> listMedicines { get; set; }
        public Medicine medicine { get; set; }

        public List<Cart> listCart { get; set; }

        public List<Orders> listOrders { get; set; }
        public Orders order { get; set; }

        public List<OrderItems> listItems { get; set; }
        public OrderItems orderItem { get; set; }


    }
}