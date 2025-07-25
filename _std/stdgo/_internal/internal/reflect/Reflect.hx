package stdgo._internal.internal.reflect;

import stdgo.Pointer;
import stdgo.AnyInterface;

@:follow private typedef Type = stdgo._internal.reflect.Reflect_type_.Type_;

private typedef ReflectKind = stdgo._internal.reflect.Reflect_kind.Kind;

private typedef ReflectMethod = stdgo._internal.reflect.Reflect_method.Method;

private typedef Kind = stdgo._internal.reflect.Reflect_kind.Kind
private typedef ReflectValue = stdgo._internal.reflect.Reflect_value.Value;

private typedef ReflectStructField = stdgo._internal.reflect.Reflect_structfield.StructField;

private typedef ReflectChanDir = stdgo._internal.reflect.Reflect_chandir.ChanDir;


enum abstract KindType(ReflectKind) from Int 
from stdgo._internal.reflect.Reflect_kind.Kind to stdgo._internal.reflect.Reflect_kind.Kind
{
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
			switch std.Type.typeof(obj.value) {
				case TClass(_):
					new AnyInterface((obj.value : Dynamic).__t__, new _Type(type));
				default:
					obj;
			}
		default:
			obj;
	}
}

@:structInit final private class Visit {
	public var _typ:Type = null;

	public function new(?_typ) {}
}

function deepValueEqual(v1:ReflectValue, v2:ReflectValue, visited:Map<Visit, Bool>, depth:GoInt):Bool {
	if (!v1.isValid() || !v2.isValid()) {
		return v1.isValid() == v2.isValid();
	}
	switch v1.kind() {
		case KindType.array:
			for (i in 0...v1.len().toBasic()) {
				if (!deepValueEqual(v1.index(i), v2.index(i), visited, depth + (1 : GoInt64))) {
					return false;
				}
			}
			return true;
		case KindType.slice:
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
		case KindType.interface_:
			if (v1.isNil() || v2.isNil()) {
				return v1.isNil() == v2.isNil();
			}
			return true;
		case KindType.pointer:
			if (v1.pointer() == v2.pointer()) {
				return true;
			};
			return deepValueEqual(v1.elem(), v2.elem(), visited, depth + (1 : GoInt64));
		case KindType.struct:
			for (i in 0...v1.numField().toBasic()) {
				if (!deepValueEqual(v1.field(i), v2.field(i), visited, depth + (1 : GoInt64))) {
					return false;
				}
			}
			return true;
		case KindType.map:
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
		case KindType.func:
			if (v1.isNil() && v2.isNil()) {
				return true;
			}
			return false;
		case KindType.uintptr:
			return v1.pointer() == v2.pointer();
		case KindType.uint, KindType.uint8, KindType.uint16, KindType.uint32, KindType.uint64:
			return v1.uint() == v2.uint();
		case KindType.int, KindType.int8, KindType.int16, KindType.int32, KindType.int64:
			return v1.int_() == v2.int_();
		case KindType.float32, KindType.float64:
			return v1.float_() == v2.float_();
		case KindType.bool:
			return v1.bool_() == v2.bool_();
		case KindType.string:
			return v1.string() == v2.string();
		case KindType.complex64, KindType.complex128:
			return v1.complex() == v2.complex();
		default:
			trace(v1.kind().string(), v2.kind().string());
			throw "unsupported deepValueEqual kinds";
	}
}

function directlyAssignable(t:Type, v:Type):Bool {
	var tgt:GoType = (t : Dynamic)._common();
	var vgt:GoType = (v : Dynamic)._common();
	return _directlyAssignable(tgt,vgt); 
}

