package stdgo.internal.reflect;

import stdgo.Pointer;
import stdgo.StdGoTypes;
import stdgo.reflect.Reflect;


enum abstract KindType(stdgo.reflect.Reflect.Kind) from Int from stdgo.reflect.Reflect.Kind to stdgo.reflect.Reflect.Kind {
	final invalid = 0;
	final bool;
	final int;
	final int8;
	final int16;
	final int32;
	final int64;
	final uint;
	final uint8;
	final uint16;
	final uint32;
	final uint64;
	final uintptr;
	final float32;
	final float64;
	final complex64;
	final complex128;
	final array;
	final chan;
	final func;
	final interface_;
	final map;
	final pointer;
	final slice;
	final string;
	final struct;
	final unsafePointer;
}

var useHaxePath = true;

function isExported(name:String):Bool {
	return name.charCodeAt(0) != "_".code;
}

function formatGoFieldName(name:String):String {
	return (name.charAt(0) == "_" ? "" : name.charAt(0).toUpperCase()) + name.substr(1);
}

function namedUnderlying(obj:AnyInterface):AnyInterface {
	return switch @:privateAccess obj.type._common() {
		case named(_, _, type,_,_):
			new AnyInterface((obj.value : Dynamic).__t__, new _Type(type));
		default:
			obj;
	}
}

@:structInit final private class Visit {
	public var _typ:Type = null;

	public function new(?_typ) {}
}

function deepValueEqual(v1:Value, v2:Value, visited:GoMap<Visit, Bool>, depth:GoInt):Bool {
	if (!v1.isValid() || !v2.isValid()) {
		return v1.isValid() == v2.isValid();
	}
	if (v1.kind() == KindType.array) {
		for (i in 0...v1.len().toBasic()) {
			if (!deepValueEqual(v1.index(i), v2.index(i), visited, depth + (1 : GoInt64))) {
				return false;
			}
		}
		return true;
	} else if (v1.kind() == KindType.slice) {
		if (v1.isNil() != v2.isNil()) {
			return false;
		}
		if (v1.len() != v2.len()) {
			return false;
		}
		if (v1.pointer() != v2.pointer()) {
			return true;
		}
		for (i in 0...v1.len().toBasic()) {
			if (!deepValueEqual(v1.index(i), v2.index(i), visited, depth + (1 : GoInt64))) {
				return false;
			}
		}
		return true;
	} else if (v1.kind() == KindType.interface_) {
		if (v1.isNil() || v2.isNil()) {
			return v1.isNil() == v2.isNil();
		}
		return true;
	} else if (v1.kind() == KindType.pointer) {
		if (v1.pointer() == v2.pointer()) {
			return true;
		};
		return deepValueEqual(v1.elem(), v2.elem(), visited, depth + (1 : GoInt64));
	} else if (v1.kind() == KindType.struct) {
		for (i in 0...v1.numField().toBasic()) {
			if (!deepValueEqual(v1.field(i), v2.field(i), visited, depth + (1 : GoInt64))) {
				return false;
			}
		}
		return true;
	} else if (v1.kind() == KindType.map) {
		if (v1.isNil() != v2.isNil()) {
			return false;
		}
		if (v1.len() != v2.len()) {
			return false;
		}
		if (v1.pointer() == v2.pointer()) {
			return true;
		}
		for (k in v1.mapKeys()) {
			var val1 = v1.mapIndex(k);
			var val2 = v2.mapIndex(k);
			if (!val1.isValid() || !val2.isValid() || !deepValueEqual(val1, val2, visited, depth + (1 : GoInt64))) {
				return false;
			}
		}
		return true;
	} else if (v1.kind() == KindType.func) {
		if (v1.isNil() && v2.isNil()) {
			return true;
		}
		return false;
	} else {
		// trace(v1.kind().string(), v2.kind().string());
		return v1.interface_() == v2.interface_();
	}
}

