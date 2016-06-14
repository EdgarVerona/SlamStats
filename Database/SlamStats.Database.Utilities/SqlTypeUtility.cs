using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SlamStats.Database.Utilities
{
	public static class SqlTypeUtility
	{
		public static Type FromSqlType(string sqlTypeString)
		{
			switch (sqlTypeString.ToLower())
			{
				case "int":
					return typeof(int);
				case "bigint":
					return typeof(long);
				case "smallint":
					return typeof(short);
				case "bit":
					return typeof(bool);
				case "binary":
				case "varbinary":
					return typeof(byte[]);
				case "varchar":
				case "nvarchar":
				case "char":
				case "nchar":
				case "ntext":
				case "text":
					return typeof(string);
				case "date":
				case "datetime":
				case "datetime2":
				case "datetimeoffset":
				case "smalldatetime":
					return typeof(DateTime);
				case "decimal":
				case "money":
				case "smallmoney":
				case "numeric":
					return typeof(decimal);
				case "float":
					return typeof(float);
				case "real":
					return typeof(double);
				default:
					throw new ArgumentException("Sql type '" + sqlTypeString + "' is not supported by SqlTypeUtility.FromSqlType.  Build it in if you need it.");
			}
		}
	}
}
