final list = [
	// stdgo/compress/Bzip2
	"compress.bzip2:_mustLoadFile" => macro {
		/*b, err := os.ReadFile(f)
			if err != nil {
				panic(err)
			}
			return b */
		return new stdgo.Slice<GoByte>(0, 0).__setNumber32__();
	},
	// stdgo/errors
	"errors:_errorType" => macro stdgo.internal.reflectlite.Reflectlite.typeOf(stdgo.Go.toInterface((null : Ref<Error>))).elem(),
	// stdgo/os
	"os:readFile" => macro {
		if (!sys.FileSystem.exists(_name))
			return {_0: null, _1: stdgo.errors.Errors.new_("readFile " + _name + ": no such file or directory")};
		try {
			return {_0: sys.io.File.getBytes(_name), _1: null};
		} catch (e) {
			return {_0: null, _1: stdgo.errors.Errors.new_(e.details())};
		}
	},
	"os:openFile" => macro {
		if (!sys.FileSystem.exists(_name)) {
			sys.io.File.saveBytes(_name, haxe.io.Bytes.alloc(0));
		}
		try {
			return {_0: {_file: {_name: _name}, _input: sys.io.File.read(_name), _output: sys.io.File.write(_name)}, _1: null};
		} catch (e) {
			return {_0: null, _1: stdgo.errors.Errors.new_(e.details())};
		}
	},
	"os:truncate" => macro {
		trace("os.truncate not implemented");
		return null;
	},
	"os.File:write" => macro {
		if (_b.length == 0)
			return {_0: 0, _1: null};
		final i = @:privateAccess _f._output.writeBytes(_b.toBytes(), 0, _b.length.toBasic());
		if (i != _b.length.toBasic())
			return {_0: i, _1: stdgo.errors.Errors.new_("invalid write")};
		return {_0: i, _1: null};
	},
	"os.File:truncate" => macro {
		@:privateAccess _f._output.close();
		final bytes = _size == 0 ? haxe.io.Bytes.alloc(0) : sys.io.File.getBytes(@:privateAccess _f._file._name);
		sys.io.File.saveBytes(@:privateAccess _f._file._name, bytes.sub(0,(_size : stdgo.StdGoTypes.GoInt).toBasic()));
		@:privateAccess _f._output = sys.io.File.write(@:privateAccess _f._file._name);
		return null;
	},
	"sync.atomic.Value.load" => macro {
		return @:privateAccess _v._v;
	},
	"os.File:close" => macro {
		@:privateAccess _f._input.close();
		@:privateAccess _f._output.close();
		return null;
	},
	"os:getwd" => macro {
		try {
			return {_0: Sys.getCwd(), _1: null};
		} catch (e) {
			return {_0: null, _1: stdgo.errors.Errors.new_(e.details())};
		}
	},
	"os:_runtime_args" => macro {
		@:define("js") return new stdgo.Slice<stdgo.GoString>(0, 0).__setString__();
		@:define("sys") {
			final args:Array<stdgo.GoString> = Sys.args().map(arg -> (arg : stdgo.GoString));
			args.unshift(Sys.getCwd());
			return new stdgo.Slice<stdgo.GoString>(args.length, args.length, ...args).__setString__();
		};
	},
	// stdgo/strings
	"strings.Builder:_copyCheck" => macro _b._addr = _b,
	// stdgo/time
	"time:sleep" => macro {
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
		if ((t._pp : stdgo.StdGoTypes.GoUIntptr) != (0 : stdgo.StdGoTypes.GoUIntptr)) {
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
		final d = (diff : stdgo.StdGoTypes.GoInt).toBasic() + 1;
		final timer = new haxe.Timer(d);
		timer.run = () -> {
			timer.stop();
			t._status = 0;
			if (t._period != (0 : stdgo.StdGoTypes.GoInt64)) {
				t._when += t._period;
				_startTimer(t);
			}
			stdgo.Go.routine(() -> t._f(t._arg, 0));
		};
		t._pp = (timer : stdgo.StdGoTypes.GoUIntptr);
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
		final x = ((Sys.time() * 1000000 * 1000) - Date.now().getTimezoneOffset() * 60000000000 : stdgo.StdGoTypes.GoInt64);
		return x;
	},
	"time:_now" => macro {
		final n = _runtimeNano();
		return {_0: n / 1000000000, _1: n % 1000000000, _2: n};
	},
	"time:_initLocal" => macro {
		_localLoc._name = ("Local" : stdgo.GoString);
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
		_localLoc._zone = new stdgo.Slice<T_zone>(1, 1, ...[{_name: (name : stdgo.GoString), _offset: offset, _isDST: false}]);
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
		return float64bits(_x) & ((1 : stdgo.StdGoTypes.GoUInt64) << (63 : stdgo.StdGoTypes.GoUInt64)) != (0 : stdgo.StdGoTypes.GoUInt64);
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
	"os:stdin" => macro new File(Sys.stdin(), null),
	"os:stdout" => macro new File(null, Sys.stdout()),
	"os:stderr" => macro new File(null, Sys.stderr()),
	"os.File:writeString" => macro return _f.write(_s),
	"os:_fastrand" => macro return Std.random(1) > 0 ? -Std.random(2147483647) - 1 : Std.random(2147483647),
	"math.rand:_fastrand64" => macro return haxe.Int64.make(Std.random(1) > 0 ? -Std.random(2147483647) - 1 : Std.random(2147483647),
		Std.random(1) > 0 ? -Std.random(2147483647) - 1 : Std.random(2147483647)),
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
	// :)
	"runtime:compiler" => macro "go2hx",
	"runtime:gomaxprocs" => macro return 1,
	// stdgo/reflect
	"reflect:typeOf" => macro {
		// // set internal Type
		if (_i == null)
			return new stdgo.internal.reflect.Reflect._Type_asInterface(stdgo.Go.pointer(new stdgo.internal.reflect.Reflect._Type(basic(unsafepointer_kind))),
				new stdgo.internal.reflect.Reflect._Type(basic(unsafepointer_kind)));
		// set internal Type
		return new stdgo.internal.reflect.Reflect._Type_asInterface(stdgo.Go.pointer(_i.type), _i.type);
	},
	"reflect:valueOf" => macro {
		return new Value(_i);
	},
	"reflect:makeSlice" => macro {
		// (_typ:Type, _len:GoInt, _cap:GoInt)
		final value = stdgo.internal.reflect.Reflect.defaultValue(_typ);
		final slice = new stdgo.Slice(_len, _cap.toBasic(), ...[for (i in 0..._len.toBasic()) value]);
		final t = @:privateAccess (cast _typ : stdgo.internal.reflect.Reflect._Type_asInterface).__type__;
		return new Value(new stdgo.StdGoTypes.AnyInterface(slice, t));
	},
	"reflect:deepEqual" => macro {
		// _x = stdgo.internal.reflect.Reflect.namedUnderlying(_x);
		// _y = stdgo.internal.reflect.Reflect.namedUnderlying(_y);
		if (new Value(_x).isNil() || new Value(_y).isNil()) {
			return (_x : AnyInterface) == (_y : AnyInterface);
		};
		var v1 = valueOf(_x);
		var v2 = valueOf(_y);
		return stdgo.internal.reflect.Reflect.deepValueEqual(v1, v2, null, 0);
	},
	"reflect.Value:canInterface" => macro {
		return true;
	},
	"reflect.Value:mapRange" => macro {
		return new MapIter(@:privateAccess _v.value.value, @:privateAccess _v.value.type);
	},
	"reflect.MapIter:key" => macro {
		@:privateAccess if (_iter.keys == null) {
			@:privateAccess _iter.keys = [for (key in _iter.map.keys()) key];
			@:privateAccess _iter.values = [for (key in _iter.map.iterator()) key];
		}
		final gt = stdgo.internal.reflect.Reflect.getUnderlying(@:privateAccess _iter.t._common());
		final key = switch gt {
				case mapType(_.get() => var keyType, _):
					new stdgo.internal.reflect.Reflect._Type(keyType);
				default:
					throw "invalid mapType: " + gt;
			}
		return new Value(new stdgo.StdGoTypes.AnyInterface(@:privateAccess _iter.keys[_iter.index], key));
	},
	"reflect.MapIter:value" => macro {
		@:privateAccess if (_iter.keys == null) {
			@:privateAccess _iter.keys = [for (key in _iter.map.keys()) key];
			@:privateAccess _iter.values = [for (key in _iter.map.iterator()) key];
		};
		final gt = stdgo.internal.reflect.Reflect.getUnderlying(@:privateAccess _iter.t._common());
		final value = switch gt {
				case mapType(_, _.get() => valueType):
					new stdgo.internal.reflect.Reflect._Type(valueType);
				default:
					throw "invalid mapType: " + gt;
			}
		return new Value(new stdgo.StdGoTypes.AnyInterface(@:privateAccess _iter.values[_iter.index], value));
	},
	"reflect.MapIter:next" => macro {
		if (@:privateAccess _iter.map == null)
			return false;
		@:privateAccess if (_iter.keys == null) {
			@:privateAccess _iter.keys = [for (key in _iter.map.keys()) key];
			@:privateAccess _iter.values = [for (key in _iter.map.iterator()) key];
		} else {
			@:privateAccess _iter.index++;
		}
		return @:privateAccess _iter.index < @:privateAccess _iter.keys.length;
	},
	"reflect.MapIter:reset" => macro {
		@:privateAccess _iter.index = 0;
		@:privateAccess _iter.map = _v.value.value;
		@:privateAccess _iter.keys = null;
		@:privateAccess _iter.values = null;
	},
	"reflect.Value:canAddr" => macro {
		return @:privateAccess _v.canAddrBool;
	},
	"reflect:zero" => macro {
		return new Value(new stdgo.StdGoTypes.AnyInterface(stdgo.internal.reflect.Reflect.defaultValue(_typ), _typ.__underlying__().value));
	},
	"reflect.Value:type" => macro {
		if (@:privateAccess _v.value == null) {
			var t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.invalidType);
			return @:privateAccess new stdgo.internal.reflect.Reflect._Type_asInterface(stdgo.Go.pointer(t), t);
		}
		return @:privateAccess new stdgo.internal.reflect.Reflect._Type_asInterface(stdgo.Go.pointer(_v.value.type), _v.value.type);
	},
	"reflect.Value:setString" => macro {
		@:privateAccess _v.value.value = _x;
		stdgo.internal.reflect.Reflect._set(_v);
	},
	"reflect.Value:setBool" => macro {
		@:privateAccess _v.value.value = _x;
		stdgo.internal.reflect.Reflect._set(_v);
	},
	"reflect.Value:setUint" => macro {
		final k = _v.kind();
		@:privateAccess _v.value.value = switch k {
				case stdgo.internal.reflect.Reflect.KindType.int8:
					(_x : stdgo.StdGoTypes.GoInt8);
				case stdgo.internal.reflect.Reflect.KindType.int16:
					(_x : stdgo.StdGoTypes.GoInt16);
				case stdgo.internal.reflect.Reflect.KindType.int32:
					(_x : stdgo.StdGoTypes.GoInt32);
				case stdgo.internal.reflect.Reflect.KindType.int64:
					(_x : stdgo.StdGoTypes.GoInt64);
				case stdgo.internal.reflect.Reflect.KindType.int:
					(_x : stdgo.StdGoTypes.GoInt);
				case stdgo.internal.reflect.Reflect.KindType.uint8:
					(_x : stdgo.StdGoTypes.GoUInt8);
				case stdgo.internal.reflect.Reflect.KindType.uint16:
					(_x : stdgo.StdGoTypes.GoUInt16);
				case stdgo.internal.reflect.Reflect.KindType.uint32:
					(_x : stdgo.StdGoTypes.GoUInt32);
				case stdgo.internal.reflect.Reflect.KindType.uint64:
					(_x : stdgo.StdGoTypes.GoUInt64);
				case stdgo.internal.reflect.Reflect.KindType.uint:
					(_x : stdgo.StdGoTypes.GoUInt);
				case stdgo.internal.reflect.Reflect.KindType.uintptr:
					(_x : stdgo.StdGoTypes.GoUIntptr);
				default:
					throw "unknown setUInt kind: " + k.string();
			};
		stdgo.internal.reflect.Reflect._set(_v);
	},
	"reflect.Value:setComplex" => macro {
		final k = _v.kind();
		@:privateAccess _v.value.value = switch k {
				case stdgo.internal.reflect.Reflect.KindType.complex64:
					(_x : stdgo.StdGoTypes.GoComplex64);
				case stdgo.internal.reflect.Reflect.KindType.complex128:
					(_x : stdgo.StdGoTypes.GoComplex128);
				default:
					throw "unknown setFloat kind: " + k.string();
			}
		stdgo.internal.reflect.Reflect._set(_v);
	},
	"reflect.Value:setFloat" => macro {
		final k = _v.kind();
		@:privateAccess _v.value.value = switch k {
				case stdgo.internal.reflect.Reflect.KindType.float32:
					(_x : stdgo.StdGoTypes.GoFloat32);
				case stdgo.internal.reflect.Reflect.KindType.float64:
					(_x : stdgo.StdGoTypes.GoFloat64);
				default:
					throw "unknown setFloat kind: " + k.string();
			}
		stdgo.internal.reflect.Reflect._set(_v);
	},
	"reflect.Value:setInt" => macro {
		final k = _v.kind();
		@:privateAccess _v.value.value = switch k {
				case stdgo.internal.reflect.Reflect.KindType.int8:
					(_x : stdgo.StdGoTypes.GoInt8);
				case stdgo.internal.reflect.Reflect.KindType.int16:
					(_x : stdgo.StdGoTypes.GoInt16);
				case stdgo.internal.reflect.Reflect.KindType.int32:
					(_x : stdgo.StdGoTypes.GoInt32);
				case stdgo.internal.reflect.Reflect.KindType.int64:
					(_x : stdgo.StdGoTypes.GoInt64);
				case stdgo.internal.reflect.Reflect.KindType.int:
					(_x : stdgo.StdGoTypes.GoInt);
				case stdgo.internal.reflect.Reflect.KindType.uint8:
					(_x : stdgo.StdGoTypes.GoUInt8);
				case stdgo.internal.reflect.Reflect.KindType.uint16:
					(_x : stdgo.StdGoTypes.GoUInt16);
				case stdgo.internal.reflect.Reflect.KindType.uint32:
					(_x : stdgo.StdGoTypes.GoUInt32);
				case stdgo.internal.reflect.Reflect.KindType.uint64:
					(_x : stdgo.StdGoTypes.GoUInt64);
				case stdgo.internal.reflect.Reflect.KindType.uint:
					(_x : stdgo.StdGoTypes.GoUInt);
				default:
					throw "unknown setInt kind: " + k.string();
			};
		stdgo.internal.reflect.Reflect._set(_v);
	},
	"reflect.Value:kind" => macro return _v.type().kind(),
	"reflect.Value:isValid" => macro {
		if (@:privateAccess _v.value == null)
			return false;
		if (@:privateAccess _v.value.type._common() != stdgo.internal.reflect.Reflect.GoType.invalidType)
			return true;
		return switch @:privateAccess _v.value.type._common() {
			case stdgo.internal.reflect.Reflect.GoType.basic(stdgo.internal.reflect.Reflect.BasicKind.untyped_nil_kind):
				false;
			default:
				true;
		};
	},
	"reflect.Value:pointer" => macro {
		if (@:privateAccess _v.value == null)
			return 0;
		var value = @:privateAccess _v.value.value;
		return value != null ? 1 : 0;
	},
	"reflect.Value:field" => macro {
		final gt = @:privateAccess stdgo.internal.reflect.Reflect.getUnderlying(_v.value.type._common());
		return switch gt {
			case structType(fields):
				final field = fields[_i.toBasic()];
				final t = @:privateAccess (cast _v.value.type.field(_i).type : stdgo.internal.reflect.Reflect._Type_asInterface).__type__;
				var fieldValue = std.Reflect.field(@:privateAccess _v.value.value, field.name);
				fieldValue = stdgo.internal.reflect.Reflect.asInterfaceValue(fieldValue, t._common());
				final valueType = new Value(new stdgo.StdGoTypes.AnyInterface(fieldValue, t));
				if (field.name.charAt(0) == "_")
					@:privateAccess valueType.notSetBool = false;
				valueType;
			default:
				throw "unsupported: " + gt;
		};
	},
	"reflect.Value:bytes" => macro {
		final _v = _v.__copy__();
		var value = @:privateAccess _v.value.value;
		var t:stdgo.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
		if (stdgo.internal.reflect.Reflect.isNamed(t)) {
			t = stdgo.internal.reflect.Reflect.getUnderlying(t);
			switch std.Type.typeof(value) {
				case TClass(c):
					final name = std.Type.getClassName(c);
					if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
				default:
					final _ = false;
			};
		};
		if (stdgo.internal.reflect.Reflect.isPointer(t)) {
			@:privateAccess _v.value.type.gt = stdgo.internal.reflect.Reflect.getElem(t);
			value = (value : stdgo.Pointer<Dynamic>).value;
			t = @:privateAccess _v.value.type._common();
		};
		switch t {
			case stdgo.internal.reflect.Reflect.GoType.arrayType(_.get() => elem, _):
				switch elem {
					case stdgo.internal.reflect.Reflect.GoType.basic(stdgo.internal.reflect.Reflect.BasicKind.uint8_kind):
						return (value : stdgo.GoArray<GoByte>).__slice__(0);
					default:
						throw new ValueError("reflect.Value.Bytes", @:privateAccess _v.kind());
				};
			case stdgo.internal.reflect.Reflect.GoType.sliceType(_.get() => elem):
				elem = stdgo.internal.reflect.Reflect.getUnderlying(elem);
				switch elem {
					case stdgo.internal.reflect.Reflect.GoType.basic(stdgo.internal.reflect.Reflect.BasicKind.uint8_kind):
						return value;
					default:
						throw new ValueError("reflect.Value.Bytes", @:privateAccess _v.kind());
				};
			default:
				throw new ValueError("reflect.Value.Bytes", @:privateAccess _v.kind());
		};
	},
	"reflect.Value:numField" => macro {
		return _v.type().numField();
	},
	"reflect.Value:slice" => macro {
		var value = @:privateAccess _v.value.value;
		var t:stdgo.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
		if (stdgo.internal.reflect.Reflect.isNamed(t)) {
			switch std.Type.typeof(value) {
				case TClass(c):
					final name = std.Type.getClassName(c);
					if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
				default:
					final _ = false;
			}
		}
		switch t {
			case stdgo.internal.reflect.Reflect.GoType.arrayType(elem, _):
				t = stdgo.internal.reflect.Reflect.GoType.sliceType(elem);
			case stdgo.internal.reflect.Reflect.GoType.named(path, methods, stdgo.internal.reflect.Reflect.GoType.arrayType(elem, _), alias, params):
				t = stdgo.internal.reflect.Reflect.GoType.named(path, methods, stdgo.internal.reflect.Reflect.GoType.sliceType(elem), alias, params);
			default:
				final _ = false;
		};
		final k = _v.kind();
		value = switch k {
				case stdgo.internal.reflect.Reflect.KindType.slice:
					(value : stdgo.Slice<Dynamic>).__slice__(_i, _j);
				case stdgo.internal.reflect.Reflect.KindType.array:
					(value : stdgo.GoArray<Dynamic>).__slice__(_i, _j);
				default:
					throw new ValueError("reflect.Value.Slice", k);
			};
		return new Value(new stdgo.StdGoTypes.AnyInterface(value, new stdgo.internal.reflect.Reflect._Type(t)));
	},
	"reflect.Value:len" => macro {
		final _v = _v.__copy__();
		var value = @:privateAccess _v.value.value;
		final t:stdgo.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
		if (stdgo.internal.reflect.Reflect.isNamed(t)) {
			switch std.Type.typeof(value) {
				case TClass(c):
					final name = std.Type.getClassName(c);
					if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
				default:
					final _ = false;
			}
		}
		if (stdgo.internal.reflect.Reflect.isPointer(t)) {
			@:privateAccess _v.value.type.gt = stdgo.internal.reflect.Reflect.getElem(t);
			value = (value : stdgo.Pointer<Dynamic>).value;
		};
		final k = _v.kind();
		/*if (std.Type.typeof(value) == TUnknown) {
            return 0;
        }*/
		return switch k {
			case stdgo.internal.reflect.Reflect.KindType.array:
				(value : stdgo.GoArray<Dynamic>).length;
			case stdgo.internal.reflect.Reflect.KindType.chan:
				(value : stdgo.Chan<Dynamic>).length;
			case stdgo.internal.reflect.Reflect.KindType.slice:
				(value : stdgo.Slice<Dynamic>).length;
			case stdgo.internal.reflect.Reflect.KindType.map:
				Lambda.count((value : haxe.Constraints.IMap<Dynamic, Dynamic>));
			case stdgo.internal.reflect.Reflect.KindType.string:
				(value : Dynamic).length;
			default:
				trace(k.string());
				throw "not supported";
		};
	},
	"reflect.Value:canUint" => macro {
		return switch _v.kind() {
			case stdgo.internal.reflect.Reflect.KindType.uint, stdgo.internal.reflect.Reflect.KindType.uint8, stdgo.internal.reflect.Reflect.KindType.uint16,
				stdgo.internal.reflect.Reflect.KindType.uint32, stdgo.internal.reflect.Reflect.KindType.uint64, stdgo.internal.reflect.Reflect.KindType.uintptr:
				true;
			default:
				false;
		}
	},
	"reflect.Value:bool_" => macro {
		var value = @:privateAccess _v.value.value;
		final t:stdgo.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
		if (stdgo.internal.reflect.Reflect.isNamed(t)) {
			switch std.Type.typeof(value) {
				case TClass(c):
					final name = std.Type.getClassName(c);
					if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
				default:
					final _ = false;
			}
		}
		if (stdgo.internal.reflect.Reflect.isPointer(t)) {
			@:privateAccess _v.value.type.gt = stdgo.internal.reflect.Reflect.getElem(t);
			value = (value : stdgo.Pointer<Dynamic>).value;
		};
		final value:Bool = switch _v.kind() {
				case stdgo.internal.reflect.Reflect.KindType.bool:
					value;
				default:
					throw new ValueError("reflect.Value.Bool", _v.kind());
			}
		return value;
	},
	"reflect.Value:complex" => macro {
		var value = @:privateAccess _v.value.value;
		final t:stdgo.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
		if (stdgo.internal.reflect.Reflect.isNamed(t)) {
			switch std.Type.typeof(value) {
				case TClass(c):
					final name = std.Type.getClassName(c);
					if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
				default:
					final _ = false;
			}
		}
		if (stdgo.internal.reflect.Reflect.isPointer(t)) {
			@:privateAccess _v.value.type.gt = stdgo.internal.reflect.Reflect.getElem(t);
			value = (value : stdgo.Pointer<Dynamic>).value;
		};
		final value:GoComplex128 = switch _v.kind() {
				case stdgo.internal.reflect.Reflect.KindType.complex128, stdgo.internal.reflect.Reflect.KindType.complex64:
					value;
				default:
					throw new ValueError("Value.Complex", _v.kind());
			}
		return value;
	},
	"reflect.Value:uint" => macro {
		var value = @:privateAccess _v.value.value;
		final t:stdgo.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
		if (stdgo.internal.reflect.Reflect.isNamed(t)) {
			switch std.Type.typeof(value) {
				case TClass(c):
					final name = std.Type.getClassName(c);
					if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
				default:
					final _ = false;
			}
		}
		if (stdgo.internal.reflect.Reflect.isPointer(t)) {
			@:privateAccess _v.value.type.gt = stdgo.internal.reflect.Reflect.getElem(t);
			value = (value : stdgo.Pointer<Dynamic>).value;
		};
		final value:stdgo.StdGoTypes.GoUInt64 = switch _v.kind() {
				case stdgo.internal.reflect.Reflect.KindType.uint:
					(value : stdgo.StdGoTypes.GoUInt8);
				case stdgo.internal.reflect.Reflect.KindType.uint8:
					(value : stdgo.StdGoTypes.GoUInt8);
				case stdgo.internal.reflect.Reflect.KindType.uint16:
					(value : stdgo.StdGoTypes.GoUInt16);
				case stdgo.internal.reflect.Reflect.KindType.uint32:
					(value : stdgo.StdGoTypes.GoUInt32);
				case stdgo.internal.reflect.Reflect.KindType.uint64:
					(value : stdgo.StdGoTypes.GoUInt64);
				case stdgo.internal.reflect.Reflect.KindType.uintptr:
					(value : stdgo.StdGoTypes.GoUIntptr);
				default:
					throw new ValueError("reflect.Value.Uint", _v.kind());
			}
		return value;
	},
	"reflect.Value:float_" => macro {
		var value = @:privateAccess _v.value.value;
		final t:stdgo.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
		if (stdgo.internal.reflect.Reflect.isNamed(t)) {
			switch std.Type.typeof(value) {
				case TClass(c):
					final name = std.Type.getClassName(c);
					if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
				default:
					final _ = false;
			}
		}
		if (stdgo.internal.reflect.Reflect.isPointer(t)) {
			@:privateAccess _v.value.type.gt = stdgo.internal.reflect.Reflect.getElem(t);
			value = (value : stdgo.Pointer<Dynamic>).value;
		};
		final value:stdgo.StdGoTypes.GoFloat64 = switch _v.kind() {
				case stdgo.internal.reflect.Reflect.KindType.float64:
					(value : stdgo.StdGoTypes.GoFloat64);
				case stdgo.internal.reflect.Reflect.KindType.float32:
					(value : stdgo.StdGoTypes.GoFloat32);
				default:
					throw new ValueError("reflect.Value.Float", _v.kind());
			}
		return value;
	},
	"reflect.Value:int_" => macro {
		var value = @:privateAccess _v.value.value;
		final t:stdgo.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
		if (stdgo.internal.reflect.Reflect.isNamed(t)) {
			switch std.Type.typeof(value) {
				case TClass(c):
					final name = std.Type.getClassName(c);
					if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
				default:
					final _ = false;
			}
		}
		if (stdgo.internal.reflect.Reflect.isPointer(t)) {
			@:privateAccess _v.value.type.gt = stdgo.internal.reflect.Reflect.getElem(t);
			value = (value : stdgo.Pointer<Dynamic>).value;
		};
		final value:stdgo.StdGoTypes.GoInt64 = switch _v.kind() {
				case stdgo.internal.reflect.Reflect.KindType.int:
					(value : stdgo.StdGoTypes.GoInt8);
				case stdgo.internal.reflect.Reflect.KindType.int8:
					(value : stdgo.StdGoTypes.GoInt8);
				case stdgo.internal.reflect.Reflect.KindType.int16:
					(value : stdgo.StdGoTypes.GoInt16);
				case stdgo.internal.reflect.Reflect.KindType.int32:
					(value : stdgo.StdGoTypes.GoInt32);
				case stdgo.internal.reflect.Reflect.KindType.int64:
					(value : stdgo.StdGoTypes.GoInt64);
				default:
					throw new ValueError("reflect.Value.Int", _v.kind());
			}
		return value;
	},
	"reflect.Value:index" => macro {
		final _v = _v.__copy__();
		var value = @:privateAccess _v.value.value;
		final t:stdgo.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
		if (stdgo.internal.reflect.Reflect.isNamed(t)) {
			switch std.Type.typeof(value) {
				case TClass(c):
					final name = std.Type.getClassName(c);
					if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
				default:
					final _ = false;
			}
		}
		if (stdgo.internal.reflect.Reflect.isPointer(t)) {
			@:privateAccess _v.value.type.gt = stdgo.internal.reflect.Reflect.getElem(t);
			value = (value : stdgo.Pointer<Dynamic>).value;
		};
		final gt = stdgo.internal.reflect.Reflect.getUnderlying(@:privateAccess _v.value.type._common());
		return switch gt {
			case stdgo.internal.reflect.Reflect.GoType.arrayType(_.get() => elem, _):
				final t = @:privateAccess new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.unroll(gt, elem));
				final valueInterface = stdgo.internal.reflect.Reflect.asInterfaceValue((value : stdgo.GoArray<Dynamic>)[_i], t._common());
				new Value(new stdgo.StdGoTypes.AnyInterface(valueInterface, t), value, _i);
			case stdgo.internal.reflect.Reflect.GoType.sliceType(_.get() => elem):
				final t = @:privateAccess new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.unroll(gt, elem));
				final valueInterface = stdgo.internal.reflect.Reflect.asInterfaceValue((value : Slice<Dynamic>)[_i], t._common());
				final value = new Value(new stdgo.StdGoTypes.AnyInterface(valueInterface, t), value, _i);
				@:privateAccess value.canAddrBool = true;
				value;
			case stdgo.internal.reflect.Reflect.GoType.basic(kind):
				switch kind {
					case string_kind:
						var value = value;
						if ((value is String))
							value = (value : stdgo.GoString);
						new Value(new stdgo.StdGoTypes.AnyInterface((value : stdgo.GoString)[_i], new stdgo.internal.reflect.Reflect._Type(basic(uint8_kind))));
					default:
						throw "unsupported basic kind";
				};
			default:
				throw "not supported";
		};
	},
	"reflect:new_" => macro {
		var value = stdgo.internal.reflect.Reflect.defaultValue(_typ);
		var ptr = new Pointer(() -> value, x -> value = x);
		return new Value(new stdgo.StdGoTypes.AnyInterface(ptr, new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.pointerType({
			get: () -> @:privateAccess (_typ : Dynamic)._common()
		}))));
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
						final _ = false;
				};
			case stdgo.internal.reflect.Reflect.KindType.int8:
				_v.setInt((value : stdgo.StdGoTypes.GoInt8));
			case stdgo.internal.reflect.Reflect.KindType.int16:
				_v.setInt((value : stdgo.StdGoTypes.GoInt16));
			case stdgo.internal.reflect.Reflect.KindType.int32:
				_v.setInt((value : stdgo.StdGoTypes.GoInt32));
			case stdgo.internal.reflect.Reflect.KindType.int64:
				_v.setInt((value : stdgo.StdGoTypes.GoInt64));
			case stdgo.internal.reflect.Reflect.KindType.int:
				_v.setInt((value : stdgo.StdGoTypes.GoInt));
			case stdgo.internal.reflect.Reflect.KindType.uint:
				_v.setInt((value : stdgo.StdGoTypes.GoUInt8));
			case stdgo.internal.reflect.Reflect.KindType.uint16:
				_v.setInt((value : stdgo.StdGoTypes.GoUInt16));
			case stdgo.internal.reflect.Reflect.KindType.uint32:
				_v.setInt((value : stdgo.StdGoTypes.GoUInt32));
			case stdgo.internal.reflect.Reflect.KindType.uint64:
				_v.setInt((value : stdgo.StdGoTypes.GoUInt64));
			case stdgo.internal.reflect.Reflect.KindType.float32:
				_v.setFloat((value : stdgo.StdGoTypes.GoFloat32));
			case stdgo.internal.reflect.Reflect.KindType.float64:
				_v.setFloat((value : stdgo.StdGoTypes.GoFloat64));
			case stdgo.internal.reflect.Reflect.KindType.string:
				_v.setString(value);
			case stdgo.internal.reflect.Reflect.KindType.slice:
				var value:Slice<Dynamic> = @:privateAccess _v.value.value;
				final x:Slice<Dynamic> = @:privateAccess _x.value.value;
				// value.__setData__(x);
				stdgo.internal.reflect.Reflect._set(_v);
			case stdgo.internal.reflect.Reflect.KindType.map:
				var value:haxe.Constraints.IMap<Dynamic, Dynamic> = @:privateAccess _v.value.value;
				final x:haxe.Constraints.IMap<Dynamic, Dynamic> = @:privateAccess _x.value.value;
				for (key => value in x) {
					value.set(key, value);
				}
				// value.__setData__(x);
				stdgo.internal.reflect.Reflect._set(_v);
			default:
				@:privateAccess _v.value = _x.value;
				stdgo.internal.reflect.Reflect._set(_v);
		}
	},
	"reflect.Value:string" => macro {
		if (@:privateAccess _v.value == null) {
			return "<invalid Value>";
		}
		var value = @:privateAccess _v.value.value;
		final t:stdgo.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
		if (stdgo.internal.reflect.Reflect.isNamed(t)) {
			switch std.Type.typeof(value) {
				case TClass(c):
					final name = std.Type.getClassName(c);
					if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
				default:
					final _ = false;
			}
		}
		if (stdgo.internal.reflect.Reflect.isPointer(t)) {
			@:privateAccess _v.value.type.gt = stdgo.internal.reflect.Reflect.getElem(t);
			value = (value : stdgo.Pointer<Dynamic>).value;
		};
		final underlyingType = stdgo.internal.reflect.Reflect.getUnderlying(t);
		switch (underlyingType) {
			case stdgo.internal.reflect.Reflect.GoType.basic(kind):
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
						switch std.Type.typeof(value) {
							case TClass(c):
								final name = std.Type.getClassName(c);
								if (StringTools.endsWith(name, "_asInterface")) {
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
			case stdgo.internal.reflect.Reflect.KindType.func:
				value == null;
			case stdgo.internal.reflect.Reflect.KindType.chan:
				value == null;
			case stdgo.internal.reflect.Reflect.KindType.map:
				value == null;
			case stdgo.internal.reflect.Reflect.KindType.slice:
				value == null;
			case stdgo.internal.reflect.Reflect.KindType.interface_:
				value == null;
			case stdgo.internal.reflect.Reflect.KindType.array:
				false;
			case stdgo.internal.reflect.Reflect.KindType.struct:
				false;
			case stdgo.internal.reflect.Reflect.KindType.invalid:
				false;
			case stdgo.internal.reflect.Reflect.KindType.unsafePointer, stdgo.internal.reflect.Reflect.KindType.uintptr:
				value == null;
			case stdgo.internal.reflect.Reflect.KindType.bool, stdgo.internal.reflect.Reflect.KindType.int, stdgo.internal.reflect.Reflect.KindType.int32,
				stdgo.internal.reflect.Reflect.KindType.int64, stdgo.internal.reflect.Reflect.KindType.float32,
				stdgo.internal.reflect.Reflect.KindType.float64, stdgo.internal.reflect.Reflect.KindType.int8, stdgo.internal.reflect.Reflect.KindType.int16,
				stdgo.internal.reflect.Reflect.KindType.uint, stdgo.internal.reflect.Reflect.KindType.uint8, stdgo.internal.reflect.Reflect.KindType.uint16,
				stdgo.internal.reflect.Reflect.KindType.uint32, stdgo.internal.reflect.Reflect.KindType.uint64,
				stdgo.internal.reflect.Reflect.KindType.string, stdgo.internal.reflect.Reflect.KindType.complex64,
				stdgo.internal.reflect.Reflect.KindType.complex128:
				false;
			default:
				throw "nil check not supported kind: " + _v.kind().string();
		}
	},
	"reflect.Value:elem" => macro {
		var value = @:privateAccess _v.value.value;
		final t:stdgo.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
		if (stdgo.internal.reflect.Reflect.isNamed(t)
			&& !stdgo.internal.reflect.Reflect.isRef(t)
			&& !stdgo.internal.reflect.Reflect.isPointer(t)) {
			switch std.Type.typeof(value) {
				case TClass(c):
					final name = std.Type.getClassName(c);
					if (StringTools.endsWith(name, "_asInterface")) {
						@:privateAccess _v.value.type.gt = stdgo.internal.reflect.Reflect.getElem(t);
						value = (value : Dynamic).__underlying__().value;
					}
				default:
					final _ = false;
			};
		};
		var k = _v.kind();
		switch k {
			case stdgo.internal.reflect.Reflect.KindType.pointer:
				final t = stdgo.internal.reflect.Reflect.getUnderlying(t);
				switch t {
					case stdgo.internal.reflect.Reflect.GoType.refType(_.get() => elem):
						final value = new Value(new stdgo.StdGoTypes.AnyInterface(value, new stdgo.internal.reflect.Reflect._Type(elem)), null);
						@:privateAccess value.canAddrBool = true;
						return value;
					case stdgo.internal.reflect.Reflect.GoType.pointerType(_.get() => elem):
						if (value == null) {
							final value = new Value(new stdgo.StdGoTypes.AnyInterface(null, new stdgo.internal.reflect.Reflect._Type(elem)), value);
							@:privateAccess value.canAddrBool = true;
							return value;
						};
						final ptrValue = (value : stdgo.Pointer<Dynamic>).value;
						final value = new Value(new stdgo.StdGoTypes.AnyInterface(ptrValue, new stdgo.internal.reflect.Reflect._Type(elem)), value);
						@:privateAccess value.canAddrBool = true;
						return value;
					default:
						final _ = false;
				};
			case stdgo.internal.reflect.Reflect.KindType.interface_:
				if (value == null)
					return new Value();
				return new Value(value, @:privateAccess _v.value.type);
		};
		throw new ValueError("reflect.Value.Elem", k);
	},
	"reflect.Kind:string" => macro {
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
	},
	// stdgo/atomic/sync
	"sync.atomic:storeUint32" => macro {
		_addr.value = _val;
	},
	"sync.atomic:storeUint64" => macro {
		_addr.value = _val;
	},
	"sync.atomic.Bool_:store" => macro storeUint32(stdgo.Go.pointer(_x._v), _val ? 1 : 0),
	"sync.atomic.Bool_:load" => macro return @:privateAccess _x._v == 1,
	// stdgo/sync
	"sync.Pool:get" => macro {
		var obj = @:define("!js", @:privateAccess _p.pool.pop()) @:privateAccess _p.pool.pop(false);
		if (obj == null && @:privateAccess _p.new_ != null)
			obj = @:privateAccess _p.new_();
		return obj;
	},
	"sync.Pool:put" => macro {
		@:privateAccess _p.pool.push(_x);
	},
	"sync.Mutex:lock" => macro @:privateAccess @:define("!js") _m.mutex.acquire(),
	"sync.Mutex:tryLock" => macro @:privateAccess return @:define("!js", true) _m.mutex.tryAcquire(),
	"sync.Mutex:unlock" => macro @:privateAccess @:define("!js") _m.mutex.release(),
	"sync.WaitGroup:add" => macro {
		@:privateAccess _wg.counter += _delta;
		if (@:privateAccess _wg.counter < 0)
			throw "sync: negative WaitGroup counter";
	},
	"sync.WaitGroup:done" => macro {
		@:privateAccess _wg.counter--;
		if (@:privateAccess _wg.counter <= 0) {
			@:privateAccess @:define("!js") _wg.lock.release();
		}
	},
	"sync.WaitGroup:wait_" => macro @:privateAccess @:define("!js") _wg.lock.wait(),
	"sync.Once:do_" => macro {
		if (@:privateAccess _o._done == 1)
			return;
		@:privateAccess _o._done = 1;
		_f();
	},
	// stdgo/math/rand
	"math.rand:intn" => macro return Std.random(_n),
	// stdgo/internal/godebug
	"internal.godebug:new_" => macro return new Setting(),
	"internal.godebug.Setting:value" => macro return "",
	// stdgo/internal/bytealg
	"internal.bytealg:indexByteString" => macro {
		for (i in 0..._s.length.toBasic()) {
			if (_s[i] == _c)
				return i;
		}
		return -1;
	},
	"internal.bytealg:indexByte" => macro {
		for (i in 0..._b.length.toBasic()) {
			if (_b[i] == _c)
				return i;
		}
		return -1;
	},
	"internal.bytealg:compare" => macro {
		for (i in 0..._a.length.toBasic()) {
			if (i >= _b.length) {
				return 1;
			}
			if (_a[i] < _b[i]) {
				return -1;
			}
			if (_a[i] > _b[i]) {
				return 1;
			}
		}
		if (_a.length < _b.length) {
			return -1;
		}
		return 0;
	},
	"strings.Builder:string" => macro {
		return ((stdgo.Go.toInterface((_b._buf : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>>)) : stdgo.unsafe.Unsafe.UnsafePointer)
			.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({
			get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)
		})) : stdgo.Pointer<stdgo.GoString>).value;
		// return (_b._buf : Slice<GoUInt8>);
	},
	"strings:clone" => macro return _s,
];

