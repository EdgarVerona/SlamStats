using SlamStats.Database.Utilities;
using SqlMetadataBuilder.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SqlMetadataBuilder
{
	public class MetadataBuilder
	{

		public List<StoredProcedureModel> GetStoredProcedureModels(string connectionString)
		{
			using (SqlConnection conn = new SqlConnection(connectionString))
			{
				var parameters = GetParameters(conn);
			}
		}

		private Dictionary<string, StoredProcedureProperty> GetParameters(SqlConnection conn)
		{
			Dictionary<string, List<StoredProcedureProperty>> results = new Dictionary<string, List<StoredProcedureProperty>>();

			using (SqlCommand command = new SqlCommand())
			{
				command.Connection = conn;
				command.CommandText = @"
					SELECT 
						ProcedureName = pr.Name,
						ParameterName = p.Name,
						TypeName = ty.name,
						HasDefaultValue = p.has_default_value,
						DefaultValue = p.default_value,
						IsOutputParam = p.is_output,
						IsTableType = ty.is_table_type,
						IsUserDefined = ty.is_user_defined,
						UserTypeId = ty.user_type_id
					FROM 
						sys.parameters p
					INNER JOIN 
						sys.procedures pr ON p.object_id = pr.object_id
					INNER JOIN 
						sys.types ty ON p.user_type_id = ty.user_type_id
					ORDER BY 
						p.Name, p.parameter_id";

				command.CommandType = System.Data.CommandType.Text;

				var reader = command.ExecuteReader();

				while (reader.NextResult())
				{
					string procName = reader.GetString(0);
					string paramName = reader.GetString(1);
					string typeName = reader.GetString(2);
					bool isOutput = reader.GetBoolean(5);
					bool isTable = reader.GetBoolean(6);
					bool isUserDefined = reader.GetBoolean(7);
					int userTypeId = reader.GetInt32(8);

					List<StoredProcedureProperty> props = null;

					if (!results.TryGetValue(procName, out props))
					{
						props = new List<StoredProcedureProperty>();
						results.Add(procName, props);
					}

					props.Add(new StoredProcedureProperty()
						{
							IsOutput = isOutput,
							IsTableType = isTable,
							Name = paramName,
							ParamType = SqlTypeUtility.FromSqlType(typeName)
						});
				}
			}

			return results;
		}
	}
}
