package stdgo._internal.internal.reflect;
enum GoType {
	typeParam(name:String, params:Array<GoType>);
	invalidType;
	signature(variadic:Bool, params:GoTypeRef<Array<GoType>>, results:GoTypeRef<Array<GoType>>, recv:GoTypeRef<GoType>, ?typeParams:GoTypeRef<Array<GoType>>);
	basic(kind:BasicKind);
	_var(name:String, type:GoTypeRef<GoType>);
	tuple(len:Int, vars:GoTypeRef<Array<GoType>>);
	interfaceType(empty:Bool, methods:Array<MethodType>);
	sliceType(elem:GoTypeRef<GoType>);
	named(path:String, methods:Array<MethodType>, type:GoType, alias:Bool, params:GoTypeRef<Array<GoType>>);
	previouslyNamed(path:String);
	structType(fields:Array<FieldType>);
	pointerType(elem:GoTypeRef<GoType>);
	arrayType(elem:GoTypeRef<GoType>, len:Int);
	mapType(key:GoTypeRef<GoType>, value:GoTypeRef<GoType>);
	chanType(dir:Int, elem:GoTypeRef<GoType>);
	refType(elem:GoTypeRef<GoType>); // can hold named type therefore will ref the TypeInfo map
}

typedef GoTypeRef<T> = {
	function get():T;
}