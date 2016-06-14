

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
	p.Name, p.parameter_id

SELECT
	ColumnIndex = column_ordinal,
	Name = name,
	IsNullable = is_nullable,
	TypeName = system_type_name,
	MaxLength = max_length,
	UserTypeName = user_type_name
FROM sys.dm_exec_describe_first_result_set_for_object
(
	OBJECT_ID('dbo.ClaimPoetTestZZZ'),
	NULL
);