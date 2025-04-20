package typer;

import haxe.macro.Expr;


typedef Module = {name:String, path:String, files:Array<FileType>, isMain:Bool}
typedef ImportType = {path:Array<String>, alias:String, doc:String}

typedef FileType = {
	name:String,
	imports:Array<ImportType>,
	defs:Array<TypeDefinition>,
	location:String,
	isMain:Bool
}; // location is the global path to the file