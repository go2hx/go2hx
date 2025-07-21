package go.reflect;

function typeOf(_i) {
	// // set internal Type
	if (_i == null)
		return null;
	// set internal Type
	return new stdgo._internal.internal.reflect.Reflect._Type_asInterface(stdgo.Go.pointer(_i.type), _i.type);
}

function valueOf(_i) {
	return new stdgo._internal.reflect.Reflect_value.Value(_i);
}

function indirect(_v) {
	if (_v.kind() != stdgo._internal.reflect.Reflect_pointer.pointer) {
		return _v;
	} else {
		return _v.elem();
	}
}

function makeSlice(_typ, _len, _cap) {
	// (_typ:Type, _len:GoInt, _cap:GoInt)
	final value = stdgo._internal.internal.reflect.Reflect.defaultValue(_typ);
	final slice = new stdgo.Slice(_len, _cap.toBasic(), ...[for (i in 0..._len.toBasic()) value]);
	final t = @:privateAccess (cast _typ : stdgo._internal.internal.reflect.Reflect._Type_asInterface).__type__;
	return new stdgo._internal.reflect.Reflect_value.Value(new stdgo.AnyInterface(slice, t));
}

function deepEqual(_x, _y) {
	// _x = stdgo._internal.internal.reflect.Reflect.namedUnderlying(_x);
	// _y = stdgo._internal.internal.reflect.Reflect.namedUnderlying(_y);
	if (new stdgo._internal.reflect.Reflect_value.Value(_x).isNil() || new stdgo._internal.reflect.Reflect_value.Value(_y).isNil()) {
		return (_x : stdgo.AnyInterface) == (_y : stdgo.AnyInterface);
	};
	var v1 = stdgo._internal.reflect.Reflect_valueof.valueOf(_x);
	var v2 = stdgo._internal.reflect.Reflect_valueof.valueOf(_y);
	return stdgo._internal.internal.reflect.Reflect.deepValueEqual(v1, v2, null, 0);
}

@:recv(Value)
function canInterface() {
	// trace("canInterface always returns true");
	return true;
}

@:recv(Value)
function addr(_v) {
	/*if (@:privateAccess !_v.canAddrBool) {
		throw "can't address bool";
	}*/
	final gt = @:privateAccess stdgo._internal.internal.reflect.GoType.pointerType({get: () -> _v.value.type._common()});
	final t = new stdgo._internal.internal.reflect.Reflect._Type(gt);
	return new stdgo._internal.reflect.Reflect_value.Value(new stdgo.AnyInterface(stdgo.Go.pointer(@:privateAccess _v.value.value), t));
}

// Call calls the function v with the input arguments in.
// For example, if len(in) == 3, v.Call(in) represents the Go call v(in[0], in[1], in[2]).
// Call panics if v's Kind is not Func.
// It returns the output results as Values.
// As in Go, each input argument must be assignable to the
// type of the function's corresponding input parameter.
// If v is a variadic function, Call creates the variadic slice parameter
// itself, copying in the corresponding values.
// func (v Value) Call(in []Value) []Value {
// 	v.mustBe(Func)
// 	v.mustBeExported()
// 	return v.call("Call", in)
// }

@:recv(Value)
function call(_v) {
	final gt = @:privateAccess stdgo._internal.internal.reflect.Reflect.getUnderlying(_v.value.type._common());
	switch gt {
		case signature(_, _.get() => params, _.get() => out, _):
			final values = new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(0, 0);
			// TODO castings for input
			// TODO return output
			std.Reflect.callMethod(null, _v.interface_().value, _in.__toArray__().map(value -> value.interface_().value));
			return values;
		default:
			throw "unsupported: " + gt;
	}
}

@:recv(Value)
function mapRange(_v) {
	return new stdgo._internal.reflect.Reflect_mapiter.MapIter(@:privateAccess _v.value.value, @:privateAccess _v.value.type);
}

@:recv(MapIter)
function key() {
	@:privateAccess if (_iter.keys == null) {
		@:privateAccess _iter.keys = [for (key in _iter.map.keys()) key];
		@:privateAccess _iter.values = [for (key in _iter.map.iterator()) key];
	}
	final gt = stdgo._internal.internal.reflect.Reflect.getUnderlying(@:privateAccess _iter.t._common());
	final key = switch gt {
		case mapType(_.get() => var keyType, _):
			new stdgo._internal.internal.reflect.Reflect._Type(keyType);
		default:
			throw "invalid mapType: " + gt;
	}
	return new stdgo._internal.reflect.Reflect_value.Value(new stdgo.AnyInterface(@:privateAccess _iter.keys[_iter.index], key));
}

