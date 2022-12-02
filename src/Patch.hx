final list = [
	// stdgo/os
	"os:_runtime_args" => macro {
		@:define("js") return new Slice<GoString>(0, 0);
		@:define("sys") {
			final args:Array<GoString> = Sys.args().map(arg -> (arg : GoString));
			args.unshift(Sys.getCwd());
			return new Slice<GoString>(0, 0, ...args);
		};
	},
	// stdgo/strings
	"strings.Builder:_copyCheck" => macro _b._addr = _b,
	// stdgo/time
	"time:Sleep" => macro {
		final seconds = _d.toFloat() / 1000000000;
		#if sys
		var ticks = Math.floor(seconds * 100);
		while (--ticks > 0) {
			stdgo.internal.Async.tick();
			Sys.sleep(0.01);
		}
		#end
	},
	"time:forceUSPacificForTesting" => macro {},
	"time:_stopTimer" => macro {
		final t:Dynamic = _0;
		if ((t._pp : GoUIntptr) != (0 : GoUIntptr)) {
			final timer:haxe.Timer = t._pp;
			timer.stop();
		}
		final wasActive = t._status == 1;
		t._status = 0;
		return wasActive;
	},
	"time:_startTimer" => macro {
		final t = _0;
		t._status = 1;
		var diff = (t._when - Time._runtimeNano()) / (1000 * 1000);
		if (diff > 1 << 31 - 1)
			return;
		if (diff < 0)
			diff = 0;
		final d = (diff : GoInt).toBasic() + 1;
		final timer = new haxe.Timer(d);
		timer.run = () -> {
			timer.stop();
			t._status = 0;
			if (t._period != (0 : GoInt64)) {
				t._when += t._period;
				_startTimer(t);
			}
			Go.routine(() -> t._f(t._arg, 0));
		};
		t._pp = (timer : GoUIntptr);
	},
	"time:_resetTimer" => macro {
		final t = _0;
		final when = _1;
		final wasActive = t._status == 1;
		return wasActive;
	},
	"time:_modTimer" => macro {
		_stopTimer(_t);
		_t._when = _when;
		_t._period = _period;
		_t._f = _f;
		_t._arg = _arg;
		_t._seq = _seq;
		_startTimer(_t);
	},
	"time:_runtimeNano" => macro {
		final x = ((Sys.time() * 1000000 * 1000) - Date.now().getTimezoneOffset() * 60000000000 : GoInt64);
		return x;
	},
	"time:_now" => macro {
		final n = _runtimeNano();
		return {_0: n / 1000000000, _1: n % 1000000000, _2: n};
	},
	"time:_initLocal" => macro {
		_localLoc._name = ("Local" : GoString);
		final d = new Date(0, 0, 0, 0, 0, 0);
		var offset = d.getTimezoneOffset() * -1;
		offset *= 60;
		var name = "UTC";
		if (offset < 0) {
			name += "-";
			offset *= -1;
		} else {
			name += "+";
		}
		name += Std.string(offset / 60);
		final min = offset % 60;
		if (min != 0) {
			name += ":" + Std.string(min);
		}
		_localLoc._zone = new Slice<T_zone>(0, 0, ...[{_name: (name : GoString), _offset: offset, _isDST: false}]);
	},
	// stdgo/math
	"math:trunc" => macro return _x > 0 ? floor(_x) : ceil(_x),
	"math:log" => macro return std.Math.log(_x.toBasic()),
	"math:pow" => macro return std.Math.pow(_x.toBasic(), _y.toBasic()),
	"math:mod" => macro return _x.toBasic() % _y.toBasic(),
	"math:float64bits" => macro {
		final bits = haxe.io.Bytes.alloc(8);
		bits.setDouble(0, _f.toBasic());
		return haxe.Int64.make(bits.get(4) | (bits.get(5) << 8) | (bits.get(6) << 16) | (bits.get(7) << 24),
			bits.get(0) | (bits.get(1) << 8) | (bits.get(2) << 16) | (bits.get(3) << 24));
	},
	"math:float32bits" => macro {
		final bits = haxe.io.Bytes.alloc(4);
		bits.setFloat(0, _f.toBasic());
		return (bits.get(0)) | (bits.get(1) << 8) | (bits.get(2) << 16) | (bits.get(3) << 24);
	},
	"math:float32frombits" => macro {
		final bits = haxe.io.Bytes.alloc(4);
		final v = _b.toBasic();
		bits.set(0, v & 0xff);
		bits.set(1, (v >> 8) & 0xff);
		bits.set(2, (v >> 16) & 0xff);
		bits.set(3, (v >> 24) & 0xff); // little-endian
		return bits.getFloat(0);
	},
	"math:float64frombits" => macro {
		final bits = haxe.io.Bytes.alloc(8);
		final low = _b.toBasic().low;
		final high = _b.toBasic().high;
		bits.set(0, low & 0xff);
		bits.set(1, (low >> 8) & 0xff);
		bits.set(2, (low >> 16) & 0xff);
		bits.set(3, (low >> 24) & 0xff); // little-endian
		bits.set(4, high & 0xff);
		bits.set(5, (high >> 8) & 0xff);
		bits.set(6, (high >> 16) & 0xff);
		bits.set(7, (high >> 24) & 0xff); // little-endian
		return bits.getDouble(0);
	},
	"math:naN" => macro return std.Math.NaN,
	"math:signbit" => macro {
		if (std.Math.isNaN(_x.toBasic()))
			return false;
		return float64bits(_x) & ((1 : GoUInt64) << (63 : GoUInt64)) != (0 : GoUInt64);
	},
	"math:inf" => macro {
		if (_sign >= 0)
			return std.Math.POSITIVE_INFINITY;
		return std.Math.NEGATIVE_INFINITY;
	},
	"math:exp" => macro return std.Math.exp(_x.toBasic()),
	"math:isNaN" => macro return std.Math.isNaN(_f.toBasic()),
	"math:abs" => macro return std.Math.abs(_x.toBasic()),
	"math:floor" => macro {
		if (!std.Math.isFinite(_x.toBasic()) || std.Math.isNaN(_x.toBasic()))
			return _x;
		return std.Math.ffloor(_x.toBasic());
	},
	"math:ceil" => macro {
		if (!std.Math.isFinite(_x.toBasic()) || std.Math.isNaN(_x.toBasic())) // special cases
			return _x;
		if (_x == 0.0 && signbit(_x))
			return negZero();
		if (_x > -1.0 && _x < 0.0) {
			//-0.0
			return negZero();
		}
		return std.Math.ceil(_x.toBasic());
	},
	"math:sqrt" => macro return _sqrt(_x),
	"math:_sqrt" => macro return std.Math.sqrt(_x.toBasic()),
	"math:min" => macro {
		// special cases
		if (_x < 0 && !std.Math.isFinite(_x.toBasic()) || _y < 0 && !std.Math.isFinite(_y.toBasic()))
			return inf(-1);
		if (_x == 0.0 && signbit(_x) && !isNaN(_y) || _y == 0.0 && signbit(_y) && !isNaN(_x))
			return negZero();
		if (isNaN(_x) || isNaN(_y))
			return naN();
		return std.Math.min(_x.toBasic(), _y.toBasic());
	},
	"math:max" => macro {
		// special cases
		if (_x > 0 && !std.Math.isFinite(_x.toBasic()) || _y > 0 && !std.Math.isFinite(_y.toBasic()))
			return inf(1);
		if (_x == 0.0 && !signbit(_x) && !isNaN(_y) || _y == 0.0 && !signbit(_y) && !isNaN(_x))
			return 0.0;
		if (isNaN(_x) || isNaN(_y))
			return naN();
		return std.Math.max(_x.toBasic(), _y.toBasic());
	},
	"math:sin" => macro return std.Math.sin(_x.toBasic()),
	"math:cos" => macro return std.Math.cos(_x.toBasic()),
	"math:tan" => macro return std.Math.tan(_x.toBasic()),
	"math:asin" => macro return std.Math.asin(_x.toBasic()),
	"math:acos" => macro return std.Math.acos(_x.toBasic()),
	"math:atan" => macro return std.Math.atan(_x.toBasic()),
	"math:atan2" => macro return std.Math.atan2(_y.toBasic(), _x.toBasic()),
	"math:isInf" => macro return _sign.toBasic() >= 0 && _f == std.Math.POSITIVE_INFINITY || _sign.toBasic() <= 0 && _f == std.Math.NEGATIVE_INFINITY,
	"math:hypnot" => macro {
		if (isInf(_p, 0) || isInf(_q, 0))
			return inf(1);
		if (_p == std.Math.NaN || _q == std.Math.NaN)
			return naN();
		_p = abs(_p);
		_q = abs(_q);
		if (_p < _q) {
			final temp = _p;
			_p = _q;
			_q = temp;
		}
		if (_p == 0)
			return 0;
		_q = _q / _p;
		return _p * sqrt(1 + _q * _q);
	},
	"math:_archFloor" => macro return floor(_x),
	"math:_archCeil" => macro return ceil(_x),
	"math:_archTrunc" => macro return trunc(_x),
	"math:_cos" => macro return cos(_x),
	"math:_sin" => macro return sin(_x),
	// stdgo/os
	"os:open" => macro {
		if (!sys.FileSystem.exists(_name))
			return {_0: null, _1: stdgo.errors.Errors.new_("open " + _name + ": no such file or directory")};
		throw "os.open is not yet implemented";
		return {_0: null, _1: null};
	},
	// stdgo/math_bits
	"math.bits:_overflowError" => macro @:privateAccess stdgo.Error._overflowError,
	"math.bits:_divideError" => macro @:privateAccess stdgo.Error._divideError,
	// stdgo/math_test
	"math_test:testFloatMinMax" => macro trace("testFloatMinMax not implemented: fmt formatter"),
	"math:testGamma" => macro @:define("interp") {
		trace("interp - testGamma not implemented: high floating point precision");
		return;
	},
	// stdgo/math_bits_test
	"math_bits_test:testLeadingZeros" => macro {},
	"math_bits_test:testOnesCount" => macro {},
	"math_bits_test:testLen" => macro {},
	// stdgo/strings_test
	"strings_test:_makeBenchInputHard" => macro return "",
	// stdgo/runtime
	"runtime:gomaxprocs" => macro return 1,
	// stdgo/reflect
	"reflect:typeOf" => macro {
		// // set internal Type
		if (_i == null)
			return new stdgo.internal.reflect.Reflect._Type_asInterface(Go.pointer(new stdgo.internal.reflect.Reflect._Type(basic(unsafepointer_kind))),
				new stdgo.internal.reflect.Reflect._Type(basic(unsafepointer_kind)));
		// set internal Type
		return new stdgo.internal.reflect.Reflect._Type_asInterface(Go.pointer(_i.type), _i.type);
	},
	"reflect:valueOf" => macro {
		return new Value(_i);
	},
	"reflect:deepEqual" => macro {
		_x = stdgo.internal.reflect.Reflect.namedUnderlying(_x);
		_y = stdgo.internal.reflect.Reflect.namedUnderlying(_y);
		if (new Value(_x).isNil() || new Value(_y).isNil()) {
			return (_x : AnyInterface) == (_y : AnyInterface);
		};
		var v1 = valueOf(_x);
		var v2 = valueOf(_y);
		return stdgo.internal.reflect.Reflect.deepValueEqual(v1, v2, null, 0);
	},
	"reflect:zero" => macro return new Value(new AnyInterface(stdgo.internal.reflect.Reflect.defaultValue(_typ), cast _typ)),
	"reflect.Value:type" => macro return @:privateAccess new stdgo.internal.reflect.Reflect._Type_asInterface(Go.pointer(_v.value.type), _v.value.type),
	"reflect.Value:kind" => macro return _v.type().kind(),
	"reflect.Value:isValid" => macro return @:privateAccess _v.value.type._common() != stdgo.internal.reflect.Reflect.GoType.invalidType,
	"reflect.Value:pointer" => macro {
		var value = @:privateAccess _v.value.value;
		if (stdgo.internal.reflect.Reflect.isNamed(@:privateAccess _v.value.type._common()))
			value = (value : Dynamic);
		return value != null ? 1 : 0;
	},
	"reflect.Value:len" => macro {
		var value = @:privateAccess _v.value.value;
		final t:stdgo.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
		if (stdgo.internal.reflect.Reflect.isNamed(t))
			value = (value : Dynamic);
		final k = _v.kind();
		return switch k {
			case stdgo.internal.reflect.Reflect.KindType.array:
				(value : GoArray<Dynamic>).length;
			case stdgo.internal.reflect.Reflect.KindType.chan:
				(value : Chan<Dynamic>).length;
			case stdgo.internal.reflect.Reflect.KindType.slice:
				(value : Slice<Dynamic>).length;
			case stdgo.internal.reflect.Reflect.KindType.map:
				(value : GoMap<Dynamic, Dynamic>).length;
			case stdgo.internal.reflect.Reflect.KindType.string: // string_:
				(value : Dynamic).length;
			default:
				throw "not supported";
		}
	},
	"reflect.Value:index" => macro {
		var value = @:privateAccess _v.value.value;
		final gt = stdgo.internal.reflect.Reflect.getUnderlying(@:privateAccess _v.value.type._common());
		return switch gt {
			case stdgo.internal.reflect.Reflect.GoType.arrayType(_.get() => elem,
				_): @:privateAccess new Value(new AnyInterface((value : GoArray<Dynamic>)[_i],
					new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.unroll(gt, elem))));
			case stdgo.internal.reflect.Reflect.GoType.sliceType(_.get() => elem):
				final value = @:privateAccess new Value(new AnyInterface((value : Slice<Dynamic>)[_i],
					new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.unroll(gt, elem))),
					value, _i);
				@:privateAccess value.canAddrBool = true;
				value;
			/*case string:
				var value = value;
				if ((value is String))
					value = new GoString(value);
				new Value(new AnyInterface((value : GoString).get(i),new _Type(basic(uint8_kind)))); */
			case stdgo.internal.reflect.Reflect.GoType.basic(kind):
				switch kind {
					case string_kind:
						var value = value;
						if ((value is String))
							value = (value : GoString);
						new Value(new AnyInterface((value : GoString)[_i], new stdgo.internal.reflect.Reflect._Type(basic(uint8_kind))));
					default:
						throw "unsupported basic kind";
				}
			default: throw "not supported";
		}
	},
	"reflect.Value:set" => macro {
		var value = @:privateAccess _x.value.value;
		final gt = @:privateAccess _x.value.type._common();
		if (value != null) {
			final cl = std.Type.getClassName(std.Type.getClass(value));
			if (StringTools.endsWith(cl, "_asInterface")) {
				value = (value : Dynamic).__underlying__().value;
			};
		};
		final k = _v.kind();
		switch k {
			case stdgo.internal.reflect.Reflect.KindType.struct:
				switch stdgo.internal.reflect.Reflect.getUnderlying(gt) {
					case structType(fields):
						for (field in fields) {
							final fieldValue = std.Reflect.field(value, field.name);
							std.Reflect.setField(value, field.name, fieldValue);
						}
					default:
				};
			case stdgo.internal.reflect.Reflect.KindType.int8:
				_v.setInt((value : GoInt8));
			case stdgo.internal.reflect.Reflect.KindType.int16:
				_v.setInt((value : GoInt16));
			case stdgo.internal.reflect.Reflect.KindType.int32:
				_v.setInt((value : GoInt32));
			case stdgo.internal.reflect.Reflect.KindType.int64:
				_v.setInt((value : GoInt64));
			case stdgo.internal.reflect.Reflect.KindType.int:
				_v.setInt((value : GoInt));
			case stdgo.internal.reflect.Reflect.KindType.uint:
				_v.setInt((value : GoUInt8));
			case stdgo.internal.reflect.Reflect.KindType.uint16:
				_v.setInt((value : GoUInt16));
			case stdgo.internal.reflect.Reflect.KindType.uint32:
				_v.setInt((value : GoUInt32));
			case stdgo.internal.reflect.Reflect.KindType.uint64:
				_v.setInt((value : GoUInt64));
			case stdgo.internal.reflect.Reflect.KindType.float32:
				_v.setFloat((value : GoFloat32));
			case stdgo.internal.reflect.Reflect.KindType.float64:
				_v.setFloat((value : GoFloat64));
			default:
				_v.value = _x.value;
				stdgo.internal.refle_set(_v);
		}
	},
	"reflect.Value:interface_" => macro return @:privateAccess _v.value,
	"reflect.Value:isNil" => macro {
		var value = @:privateAccess _v.value.value;
		final k = _v.kind();
		final gt:stdgo.internal.reflect.Reflect.GoType = (_v.type() : Dynamic)._common();
		return switch k {
			case stdgo.internal.reflect.Reflect.KindType.pointer:
				switch gt {
					case stdgo.internal.reflect.Reflect.GoType.refType(_):
						false;
					default:
						if (value == null) {
							true;
						} else {
							(value : Pointer<Dynamic>).hasSet();
						}
				}
			case stdgo.internal.reflect.Reflect.KindType.func:
				value == null;
			case stdgo.internal.reflect.Reflect.KindType.map, stdgo.internal.reflect.Reflect.KindType.slice, stdgo.internal.reflect.Reflect.KindType.chan:
				value == null;
			case stdgo.internal.reflect.Reflect.KindType.interface_:
				value == null;
			case stdgo.internal.reflect.Reflect.KindType.array:
				false;
			case stdgo.internal.reflect.Reflect.KindType.struct:
				false;
			default:
				throw "nil check not supported kind: " + _v.kind().string();
		}
	},
	"reflect.Value:elem" => macro {
		var value = @:privateAccess _v.value;
		var k = _v.kind();
		final t = @:privateAccess _v.value.type._common();
		switch k {
			case ptr:
				switch stdgo.internal.reflect.Reflect.getUnderlying(t) {
					case stdgo.internal.reflect.Reflect.GoType.refType(elem):
						final value = new Value(new AnyInterface(value, new stdgo.internal.reflect.Reflect._Type(elem)), null);
						@:privateAccess value.canAddrBool = true;
						return value;
					case stdgo.internal.reflect.Reflect.GoType.pointerType(elem):
						if (value == null) {
							final value = new Value(new AnyInterface(null, new stdgo.internal.reflect.Reflect._Type(elem)), null);
							@:privateAccess value.canAddrBool = true;
							return value;
						}
						final ptrValue = null; // (value : Pointer<Dynamic>).value
						final value = new Value(new AnyInterface(ptrValue, new stdgo.internal.reflect.Reflect._Type(elem)), value);
						@:privateAccess value.canAddrBool = true;
						return value;
					default:
						var _ = 0;
				}
			case interface_:
				final value = _v.__copy__();
				@:privateAccess value.canAddrBool = true;
				return value;
		}
		throw new ValueError("reflect.Value.Elem", k);
	},
	"reflect.Kind:string" => macro {
		var idx:Int = _k.toBasic();
		trace(idx);
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
];

final skipTargets = [
	"math_test:testFloatMinima" => ["interp"],
	"math_test:testNextafter32" => ["interp"],
	// "math_test:testSignbit" => ["interp"],
	"math_test:testGamma" => ["interp"],
];

final structs = [
	"reflect:Value" => macro {
		var value:stdgo.StdGoTypes.AnyInterface;
		@:local
		var underlyingValue:Dynamic;
		var underlyingIndex:stdgo.StdGoTypes.GoInt = -1;
		@:local
		var underlyingKey:Dynamic = null;
		var canAddrBool:Bool = false;
		var notSetBool:Bool = false;
		0;
	},
];

final adds = [
	"math:negZero" => macro {
		return copysign(0.0, -1.0);
	},
	"os:_init" => macro {
		args = _runtime_args();
	},
];

final funcInline = [
	"math:_sin",
	"math:_cos",
	"math:_archFloor",
	"math:_archCeil",
	"math:_archTrunc",
	"math:_sqrt",
];
