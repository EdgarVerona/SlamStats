using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SlamStats.Contracts.Search
{
    public class SearchResult<T>
    {
        public IEnumerable<T> Results { get; set; }

        public SearchQuery Query { get; set; }

        public bool HasMore { get; set; }

        public int TotalPages { get; set; }
    }
}
