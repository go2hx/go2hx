import Ast.BasicKind;

enum GoType {
	typeParam(name:String, params:Array<GoType>);
	invalidType;
	signature(variadic:Bool, params:Ref<Array<GoType>>, results:Ref<Array<GoType>>, recv:Ref<GoType>, ?typeParams:Ref<Array<GoType>>);
	basic(kind:Ast.BasicKind);
	_var(name:String, type:Ref<GoType>);
	tuple(len:Int, vars:Ref<Array<GoType>>);
	interfaceType(empty:Bool, methods:Array<MethodType>);
	sliceType(elem:Ref<GoType>);
	named(path:String, methods:Array<MethodType>, type:GoType, alias:Bool, params:Ref<Array<GoType>>);
	previouslyNamed(path:String);
	structType(fields:Array<FieldType>);
	pointerType(elem:Ref<GoType>);
	arrayType(elem:Ref<GoType>, len:Int);
	mapType(key:Ref<GoType>, value:Ref<GoType>);
	chanType(dir:Int, elem:Ref<GoType>);
	refType(elem:Ref<GoType>); // can hold named type therefore will ref the TypeInfo map
}

@:structInit
class MethodType {
	public var name:String;
	public var type:Ref<GoType>;
	public var recv:Ref<GoType>;

	public function new(name, type, recv) {
		this.name = name;
		this.type = type;
		this.recv = recv;
	}

	public function toString()
		return '$name: $type';
}

@:structInit
class FieldType {
	public var name:String;
	public var type:Ref<GoType>;
	public var tag:String;
	public var embedded:Bool;
	public var optional:Bool;

	public function new(name, type, tag, embedded, optional) {
		this.name = name;
		this.type = type;
		this.tag = tag;
		this.embedded = embedded;
		this.optional = optional;
	}

	public function toString():String {
		return '$name opt: $optional';
	}
}

private typedef Ref<T> = {
	function get():T;
}

// modular functions

function isTitle(string:String):Bool {
	if (string.charAt(0) == "_")
		return false;
	return string.charAt(0) == string.charAt(0).toUpperCase();
}

function removeTypeParam(t:GoType) {
	if (t == null)
		return t;
	return switch t {
		case typeParam(_, _[0] => t):
			t;
		default:
			t;
	}
}

function isStruct(type:GoType):Bool {
	if (type == null)
		return false;
	return switch type {
		case refType(_.get() => type):
			isStruct(type);
		case named(_, _, underlying, _, _):
			isStruct(underlying);
		case structType(_):
			true;
		default: false;
	}
}

function isPointerStruct(type:GoType):Bool {
	if (type == null)
		return false;
	return switch type {
		case pointerType(_.get() => elem): isStruct(elem);
		default: false;
	}
}

function isInvalid(type:GoType):Bool {
	if (type == null)
		return true;
	return switch type {
		case invalidType:
			true;
		case basic(kind):
			switch kind {
				case untyped_nil_kind:
					true;
				default:
					false;
			}
		case named(_, _, underlying, _, _):
			isInvalid(underlying);
		default:
			false;
	}
}


function getArrayElem(type:GoType):GoType {
	if (type == null)
		return type;
	return switch type {
		case named(_, _, elem, _, _):
			getArrayElem(elem);
		case arrayType(_.get() => elem, _), sliceType(_.get() => elem):
			elem;
		default:
			type;
	}
}

function getElem(type:GoType):GoType {
	if (type == null)
		return type;
	return switch type {
		case named(_, _, underlying, _, _):
			final newUnderlying = getElem(underlying);
			if (newUnderlying == underlying) {
				return type;
			}else{
				newUnderlying;
			}
		case _var(_, _.get() => type):
			getElem(type);
		case arrayType(_.get() => elem, _), sliceType(_.get() => elem), pointerType(_.get() => elem), refType(_.get() => elem):
			elem;
		case chanType(_, _.get() => elem):
			elem;
		default:
			type;
	}
}