@:recv(MapIter)
function value(_iter) {
	@:privateAccess if (_iter.keys == null) {
		@:privateAccess _iter.keys = [for (key in _iter.map.keys()) key];
		@:privateAccess _iter.values = [for (key in _iter.map.iterator()) key];
	};
	final gt = stdgo._internal.internal.reflect.Reflect.getUnderlying(@:privateAccess _iter.t._common());
	final value = switch gt {
		case mapType(_, _.get() => valueType):
			new stdgo._internal.internal.reflect.Reflect._Type(valueType);
		default:
			throw "invalid mapType: " + gt;
	}
	return new stdgo._internal.reflect.Reflect_value.Value(new stdgo.AnyInterface(@:privateAccess _iter.values[_iter.index], value));
}

@:recv(MapIter)
function next(_iter) {
	if (@:privateAccess _iter.map == null)
		return false;
	@:privateAccess if (_iter.keys == null) {
		@:privateAccess _iter.keys = [for (key in _iter.map.keys()) key];
		@:privateAccess _iter.values = [for (key in _iter.map.iterator()) key];
	} else {
		@:privateAccess _iter.index++;
	}
	return @:privateAccess _iter.index < @:privateAccess _iter.keys.length;
}

@:recv(MapIter)
function reset(_iter) {
	@:privateAccess _iter.index = 0;
	@:privateAccess _iter.map = _v.value.value;
	@:privateAccess _iter.keys = null;
	@:privateAccess _iter.values = null;
}

@:recv(Value)
function canAddr(_v) {
	return @:privateAccess _v.canAddrBool;
}

function zero(_typ) {
	return new stdgo._internal.reflect.Reflect_value.Value(new stdgo.AnyInterface(stdgo._internal.internal.reflect.Reflect.defaultValue(_typ),
		_typ.__underlying__().value));
}

@:recv(Value)
function type(_v) {
	if (@:privateAccess _v.value == null) {
		var t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType);
		return @:privateAccess new stdgo._internal.internal.reflect.Reflect._Type_asInterface(stdgo.Go.pointer(t), t);
	}
	return @:privateAccess new stdgo._internal.internal.reflect.Reflect._Type_asInterface(stdgo.Go.pointer(_v.value.type), _v.value.type);
}

@:recv(Value)
function setString(_v) {
	@:privateAccess _v.value.value = _x;
	stdgo._internal.internal.reflect.Reflect._set(_v);
}

@:recv(Value)
function setBool(_v) {
	@:privateAccess _v.value.value = _x;
	stdgo._internal.internal.reflect.Reflect._set(_v);
}

@:recv(Value)
function setUint(_v) {
	final k = _v.kind();
	@:privateAccess _v.value.value = switch k {
		case stdgo._internal.internal.reflect.Reflect.KindType.int8:
			(_x : stdgo.GoInt8);
		case stdgo._internal.internal.reflect.Reflect.KindType.int16:
			(_x : stdgo.GoInt16);
		case stdgo._internal.internal.reflect.Reflect.KindType.int32:
			(_x : stdgo.GoInt32);
		case stdgo._internal.internal.reflect.Reflect.KindType.int64:
			(_x : stdgo.GoInt64);
		case stdgo._internal.internal.reflect.Reflect.KindType.int:
			(_x : stdgo.GoInt);
		case stdgo._internal.internal.reflect.Reflect.KindType.uint8:
			(_x : stdgo.GoUInt8);
		case stdgo._internal.internal.reflect.Reflect.KindType.uint16:
			(_x : stdgo.GoUInt16);
		case stdgo._internal.internal.reflect.Reflect.KindType.uint32:
			(_x : stdgo.GoUInt32);
		case stdgo._internal.internal.reflect.Reflect.KindType.uint64:
			(_x : stdgo.GoUInt64);
		case stdgo._internal.internal.reflect.Reflect.KindType.uint:
			(_x : stdgo.GoUInt);
		case stdgo._internal.internal.reflect.Reflect.KindType.uintptr:
			new stdgo.GoUIntptr(_x);
		default:
			throw "unknown setUInt kind: " + k.string();
	};
	stdgo._internal.internal.reflect.Reflect._set(_v);
}

@:recv(Value)
function setComplex(_v) {
	final k = _v.kind();
	@:privateAccess _v.value.value = switch k {
		case stdgo._internal.internal.reflect.Reflect.KindType.complex64:
			(_x : stdgo.GoComplex64);
		case stdgo._internal.internal.reflect.Reflect.KindType.complex128:
			(_x : stdgo.GoComplex128);
		default:
			throw "unknown setFloat kind: " + k.string();
	}
	stdgo._internal.internal.reflect.Reflect._set(_v);
}

@:recv(Value)
function setFloat(_v) {
	final k = _v.kind();
	@:privateAccess _v.value.value = switch k {
		case stdgo._internal.internal.reflect.Reflect.KindType.float32:
			(_x : stdgo.GoFloat32);
		case stdgo._internal.internal.reflect.Reflect.KindType.float64:
			(_x : stdgo.GoFloat64);
		default:
			throw "unknown setFloat kind: " + k.string();
	}
	stdgo._internal.internal.reflect.Reflect._set(_v);
}