function directlyAssignable(t:Type, v:Type):Bool {
	var tgt:GoType = (t : Dynamic)._common();
	var vgt:GoType = (v : Dynamic)._common();
	switch vgt {
		case named(path, _, _):
			switch tgt {
				case named(path2, _, _):
					return path == path2;
				default:
					return false;
			}
		default:
	}
	tgt = getUnderlying(tgt);
	vgt = getUnderlying(vgt);
	return switch tgt {
		case chanType(_, _.get() => elem), sliceType(_.get() => elem):
			switch vgt {
				case chanType(_,
					_.get() => elem2), sliceType(_.get() => elem2):
					identicalType(elem,elem2);
				default: 
					false;
			}
		case arrayType(_.get() => elem, len):
			switch vgt {
				case arrayType(_.get() => elem2, len2):
					if (len != len2)
						return false;
					identicalType(elem,elem2);
				default: false;
			}
		case mapType(_.get() => key, _.get() => value):
			switch vgt {
				case mapType(_.get() => key2, _.get() => value2):
					identicalType(key,key2) && identicalType(value,value2);
				default: false;
			}
		case structType(fields):
			switch vgt {
				case structType(fields2):
					if (fields.length != fields2.length)
						return false;
					for (i in 0...fields.length) {
						final i2 = new _Type_asInterface(Go.pointer(new _Type(fields[i].type.get())), new _Type(fields[i].type.get()));
						final i3 = new _Type_asInterface(Go.pointer(new _Type(fields2[i].type.get())), new _Type(fields2[i].type.get()));
						if (!directlyAssignable(i2, i3))
							return false;
					}
					true;
				default:
					false;
			}
		case interfaceType(_):
			false; // checked by implements instead
		case signature(_, _.get() => input, _.get() => output, _):
			switch vgt {
				case signature(_, _.get() => input2, _.get() => output2, _):
					if (input.length != input2.length)
						return false;
					if (output.length != output2.length)
						return false;
					for (i in 0...input.length) {
						if (!identicalType(input[i],input2[i]))
							return false;
					}
					for (i in 0...output.length) {
						if (!identicalType(output[i],output2[i]))
							return false;
					}
					true;
				default:
					false;
			}
		case basic(kind):
			switch vgt {
				case basic(kind2):
					function untype(kind:BasicKind, kind2:BasicKind):Bool {
						final index:Int = kind2;
						var min = 0;
						var max = 0;
						switch kind {
							case untyped_int_kind:
								min = int_kind;
								max = int64_kind;
							case untyped_float_kind:
								min = float32_kind;
								max = float64_kind;
							case untyped_complex_kind:
								min = complex64_kind;
								max = complex128_kind;
							default:
								return false;
						}
						return min <= index && max >= index;
					}
					if (untype(kind, kind2))
						return true;
					if (untype(kind2, kind))
						return true;
					kind == kind2;
				default:
					false;
			}
		case pointerType(_.get() => e), refType(_.get() => e):
			switch vgt {
				case pointerType(_.get() => e2), refType(_.get() => e2):
					identicalType(e,e2);
				default:
					false;
			}
		case previouslyNamed(path):
			switch vgt {
				case previouslyNamed(path2):
					path == path2;
				default:
					false;
			}
		default:
			throw "unable to check for assignability: " + tgt;
	}
}

private function identicalType(t:GoType,v:GoType):Bool {
	return switch t {
		case named(path,_,_,_,_):
			switch v {
				case named(path2,_,_,_,_):
					path == path2;
				default:
					false;
			}
		case basic(kind):
			switch v {
				case basic(kind2):
					kind == kind2;
				default:
					false;
			}
		case pointerType(_.get() => t), refType(_.get() => t), sliceType(_.get() => t):
			switch v {
				case pointerType(_.get() => t2), refType(_.get() => t2), sliceType(_.get() => t2):
					t.getIndex() == t2.getIndex() && identicalType(t,t2);
				default:
					false;
			}
		case arrayType(_.get() => elem, len):
			switch v {
				case arrayType(_.get() => elem2, len2):
					len == len2 && identicalType(elem,elem2);
				default:
					false;
			}
		case chanType(len, _.get() => elem):
			switch v {
				case chanType(len2, _.get() => elem2):
					len == len2 && identicalType(elem,elem2);
				default:
					false;
			}
		case interfaceType(empty,methods):
			switch v {
				case interfaceType(empty2,methods2):
					if (empty == true && empty2 == true)
						return true;
					if (methods.length != methods2.length)
						return false;
					for (i in 0...methods.length) {
						if (methods[i].name != methods2[i].name)
							return false;
						if (identicalType(methods[i].type.get(),methods2[i].type.get()))
							return false;
					}
					true;
				default:
					false;
			}
		case previouslyNamed(path):
			switch v {
				case previouslyNamed(path2), named(path2, _, _, _, _):
					path == path2;
				default:
					false;
			}
		case signature(variadic, _.get() => params, _.get() => results, _.get() => recv, _.get() => typeParams):
			switch v {
				case signature(variadic2, _.get() => params2, _.get() => results2, _.get() => recv2, _.get() => typeParams2):
					if (variadic != variadic2)
						return false;
					if (params.length != params2.length)
						return false;
					if (results.length != results2.length)
						return false;
					if (typeParams.length != typeParams2.length)
						return false;
					for (i in 0...params.length) {
						if (!identicalType(params[i],params2[i]))
							return false;
					}
					for (i in 0...results.length) {
						if (!identicalType(results[i], results2[i]))
							return false;
					}
					for (i in 0...typeParams.length) {
						if (!identicalType(typeParams[i],typeParams2[i]))
							return false;
					}
					true;
				default:
					false;
			}
		default:
			trace(t);
			throw "identical type not supported";
			false;
	}
}