function getVar(type:GoType):GoType {
	if (type == null)
		return type;
	return switch type {
		case _var(_, _.get() => type):
			type;
		default:
			type;
	}
}

function getSignature(type:GoType):GoType {
	if (type == null)
		return type;
	return switch type {
		case signature(_, _, _):
			type;
		case named(_, _, underlying, _, _):
			getSignature(underlying);
		default:
			null;
	}
}

function isUnsafePointer(type:GoType):Bool {
	if (type == null)
		return false;
	return switch type {
		case named(_, _, elem, _, _):
			isUnsafePointer(elem);
		case basic(kind):
			switch kind {
				case unsafepointer_kind: true;
				default: false;
			}
		default:
			false;
	}
}

function isPointer(type:GoType):Bool {
	if (type == null)
		return false;
	return switch type {
		case _var(_, _.get() => elem):
			isPointer(elem);
		case named(_, _, elem, _, _):
			isPointer(elem);
		case pointerType(_):
			true;
		case refType(_):
			false;
		default:
			false;
	}
}

function isRef(type:GoType):Bool {
	if (type == null)
		return false;
	return switch type {
		case refType(_):
			true;
		default:
			false;
	}
}

function isRefValue(type:GoType):Bool {
	if (type == null)
		return false;
	return switch type {
		case named(_, _, t, _):
			isRefValue(t);
		case refType(_):
			false;
		case refType(_.get() => t):
			switch t {
				case refType(_):
					false;
				default:
					true;
			}
		case pointerType(_):
			false;
		case basic(_):
			false;
		case signature(_, _, _, _, _):
			false;
		default:
			true;
	}
}

function pointerUnwrap(type:GoType):GoType {
	if (type == null)
		return type;
	return switch type {
		case pointerType(_.get() => elem):
			pointerUnwrap(elem);
		default:
			type;
	}
}

function getUnderlyingRefNamed(gt:GoType, once:Bool = false):GoType {
	if (gt == null)
		return null;
	return switch gt {
		case named(_, _, type, _, _), refType(_.get() => type):
			if (once) {
				type;
			} else {
				getUnderlyingRefNamed(type);
			}
		default:
			gt;
	}
}

function getUnderlying(gt:GoType, once:Bool = false) {
	if (gt == null)
		return null;
	return switch gt {
		case named(_, _, type, _, _):
			if (once) {
				type;
			} else {
				getUnderlying(type);
			}
		default:
			gt;
	}
}

function isAnyInterface(type:GoType):Bool {
	if (type == null)
		return false;
	return switch type {
		case named(_, _, elem, _, _):
			isAnyInterface(elem);
		case interfaceType(empty, _):
			empty;
		default:
			false;
	}
}

function isInterface(type:GoType):Bool {
	if (type == null)
		return false;
	return switch type {
		case refType(_.get() => elem):
			isInterface(elem);
		case named(_, _, elem, _, _):
			isInterface(elem);
		case interfaceType(_):
			true;
		default:
			false;
	}
}

function isSignature(type:GoType, underlyingBool:Bool = true):Bool {
	if (type == null)
		return false;
	return switch type {
		case signature(_, _, _):
			true;
		case named(_, _, underlying, _, _):
			if (underlyingBool) {
				isSignature(underlying, underlyingBool);
			} else {
				false;
			}
		default:
			false;
	}
}

// named doesn't count for interfaces
function isNamed(type:GoType):Bool {
	if (type == null)
		return false;
	return switch type {
		case refType(_.get() => underlying):
			isNamed(underlying);
		case named(_, _, underlying, _, _):
			isNamedUnderlying(underlying);
		default: false;
	}
}

// named doesn't count for interfaces
function isNamedUnderlying(type:GoType):Bool {
	if (type == null)
		return false;
	return switch type {
		case refType(_.get() => underlying):
			isNamed(underlying);
		case named(_, _, underlying, _, _):
			isNamedUnderlying(underlying);
		case structType(_): true;
		case interfaceType(_, _): false;
		default: true;
	}
}
