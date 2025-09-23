package go.reflect;

function typeOf(_i) {
	// // set internal Type
	if (_i == null)
		return null;
	// set internal Type
	return new go._internal.internal.reflect.Reflect._Type_asInterface(go.Go.pointer(_i.type), null);
}

function valueOf(_i) {
	return new go._internal.reflect.Reflect_value.Value(_i);
}

function indirect(_v) {
	if (_v.kind() != go._internal.reflect.Reflect_pointer.pointer) {
		return _v;
	} else {
		return _v.elem();
	}
}

function makeSlice(_typ, _len, _cap) {
	// (_typ:Type, _len:GoInt, _cap:GoInt)
	final value = go._internal.internal.reflect.Reflect.defaultValue(_typ);
	final slice = new go.Slice(_len, _cap.toBasic(), ...[for (i in 0..._len.toBasic()) value]);
	final t = @:privateAccess (cast _typ : go._internal.internal.reflect.Reflect._Type_asInterface).__type__;
	return new go._internal.reflect.Reflect_value.Value(new go.AnyInterface(slice, t));
}

function deepEqual(_x, _y) {
	// _x = go._internal.internal.reflect.Reflect.namedUnderlying(_x);
	// _y = go._internal.internal.reflect.Reflect.namedUnderlying(_y);
	if (new go._internal.reflect.Reflect_value.Value(_x).isNil() || new go._internal.reflect.Reflect_value.Value(_y).isNil()) {
		return (_x : go.AnyInterface) == (_y : go.AnyInterface);
	};
	var v1 = go._internal.reflect.Reflect_valueof.valueOf(_x);
	var v2 = go._internal.reflect.Reflect_valueof.valueOf(_y);
	return go._internal.internal.reflect.Reflect.deepValueEqual(v1, v2, null, 0);
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
	final gt = @:privateAccess go._internal.internal.reflect.GoType.pointerType({get: () -> _v.value.type._common()});
	final t = new go._internal.internal.reflect.Reflect._Type(gt);
	return new go._internal.reflect.Reflect_value.Value(new go.AnyInterface(go.Go.pointer(@:privateAccess _v.value.value), t));
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
	final gt = @:privateAccess go._internal.internal.reflect.Reflect.getUnderlying(_v.value.type._common());
	switch gt {
		case signature(_, _.get() => params, _.get() => out, _):
			final values = new go.Slice<go._internal.reflect.Reflect_value.Value>(0, 0);
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
	return new go._internal.reflect.Reflect_mapiter.MapIter(@:privateAccess _v.value.value, @:privateAccess _v.value.type);
}

@:recv(MapIter)
function key() {
	@:privateAccess if (_iter.keys == null) {
		@:privateAccess _iter.keys = [for (key in _iter.map.keys()) key];
		@:privateAccess _iter.values = [for (key in _iter.map.iterator()) key];
	}
	final gt = go._internal.internal.reflect.Reflect.getUnderlying(@:privateAccess _iter.t._common());
	final key = switch gt {
		case mapType(_.get() => var keyType, _):
			new go._internal.internal.reflect.Reflect._Type(keyType);
		default:
			throw "invalid mapType: " + gt;
	}
	return new go._internal.reflect.Reflect_value.Value(new go.AnyInterface(@:privateAccess _iter.keys[_iter.index], key));
}

@:recv(MapIter)
function value(_iter) {
	@:privateAccess if (_iter.keys == null) {
		@:privateAccess _iter.keys = [for (key in _iter.map.keys()) key];
		@:privateAccess _iter.values = [for (key in _iter.map.iterator()) key];
	};
	final gt = go._internal.internal.reflect.Reflect.getUnderlying(@:privateAccess _iter.t._common());
	final value = switch gt {
		case mapType(_, _.get() => valueType):
			new go._internal.internal.reflect.Reflect._Type(valueType);
		default:
			throw "invalid mapType: " + gt;
	}
	return new go._internal.reflect.Reflect_value.Value(new go.AnyInterface(@:privateAccess _iter.values[_iter.index], value));
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
	return new go._internal.reflect.Reflect_value.Value(new go.AnyInterface(go._internal.internal.reflect.Reflect.defaultValue(_typ),
		_typ.__underlying__().value));
}

@:recv(Value)
function type(_v) {
	if (@:privateAccess _v.value == null) {
		var t = new go._internal.internal.reflect.Reflect._Type(go._internal.internal.reflect.GoType.invalidType);
		return @:privateAccess new go._internal.internal.reflect.Reflect._Type_asInterface(go.Go.pointer(t), null);
	}
	return @:privateAccess new go._internal.internal.reflect.Reflect._Type_asInterface(go.Go.pointer(_v.value.type), null);
}

@:recv(Value)
function setString(_v) {
	@:privateAccess _v.value.value = _x;
	go._internal.internal.reflect.Reflect._set(_v);
}

@:recv(Value)
function setBool(_v) {
	@:privateAccess _v.value.value = _x;
	go._internal.internal.reflect.Reflect._set(_v);
}

@:recv(Value)
function setUint(_v) {
	final k = _v.kind();
	@:privateAccess _v.value.value = switch k {
		case go._internal.internal.reflect.Reflect.KindType.int8:
			(_x : go.GoInt8);
		case go._internal.internal.reflect.Reflect.KindType.int16:
			(_x : go.GoInt16);
		case go._internal.internal.reflect.Reflect.KindType.int32:
			(_x : go.GoInt32);
		case go._internal.internal.reflect.Reflect.KindType.int64:
			(_x : go.GoInt64);
		case go._internal.internal.reflect.Reflect.KindType.int:
			(_x : go.GoInt);
		case go._internal.internal.reflect.Reflect.KindType.uint8:
			(_x : go.GoUInt8);
		case go._internal.internal.reflect.Reflect.KindType.uint16:
			(_x : go.GoUInt16);
		case go._internal.internal.reflect.Reflect.KindType.uint32:
			(_x : go.GoUInt32);
		case go._internal.internal.reflect.Reflect.KindType.uint64:
			(_x : go.GoUInt64);
		case go._internal.internal.reflect.Reflect.KindType.uint:
			(_x : go.GoUInt);
		case go._internal.internal.reflect.Reflect.KindType.uintptr:
			new go.GoUIntptr(_x);
		default:
			throw "unknown setUInt kind: " + k.string();
	};
	go._internal.internal.reflect.Reflect._set(_v);
}

@:recv(Value)
function setComplex(_v) {
	final k = _v.kind();
	@:privateAccess _v.value.value = switch k {
		case go._internal.internal.reflect.Reflect.KindType.complex64:
			(_x : go.GoComplex64);
		case go._internal.internal.reflect.Reflect.KindType.complex128:
			(_x : go.GoComplex128);
		default:
			throw "unknown setFloat kind: " + k.string();
	}
	go._internal.internal.reflect.Reflect._set(_v);
}

@:recv(Value)
function setFloat(_v) {
	final k = _v.kind();
	@:privateAccess _v.value.value = switch k {
		case go._internal.internal.reflect.Reflect.KindType.float32:
			(_x : go.GoFloat32);
		case go._internal.internal.reflect.Reflect.KindType.float64:
			(_x : go.GoFloat64);
		default:
			throw "unknown setFloat kind: " + k.string();
	}
	go._internal.internal.reflect.Reflect._set(_v);
}

@:recv(Value)
function setInt(_v) {
	final k = _v.kind();
	@:privateAccess _v.value.value = switch k {
		case go._internal.internal.reflect.Reflect.KindType.int8:
			(_x : go.GoInt8);
		case go._internal.internal.reflect.Reflect.KindType.int16:
			(_x : go.GoInt16);
		case go._internal.internal.reflect.Reflect.KindType.int32:
			(_x : go.GoInt32);
		case go._internal.internal.reflect.Reflect.KindType.int64:
			(_x : go.GoInt64);
		case go._internal.internal.reflect.Reflect.KindType.int:
			(_x : go.GoInt);
		case go._internal.internal.reflect.Reflect.KindType.uint8:
			(_x : go.GoUInt8);
		case go._internal.internal.reflect.Reflect.KindType.uint16:
			(_x : go.GoUInt16);
		case go._internal.internal.reflect.Reflect.KindType.uint32:
			(_x : go.GoUInt32);
		case go._internal.internal.reflect.Reflect.KindType.uint64:
			(_x : go.GoUInt64);
		case go._internal.internal.reflect.Reflect.KindType.uint:
			(_x : go.GoUInt);
		default:
			throw "unknown setInt kind: " + k.string();
	};
	go._internal.internal.reflect.Reflect._set(_v);
}

@:recv(Value)
function kind(_v)
	return _v.type().kind();

@:recv(Value)
function isValid(_v):Bool {
	if (@:privateAccess _v.value == null)
		return false;
	if (@:privateAccess _v.value.type._common() != go._internal.internal.reflect.GoType.invalidType)
		return true;
	return switch @:privateAccess _v.value.type._common() {
		case go._internal.internal.reflect.GoType.basic(go._internal.internal.reflect.BasicKind.untyped_nil_kind):
			false;
		default:
			true;
	};
}

@:recv(Value)
function pointer(_v) {
	if (@:privateAccess _v.isNil())
		return new go.GoUIntptr(0);
	var value = @:privateAccess _v.value.value;
	return new go.GoUIntptr(value != null ? 1 : 0);
}

function pointerTo(_t) {
	final gt = @:privateAccess (_t : Dynamic)._common();
	var t = new go._internal.internal.reflect.Reflect._Type(pointerType({get: () -> gt}));
	return new go._internal.internal.reflect.Reflect._Type_asInterface(new go.Pointer(() -> t, value -> t = value), null);
}

inline function ptrTo(_t)
	return go._internal.reflect.Reflect_pointerto.pointerTo(_t);

@:recv(Value)
function field(_v) {
	final initgt = @:privateAccess _v.value.type._common();
	final gt = @:privateAccess go._internal.internal.reflect.Reflect.getUnderlying(initgt);
	return switch gt {
		case structType(fields):
			final field = fields[_i.toBasic()];
			var t = @:privateAccess (cast _v.value.type.field(_i).type : go._internal.internal.reflect.Reflect._Type_asInterface).__type__;
			t = new go._internal.internal.reflect.Reflect._Type(@:privateAccess go._internal.internal.reflect.Reflect.unroll(initgt, t._common()));
			var value = @:privateAccess _v.value.value;
			switch std.Type.typeof(value) {
				case TClass(c):
					final name = std.Type.getClassName(c);
					if (std.StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
				default:
					final _ = false;
			};
			var fieldValue = std.Reflect.field(value, field.name);
			fieldValue = go._internal.internal.reflect.Reflect.asInterfaceValue(fieldValue, t._common());
			final valueType = new go._internal.reflect.Reflect_value.Value(new go.AnyInterface(fieldValue, t));
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
	var t:go._internal.internal.reflect.GoType = @:privateAccess _v.value.type._common();
	if (go._internal.internal.reflect.Reflect.isNamed(t)) {
		t = go._internal.internal.reflect.Reflect.getUnderlying(t);
		switch std.Type.typeof(value) {
			case TClass(c):
				final name = std.Type.getClassName(c);
				if (std.StringTools.endsWith(name, "_asInterface"))
					value = (value : Dynamic).__underlying__().value;
			default:
				final _ = false;
		};
	};
	if (go._internal.internal.reflect.Reflect.isPointer(t)) {
		@:privateAccess _v.value.type.gt = go._internal.internal.reflect.Reflect.getElem(t);
		value = (value : go.Pointer<Dynamic>).value;
		t = @:privateAccess _v.value.type._common();
	};
	switch t {
		case go._internal.internal.reflect.GoType.arrayType(_.get() => elem, _):
			switch elem {
				case go._internal.internal.reflect.GoType.basic(go._internal.internal.reflect.BasicKind.uint8_kind):
					return (value : go.GoArray<go.GoByte>).__slice__(0);
				default:
					throw new go._internal.reflect.Reflect_valueerror.ValueError("reflect.Value.Bytes", @:privateAccess _v.kind());
			};
		case go._internal.internal.reflect.GoType.sliceType(_.get() => elem):
			elem = go._internal.internal.reflect.Reflect.getUnderlying(elem);
			switch elem {
				case go._internal.internal.reflect.GoType.basic(go._internal.internal.reflect.BasicKind.uint8_kind):
					return value;
				default:
					throw new go._internal.reflect.Reflect_valueerror.ValueError("reflect.Value.Bytes", @:privateAccess _v.kind());
			};
		default:
			throw new go._internal.reflect.Reflect_valueerror.ValueError("reflect.Value.Bytes", @:privateAccess _v.kind());
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
	var t:go._internal.internal.reflect.GoType = @:privateAccess _v.value.type._common();
	if (go._internal.internal.reflect.Reflect.isNamed(t)) {
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
		case go._internal.internal.reflect.GoType.arrayType(elem, _):
			t = go._internal.internal.reflect.GoType.sliceType(elem);
		case go._internal.internal.reflect.GoType.named(path, methods, go._internal.internal.reflect.GoType.arrayType(elem, _), alias,
			params):
			t = go._internal.internal.reflect.GoType.named(path, methods, go._internal.internal.reflect.GoType.sliceType(elem), alias,
				params);
		default:
			final _ = false;
	};
	final k = _v.kind();
	value = switch k {
		case go._internal.internal.reflect.Reflect.KindType.slice:
			(value : go.Slice<Dynamic>).__slice__(_i, _j);
		case go._internal.internal.reflect.Reflect.KindType.array:
			(value : go.GoArray<Dynamic>).__slice__(_i, _j);
		default:
			throw new go._internal.reflect.Reflect_valueerror.ValueError("reflect.Value.Slice", k);
	};
	return new go._internal.reflect.Reflect_value.Value(new go.AnyInterface(value, new go._internal.internal.reflect.Reflect._Type(t)));
}

@:recv(Value)
function len(_v) {
	final _v = _v.__copy__();
	var value = @:privateAccess _v.value.value;
	if (value == null)
		return 0;
	final t:go._internal.internal.reflect.GoType = @:privateAccess _v.value.type._common();
	if (go._internal.internal.reflect.Reflect.isNamed(t)) {
		switch std.Type.typeof(value) {
			case TClass(c):
				final name = std.Type.getClassName(c);
				if (std.StringTools.endsWith(name, "_asInterface"))
					value = (value : Dynamic).__underlying__().value;
			default:
				final _ = false;
		}
	}
	if (go._internal.internal.reflect.Reflect.isPointer(t)) {
		@:privateAccess _v.value.type.gt = go._internal.internal.reflect.Reflect.getElem(t);
		value = (value : go.Pointer<Dynamic>).value;
	};
	final k = _v.kind();
	/*if (std.Type.typeof(value) == TUnknown) {
		return 0;
	}*/
	return switch k {
		case go._internal.internal.reflect.Reflect.KindType.array:
			(value : go.GoArray<Dynamic>).length;
		case go._internal.internal.reflect.Reflect.KindType.chan:
			(value : go.Chan<Dynamic>).length;
		case go._internal.internal.reflect.Reflect.KindType.slice:
			(value : go.Slice<Dynamic>).length;
		case go._internal.internal.reflect.Reflect.KindType.map:
			Lambda.count((value : haxe.Constraints.IMap<Dynamic, Dynamic>));
		case go._internal.internal.reflect.Reflect.KindType.string:
			(value : Dynamic).length;
		default:
			trace(k.string());
			throw "not supported";
	};
}

@:recv(Value)
function canUint(_v) {
	return switch _v.kind() {
		case go._internal.internal.reflect.Reflect.KindType.uint, go._internal.internal.reflect.Reflect.KindType.uint8,
			go._internal.internal.reflect.Reflect.KindType.uint16, go._internal.internal.reflect.Reflect.KindType.uint32,
			go._internal.internal.reflect.Reflect.KindType.uint64, go._internal.internal.reflect.Reflect.KindType.uintptr:
			true;
		default:
			false;
	}
}

@:recv(Value)
function bool_() {
	var value = @:privateAccess _v.value.value;
	final t:go._internal.internal.reflect.GoType = @:privateAccess _v.value.type._common();
	if (go._internal.internal.reflect.Reflect.isNamed(t)) {
		switch std.Type.typeof(value) {
			case TClass(c):
				final name = std.Type.getClassName(c);
				if (std.StringTools.endsWith(name, "_asInterface"))
					value = (value : Dynamic).__underlying__().value;
			default:
				final _ = false;
		}
	}
	if (go._internal.internal.reflect.Reflect.isPointer(t)) {
		@:privateAccess _v.value.type.gt = go._internal.internal.reflect.Reflect.getElem(t);
		value = (value : go.Pointer<Dynamic>).value;
	};
	final value:Bool = switch _v.kind() {
		case go._internal.internal.reflect.Reflect.KindType.bool:
			value;
		default:
			throw new go._internal.reflect.Reflect_valueerror.ValueError("reflect.Value.Bool", _v.kind());
	}
	return value;
}

@:recv(Value)
function complex(_v) {
	var value = @:privateAccess _v.value.value;
	final t:go._internal.internal.reflect.GoType = @:privateAccess _v.value.type._common();
	if (go._internal.internal.reflect.Reflect.isNamed(t)) {
		switch std.Type.typeof(value) {
			case TClass(c):
				final name = std.Type.getClassName(c);
				if (std.StringTools.endsWith(name, "_asInterface"))
					value = (value : Dynamic).__underlying__().value;
			default:
				final _ = false;
		}
	}
	if (go._internal.internal.reflect.Reflect.isPointer(t)) {
		@:privateAccess _v.value.type.gt = go._internal.internal.reflect.Reflect.getElem(t);
		value = (value : go.Pointer<Dynamic>).value;
	};
	final value:go.GoComplex128 = switch _v.kind() {
		case go._internal.internal.reflect.Reflect.KindType.complex128, go._internal.internal.reflect.Reflect.KindType.complex64:
			value;
		default:
			throw new go._internal.reflect.Reflect_valueerror.ValueError("Value.Complex", _v.kind());
	}
	return value;
}

@:recv(Value)
function uint(_v) {
	var value = @:privateAccess _v.value.value;
	final t:go._internal.internal.reflect.GoType = @:privateAccess _v.value.type._common();
	if (go._internal.internal.reflect.Reflect.isNamed(t)) {
		switch std.Type.typeof(value) {
			case TClass(c):
				final name = std.Type.getClassName(c);
				if (std.StringTools.endsWith(name, "_asInterface"))
					value = (value : Dynamic).__underlying__().value;
			default:
				final _ = false;
		}
	}
	if (go._internal.internal.reflect.Reflect.isPointer(t)) {
		@:privateAccess _v.value.type.gt = go._internal.internal.reflect.Reflect.getElem(t);
		value = (value : go.Pointer<Dynamic>).value;
	};
	final value:go.GoUInt64 = switch _v.kind() {
		case go._internal.internal.reflect.Reflect.KindType.uint:
			(value : go.GoUInt8);
		case go._internal.internal.reflect.Reflect.KindType.uint8:
			(value : go.GoUInt8);
		case go._internal.internal.reflect.Reflect.KindType.uint16:
			(value : go.GoUInt16);
		case go._internal.internal.reflect.Reflect.KindType.uint32:
			(value : go.GoUInt32);
		case go._internal.internal.reflect.Reflect.KindType.uint64:
			(value : go.GoUInt64);
		case go._internal.internal.reflect.Reflect.KindType.uintptr:
			new go.GoUIntptr(value);
		default:
			throw new go._internal.reflect.Reflect_valueerror.ValueError("reflect.Value.Uint", _v.kind());
	}
	return value;
}

@:recv(Value)
function float_(_v) {
	var value = @:privateAccess _v.value.value;
	final t:go._internal.internal.reflect.GoType = @:privateAccess _v.value.type._common();
	if (go._internal.internal.reflect.Reflect.isNamed(t)) {
		switch std.Type.typeof(value) {
			case TClass(c):
				final name = std.Type.getClassName(c);
				if (std.StringTools.endsWith(name, "_asInterface"))
					value = (value : Dynamic).__underlying__().value;
			default:
				final _ = false;
		}
	}
	if (go._internal.internal.reflect.Reflect.isPointer(t)) {
		@:privateAccess _v.value.type.gt = go._internal.internal.reflect.Reflect.getElem(t);
		value = (value : go.Pointer<Dynamic>).value;
	};
	final value:go.GoFloat64 = switch _v.kind() {
		case go._internal.internal.reflect.Reflect.KindType.float64:
			(value : go.GoFloat64);
		case go._internal.internal.reflect.Reflect.KindType.float32:
			(value : go.GoFloat32);
		default:
			throw new go._internal.reflect.Reflect_valueerror.ValueError("reflect.Value.Float", _v.kind());
	}
	return value;
}

@:recv(Value)
function int_(_v) {
	var value = @:privateAccess _v.value.value;
	final t:go._internal.internal.reflect.GoType = @:privateAccess _v.value.type._common();
	if (go._internal.internal.reflect.Reflect.isNamed(t)) {
		switch std.Type.typeof(value) {
			case TClass(c):
				final name = std.Type.getClassName(c);
				if (std.StringTools.endsWith(name, "_asInterface"))
					value = (value : Dynamic).__underlying__().value;
			default:
				final _ = false;
		}
	}
	if (go._internal.internal.reflect.Reflect.isPointer(t)) {
		@:privateAccess _v.value.type.gt = go._internal.internal.reflect.Reflect.getElem(t);
		value = (value : go.Pointer<Dynamic>).value;
	};
	final value:go.GoInt64 = switch _v.kind() {
		case go._internal.internal.reflect.Reflect.KindType.int:
			(value : go.GoInt8);
		case go._internal.internal.reflect.Reflect.KindType.int8:
			(value : go.GoInt8);
		case go._internal.internal.reflect.Reflect.KindType.int16:
			(value : go.GoInt16);
		case go._internal.internal.reflect.Reflect.KindType.int32:
			(value : go.GoInt32);
		case go._internal.internal.reflect.Reflect.KindType.int64:
			(value : go.GoInt64);
		default:
			throw new go._internal.reflect.Reflect_valueerror.ValueError("reflect.Value.Int", _v.kind());
	}
	return value;
}

@:recv(Value)
function index(_v) {
	final _v = _v.__copy__();
	var value = @:privateAccess _v.value.value;
	final t:go._internal.internal.reflect.GoType = @:privateAccess _v.value.type._common();
	if (go._internal.internal.reflect.Reflect.isNamed(t)) {
		switch std.Type.typeof(value) {
			case TClass(c):
				final name = std.Type.getClassName(c);
				if (std.StringTools.endsWith(name, "_asInterface"))
					value = (value : Dynamic).__underlying__().value;
			default:
				final _ = false;
		}
	}
	if (go._internal.internal.reflect.Reflect.isPointer(t)) {
		@:privateAccess _v.value.type.gt = go._internal.internal.reflect.Reflect.getElem(t);
		value = (value : go.Pointer<Dynamic>).value;
	};
	final gt = go._internal.internal.reflect.Reflect.getUnderlying(@:privateAccess _v.value.type._common());
	return switch gt {
		case go._internal.internal.reflect.GoType.arrayType(_.get() => elem, _):
			final t = @:privateAccess new go._internal.internal.reflect.Reflect._Type(go._internal.internal.reflect.Reflect.unroll(gt, elem));
			final valueInterface = go._internal.internal.reflect.Reflect.asInterfaceValue((value : go.GoArray<Dynamic>)[_i], t._common());
			new go._internal.reflect.Reflect_value.Value(new go.AnyInterface(valueInterface, t), value, _i);
		case go._internal.internal.reflect.GoType.sliceType(_.get() => elem):
			final t = @:privateAccess new go._internal.internal.reflect.Reflect._Type(go._internal.internal.reflect.Reflect.unroll(gt, elem));
			final valueInterface = go._internal.internal.reflect.Reflect.asInterfaceValue((value : Slice<Dynamic>)[_i], t._common());
			final value = new go._internal.reflect.Reflect_value.Value(new go.AnyInterface(valueInterface, t), value, _i);
			@:privateAccess value.canAddrBool = true;
			value;
		case go._internal.internal.reflect.GoType.basic(kind):
			switch kind {
				case string_kind:
					var value = value;
					if ((value is String))
						value = (value : go.GoString);
					new go._internal.reflect.Reflect_value.Value(new go.AnyInterface((value : go.GoString)[_i],
						new go._internal.internal.reflect.Reflect._Type(basic(uint8_kind))));
				default:
					throw "unsupported basic kind";
			};
		default:
			throw "not supported";
	};
}

function new_() {
	var value = go._internal.internal.reflect.Reflect.defaultValue(_typ);
	var ptr = new Pointer(() -> value, x -> value = x);
	return new go._internal.reflect.Reflect_value.Value(new go.AnyInterface(ptr,
		new go._internal.internal.reflect.Reflect._Type(go._internal.internal.reflect.GoType.pointerType({
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
		case go._internal.internal.reflect.Reflect.KindType.struct:
			switch go._internal.internal.reflect.Reflect.getUnderlying(gt) {
				case structType(fields):
					for (field in fields) {
						final fieldValue = std.Reflect.field(value, field.name);
						std.Reflect.setField(value, field.name, fieldValue);
					}
				default:
					final _ = false;
			};
		case go._internal.internal.reflect.Reflect.KindType.int8:
			_v.setInt((value : go.GoInt8));
		case go._internal.internal.reflect.Reflect.KindType.int16:
			_v.setInt((value : go.GoInt16));
		case go._internal.internal.reflect.Reflect.KindType.int32:
			_v.setInt((value : go.GoInt32));
		case go._internal.internal.reflect.Reflect.KindType.int64:
			_v.setInt((value : go.GoInt64));
		case go._internal.internal.reflect.Reflect.KindType.int:
			_v.setInt((value : go.GoInt));
		case go._internal.internal.reflect.Reflect.KindType.uint:
			_v.setInt((value : go.GoUInt8));
		case go._internal.internal.reflect.Reflect.KindType.uint16:
			_v.setInt((value : go.GoUInt16));
		case go._internal.internal.reflect.Reflect.KindType.uint32:
			_v.setInt((value : go.GoUInt32));
		case go._internal.internal.reflect.Reflect.KindType.uint64:
			_v.setInt((value : go.GoUInt64));
		case go._internal.internal.reflect.Reflect.KindType.float32:
			_v.setFloat((value : go.GoFloat32));
		case go._internal.internal.reflect.Reflect.KindType.float64:
			_v.setFloat((value : go.GoFloat64));
		case go._internal.internal.reflect.Reflect.KindType.string:
			_v.setString(value);
		case go._internal.internal.reflect.Reflect.KindType.slice:
			var value:Slice<Dynamic> = @:privateAccess _v.value.value;
			final x:Slice<Dynamic> = @:privateAccess _x.value.value;
			// value.__setData__(x);
			go._internal.internal.reflect.Reflect._set(_v);
		case go._internal.internal.reflect.Reflect.KindType.map:
			var value:haxe.Constraints.IMap<Dynamic, Dynamic> = @:privateAccess _v.value.value;
			final x:haxe.Constraints.IMap<Dynamic, Dynamic> = @:privateAccess _x.value.value;
			for (key => value in x) {
				value.set(key, value);
			}
			// value.__setData__(x);
			go._internal.internal.reflect.Reflect._set(_v);
		default:
			@:privateAccess _v.value = _x.value;
			go._internal.internal.reflect.Reflect._set(_v);
	}
}

@:recv(Value)
overload extern inline function string(_v) {
	if (@:privateAccess _v.value == null) {
		return "<invalid Value>";
	}
	var value = @:privateAccess _v.value.value;
	final t:go._internal.internal.reflect.GoType = @:privateAccess _v.value.type._common();
	if (go._internal.internal.reflect.Reflect.isNamed(t)) {
		switch std.Type.typeof(value) {
			case TClass(c):
				final name = std.Type.getClassName(c);
				if (std.StringTools.endsWith(name, "_asInterface"))
					value = (value : Dynamic).__underlying__().value;
			default:
				final _ = false;
		}
	}
	if (go._internal.internal.reflect.Reflect.isPointer(t)) {
		@:privateAccess _v.value.type.gt = go._internal.internal.reflect.Reflect.getElem(t);
		value = (value : go.Pointer<Dynamic>).value;
	};
	final underlyingType = go._internal.internal.reflect.Reflect.getUnderlying(t);
	switch (underlyingType) {
		case go._internal.internal.reflect.GoType.basic(kind):
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
	final gt:go._internal.internal.reflect.GoType = (_v.type() : Dynamic)._common();
	return switch k {
		case go._internal.internal.reflect.Reflect.KindType.pointer:
			switch gt {
				case go._internal.internal.reflect.GoType.refType(_):
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
						final b = (value : go.Pointer<Dynamic>).hasSet();
						trace("hasSet: " + b);
						b;
					}
			}
		case go._internal.internal.reflect.Reflect.KindType.func:
			value == null;
		case go._internal.internal.reflect.Reflect.KindType.chan:
			value == null;
		case go._internal.internal.reflect.Reflect.KindType.map:
			value == null;
		case go._internal.internal.reflect.Reflect.KindType.slice:
			value == null;
		case go._internal.internal.reflect.Reflect.KindType.interface_:
			value == null;
		case go._internal.internal.reflect.Reflect.KindType.array:
			false;
		case go._internal.internal.reflect.Reflect.KindType.struct:
			false;
		case go._internal.internal.reflect.Reflect.KindType.invalid:
			false;
		case go._internal.internal.reflect.Reflect.KindType.unsafePointer, go._internal.internal.reflect.Reflect.KindType.uintptr:
			value == null;
		case go._internal.internal.reflect.Reflect.KindType.bool, go._internal.internal.reflect.Reflect.KindType.int,
			go._internal.internal.reflect.Reflect.KindType.int32, go._internal.internal.reflect.Reflect.KindType.int64,
			go._internal.internal.reflect.Reflect.KindType.float32, go._internal.internal.reflect.Reflect.KindType.float64,
			go._internal.internal.reflect.Reflect.KindType.int8, go._internal.internal.reflect.Reflect.KindType.int16,
			go._internal.internal.reflect.Reflect.KindType.uint, go._internal.internal.reflect.Reflect.KindType.uint8,
			go._internal.internal.reflect.Reflect.KindType.uint16, go._internal.internal.reflect.Reflect.KindType.uint32,
			go._internal.internal.reflect.Reflect.KindType.uint64, go._internal.internal.reflect.Reflect.KindType.string,
			go._internal.internal.reflect.Reflect.KindType.complex64, go._internal.internal.reflect.Reflect.KindType.complex128:
			false;
		default:
			throw "nil check not supported kind: " + _v.kind().string();
	}
}

@:recv(Value)
function elem(_v) {
	var value = @:privateAccess _v.value.value;
	final t:go._internal.internal.reflect.GoType = @:privateAccess _v.value.type._common();
	if (go._internal.internal.reflect.Reflect.isNamed(t)
		&& !go._internal.internal.reflect.Reflect.isRef(t)
		&& !go._internal.internal.reflect.Reflect.isPointer(t)) {
		switch std.Type.typeof(value) {
			case TClass(c):
				final name = std.Type.getClassName(c);
				if (std.StringTools.endsWith(name, "_asInterface")) {
					@:privateAccess _v.value.type.gt = go._internal.internal.reflect.Reflect.unroll(t, go._internal.internal.reflect.Reflect.getElem(t));
					value = (value : Dynamic).__underlying__().value;
				}
			default:
				final _ = false;
		};
	};
	var k = _v.kind();
	switch k {
		case go._internal.internal.reflect.Reflect.KindType.pointer:
			final t = @:privateAccess go._internal.internal.reflect.Reflect.unroll(t, go._internal.internal.reflect.Reflect.getUnderlying(t));
			switch t {
				case go._internal.internal.reflect.GoType.refType(_.get() => elem):
					final value = new go._internal.reflect.Reflect_value.Value(new go.AnyInterface(value,
						new go._internal.internal.reflect.Reflect._Type(elem)), null);
					@:privateAccess value.canAddrBool = true;
					return value;
				case go._internal.internal.reflect.GoType.pointerType(_.get() => elem):
					if (value == null) {
						final value = new go._internal.reflect.Reflect_value.Value(new go.AnyInterface(null,
							new go._internal.internal.reflect.Reflect._Type(elem)), value);
						@:privateAccess value.canAddrBool = true;
						return value;
					};
					final ptrValue = (value : go.Pointer<Dynamic>).value;
					final value = new go._internal.reflect.Reflect_value.Value(new go.AnyInterface(ptrValue,
						new go._internal.internal.reflect.Reflect._Type(elem)), value);
					@:privateAccess value.canAddrBool = true;
					return value;
				default:
					final _ = false;
			};
		case go._internal.internal.reflect.Reflect.KindType.interface_:
			if (value == null)
				return new go._internal.reflect.Reflect_value.Value();
			if (_v.numMethod() != 0) {
				return new go._internal.reflect.Reflect_value.Value(value, @:privateAccess _v.value.type);
			} else {
				final any = @:privateAccess (_v.value.value : AnyInterface);
				final type = any.type;
				return @:privateAccess new go._internal.reflect.Reflect_value.Value(any, type);
			}
	};
	throw new go._internal.reflect.Reflect_valueerror.ValueError("reflect.Value.Elem", k);
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
