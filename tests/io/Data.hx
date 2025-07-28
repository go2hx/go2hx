package io;

/**
 * Hold all of the global data for the compiler
**/
import sys.io.File;

final stdList:Array<String> = parseData('std.list');
final excludesList:Array<String> = parseData('excludes.json');
final exports:Array<String> = parseData('stdExports.json');
final externs:Array<String> = parseData('stdExterns.json');

function parseData(fileName:String) {
	final ext = haxe.io.Path.extension(fileName);
	return switch ext {
		case "json":
			parseDataJson(fileName);
		case "list":
			parseDataList(fileName);
		default:
			throw "unknown extension: " + ext;
	}
}

function parseDataList(fileName:String) {
	return shared.Util.normalizeCLRF(File.getContent('data/$fileName')).split("\n");
}

function parseDataJson(fileName:String) {
	return haxe.Json.parse(File.getContent('data/$fileName'));
}

final reserved = [
	"iterator",
	"keyValueIterator",
	"switch",
	"case",
	"break",
	"continue",
	"default",
	"is",
	"abstract",
	"cast",
	"catch",
	"class",
	"do",
	"function",
	"dynamic",
	"else",
	"enum",
	"extends",
	"extern",
	"final",
	"for",
	"function",
	"if",
	"interface",
	"implements",
	"import",
	"in",
	"inline",
	"macro",
	"new",
	"operator",
	"overload",
	"override",
	"package",
	"private",
	"public",
	"return",
	"static",
	"this",
	"throw",
	"try",
	"typedef",
	"untyped",
	"using",
	"var",
	"while",
	"construct",
	"null",
	"in",
	"wait",
	"length",
	"capacity",
	"bool",
	"float",
	"int",
	"struct",
	"offsetof",
	"alignof",
	"atomic",
	"map",
	"comparable",
	"environ",
	"trace",
	"haxe",
	"std",
	"_new",
];

final reservedClassNames = [
	"_Atomic",
	"Atomic",
	"Environ",
	"Class",
	"TClass",
	"Single", // Single is a 32bit float
	"Array",
	"Any",
	"Int",
	"Float",
	"String",
	"Int64",
	"AnyInterface",
	"Dynamic",
	"InvalidType",
	"Null",
	"Bool",
	// "Reflect",
	"Date",
	"ArrayAccess",
	"DateTools",
	"EReg",
	"Enum",
	"EnumValue",
	"IntIterator",
	"Iterable",
	"Iterator",
	"KeyValueIterable",
	"KeyValueIterator",
	"Lambda",
	// "List",
	"Map",
	// "Math",
	"Std",
	"Sys",
	// "StringBuf",
	"StringTools",
	"SysError",
	"Type",
	"T",
	// "UnicodeString",
	"ValueType",
	"Void",
	"XmlType",
	"GoArray",
	"GoMath",
	"Go",
	"Slice",
	"Pointer",
];

final basicTypes = [
	"uint",
	"uint8",
	"uint16",
	"uint32",
	"uint64",
	"int",
	"int8",
	"int16",
	"int32",
	"int64",
	"float32",
	"float64",
	"complex64",
	"complex128",
	"string",
	"byte", // alias for uint8
	"rune", // alias for int32
	"uintptr",
	"comparable",
];
