using SlamStats.Contracts.Poets;
using SlamStats.Contracts.Poets.Requests;
using SlamStats.Contracts.Search;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SlamStats.Engine.Poets
{
    public class PoetEngine
    {
        public Poet GetPoet(long poetId)
        {
            throw new NotImplementedException();
        }

        public SearchResult<Poet> SearchPoets(TextSearchQuery query)
        {
            throw new NotImplementedException();
        }

        public Poet CreatePoet(CreatePoetRequest request)
        {
            throw new NotImplementedException();
        }

        public Poet CreateTemporaryPoet(CreateTemporaryPoetRequest request)
        {
            throw new NotImplementedException();
        }

        public Poet EditPoet(EditPoetRequest request)
        {
            throw new NotImplementedException();
        }
    }
}
