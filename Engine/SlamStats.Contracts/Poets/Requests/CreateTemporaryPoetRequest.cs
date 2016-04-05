using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SlamStats.Contracts.Poets.Requests
{
    public class CreateTemporaryPoetRequest
    {
        public string Name { get; set; }

        public string Email { get; set; }

        public long SlamId { get; set; }
    }
}