final skipTargets = [
	"fmt_test:testPanics" => [], // keep Haxe specific throws, no need to replicate
	"bytes_test:testSplit" => [], // Segmentation fault (core dumped)
	"fmt_test:testFinderNext" => [], // Segmentation fault (core dumped)
	"strings_test:testGenericTrieBuilding" => [], // Segmentation fault (core dumped)
	"math_test:testFloatMinima" => ["interp"],
	"math_test:testNextafter32" => ["interp"],
	// "math_test:testSignbit" => ["interp"],
	"math_test:testGamma" => ["interp"],
	"strconv_test:testAtofRandom" => [], // imprecise float
	"strconv_test:testFp" => [], // uses os read
	"strconv_test:testFtoaPowersOfTwo" => [], // imprecise float
	"strings_test:testBuilderGrow" => [], // checks runtime allocations num
	"strings_test:testBuilderAllocs" => [], // checks runtime allocations num
	"strings_test:testClone" => [], // uses unsafe pointer conversions
	"strings_test:testBuilderCopyPanic" => [], // TODO: implement - uses complex functionality of recover in a go routine
	"strings_test:testCompareStrings" => [], // uses unsafe pointer conversions
	"strings_test:testReaderLenSize" => [], // TODO: implement - io
	"strings_test:testReplacer" => [], // TODO: implement - uses bytes.Buffer
	"strings_test:testPickAlgorithm" => [], // TODO: implement - uses fmt.Sprintf
	"strings_test:testMap" => [], // uses unsafe pointer conversions
	"bytes_test:testGrow" => [], // checks runtime allocations num
	"bytes_test:testReaderLenSize" => [], // TODO: implement - sync
	"bytes_test:testCompareBytes" => [], // very slow but passes
];

