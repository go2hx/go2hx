package go2hx.types;

typedef Func = {
    name:String,
    params:Array<String>,
    results:Array<String>,
    exported:Bool,
    body:Array<String>,
}
typedef Var = {
    name:String,
    constant:Bool,
    exported:Bool,
    type:String,
    value:String
}
typedef Type = {
    name:String,
}
typedef Package = {
    packagepath:String,
    name:String,
    imports:Array<Array<String>>,
    funcs:Array<Func>,
    vars:Array<Var>,
    types:Array<Type>
}
typedef JsonData = {
	pkgs:Array<Package>,
}
typedef Decl = {
    name:String,
	args:Array<String>,
}