package typer;

import haxe.macro.Expr;


typedef Module = {name:String, path:String, files:Array<HaxeFileType>, isMain:Bool}
typedef ImportType = {path:Array<String>, alias:String, doc:String}


typedef HaxeFileType = {
	name:String,
	imports:Array<ImportType>,
	defs:Array<TypeDefinition>,
	location:String,
	isMain:Bool
}; // location is the global path to the file