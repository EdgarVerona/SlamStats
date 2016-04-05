using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SlamStats.Contracts.Search
{
    public class TextSearchQuery : SearchQuery
    {
        public string SearchText { get; set; }
    }
}