@:recv(Value)
function setInt(_v) {
	final k = _v.kind();
	@:privateAccess _v.value.value = switch k {
		case stdgo._internal.internal.reflect.Reflect.KindType.int8:
			(_x : stdgo.GoInt8);
		case stdgo._internal.internal.reflect.Reflect.KindType.int16:
			(_x : stdgo.GoInt16);
		case stdgo._internal.internal.reflect.Reflect.KindType.int32:
			(_x : stdgo.GoInt32);
		case stdgo._internal.internal.reflect.Reflect.KindType.int64:
			(_x : stdgo.GoInt64);
		case stdgo._internal.internal.reflect.Reflect.KindType.int:
			(_x : stdgo.GoInt);
		case stdgo._internal.internal.reflect.Reflect.KindType.uint8:
			(_x : stdgo.GoUInt8);
		case stdgo._internal.internal.reflect.Reflect.KindType.uint16:
			(_x : stdgo.GoUInt16);
		case stdgo._internal.internal.reflect.Reflect.KindType.uint32:
			(_x : stdgo.GoUInt32);
		case stdgo._internal.internal.reflect.Reflect.KindType.uint64:
			(_x : stdgo.GoUInt64);
		case stdgo._internal.internal.reflect.Reflect.KindType.uint:
			(_x : stdgo.GoUInt);
		default:
			throw "unknown setInt kind: " + k.string();
	};
	stdgo._internal.internal.reflect.Reflect._set(_v);
}

@:recv(Value)
function kind(_v)
	return _v.type().kind();

@:recv(Value)
function isValid(_v):Bool {
	if (@:privateAccess _v.value == null)
		return false;
	if (@:privateAccess _v.value.type._common() != stdgo._internal.internal.reflect.GoType.invalidType)
		return true;
	return switch @:privateAccess _v.value.type._common() {
		case stdgo._internal.internal.reflect.GoType.basic(stdgo._internal.internal.reflect.BasicKind.untyped_nil_kind):
			false;
		default:
			true;
	};
}

@:recv(Value)
function pointer(_v) {
	if (@:privateAccess _v.isNil())
		return new stdgo.GoUIntptr(0);
	var value = @:privateAccess _v.value.value;
	return new stdgo.GoUIntptr(value != null ? 1 : 0);
}

function pointerTo(_t:stdgo._internal.internal.reflect.Reflect._Type) {
	final gt = @:privateAccess _t._common();
	var t = new stdgo._internal.internal.reflect.Reflect._Type(pointerType({get: () -> gt}));
	return new stdgo._internal.internal.reflect.Reflect._Type_asInterface(new stdgo.Pointer(() -> t, value -> t = value), t);
}

inline function ptrTo(t:stdgo._internal.internal.reflect.Reflect._Type)
	return stdgo._internal.internal.reflect.Reflect_pointerto.pointerTo(t);

@:recv(Value)
function field(_v) {
	final initgt = @:privateAccess _v.value.type._common();
	final gt = @:privateAccess stdgo._internal.internal.reflect.Reflect.getUnderlying(initgt);
	return switch gt {
		case structType(fields):
			final field = fields[_i.toBasic()];
			var t = @:privateAccess (cast _v.value.type.field(_i).type : stdgo._internal.internal.reflect.Reflect._Type_asInterface).__type__;
			t = new stdgo._internal.internal.reflect.Reflect._Type(@:privateAccess stdgo._internal.internal.reflect.Reflect.unroll(initgt, t._common()));
			var value = @:privateAccess _v.value.value;
			switch std.Type.typeof(value) {
				case TClass(c):
					final name = std.Type.getClassName(c);
					if (std.StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
				default:
					final _ = false;
			};
			var fieldValue = std.Reflect.field(value, field.name);
			fieldValue = stdgo._internal.internal.reflect.Reflect.asInterfaceValue(fieldValue, t._common());
			final valueType = new stdgo._internal.reflect.Reflect_value.Value(new stdgo.AnyInterface(fieldValue, t));
			if (field.name.charAt(0) == "_")
				@:privateAccess valueType.notSetBool = false;
			valueType;
		default:
			throw "unsupported: " + gt;
	};
}

@:recv(Value)
function bytes(_v) {
	final _v = _v.__copy__();
	var value = @:privateAccess _v.value.value;
	var t:stdgo._internal.internal.reflect.GoType = @:privateAccess _v.value.type._common();
	if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
		t = stdgo._internal.internal.reflect.Reflect.getUnderlying(t);
		switch std.Type.typeof(value) {
			case TClass(c):
				final name = std.Type.getClassName(c);
				if (std.StringTools.endsWith(name, "_asInterface"))
					value = (value : Dynamic).__underlying__().value;
			default:
				final _ = false;
		};
	};
	if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
		@:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
		value = (value : stdgo.Pointer<Dynamic>).value;
		t = @:privateAccess _v.value.type._common();
	};
	switch t {
		case stdgo._internal.internal.reflect.GoType.arrayType(_.get() => elem, _):
			switch elem {
				case stdgo._internal.internal.reflect.GoType.basic(stdgo._internal.internal.reflect.BasicKind.uint8_kind):
					return (value : stdgo.GoArray<stdgo.GoByte>).__slice__(0);
				default:
					throw new stdgo._internal.reflect.Reflect_valueerror.ValueError("reflect.Value.Bytes", @:privateAccess _v.kind());
			};
		case stdgo._internal.internal.reflect.GoType.sliceType(_.get() => elem):
			elem = stdgo._internal.internal.reflect.Reflect.getUnderlying(elem);
			switch elem {
				case stdgo._internal.internal.reflect.GoType.basic(stdgo._internal.internal.reflect.BasicKind.uint8_kind):
					return value;
				default:
					throw new stdgo._internal.reflect.Reflect_valueerror.ValueError("reflect.Value.Bytes", @:privateAccess _v.kind());
			};
		default:
			throw new stdgo._internal.reflect.Reflect_valueerror.ValueError("reflect.Value.Bytes", @:privateAccess _v.kind());
	};
}

