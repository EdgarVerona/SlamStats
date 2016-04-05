using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SlamStats.Contracts.Poets.Requests
{
    public class EditPoetRequest
    {
        public long PoetId { get; set; }

        public string Name { get; set; }

        public string Email { get; set; }

        public string Description { get; set; }

        public string Image { get; set; }

        public string FeatureDescription { get; set; }
    }
}