final structs = [
	"syscall:IPv6Mreq" => macro {
		@:local
		var Multiaddr:GoUInt8;
		@:local
		var Interface:GoUInt32;
	},
	"os:File" => macro {
		@:local
		var _input:haxe.io.Input = null;
		@:local
		var _output:haxe.io.Output = null;
		// FileInput + FileOutput: seek, tell
		// FileInput only: eof
	},
	"reflect:MapIter" => macro {
		@:local
		var map:haxe.Constraints.IMap<Dynamic, Dynamic>;
		@:local
		var keys:Array<Dynamic>;
		@:local
		var values:Array<Dynamic>;
		@:local
		var t:stdgo.internal.reflect.Reflect._Type;
		@:local
		var index:Int = 0;
	},
	"reflect:Value" => macro {
		var value:stdgo.StdGoTypes.AnyInterface;
		@:local
		var underlyingValue:Dynamic;
		var underlyingIndex:stdgo.StdGoTypes.GoInt = -1;
		@:local
		var underlyingKey:Dynamic = null;
		var canAddrBool:Bool = false;
		var notSetBool:Bool = false;
		function string():stdgo.GoString {
			var _v = this;
			if (@:privateAccess _v.value == null) {
				return "<invalid Value>";
			}
			var value = @:privateAccess _v.value.value;
			final t:stdgo.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
			if (stdgo.internal.reflect.Reflect.isNamed(t)) {
				switch std.Type.typeof(value) {
					case TClass(c):
						final name = std.Type.getClassName(c);
						if (StringTools.endsWith(name, "_asInterface"))
							value = (value : Dynamic).__underlying__().value;
					default:
						final _ = false;
				}
			}
			if (stdgo.internal.reflect.Reflect.isPointer(t)) {
				@:privateAccess _v.value.type.gt = stdgo.internal.reflect.Reflect.getElem(t);
				value = (value : stdgo.Pointer<Dynamic>).value;
			};
			final underlyingType = stdgo.internal.reflect.Reflect.getUnderlying(t);
			switch (underlyingType) {
				case stdgo.internal.reflect.Reflect.GoType.basic(kind):
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
	},
	"sync:WaitGroup" => macro {
		@:local
		var lock = @:define("!js") new sys.thread.Lock();
		var counter:GoUInt = 0;
	},
	"sync:Mutex" => macro {
		@:local
		var mutex = @:define("!js") new sys.thread.Mutex();
	},
	"sync:RWMutex" => macro {
		@:local
		var mutex = @:define("!js") new sys.thread.Mutex();
	},
	"sync:Pool" => macro {
		@:local
		var pool = @:define("!js", new Array<AnyInterface>()) new sys.thread.Deque<AnyInterface>();
	},
	"reflect:ValueError" => macro {
		function toString():String {
			return "" + method;
		};
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