@:recv(Value)
function numField(_v)
	return _v.type().numField();

@:recv(Value)
function numMethod(_v)
	return _v.type().numMethod();

@:recv(Value)
function slice(_v) {
	var value = @:privateAccess _v.value.value;
	var t:stdgo._internal.internal.reflect.GoType = @:privateAccess _v.value.type._common();
	if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
		switch std.Type.typeof(value) {
			case TClass(c):
				final name = std.Type.getClassName(c);
				if (std.StringTools.endsWith(name, "_asInterface"))
					value = (value : Dynamic).__underlying__().value;
			default:
				final _ = false;
		}
	}
	switch t {
		case stdgo._internal.internal.reflect.GoType.arrayType(elem, _):
			t = stdgo._internal.internal.reflect.GoType.sliceType(elem);
		case stdgo._internal.internal.reflect.GoType.named(path, methods, stdgo._internal.internal.reflect.GoType.arrayType(elem, _), alias,
			params):
			t = stdgo._internal.internal.reflect.GoType.named(path, methods, stdgo._internal.internal.reflect.GoType.sliceType(elem), alias,
				params);
		default:
			final _ = false;
	};
	final k = _v.kind();
	value = switch k {
		case stdgo._internal.internal.reflect.Reflect.KindType.slice:
			(value : stdgo.Slice<Dynamic>).__slice__(_i, _j);
		case stdgo._internal.internal.reflect.Reflect.KindType.array:
			(value : stdgo.GoArray<Dynamic>).__slice__(_i, _j);
		default:
			throw new stdgo._internal.reflect.Reflect_valueerror.ValueError("reflect.Value.Slice", k);
	};
	return new stdgo._internal.reflect.Reflect_value.Value(new stdgo.AnyInterface(value, new stdgo._internal.internal.reflect.Reflect._Type(t)));
}

@:recv(Value)
function len(_v) {
	final _v = _v.__copy__();
	var value = @:privateAccess _v.value.value;
	if (value == null)
		return 0;
	final t:stdgo._internal.internal.reflect.GoType = @:privateAccess _v.value.type._common();
	if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
		switch std.Type.typeof(value) {
			case TClass(c):
				final name = std.Type.getClassName(c);
				if (std.StringTools.endsWith(name, "_asInterface"))
					value = (value : Dynamic).__underlying__().value;
			default:
				final _ = false;
		}
	}
	if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
		@:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
		value = (value : stdgo.Pointer<Dynamic>).value;
	};
	final k = _v.kind();
	/*if (std.Type.typeof(value) == TUnknown) {
		return 0;
	}*/
	return switch k {
		case stdgo._internal.internal.reflect.Reflect.KindType.array:
			(value : stdgo.GoArray<Dynamic>).length;
		case stdgo._internal.internal.reflect.Reflect.KindType.chan:
			(value : stdgo.Chan<Dynamic>).length;
		case stdgo._internal.internal.reflect.Reflect.KindType.slice:
			(value : stdgo.Slice<Dynamic>).length;
		case stdgo._internal.internal.reflect.Reflect.KindType.map:
			Lambda.count((value : haxe.Constraints.IMap<Dynamic, Dynamic>));
		case stdgo._internal.internal.reflect.Reflect.KindType.string:
			(value : Dynamic).length;
		default:
			trace(k.string());
			throw "not supported";
	};
}

@:recv(Value)
function canUint(_v) {
	return switch _v.kind() {
		case stdgo._internal.internal.reflect.Reflect.KindType.uint, stdgo._internal.internal.reflect.Reflect.KindType.uint8,
			stdgo._internal.internal.reflect.Reflect.KindType.uint16, stdgo._internal.internal.reflect.Reflect.KindType.uint32,
			stdgo._internal.internal.reflect.Reflect.KindType.uint64, stdgo._internal.internal.reflect.Reflect.KindType.uintptr:
			true;
		default:
			false;
	}
}

