
/**
 * Is the intermediate form of the GO AST, GO AST + analyzed info.
 * Only used for complex AST, for example: package, function etc.
 */
package typer;

/**
 * Intermediate Package form
 */
typedef Package = {
	name:String,
	path:String,
	isMain:Bool,
	info:Info,
	files:Array<GoAst.FileType>,
	varOrder:Array<String>,
	declFuncs:Array<GoAst.FuncDecl>,
	declGens:Array<GoAst.GenDecl>,
}
