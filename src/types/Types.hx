package types;

typedef Func = {
	name:String,
	params:Array<String>,
	results:Array<String>,
	exported:Bool,
	body:Array<String>,
	doc:String,
	recv:String, //name of recived function
}

typedef Var = {
	name:String,
	constant:Bool,
	exported:Bool,
	type:String,
	value:String
}

typedef Struct = {
	name:String,
	exported:Bool,
	fields:Array<String>,
	funcs:Array<Func>,
	def:String,
}

typedef Package = {
	packagepath:String,
	name:String,
	imports:Array<Array<String>>,
	funcs:Array<Func>,
	vars:Array<Var>,
	structs:Array<Struct>
}

typedef Data = {
	pkgs:Array<Package>,
}

typedef Decl = {
	name:String,
	args:Array<String>,
}