@:recv(Value)
function bool_() {
	var value = @:privateAccess _v.value.value;
	final t:stdgo._internal.internal.reflect.GoType = @:privateAccess _v.value.type._common();
	if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
		switch std.Type.typeof(value) {
			case TClass(c):
				final name = std.Type.getClassName(c);
				if (std.StringTools.endsWith(name, "_asInterface"))
					value = (value : Dynamic).__underlying__().value;
			default:
				final _ = false;
		}
	}
	if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
		@:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
		value = (value : stdgo.Pointer<Dynamic>).value;
	};
	final value:Bool = switch _v.kind() {
		case stdgo._internal.internal.reflect.Reflect.KindType.bool:
			value;
		default:
			throw new stdgo._internal.reflect.Reflect_valueerror.ValueError("reflect.Value.Bool", _v.kind());
	}
	return value;
}

@:recv(Value)
function complex(_v) {
	var value = @:privateAccess _v.value.value;
	final t:stdgo._internal.internal.reflect.GoType = @:privateAccess _v.value.type._common();
	if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
		switch std.Type.typeof(value) {
			case TClass(c):
				final name = std.Type.getClassName(c);
				if (std.StringTools.endsWith(name, "_asInterface"))
					value = (value : Dynamic).__underlying__().value;
			default:
				final _ = false;
		}
	}
	if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
		@:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
		value = (value : stdgo.Pointer<Dynamic>).value;
	};
	final value:stdgo.GoComplex128 = switch _v.kind() {
		case stdgo._internal.internal.reflect.Reflect.KindType.complex128, stdgo._internal.internal.reflect.Reflect.KindType.complex64:
			value;
		default:
			throw new stdgo._internal.reflect.Reflect_valueerror.ValueError("Value.Complex", _v.kind());
	}
	return value;
}

@:recv(Value)
function uint(_v) {
	var value = @:privateAccess _v.value.value;
	final t:stdgo._internal.internal.reflect.GoType = @:privateAccess _v.value.type._common();
	if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
		switch std.Type.typeof(value) {
			case TClass(c):
				final name = std.Type.getClassName(c);
				if (std.StringTools.endsWith(name, "_asInterface"))
					value = (value : Dynamic).__underlying__().value;
			default:
				final _ = false;
		}
	}
	if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
		@:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
		value = (value : stdgo.Pointer<Dynamic>).value;
	};
	final value:stdgo.GoUInt64 = switch _v.kind() {
		case stdgo._internal.internal.reflect.Reflect.KindType.uint:
			(value : stdgo.GoUInt8);
		case stdgo._internal.internal.reflect.Reflect.KindType.uint8:
			(value : stdgo.GoUInt8);
		case stdgo._internal.internal.reflect.Reflect.KindType.uint16:
			(value : stdgo.GoUInt16);
		case stdgo._internal.internal.reflect.Reflect.KindType.uint32:
			(value : stdgo.GoUInt32);
		case stdgo._internal.internal.reflect.Reflect.KindType.uint64:
			(value : stdgo.GoUInt64);
		case stdgo._internal.internal.reflect.Reflect.KindType.uintptr:
			new stdgo.GoUIntptr(value);
		default:
			throw new stdgo._internal.reflect.Reflect_valueerror.ValueError("reflect.Value.Uint", _v.kind());
	}
	return value;
}

@:recv(Value)
function float_(_v) {
	var value = @:privateAccess _v.value.value;
	final t:stdgo._internal.internal.reflect.GoType = @:privateAccess _v.value.type._common();
	if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
		switch std.Type.typeof(value) {
			case TClass(c):
				final name = std.Type.getClassName(c);
				if (std.StringTools.endsWith(name, "_asInterface"))
					value = (value : Dynamic).__underlying__().value;
			default:
				final _ = false;
		}
	}
	if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
		@:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
		value = (value : stdgo.Pointer<Dynamic>).value;
	};
	final value:stdgo.GoFloat64 = switch _v.kind() {
		case stdgo._internal.internal.reflect.Reflect.KindType.float64:
			(value : stdgo.GoFloat64);
		case stdgo._internal.internal.reflect.Reflect.KindType.float32:
			(value : stdgo.GoFloat32);
		default:
			throw new stdgo._internal.reflect.Reflect_valueerror.ValueError("reflect.Value.Float", _v.kind());
	}
	return value;
}