function _directlyAssignable(tgt:GoType, vgt:GoType):Bool {
	// trace("directlyAssignable tgt:", tgt);
	// trace("directlyAssignable vgt:", vgt);
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
	// trace("directlyAssignable underlying tgt:", tgt);
	// trace("directlyAssignable underlying vgt:", vgt);
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
					if (len != -1 && len2 != -1 && len != len2)
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
			false;
			/*var bType = new stdgo._internal.internal.reflect.Reflect._Type(vgt);
			final b = new stdgo._internal.internal.reflect.Reflect._Type(tgt).implements_(cast new stdgo._internal.internal.reflect.Reflect._Type_asInterface(new Pointer(() -> bType, value -> bType = value), bType));
			b;*/
		case signature(variadic, _.get() => input, _.get() => output, _):
			switch vgt {
				case signature(variadic2, _.get() => input2, _.get() => output2, _):
					if (variadic != variadic2)
						return false;
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
						final index:BasicKind = kind2;
						var min:BasicKind = 0;
						var max:BasicKind = 0;
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
						return (min : Int) <= (index : Int) && (max : Int) >= (index : Int);
					}
					if (untype(kind, kind2))
						return true;
					if (untype(kind2, kind))
						return true;
					if((kind == int_kind || kind == int32_kind) && (kind2 == int_kind || kind2 == int32_kind))
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
					identicalType(e,vgt);
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
	if (t == null || v == null)
		return t == v;
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
					if (len != -1 && len2 != -1 && len != len2)
						return false;
					identicalType(elem,elem2);
				default:
					false;
			}
		case chanType(len, _.get() => elem):
			switch v {
				case chanType(len2, _.get() => elem2):
					(len == -1 || len2 == -1 || len == len2) && identicalType(elem,elem2);
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
		case signature(_, _, _, _):
			return _directlyAssignable(t, v); 
		case mapType(_.get() => key,_.get() => value):
			switch v {
				case mapType(_.get() => key2,_.get() => value2):
					identicalType(key,key2) && identicalType(value,value2);
				default:
					false;
			}
		case structType(fields):
			switch v {
				case structType(fields2):
					if (fields.length != fields2.length) {
						false;
					}else{
						var isIdentical = true;
						for (i in 0...fields.length) {
							if (!identicalType(fields[i].type.get(), fields2[i].type.get())) {
								isIdentical = false;
								break;
							}
						}
						isIdentical;
					}
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
	var gtIsPointer = false;
	var vgtIsPointer = false;
	if (isPointer(gt) || isRef(gt)) {
		gtIsPointer = true;
		gt = getElem(gt);
	}
	if (isPointer(vgt) || isRef(vgt)) {
		vgtIsPointer = true;
		vgt = getElem(vgt);
	}
	// trace("n0:", gt);
	// trace("n1:", vgt);
	if (!isInterface(gt) && !isInterface(vgt))
		return false;
	return switch gt {
		case interfaceType(_, methods), named(_, methods, _, _):
			if (methods == null || methods.length == 0) {
				return true;
			}
			switch vgt {
				case interfaceType(_, methods2), named(_, methods2, _, _):
					if (methods.length > methods2.length) {
						return false;
					}
					var found = false;
					for (i in 0...methods.length) {
						found = false;
						// if (!gtIsPointer && isPointer(methods[i].recv.get()) != gtIsPointer)
						// 	continue;
						for (j in 0...methods2.length) {
							if (methods[i].name != methods2[j].name) {
								//trace(methods[i].name);
								//trace(methods2[i].name);
								continue;
							}
							// if (!vgtIsPointer && isPointer(methods2[i].recv.get()) != vgtIsPointer)
							// 	continue;
							final b = !new _Type(methods[i].type.get()).assignableTo(new _Type_asInterface(Go.pointer(new _Type(methods2[j].type.get())),
							new _Type(methods2[j].type.get())));
							if (b) {
								//trace(methods[i].type.get());
								//trace(methods[j].type.get());
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
	if (type == null)
		return false;
	return switch type {
		case named(_, _, t, _):
			isRefValue(t);
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

function asInterfaceValue(value:Dynamic, gt:GoType):Dynamic {
	switch gt {
		case named(path,_,_,_,_):
			final pack = path.split(".");
			pack.remove(pack[pack.length - 2]);
			final cl = std.Type.resolveClass(pack.join(".") + "_asInterface");
			if (cl == null) // named type does not have asInterface class
				return value;
			var isPointer = false;
			final typ = std.Type.typeof(value);
			switch typ {
				case TClass(cl):
					final className = std.Type.getClassName(cl);
					if (className == "stdgo.PointerData")
						isPointer = true;
				default:
			}
			return std.Type.createInstance(cl,[isPointer ? value : Go.pointer(value),new stdgo._internal.internal.reflect.Reflect._Type(gt)]);
			
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
		case refType(_.get() => elem):
			refType({get: () -> unroll(parent, elem)});
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
		case arrayType(_.get() => elem, len):
			arrayType({get: () -> unroll(parent, elem)}, len);
		case signature(variadic, _.get() => params, _.get() => results, _.get() => recv, typeParams):
			signature(variadic, 
				{get: () -> params.map(t -> unroll(parent, t))},
				{get: () -> results.map(t -> unroll(parent, t))},
				{get: () -> unroll(parent, recv)},
				typeParams == null ? null : {get: () -> typeParams.get().map(t -> unroll(parent, t))}
			);
		case invalidType:
			invalidType;
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

function defaultValue(typ:Type):Any {
	final t:GoType = @:privateAccess (typ : Dynamic)._common();
	return switch (t : stdgo._internal.internal.reflect.GoType) {
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
			new GoArray<Dynamic>(len, len, [for (i in 0...len) value]);
		default: null;
	}
}

function _set(value:ReflectValue) {
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
	return switch (t : stdgo._internal.internal.reflect.GoType) {
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
			new GoArray(len, len, [for (i in 0...len) value]);
		default: null;
	}
}

// go2hx's internal impl of Type

@:structInit
@:using(stdgo._internal.internal.reflect.Reflect._Type_static_extension)
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
	static public function canSeq(t:_Type):Bool
		throw "not implemented canSeq";

	static public function canSeq2(t:_Type):Bool
		throw "not implemented canSeq2";

	static public function overflowComplex(t:_Type, _x:stdgo.GoComplex128):Bool
		throw "not implemented overflowComplex";

	static public function overflowFloat(t:_Type, _x:stdgo.GoFloat):Bool
		throw "not implemented overflowFloat";

	static public function overflowInt(t:_Type, _x:stdgo.GoInt64):Bool
		throw "not implemented overflowInt";

	static public function overflowUint(t:_Type, _x:stdgo.GoUInt64):Bool
		throw "not implemented overflowUInt";

	static public function _uncommon(t:_Type):Ref<Dynamic>
		throw "not implemented _uncommon";

	static public function _common(t:_Type):Ref<Dynamic>
		throw "not implemented _common";

	static public function out(t:_Type, _i:GoInt):Type
		throw "not implemented _out";

	static public function numOut(t:_Type):GoInt
		throw "not implemented numOut";

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
		var type:stdgo._internal.internal.reflect.GoType = @:privateAccess t._common();
		type = getUnderlying(type);
		switch type {
			case structType(fields):
				return fields.length;
			default:
				throw "reflect.NumField not implemented for " + t.string();
		}
	}

	static public function len(t:_Type):GoInt {
		final gt = @:privateAccess t._common();
		return switch gt {
			case arrayType(_, len):
				len;
			case sliceType(_):
				-1;
			default:
				throw "reflect.Len not implemented for " + t.string();
		}
	}

	static public function key(t:_Type):Type
		throw "not implemented key";

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

	static public function fieldByNameFunc(t:_Type, _match:GoString->Bool):{var _0:ReflectStructField; var _1:Bool;}
		throw "not implemented fieldByNameFunc";

	static public function fieldByName(t:_Type, _name:GoString):{var _0:ReflectStructField; var _1:Bool;}
		throw "not implemented fieldByName";

	static public function fieldByIndex(t:_Type, _index:Slice<GoInt>):ReflectStructField
		throw "not implemented fieldByIndex";

	static public function field(t:_Type, _i:GoInt):ReflectStructField {
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
						index: new Slice(_i, _i, null),
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
		throw "not implemented isVariadic";

	static public function chanDir(t:_Type):ReflectChanDir
		throw "not implemented chanDir";

	static public function bits(t:_Type):GoInt {
		if (t == null) {
			throw new stdgo.Error.T_errorString_asInterface("reflect: Bits of nil Type").__underlying__();
		}
		final k = t.kind();
		if (k < KindType.int || k > KindType.complex128) {
			throw new stdgo.Error.T_errorString_asInterface("reflect: Bits of non-arithmetic Type " + t.string()).__underlying__();
		}
		return t.size().toBasic() * 8;
	}

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
		throw "not implemented convertibleTo";

	static public function assignableTo(t:_Type, _u:Type):Bool {
		if (_u == null)
			throw "reflect: nil type passed to Type.AssignableTo";
		final i = new _Type_asInterface(Go.pointer(t), t);
		final a = directlyAssignable(_u, i);
		//trace("-SPLIT-");
		final b = t.implements_(_u);
		final c = a || b;
		// trace("----");
		// trace(t.string());
		// trace(a);
		// trace(b);
		return c;
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

	static public function kind(t:_Type):ReflectKind {
		if (t == null) {
			return KindType.invalid;
		}
		var gt:GoType = @:privateAccess (t : Dynamic)._common();
		if (gt == null)
			return 0;
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
			case previouslyNamed(name):
				throw "previouslyNamed type to kind not supported should be unrolled before access: " + name;
			case sliceType(_): 23;
			case tuple(_, _): throw "tuple type to kind not supported";
			case signature(_, _, _, _): 19;
			case structType(_): 25;
		}
	}

	static private function formatGoPath(path:String):String {
		if (useHaxePath)
			return path;
		final stdgo = "stdgo._internal";
		var index = path.indexOf(stdgo);
		if (index == 0)
			path = path.substr(stdgo.length);
		final list = path.split(".");
		var cl = list.pop();
		if (cl.indexOf("T_") == 0)
			cl = cl.substr(2);

		final localName = "___localname___";
		index = cl.indexOf(localName);
		//trace(cl, index);
		if (index != -1) {
			cl = cl.substr(index + localName.length);
		}
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
				if (fields.length == 0) {
					"struct {}";
				}else{
					"struct { " + [
						for (field in fields)
							formatGoFieldName(field.name) + " " + new _Type(field.type.get()).string()
					].join("; ") + " }";
				}
			case arrayType(_.get() => typ, len):
				if (len == -1) {
					len = 0;
				}
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
					r += "; " + formatGoFieldName(method.name) + new _Type(method.type.get()).string().toString().substr(4);
				}
				r = r.substr(1);
				"interface {" + r + " }";
			case typeParam(name, _):
				name;
			default:
				throw "not found enum toString " + gt; // should never get here
		}
	}

	static public function size(t:_Type):GoUIntptr {
		final k = t.kind();
		if (k == KindType.invalid)
			return new stdgo.GoUIntptr(0);
		final addr = switch k {
			case KindType.bool, KindType.int8, KindType.uint8: 1;
			case KindType.int16, KindType.uint16: 2;
			case KindType.int32, KindType.uint32, KindType.int, KindType.uint: 4;
			case KindType.int64, KindType.uint64: 8;
			case KindType.float32: 4;
			case KindType.float64: 8;
			case KindType.complex64: 8;
			case KindType.complex128: 16;
			case KindType.string: 16; // TODO: this may be wrong
			// TODO
			case KindType.slice: 24;
			case KindType.interface_: 16;
			case KindType.func: 8;
			case KindType.array:
				final gt = t._common();
				var gt = getUnderlying(gt);
				switch gt {
					case arrayType(_.get() => elem, len):
						(new _Type(elem).size().toBasic() * len);
					default:
						0;
				}
			case KindType.struct: 0;
			case KindType.pointer: 8;
			case KindType.uintptr: 8;
			default:
				throw "unimplemented: size of type: " + k.string();
		}
		return new stdgo.GoUIntptr(addr);
	}

	static public function pkgPath(t:_Type):GoString
		throw "not implemented pkgPath";

	static public function name(t:_Type):GoString
		throw "not implemented name";

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

	static public function methodByName(t:_Type, _0:GoString):{var _0:ReflectMethod; var _1:Bool;}
		throw "not implemented methodByName";

	static public function method(t:_Type, _0:GoInt):ReflectMethod {
		switch t._common() {
			case named(_, methods, _), interfaceType(_, methods):
				var count = 0;
				final m = new ReflectMethod();
				final method = methods[_0];
				m.name = method.name;
				var methodType = new _Type(method.type.get());
				m.type = new _Type_asInterface(Go.pointer(methodType), methodType);
				return m;
			case structType(_):
				throw "not valid for structType";
			case pointerType(_), refType(_):
				return t.elem().method(_0);
			default:
				throw "reflect.NumMethod not implemented for " + t.string();
		}
	}

	static public function fieldAlign(t:_Type):GoInt
		throw "not implemented fieldAlign";

	static public function align(t:_Type):GoInt
		throw "not implemented align";
}

class _Type_asInterface {
	public dynamic function _uncommon():Dynamic
		return cast __self__.value._uncommon();

	public dynamic function _common():Dynamic
		return cast __self__.value._common();

	public dynamic function out(_i:GoInt):Type
		return __self__.value.out(_i);

	public dynamic function numOut():GoInt
		return __self__.value.numOut();

	public dynamic function numIn():GoInt
		return __self__.value.numIn();

	public dynamic function numField():GoInt
		return __self__.value.numField();

	public dynamic function len():GoInt
		return __self__.value.len();

	public dynamic function key():Type
		return __self__.value.key();

	public dynamic function in_(_i:GoInt):Type
		return __self__.value.in_(_i);

	public dynamic function fieldByNameFunc(_match:GoString->Bool):{var _0:ReflectStructField; var _1:Bool;}
		return __self__.value.fieldByNameFunc(_match);

	public dynamic function fieldByName(_name:GoString):{var _0:ReflectStructField; var _1:Bool;}
		return __self__.value.fieldByName(_name);

	public dynamic function fieldByIndex(_index:Slice<GoInt>):ReflectStructField
		return __self__.value.fieldByIndex(_index);

	public dynamic function field(_i:GoInt):ReflectStructField
		return __self__.value.field(_i);

	public dynamic function elem():Type {
		return __self__.value.elem();
	}

	public dynamic function isVariadic():Bool
		return __self__.value.isVariadic();

	public dynamic function chanDir():ReflectChanDir
		return __self__.value.chanDir();

	public dynamic function bits():GoInt
		return __self__.value.bits();

	public dynamic function comparable_():Bool
		return __self__.value.comparable();

	public dynamic function convertibleTo(_u:Type):Bool
		return __self__.value.convertibleTo(_u);

	public dynamic function assignableTo(_u:Type):Bool
		return __self__.value.assignableTo(_u);

	public dynamic function implements_(_u:Type):Bool
		return __self__.value.implements_(_u);

	public dynamic function kind():ReflectKind {
		return __self__.value.kind();
	}

	public dynamic function string():GoString
		return __self__.value.string();

	public dynamic function size():GoUIntptr
		return __self__.value.size();

	public dynamic function pkgPath():GoString
		return __self__.value.pkgPath();

	public dynamic function name():GoString
		return __self__.value.name();

	public dynamic function numMethod():GoInt
		return __self__.value.numMethod();

	public dynamic function methodByName(_0:GoString):{var _0:ReflectMethod; var _1:Bool;}
		return __self__.value.methodByName(_0);

	public dynamic function method(_0:GoInt):ReflectMethod
		return __self__.value.method(_0);

	public dynamic function fieldAlign():GoInt
		return __self__.value.fieldAlign();

	public dynamic function align():GoInt
		return __self__.value.align();

	public dynamic function canSeq():Bool
		return __self__.value.canSeq();

	public dynamic function canSeq2():Bool
		return __self__.value.canSeq2();

	public dynamic function overflowComplex(_x:stdgo.GoComplex128):Bool
		return __self__.value.overflowComplex(_x);

	public dynamic function overflowFloat(_x:stdgo.GoFloat):Bool
		return __self__.value.overflowFloat(_x);

	public dynamic function overflowInt(_x:stdgo.GoInt64):Bool
		return __self__.value.overflowInt(_x);

	public dynamic function overflowUint(_x:stdgo.GoUInt64):Bool
		return __self__.value.overflowUint(_x);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public dynamic function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer
			&& !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<_Type>;
	var __type__:stdgo._internal.internal.reflect.Reflect._Type;
}
