﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SqlMetadataBuilder.Models
{
	public class StoredProcedureModel
	{
		public string Name { get; set; }

		public List<StoredProcedureProperty> Parameters { get; set; }

		public List<StoredProcedureOutputTable> OutputTables { get; set; }
	}

	public class StoredProcedureProperty
	{
		public Type ParamType { get; set; }

		public string Name { get; set; }

		public bool IsOutput { get; set; }

		public bool IsTableType { get; set; }
	}

	public class StoredProcedureOutputTable
	{
		public List<StoredProcedureProperty> Properties { get; set; }
	}
}