@:recv(Value)
function int_(_v) {
	var value = @:privateAccess _v.value.value;
	final t:stdgo._internal.internal.reflect.GoType = @:privateAccess _v.value.type._common();
	if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
		switch std.Type.typeof(value) {
			case TClass(c):
				final name = std.Type.getClassName(c);
				if (std.StringTools.endsWith(name, "_asInterface"))
					value = (value : Dynamic).__underlying__().value;
			default:
				final _ = false;
		}
	}
	if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
		@:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
		value = (value : stdgo.Pointer<Dynamic>).value;
	};
	final value:stdgo.GoInt64 = switch _v.kind() {
		case stdgo._internal.internal.reflect.Reflect.KindType.int:
			(value : stdgo.GoInt8);
		case stdgo._internal.internal.reflect.Reflect.KindType.int8:
			(value : stdgo.GoInt8);
		case stdgo._internal.internal.reflect.Reflect.KindType.int16:
			(value : stdgo.GoInt16);
		case stdgo._internal.internal.reflect.Reflect.KindType.int32:
			(value : stdgo.GoInt32);
		case stdgo._internal.internal.reflect.Reflect.KindType.int64:
			(value : stdgo.GoInt64);
		default:
			throw new stdgo._internal.reflect.Reflect_valueerror.ValueError("reflect.Value.Int", _v.kind());
	}
	return value;
}

@:recv(Value)
function index(_v) {
	final _v = _v.__copy__();
	var value = @:privateAccess _v.value.value;
	final t:stdgo._internal.internal.reflect.GoType = @:privateAccess _v.value.type._common();
	if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
		switch std.Type.typeof(value) {
			case TClass(c):
				final name = std.Type.getClassName(c);
				if (std.StringTools.endsWith(name, "_asInterface"))
					value = (value : Dynamic).__underlying__().value;
			default:
				final _ = false;
		}
	}
	if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
		@:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
		value = (value : stdgo.Pointer<Dynamic>).value;
	};
	final gt = stdgo._internal.internal.reflect.Reflect.getUnderlying(@:privateAccess _v.value.type._common());
	return switch gt {
		case stdgo._internal.internal.reflect.GoType.arrayType(_.get() => elem, _):
			final t = @:privateAccess new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.unroll(gt, elem));
			final valueInterface = stdgo._internal.internal.reflect.Reflect.asInterfaceValue((value : stdgo.GoArray<Dynamic>)[_i], t._common());
			new stdgo._internal.reflect.Reflect_value.Value(new stdgo.AnyInterface(valueInterface, t), value, _i);
		case stdgo._internal.internal.reflect.GoType.sliceType(_.get() => elem):
			final t = @:privateAccess new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.unroll(gt, elem));
			final valueInterface = stdgo._internal.internal.reflect.Reflect.asInterfaceValue((value : Slice<Dynamic>)[_i], t._common());
			final value = new stdgo._internal.reflect.Reflect_value.Value(new stdgo.AnyInterface(valueInterface, t), value, _i);
			@:privateAccess value.canAddrBool = true;
			value;
		case stdgo._internal.internal.reflect.GoType.basic(kind):
			switch kind {
				case string_kind:
					var value = value;
					if ((value is String))
						value = (value : stdgo.GoString);
					new stdgo._internal.reflect.Reflect_value.Value(new stdgo.AnyInterface((value : stdgo.GoString)[_i],
						new stdgo._internal.internal.reflect.Reflect._Type(basic(uint8_kind))));
				default:
					throw "unsupported basic kind";
			};
		default:
			throw "not supported";
	};
}

function new_() {
	var value = stdgo._internal.internal.reflect.Reflect.defaultValue(_typ);
	var ptr = new Pointer(() -> value, x -> value = x);
	return new stdgo._internal.reflect.Reflect_value.Value(new stdgo.AnyInterface(ptr,
		new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({
			get: () -> @:privateAccess (_typ : Dynamic)._common()
		}))));
}