function implementsMethod(t:Type, v:Type):Bool {
	var interfacePath = "";
	var gt:GoType = (t : Dynamic)._common();
	var vgt:GoType = (v : Dynamic)._common();
	if (isPointer(gt) || isRef(gt))
		gt = getElem(gt);
	if (isPointer(vgt) || isRef(vgt))
		vgt = getElem(vgt);
	return switch gt {
		case interfaceType(_, methods), named(_, methods, _):
			if (methods == null || methods.length == 0)
				return true;
			switch vgt {
				case interfaceType(_, methods2), named(_, methods2, _):
					if (methods.length > methods2.length) {
						return false;
					}
					var found = false;
					for (i in 0...methods.length) {
						found = false;
						for (j in 0...methods2.length) {
							if (methods[i].name != methods2[j].name)
								continue;
							if (!new _Type(methods[i].type.get()).assignableTo(new _Type_asInterface(Go.pointer(new _Type(methods2[j].type.get())),
								new _Type(methods2[j].type.get())))) {
								return false;
							}
							found = true;
							break;
						}
						if (!found) {
							return false;
						}
					}
					true;
				default:
					false;
			}
		default:
			false;
	}
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

	function string():GoString
		return name;

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

	public function new(name, type, tag, embedded,optional) {
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

enum GoType {
	typeParam(name:String, params:Array<GoType>);
	invalidType;
	signature(variadic:Bool, params:Ref<Array<GoType>>, results:Ref<Array<GoType>>, recv:Ref<GoType>, ?typeParams:Ref<Array<GoType>>);
	basic(kind:BasicKind);
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

function isSignature(type:GoType, underlyingBool:Bool = true):Bool {
	if (type == null)
		return false;
	return switch type {
		case signature(_, _, _):
			true;
		case named(_, _, underlying,_,_):
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
	return switch type {
		case refType(_.get() => underlying):
			isNamed(underlying);
		case named(_, _, underlying,_,_):
			switch underlying {
				case structType(_): true;
				case interfaceType(_, _): false;
				case named(_, _, underlying,_,_): isNamed(underlying);
				default:
					true;
			}
		default: false;
	}
}

private typedef Ref<T> = {
	function get():T;
}

function isTitle(string:String):Bool {
	return string.charAt(0) == "_" ? false : string.charAt(0) == string.charAt(0).toUpperCase();
}

function isStruct(type:GoType):Bool {
	return switch type {
		case refType(_.get() => type):
			isStruct(type);
		case named(_, _, underlying,_,_):
			isStruct(underlying);
		case structType(_):
			true;
		default: false;
	}
}

function isPointerStruct(type:GoType):Bool {
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
				case invalid_kind:
					true;
				default:
					false;
			}
		case named(_, _, underlying,_,_):
			isInvalid(underlying);
		default:
			false;
	}
}

function getElem(type:GoType):GoType {
	if (type == null)
		return type;
	return switch type {
		case named(_, _, type,_,_):
			type;
		case _var(_, _.get() => type):
			getElem(type);
		case arrayType(_.get() => elem, _), sliceType(_.get() => elem), pointerType(_.get() => elem), refType(_.get() => elem):
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
		case named(_, _, underlying,_,_):
			getSignature(underlying);
		default:
			null;
	}
}

function isUnsafePointer(type:GoType):Bool {
	return switch type {
		case named(_, _, elem,_,_):
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
	return switch type {
		case _var(_, _.get() => elem):
			isPointer(elem);
		case named(_, _, elem,_,_):
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
	return switch type {
		case refType(_):
			true;
		default:
			false;
	}
}

function isReflectTypeRef(type:_Type):Bool {
	return isRef(type._common());
}

function isRefValue(type:GoType):Bool {
	return switch type {
		case named(_, _, t, _):
			isRefValue(t);
		case basic(_): // , pointer(_):
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

function asInterface(value:Dynamic, gt:GoType):Dynamic {
	switch gt {
		case named(path,_,_,_,_):
			final pack = path.split(".");
			pack.remove(pack[pack.length - 2]);
			final cl = std.Type.resolveClass(pack.join(".") + "_asInterface");
			if (cl == null) // named type does not have asInterface class
				return value;
			return std.Type.createInstance(cl,[Go.pointer(value),new stdgo.internal.reflect.Reflect._Type(gt)]);
			
		default:
	}
	return value;
}

function isAnyInterface(type:GoType):Bool {
	return switch type {
		case named(_, _, elem,_,_):
			isAnyInterface(elem);
		case interfaceType(empty, _):
			empty;
		default:
			false;
	}
}

function isInterface(type:GoType):Bool {
	return switch type {
		case refType(_.get() => elem):
			isInterface(elem);
		case named(_, _, elem,_,_):
			isInterface(elem);
		case interfaceType(_):
			true;
		default:
			false;
	}
}

private function unroll(parent:GoType, child:GoType):GoType {
	var parentName = "";
	var parentType:GoType = null;
	switch parent {
		case named(path, _, _):
			parentName = path;
		default:
			return child;
	}
	return switch child {
		case previouslyNamed(childName):
			childName == parentName ? parent : child;
		case pointerType(_.get() => elem):
			pointerType({get: () -> unroll(parent, elem)});
		case mapType(_.get() => key, _.get() => value):
			mapType({get: () -> unroll(parent, key)}, {get: () -> unroll(parent, value)});
		case basic(_):
			child;
		case interfaceType(_): child;
		case named(path, methods, type,_,_):
			named(path, methods, unroll(parent, type),false,{get: () -> null});
		case structType(fields):
			structType([
				for (field in fields)
					{
						name: field.name,
						type: {get: () -> unroll(parent, field.type.get())},
						tag: field.tag,
						embedded: field.embedded,
						optional: field.optional,
					}
			]);
		case sliceType(_.get() => elem):
			sliceType({get: () -> unroll(parent, elem)});
		default:
			throw "unsupported unroll gt type: " + child;
	}
}

function getUnderlyingRefNamed(gt:GoType, once:Bool = false) {
	return switch gt {
		case named(_, _, type,_,_), refType(_.get() => type):
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
		case named(_, _, type,_,_):
			if (once) {
				type;
			} else {
				getUnderlying(type);
			}
		default:
			gt;
	}
}

enum abstract BasicKind(Int) to Int {
	public final invalid_kind = 0;
	public final bool_kind;
	public final int_kind;
	public final int8_kind;
	public final int16_kind;
	public final int32_kind;
	public final int64_kind;
	public final uint_kind;
	public final uint8_kind;
	public final uint16_kind;
	public final uint32_kind;
	public final uint64_kind;
	public final uintptr_kind;
	public final float32_kind;
	public final float64_kind;
	public final complex64_kind;
	public final complex128_kind;
	public final string_kind;
	public final unsafepointer_kind;

	public final untyped_bool_kind;
	public final untyped_int_kind;
	public final untyped_rune_kind;
	public final untyped_float_kind;
	public final untyped_complex_kind;
	public final untyped_string_kind;
	public final untyped_nil_kind;
}

function defaultValue(typ:Type):Any {
	final t:GoType = @:privateAccess (typ : Dynamic)._common();
	return switch (t : stdgo.internal.reflect.Reflect.GoType) {
		case basic(kind):
			switch kind {
				case string_kind: ("" : GoString);
				case bool_kind: false;
				case int64_kind: (0 : GoInt64);
				case uint64_kind: (0 : GoUInt64);
				case uint_kind: (0 : GoUInt);
				case uint32_kind: (0 : GoUInt32);
				case complex64_kind: (0 : GoComplex64);
				case complex128_kind: (0 : GoComplex128);
				default: 0;
			}
		case named(path, methods, type,_,_):
			switch type {
				case structType(_):
					final pack = path.split(".");
					pack.remove(pack[pack.length - 2]);
					var cl = std.Type.resolveClass(pack.join("."));
					std.Type.createInstance(cl, []);
				default:
					var t = new _Type(type);
					defaultValue(new _Type_asInterface(Go.pointer(t), t));
			}
		case arrayType(_.get() => elem, len):
			var t = new _Type(elem);
			final value = defaultValue(new _Type_asInterface(Go.pointer(t), t));
			new GoArray([for (i in 0...len) value]);
		default: null;
	}
}

function _set(value:Value) {
	if (@:privateAccess value.underlyingValue != null) {
		if (@:privateAccess value.underlyingIndex == -1) {
			if (@:privateAccess value.underlyingKey != null) {
				@:privateAccess value.underlyingValue.set(@:privateAccess value.underlyingKey, @:privateAccess value.value.value);
			} else {
				@:privateAccess value.underlyingValue.set(@:privateAccess value.value.value); // set pointer
			}
		} else {
			// set array or slice
			@:privateAccess value.underlyingValue.set(@:privateAccess value.underlyingIndex, @:privateAccess value.value.value);
		}
	}
}

function defaultValueInternal(typ:_Type):Any {
	final t:GoType = @:privateAccess typ._common();
	return switch (t : stdgo.internal.reflect.Reflect.GoType) {
		case basic(kind):
			switch kind {
				case string_kind: ("" : GoString);
				case bool_kind: false;
				case int64_kind: (0 : GoInt64);
				case uint64_kind: (0 : GoUInt64);
				case uint_kind: (0 : GoUInt);
				case uint32_kind: (0 : GoUInt32);
				case complex64_kind: (0 : GoComplex64);
				case complex128_kind: (0 : GoComplex128);
				default: 0;
			}
		case named(path, methods, type,_,_):
			switch type {
				case structType(_):
					final pack = path.split(".");
					pack.remove(pack[pack.length - 2]);
					var cl = std.Type.resolveClass(pack.join("."));
					std.Type.createInstance(cl, []);
				default:
					var t = new _Type(type);
					defaultValue(new _Type_asInterface(Go.pointer(t), t));
			}
		case arrayType(_.get() => elem, len):
			var t = new _Type(elem);
			final value = defaultValue(new _Type_asInterface(Go.pointer(t), t));
			new GoArray([for (i in 0...len) value]);
		default: null;
	}
}

// go2hx's internal impl of Type

@:structInit
@:using(stdgo.internal.reflect.Reflect._Type_static_extension)
@:named
class _Type {
	@:local
	var gt:GoType;

	public function new(gt:GoType) {
		this.gt = gt;
	}

	@:local
	public function _common():GoType
		return cast gt;
}

@:keep @:allow(github_com.go2hx.go4hx.rnd.Rnd._Type_asInterface) class _Type_static_extension {
	static public function _uncommon(t:_Type):Ref<Dynamic>
		throw "not implemented";

	static public function _common(t:_Type):Ref<Dynamic>
		throw "not implemented";

	static public function out(t:_Type, _i:GoInt):Type
		throw "not implemented";

	static public function numOut(t:_Type):GoInt
		throw "not implemented";

	static public function numIn(t:_Type):GoInt {
		final gt = t._common();
		return switch gt {
			case signature(_, _.get() => params, _, _, _):
				params.length;
			default:
				throw "issue";
		}
	}

	static public function numField(t:_Type):GoInt {
		var type:stdgo.internal.reflect.Reflect.GoType = @:privateAccess t._common();
		type = getUnderlying(type);
		switch type {
			case structType(fields):
				return fields.length;
			default:
				throw "reflect.NumField not implemented for " + t.string();
		}
	}

	static public function len(t:_Type):GoInt
		throw "not implemented";

	static public function key(t:_Type):Type
		throw "not implemented";

	static public function in_(t:_Type, _i:GoInt):Type {
		final gt = t._common();
		return switch gt {
			case signature(_, _.get() => params, _, _, _):
				var t = new _Type(params[_i.toBasic()]);
				new _Type_asInterface(Go.pointer(t),t);
			default:
				throw "issue";
		}
	}

	static public function fieldByNameFunc(t:_Type, _match:GoString->Bool):{var _0:StructField; var _1:Bool;}
		throw "not implemented";

	static public function fieldByName(t:_Type, _name:GoString):{var _0:StructField; var _1:Bool;}
		throw "not implemented";

	static public function fieldByIndex(t:_Type, _index:Slice<GoInt>):StructField
		throw "not implemented";

	static public function field(t:_Type, _i:GoInt):StructField {
			var module = "";
			final gt = t._common();
			final underlyingType:GoType = getUnderlying(gt);
	
			switch underlyingType {
				case structType(fields):
					var field = fields[_i.toBasic()];
					var name = field.name;
					name = formatGoFieldName(name);
					var t = new _Type(unroll(gt, field.type.get()));
					return {
						name: name,
						pkgPath: module,
						type: new _Type_asInterface(Go.pointer(t),t),
						tag: field.tag,
						index: new Slice(_i, _i),
						anonymous: field.embedded,
					};
				default:
					throw "cannot get struct: " + gt;
			}
	}

	static public function elem(t:_Type):Type {
		final gt:GoType = getUnderlying(t._common());
		switch (gt) {
			case chanType(_, _.get() => elem), refType(_.get() => elem), pointerType(_.get() => elem), sliceType(_.get() => elem), arrayType(_.get() => elem, _):
				var t = new _Type(elem);
				// set internal Type
				return new _Type_asInterface(new Pointer(() -> t, value -> t = value), t);
			case interfaceType(_):
				return null;
			default:
				trace(gt);
				throw "reflect.Type.Elem not implemented for " + t.string();
		}
	}

	static public function isVariadic(t:_Type):Bool
		throw "not implemented";

	static public function chanDir(t:_Type):ChanDir
		throw "not implemented";

	static public function bits(t:_Type):GoInt
		throw "not implemented";

	static public function comparable(t:_Type):Bool {
		return switch (t._common()) {
			case sliceType(_), signature(_, _, _, _), mapType(_, _):
				return false;
			case arrayType(_.get() => elem, _):
				return new _Type(elem).comparable();
			case structType(fields):
				for (field in fields) {
					if (!new _Type(field.type.get()).comparable())
						return false;
				}
				return true;
			case named(_, _, type,_,_):
				return new _Type(type).comparable();
			default:
				return true;
		}
	}

	static public function convertibleTo(t:_Type, _u:Type):Bool
		throw "not implemented";

	static public function assignableTo(t:_Type, _u:Type):Bool {
		if (_u == null)
			throw "reflect: nil type passed to Type.AssignableTo";
		final i = new _Type_asInterface(Go.pointer(t), t);
		final b = directlyAssignable(_u, i) || t.implements_(_u);
		return b;
	}

	static public function implements_(t:_Type, _u:Type):Bool {
		if (_u == null)
			throw "reflect: nil type passed to Type.Implements";
		// interface check
		// trace(t.kind().string(), _u.kind().string());
		// if (_u.kind() != KindType.interface_)
		//	throw "reflect: non-interface type passed to Type.Implements: " + _u.kind().string();
		return implementsMethod(_u, new _Type_asInterface(Go.pointer(t), t));
	}

	static public function kind(t:_Type):Kind {
		var gt:GoType = cast t._common();
		gt = getUnderlying(gt);
		return switch gt {
			case typeParam(_, _):
				0;
			case basic(kind):
				switch kind {
					case bool_kind, untyped_bool_kind: KindType.bool;
					case int_kind: KindType.int;
					case int8_kind: KindType.int8;
					case int16_kind: KindType.int16;
					case int32_kind, untyped_rune_kind: KindType.int32;
					case int64_kind, untyped_int_kind: KindType.int64;
					case uint_kind: KindType.uint;
					case uint8_kind: KindType.uint8;
					case uint16_kind: KindType.uint16;
					case uint32_kind: KindType.uint32;
					case uint64_kind: KindType.uint64;
					case uintptr_kind: KindType.uintptr;
					case float32_kind: KindType.float32;
					case float64_kind, untyped_float_kind: KindType.float64;
					case complex64_kind: KindType.complex64;
					case complex128_kind, untyped_complex_kind: KindType.complex128;
					case string_kind, untyped_string_kind: KindType.string;
					case untyped_nil_kind: KindType.unsafePointer;
					case unsafepointer_kind: KindType.unsafePointer;
					default: throw 'Unknown BasicKind: $kind';
				}
			case chanType(_, _): 18;
			case interfaceType(_, _): 20;
			case arrayType(_, _): 17;
			case invalidType: KindType.invalid;
			case mapType(_, _): 21;
			case named(_, _, type,_,_), _var(_, _.get() => type): new _Type(type).kind();
			case pointerType(_), refType(_): 22;
			case previouslyNamed(_): throw "previouslyNamed type to kind not supported should be unrolled before access";
			case sliceType(_): 23;
			case tuple(_, _): throw "tuple type to kind not supported";
			case signature(_, _, _, _): 19;
			case structType(_): 25;
		}
	}

	static private function formatGoPath(path:String):String {
		if (useHaxePath)
			return path;
		final stdgo = "stdgo.";
		var index = path.indexOf(stdgo);
		if (index == 0)
			path = path.substr(stdgo.length);
		final list = path.split(".");
		var cl = list.pop();
		if (cl.indexOf("T_") == 0)
			cl = cl.substr(2);
		list.push(cl);
		return list.join(".");
	}

	static public function string(t:_Type):GoString {
		final gt:GoType = (t : Dynamic)._common();
		return switch (gt) {
			case basic(kind):
				if (kind == untyped_int_kind)
					kind = int_kind;
				switch kind {
					case untyped_nil_kind:
						"nil";
					default:
						switch kind {
							case bool_kind:
								"bool";
							case int_kind:
								"int";
							case int8_kind:
								"int8";
							case int16_kind:
								"int16";
							case int32_kind:
								"int32";
							case int64_kind:
								"int64";
							case uint_kind:
								"uint";
							case uint8_kind:
								"uint8";
							case uint16_kind:
								"uint16";
							case uint32_kind:
								"uint32";
							case uint64_kind:
								"uint64";
							case uintptr_kind:
								"uintptr";
							case float32_kind:
								"float32";
							case float64_kind:
								"float64";
							case complex64_kind:
								"complex64";
							case complex128_kind:
								"complex128";
							case string_kind:
								"string";
							case unsafepointer_kind:
								"unsafepointer";
							default:
								"unknown";
						}
				}
			case previouslyNamed(path):
				final pack = path.split(".");
				pack.remove(pack[pack.length - 2]);
				formatGoPath(pack.join("."));
			case named(path, _, type, alias,_):
				if (alias) {
					new _Type(type).string();
				} else {
					final pack = path.split(".");
					pack.remove(pack[pack.length - 2]);
					formatGoPath(pack.join("."));
				}
			case pointerType(_.get() => elem), refType(_.get() => elem):
				"*" + new _Type(elem).string();
			case structType(fields):
				"struct { " + [
					for (field in fields)
						formatGoFieldName(field.name) + " " + new _Type(field.type.get()).string()
				].join("; ") + " }";
			case arrayType(_.get() => typ, len):
				"[" + Std.string(len) + "]" + new _Type(typ).string();
			case sliceType(_.get() => typ):
				"[]" + new _Type(typ).string();
			case mapType(_.get() => key, _.get() => value):
				"map[" + new _Type(key).string() + "]" + new _Type(value).string();
			case chanType(_, _.get() => typ):
				"chan " + new _Type(typ).string();
			case signature(variadic, _.get() => args, _.get() => rets, _.get() => recv):
				var r:GoString = "func(";
				var preface = "";
				switch recv {
					case invalidType:
					default:
						r += new _Type(recv).string();
						r += ", ";
				}
				for (i in 0...args.length) {
					r += preface;
					preface = ", ";
					final isVariadic = variadic && i == args.length - 1;
					var str:GoString = new _Type(args[i]).string();
					if (isVariadic)
						str = "..." + str.__slice__(2);
					r += str;
				}
				r += ")";
				if (rets != null) {
					if (rets.length > 0) {
						r += " ";
						if (rets.length > 1)
							r += "(";
						preface = "";
						for (ret in rets) {
							r += preface;
							preface = ", ";
							r += new _Type(ret).string();
						}
						if (rets.length > 1)
							r += ")";
					}
				}
				r;
			case invalidType:
				return "<nil>";
			case interfaceType(empty, methods):
				var r = "";
				if (empty)
					return "interface {}";
				for (method in methods) {
					r += "; " + formatGoFieldName(method.name) + new _Type(method.type.get()).string().__toString__().substr(4);
				}
				r = r.substr(1);
				"interface {" + r + " }";
			default:
				throw "not found enum toString " + gt; // should never get here
		}
	}

	static public function size(t:_Type):GoUIntptr
		throw "not implemented";

	static public function pkgPath(t:_Type):GoString
		throw "not implemented";

	static public function name(t:_Type):GoString
		throw "not implemented";

	static public function numMethod(t:_Type):GoInt {
		switch t._common() {
			case named(_, methods, _), interfaceType(_, methods):
				var count = 0;
				for (method in methods) {
					if (isExported(method.name))
						count++;
				}
				return count;
			case structType(_):
				return 0;
			case pointerType(_), refType(_):
				return t.elem().numMethod();
			default:
				throw "reflect.NumMethod not implemented for " + t.string();
		}
	}

	static public function methodByName(t:_Type, _0:GoString):{var _0:Method; var _1:Bool;}
		throw "not implemented";

	static public function method(t:_Type, _0:GoInt):Method
		throw "not implemented";

	static public function fieldAlign(t:_Type):GoInt
		throw "not implemented";

	static public function align(t:_Type):GoInt
		throw "not implemented";
}

class _Type_asInterface {
	public function _uncommon():Dynamic
		return cast __self__.value._uncommon();

	public function _common():Dynamic
		return cast __self__.value._common();

	public function out(_i:GoInt):Type
		return __self__.value.out(_i);

	public function numOut():GoInt
		return __self__.value.numOut();

	public function numIn():GoInt
		return __self__.value.numIn();

	public function numField():GoInt
		return __self__.value.numField();

	public function len():GoInt
		return __self__.value.len();

	public function key():Type
		return __self__.value.key();

	public function in_(_i:GoInt):Type
		return __self__.value.in_(_i);

	public function fieldByNameFunc(_match:GoString->Bool):{var _0:StructField; var _1:Bool;}
		return __self__.value.fieldByNameFunc(_match);

	public function fieldByName(_name:GoString):{var _0:StructField; var _1:Bool;}
		return __self__.value.fieldByName(_name);

	public function fieldByIndex(_index:Slice<GoInt>):StructField
		return __self__.value.fieldByIndex(_index);

	public function field(_i:GoInt):StructField
		return __self__.value.field(_i);

	public function elem():Type {
		return __self__.value.elem();
	}

	public function isVariadic():Bool
		return __self__.value.isVariadic();

	public function chanDir():ChanDir
		return __self__.value.chanDir();

	public function bits():GoInt
		return __self__.value.bits();

	public function comparable():Bool
		return __self__.value.comparable();

	public function convertibleTo(_u:Type):Bool
		return __self__.value.convertibleTo(_u);

	public function assignableTo(_u:Type):Bool
		return __self__.value.assignableTo(_u);

	public function implements_(_u:Type):Bool
		return __self__.value.implements_(_u);

	public function kind():Kind {
		return __self__.value.kind();
	}

	public function string():GoString
		return __self__.value.string();

	public function size():GoUIntptr
		return __self__.value.size();

	public function pkgPath():GoString
		return __self__.value.pkgPath();

	public function name():GoString
		return __self__.value.name();

	public function numMethod():GoInt
		return __self__.value.numMethod();

	public function methodByName(_0:GoString):{var _0:Method; var _1:Bool;}
		return __self__.value.methodByName(_0);

	public function method(_0:GoInt):Method
		return __self__.value.method(_0);

	public function fieldAlign():GoInt
		return __self__.value.fieldAlign();

	public function align():GoInt
		return __self__.value.align();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<_Type>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}