@:recv(Value)
function set(_v) {
	var value = @:privateAccess _x.value.value;
	final gt = @:privateAccess _x.value.type._common();
	if (value != null) {
		final cl = std.Type.getClassName(std.Type.getClass(value));
		if (std.StringTools.endsWith(cl, "_asInterface")) {
			value = (value : Dynamic).__underlying__().value;
		};
	};
	final k = _v.kind();
	switch k {
		case stdgo._internal.internal.reflect.Reflect.KindType.struct:
			switch stdgo._internal.internal.reflect.Reflect.getUnderlying(gt) {
				case structType(fields):
					for (field in fields) {
						final fieldValue = std.Reflect.field(value, field.name);
						std.Reflect.setField(value, field.name, fieldValue);
					}
				default:
					final _ = false;
			};
		case stdgo._internal.internal.reflect.Reflect.KindType.int8:
			_v.setInt((value : stdgo.GoInt8));
		case stdgo._internal.internal.reflect.Reflect.KindType.int16:
			_v.setInt((value : stdgo.GoInt16));
		case stdgo._internal.internal.reflect.Reflect.KindType.int32:
			_v.setInt((value : stdgo.GoInt32));
		case stdgo._internal.internal.reflect.Reflect.KindType.int64:
			_v.setInt((value : stdgo.GoInt64));
		case stdgo._internal.internal.reflect.Reflect.KindType.int:
			_v.setInt((value : stdgo.GoInt));
		case stdgo._internal.internal.reflect.Reflect.KindType.uint:
			_v.setInt((value : stdgo.GoUInt8));
		case stdgo._internal.internal.reflect.Reflect.KindType.uint16:
			_v.setInt((value : stdgo.GoUInt16));
		case stdgo._internal.internal.reflect.Reflect.KindType.uint32:
			_v.setInt((value : stdgo.GoUInt32));
		case stdgo._internal.internal.reflect.Reflect.KindType.uint64:
			_v.setInt((value : stdgo.GoUInt64));
		case stdgo._internal.internal.reflect.Reflect.KindType.float32:
			_v.setFloat((value : stdgo.GoFloat32));
		case stdgo._internal.internal.reflect.Reflect.KindType.float64:
			_v.setFloat((value : stdgo.GoFloat64));
		case stdgo._internal.internal.reflect.Reflect.KindType.string:
			_v.setString(value);
		case stdgo._internal.internal.reflect.Reflect.KindType.slice:
			var value:Slice<Dynamic> = @:privateAccess _v.value.value;
			final x:Slice<Dynamic> = @:privateAccess _x.value.value;
			// value.__setData__(x);
			stdgo._internal.internal.reflect.Reflect._set(_v);
		case stdgo._internal.internal.reflect.Reflect.KindType.map:
			var value:haxe.Constraints.IMap<Dynamic, Dynamic> = @:privateAccess _v.value.value;
			final x:haxe.Constraints.IMap<Dynamic, Dynamic> = @:privateAccess _x.value.value;
			for (key => value in x) {
				value.set(key, value);
			}
			// value.__setData__(x);
			stdgo._internal.internal.reflect.Reflect._set(_v);
		default:
			@:privateAccess _v.value = _x.value;
			stdgo._internal.internal.reflect.Reflect._set(_v);
	}
}

@:recv(Value)
overload extern inline function string(_v) {
	if (@:privateAccess _v.value == null) {
		return "<invalid Value>";
	}
	var value = @:privateAccess _v.value.value;
	final t:stdgo._internal.internal.reflect.GoType = @:privateAccess _v.value.type._common();
	if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
		switch std.Type.typeof(value) {
			case TClass(c):
				final name = std.Type.getClassName(c);
				if (std.StringTools.endsWith(name, "_asInterface"))
					value = (value : Dynamic).__underlying__().value;
			default:
				final _ = false;
		}
	}
	if (stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
		@:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
		value = (value : stdgo.Pointer<Dynamic>).value;
	};
	final underlyingType = stdgo._internal.internal.reflect.Reflect.getUnderlying(t);
	switch (underlyingType) {
		case stdgo._internal.internal.reflect.GoType.basic(kind):
			switch kind {
				case string_kind:
					return value;
				default:
					final _ = false;
			};
		default:
			final _ = false;
	};
	return "<" + _v.type().string() + " Value>";
}

@:recv(Value)
function interface_(_v)
	return @:privateAccess _v.value;

@:recv(Value)
function isNil(_v) {
	var value = @:privateAccess _v.value.value;
	final k = _v.kind();
	final gt:stdgo._internal.internal.reflect.GoType = (_v.type() : Dynamic)._common();
	return switch k {
		case stdgo._internal.internal.reflect.Reflect.KindType.pointer:
			switch gt {
				case stdgo._internal.internal.reflect.GoType.refType(_):
					switch std.Type.typeof(value) {
						case TClass(c):
							final name = std.Type.getClassName(c);
							if (std.StringTools.endsWith(name, "_asInterface")) {
								value = (value : Dynamic).__underlying__().value;
							}
						default:
							final _ = false;
					};
					value == null;
				default:
					if (value == null) {
						true;
					} else {
						// hasSet is by default false, figure out when it is set to true TODO
						final b = (value : stdgo.Pointer<Dynamic>).hasSet();
						trace("hasSet: " + b);
						b;
					}
			}
		case stdgo._internal.internal.reflect.Reflect.KindType.func:
			value == null;
		case stdgo._internal.internal.reflect.Reflect.KindType.chan:
			value == null;
		case stdgo._internal.internal.reflect.Reflect.KindType.map:
			value == null;
		case stdgo._internal.internal.reflect.Reflect.KindType.slice:
			value == null;
		case stdgo._internal.internal.reflect.Reflect.KindType.interface_:
			value == null;
		case stdgo._internal.internal.reflect.Reflect.KindType.array:
			false;
		case stdgo._internal.internal.reflect.Reflect.KindType.struct:
			false;
		case stdgo._internal.internal.reflect.Reflect.KindType.invalid:
			false;
		case stdgo._internal.internal.reflect.Reflect.KindType.unsafePointer, stdgo._internal.internal.reflect.Reflect.KindType.uintptr:
			value == null;
		case stdgo._internal.internal.reflect.Reflect.KindType.bool, stdgo._internal.internal.reflect.Reflect.KindType.int,
			stdgo._internal.internal.reflect.Reflect.KindType.int32, stdgo._internal.internal.reflect.Reflect.KindType.int64,
			stdgo._internal.internal.reflect.Reflect.KindType.float32, stdgo._internal.internal.reflect.Reflect.KindType.float64,
			stdgo._internal.internal.reflect.Reflect.KindType.int8, stdgo._internal.internal.reflect.Reflect.KindType.int16,
			stdgo._internal.internal.reflect.Reflect.KindType.uint, stdgo._internal.internal.reflect.Reflect.KindType.uint8,
			stdgo._internal.internal.reflect.Reflect.KindType.uint16, stdgo._internal.internal.reflect.Reflect.KindType.uint32,
			stdgo._internal.internal.reflect.Reflect.KindType.uint64, stdgo._internal.internal.reflect.Reflect.KindType.string,
			stdgo._internal.internal.reflect.Reflect.KindType.complex64, stdgo._internal.internal.reflect.Reflect.KindType.complex128:
			false;
		default:
			throw "nil check not supported kind: " + _v.kind().string();
	}
}

@:recv(Value)
function elem(_v) {
	var value = @:privateAccess _v.value.value;
	final t:stdgo._internal.internal.reflect.GoType = @:privateAccess _v.value.type._common();
	if (stdgo._internal.internal.reflect.Reflect.isNamed(t)
		&& !stdgo._internal.internal.reflect.Reflect.isRef(t)
		&& !stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
		switch std.Type.typeof(value) {
			case TClass(c):
				final name = std.Type.getClassName(c);
				if (std.StringTools.endsWith(name, "_asInterface")) {
					@:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.unroll(t, stdgo._internal.internal.reflect.Reflect.getElem(t));
					value = (value : Dynamic).__underlying__().value;
				}
			default:
				final _ = false;
		};
	};
	var k = _v.kind();
	switch k {
		case stdgo._internal.internal.reflect.Reflect.KindType.pointer:
			final t = @:privateAccess stdgo._internal.internal.reflect.Reflect.unroll(t, stdgo._internal.internal.reflect.Reflect.getUnderlying(t));
			switch t {
				case stdgo._internal.internal.reflect.GoType.refType(_.get() => elem):
					final value = new stdgo._internal.reflect.Reflect_value.Value(new stdgo.AnyInterface(value,
						new stdgo._internal.internal.reflect.Reflect._Type(elem)), null);
					@:privateAccess value.canAddrBool = true;
					return value;
				case stdgo._internal.internal.reflect.GoType.pointerType(_.get() => elem):
					if (value == null) {
						final value = new stdgo._internal.reflect.Reflect_value.Value(new stdgo.AnyInterface(null,
							new stdgo._internal.internal.reflect.Reflect._Type(elem)), value);
						@:privateAccess value.canAddrBool = true;
						return value;
					};
					final ptrValue = (value : stdgo.Pointer<Dynamic>).value;
					final value = new stdgo._internal.reflect.Reflect_value.Value(new stdgo.AnyInterface(ptrValue,
						new stdgo._internal.internal.reflect.Reflect._Type(elem)), value);
					@:privateAccess value.canAddrBool = true;
					return value;
				default:
					final _ = false;
			};
		case stdgo._internal.internal.reflect.Reflect.KindType.interface_:
			if (value == null)
				return new stdgo._internal.reflect.Reflect_value.Value();
			if (_v.numMethod() != 0) {
				return new stdgo._internal.reflect.Reflect_value.Value(value, @:privateAccess _v.value.type);
			} else {
				final any = @:privateAccess (_v.value.value : AnyInterface);
				final type = any.type;
				return @:privateAccess new stdgo._internal.reflect.Reflect_value.Value(any, type);
			}
	};
	throw new stdgo._internal.reflect.Reflect_valueerror.ValueError("reflect.Value.Elem", k);
}

@:recv(Kind)
overload extern inline function string(_k) {
	var idx:Int = _k.toBasic();
	return switch idx {
		case 0: "invalid";
		case 1: "bool";
		case 2: "int";
		case 3: "int8";
		case 4: "int16";
		case 5: "int32";
		case 6: "int64";
		case 7: "uint";
		case 8: "uint8";
		case 9: "uint16";
		case 10: "uint32";
		case 11: "uint64";
		case 12: "uintptr";
		case 13: "float32";
		case 14: "float64";
		case 15: "complex64";
		case 16: "complex128";
		case 17: "array";
		case 18: "chan";
		case 19: "func";
		case 20: "interface";
		case 21: "map";
		case 22: "ptr";
		case 23: "slice";
		case 24: "string";
		case 25: "struct";
		case 26: "unsafe.Pointer";
		default: throw "unknown kind string: " + idx;
	}
}

@:recv(StructTag)
function get()
	return ""; // TODO add implementation
