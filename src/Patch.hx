import haxe.macro.Expr.TypePath;


final splitDepsBool = true;
final newValue:TypePath = splitDepsBool ? {pack: "stdgo._internal.reflect.Reflect_Value".split("."), name: "Value"} : {pack: [], name: "Value"};
final newValueError:TypePath = splitDepsBool ? {pack: "stdgo._internal.reflect.Reflect_ValueError".split("."), name: "ValueError"} : {pack: [], name: "ValueError"};

final list = [
	// stdgo/compress/Bzip2
	"compress.bzip2:_mustLoadFile" => macro {
		/*b, err := os.ReadFile(f)
			if err != nil {
				panic(err)
			}
			return b */
		return new stdgo.Slice<stdgo.GoByte>(0, 0).__setNumber32__();
	},
	// internal/Reflectlite
	"internal.reflectlite:typeOf" => macro return stdgo._internal.reflect.Reflect_typeOf.typeOf(_i),
	"internal.reflectlite:valueOf" => macro return stdgo._internal.reflect.Reflect_valueOf.valueOf(_i),
	"internal.reflectlite:swapper" => macro {
			var _v:stdgo._internal.reflect.Reflect_Value.Value = (stdgo._internal.reflect.Reflect_valueOf.valueOf(Go.toInterface(_slice)) == null ? null : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_slice))
			.__copy__());
		var _tmp:stdgo._internal.reflect.Reflect_Value.Value = (stdgo._internal.reflect.Reflect_new_.new_(_v.type().elem())
			.elem() == null ? null : stdgo._internal.reflect.Reflect_new_.new_(_v.type().elem())
			.elem()
			.__copy__());
		return function(_i:stdgo.GoInt, _j:stdgo.GoInt):Void {
			var _a:stdgo._internal.reflect.Reflect_Value.Value = (_v.index(_i) == null ? null : _v.index(_i).__copy__()),
				_b:stdgo._internal.reflect.Reflect_Value.Value = (_v.index(_j) == null ? null : _v.index(_j).__copy__());
			_tmp.set((_a == null ? null : _a.__copy__()));
			_a.set((_b == null ? null : _b.__copy__()));
			_b.set((_tmp == null ? null : _tmp.__copy__()));
		};
	},
	// stdgo/errors
	"errors:_errorType" => macro stdgo._internal.internal.reflectlite.Reflectlite_typeOf.typeOf(stdgo.Go.toInterface((null : stdgo.Ref<stdgo.Error>))).elem(),
	// stdgo/os
	"os:args" => macro stdgo._internal.os.Os__runtime_args._runtime_args(),
	"os:environ_" => macro {
		final slice = new stdgo.Slice<stdgo.GoString>(0,0);
		return slice;
	},
	"os:isPathSeparator" => macro {
		@:define("js") return _c == "/";
		@:define("sys") {
			final sep = switch Sys.systemName() {
				case "Windows":
					"\\\\".code;
				default:
					"/".code;
			}
			return _c == sep;
		}
	},
	"os:writeFile" => macro {
		return @:define("(sys || hxnodejs)") {
			if (!sys.FileSystem.exists(_name)) {
				return stdgo._internal.errors.Errors_new_.new_("writeFile " + _name + ": no such file or directory");
			}else{
				try {
					sys.io.File.saveBytes(_name, _data.toBytes());
					return null;
				}catch(e) {
					return null;
				}
			}
		}
	},
	"os:readFile" => macro {
		return @:define("(sys || hxnodejs)") {
			if (!sys.FileSystem.exists(_name)) {
				return {_0: null, _1: stdgo._internal.errors.Errors_new_.new_("readFile " + _name + ": no such file or directory")};
			}else{
				try {
					return {_0: sys.io.File.getBytes(_name), _1: null};
				} catch (e) {
					{_0: null, _1: stdgo._internal.errors.Errors_new_.new_(e.details())};
				}
			}
		};
	},
	"os:openFile" => macro {
		return @:define("(sys || hxnodejs)") {
			if (!sys.FileSystem.exists(_name)) {
				sys.io.File.saveBytes(_name, haxe.io.Bytes.alloc(0));
			}
			try {
				{_0: {_file: {_name: _name}, _input: sys.io.File.read(_name), _output: sys.io.File.write(_name)}, _1: null};
			} catch (e) {
				{_0: null, _1: stdgo._internal.errors.Errors_new_.new_(e.details())};
			}
		};
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
			return {_0: i, _1: stdgo._internal.errors.Errors_new_.new_("invalid write")};
		return {_0: i, _1: null};
	},
	"os.File:truncate" => macro {
		@:define("(sys || hxnodejs)") {
			@:privateAccess _f._output.close();
			final bytes = _size == 0 ? haxe.io.Bytes.alloc(0) : sys.io.File.getBytes(@:privateAccess _f._file._name);
			sys.io.File.saveBytes(@:privateAccess _f._file._name, bytes.sub(0,(_size : stdgo.GoInt).toBasic()));
			@:privateAccess _f._output = sys.io.File.write(@:privateAccess _f._file._name);
		}
		return null;
	},
	"sync.atomic_.Value.load" => macro {
		return @:privateAccess _v._v;
	},
	"os.File:close" => macro {
		@:privateAccess _f._input.close();
		@:privateAccess _f._output.close();
		return null;
	},
	"os:getwd" => macro {
		return @:define("(sys || hxnodejs)") {
			try {
				return {_0: std.Sys.getCwd(), _1: null};
			} catch (e) {
				return {_0: null, _1: stdgo._internal.errors.Errors_new_.new_(e.details())};
			}
		};
	},
	"os:_runtime_args" => macro {
		@:define("js") return new stdgo.Slice<stdgo.GoString>(0, 0).__setString__();
		@:define("(sys || hxnodejs)") {
			final args:Array<stdgo.GoString> = std.Sys.args().map(arg -> (arg : stdgo.GoString));
			args.unshift(std.Sys.getCwd());
			return new stdgo.Slice<stdgo.GoString>(args.length, args.length, ...args).__setString__();
		};
	},
	// stdgo/strings
	"strings.Builder:_copyCheck" => macro _b._addr = _b,
	// stdgo/time
	"time:sleep" => macro {
		final seconds = _d.toFloat() / 1000000000;
		@:define("(sys || hxnodejs)") {
			var ticks = std.Math.floor(seconds * 100);
			while (--ticks > 0) {
				stdgo._internal.internal.Async.tick();
				std.Sys.sleep(0.01);
			}
		}
	},
	"time:forceUSPacificForTesting" => macro {},
	"time:_stopTimer" => macro {
		final t:Dynamic = _0;
		if ((t._pp : stdgo.GoUIntptr) != (0 : stdgo.GoUIntptr)) {
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
		var diff = (t._when - stdgo._internal.time.Time__runtimeNano._runtimeNano()) / (1000 * 1000);
		if (diff > 1 << 31 - 1)
			return;
		if (diff < 0)
			diff = 0;
		final d = (diff : stdgo.GoInt).toBasic() + 1;
		final timer = new haxe.Timer(d);
		timer.run = () -> {
			timer.stop();
			t._status = 0;
			if (t._period != (0 : stdgo.GoInt64)) {
				t._when += t._period;
				_startTimer(t);
			}
			stdgo.Go.routine(() -> t._f(t._arg, 0));
		};
		t._pp = (timer : stdgo.GoUIntptr);
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
		@:define("(sys || hxnodejs)") {
			return ((std.Sys.time() * 1000000 * 1000) - std.Date.now().getTimezoneOffset() * 60000000000 : stdgo.GoInt64);
		}
		return 0;
	},
	"time:_now" => macro {
		final n = stdgo._internal.time.Time__runtimeNano._runtimeNano();
		return {_0: n / 1000000000, _1: n % 1000000000, _2: n};
	},
	"time:_initLocal" => macro {
		stdgo._internal.time.Time__localLoc._localLoc._name = ("Local" : stdgo.GoString);
		final d = new std.Date(0, 0, 0, 0, 0, 0);
		var offset = d.getTimezoneOffset() * -1;
		offset *= 60;
		var name = "UTC";
		if (offset < 0) {
			name += "-";
			offset *= -1;
		} else {
			name += "+";
		}
		name += std.Std.string(offset / 60);
		final min = offset % 60;
		if (min != 0) {
			name += ":" + std.Std.string(min);
		}
		stdgo._internal.time.Time__localLoc._localLoc._zone = new stdgo.Slice<stdgo._internal.time.Time_T_zone.T_zone>(1, 1, ...[{_name: (name : stdgo.GoString), _offset: offset, _isDST: false}]);
	},
	// stdgo/math
	// func archHypot(p, q float64) float64
	"math:_archHypot" => macro {
		if (stdgo._internal.math.Math_isInf.isInf(_p, 0) || stdgo._internal.math.Math_isInf.isInf(_q, 0))
			return stdgo._internal.math.Math_inf.inf(1);
		if (!std.Math.isFinite(_p.toBasic()) || std.Math.isNaN(_q.toBasic()))
			return stdgo._internal.math.Math_naN.naN();
		_p = stdgo._internal.math.Math_abs.abs(_p);
		_q = stdgo._internal.math.Math_abs.abs(_q);
		if (_p < _q) {
			final temp = _p;
			_p = _q;
			_q = temp;
		}
		if (_p == 0)
			return 0;
		_q = _q / _p;
		return _p * stdgo._internal.math.Math_sqrt.sqrt(1 + _q * _q);
	},
	"math:trunc" => macro return _x > 0 ? stdgo._internal.math.Math_floor.floor(_x) : stdgo._internal.math.Math_ceil.ceil(_x),
	"math:log" => macro return std.Math.log(_x.toBasic()),
	"math:pow" => macro {
		@:define("(js || interp)") {
			if (_x == 1 && std.Math.isNaN(_y.toBasic()))
				return 1;
			if ((_x == -1 || _x == 1) && stdgo._internal.math.Math_isInf.isInf(_y, 0))
				return 1;
		};
		return std.Math.pow(_x.toBasic(), _y.toBasic());
	},
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
		return stdgo._internal.math.Math_float64bits.float64bits(_x) & ((1 : stdgo.GoUInt64) << (63 : stdgo.GoUInt64)) != (0 : stdgo.GoUInt64);
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
		if (_x == 0.0 && stdgo._internal.math.Math_signbit.signbit(_x))
			return stdgo._internal.math.Math_negZero.negZero();
		if (_x > -1.0 && _x < 0.0) {
			//-0.0
			return stdgo._internal.math.Math_negZero.negZero();
		}
		return std.Math.ceil(_x.toBasic());
	},
	"math:sqrt" => macro return stdgo._internal.math.Math__sqrt._sqrt(_x),
	"math:_sqrt" => macro return std.Math.sqrt(_x.toBasic()),
	"math:min" => macro {
		// special cases
		if (_x < 0 && !std.Math.isFinite(_x.toBasic()) || _y < 0 && !std.Math.isFinite(_y.toBasic()))
			return stdgo._internal.math.Math_inf.inf(-1);
		if (_x == 0.0 && stdgo._internal.math.Math_signbit.signbit(_x) && !stdgo._internal.math.Math_isNaN.isNaN(_y) || _y == 0.0 && stdgo._internal.math.Math_signbit.signbit(_y) && !stdgo._internal.math.Math_isNaN.isNaN(_x))
			return stdgo._internal.math.Math_negZero.negZero();
		if (stdgo._internal.math.Math_isNaN.isNaN(_x) || stdgo._internal.math.Math_isNaN.isNaN(_y))
			return stdgo._internal.math.Math_naN.naN();
		return std.Math.min(_x.toBasic(), _y.toBasic());
	},
	"math:max" => macro {
		// special cases
		if (_x > 0 && !std.Math.isFinite(_x.toBasic()) || _y > 0 && !std.Math.isFinite(_y.toBasic()))
			return stdgo._internal.math.Math_inf.inf(1);
		if (_x == 0.0 && !stdgo._internal.math.Math_signbit.signbit(_x) && !stdgo._internal.math.Math_isNaN.isNaN(_y) || _y == 0.0 && !stdgo._internal.math.Math_signbit.signbit(_y) && !stdgo._internal.math.Math_isNaN.isNaN(_x))
			return 0.0;
		if (stdgo._internal.math.Math_isNaN.isNaN(_x) || stdgo._internal.math.Math_isNaN.isNaN(_y))
			return stdgo._internal.math.Math_naN.naN();
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
		if (stdgo._internal.math.Math_isInf.isInf(_p, 0) || stdgo._internal.math.Math_isInf.isInf(_q, 0))
			return stdgo._internal.math.Math_inf.inf(1);
		if (_p == std.Math.NaN || _q == std.Math.NaN)
			return stdgo._internal.math.Math_naN.naN();
		_p = stdgo._internal.math.Math_abs.abs(_p);
		_q = stdgo._internal.math.Math_abs.abs(_q);
		if (_p < _q) {
			final temp = _p;
			_p = _q;
			_q = temp;
		}
		if (_p == 0)
			return 0;
		_q = _q / _p;
		return _p * stdgo._internal.math.Math_sqrt.sqrt(1 + _q * _q);
	},
	"math:_archFloor" => macro return stdgo._internal.math.Math_floor.floor(_x),
	"math:_archCeil" => macro return stdgo._internal.math.Math_ceil.ceil(_x),
	"math:_archTrunc" => macro return stdgo._internal.math.Math_trunc.trunc(_x),
	"math:_cos" => macro return stdgo._internal.math.Math_cos.cos(_x),
	"math:_sin" => macro return stdgo._internal.math.Math_sin.sin(_x),
	// stdgo/os
	"os:open" => macro {
		return @:define("(sys || hxnodejs)") {
		if (!sys.FileSystem.exists(_name))
			return {_0: null, _1: stdgo._internal.errors.Errors_new_.new_("open " + _name + ": no such file or directory")};
		throw "os.open is not yet implemented";
		return {_0: null, _1: null};
		};
	},
	/*"regexp:_notab" => macro null,
	"regexp:_badRe" => macro null,
	"regexp.syntax:_parseTests" => macro null,
	"regexp.syntax:_invalidRegexps" => macro null,*/
	"os:create" => macro {
		throw "os.create is not yet implemented";
		//new stdgo._internal.os.Os_File.File()
	},
	"os:stdin" => macro {
		final input:haxe.io.Input = @:define("(sys || hxnodejs)") std.Sys.stdin();
		new stdgo._internal.os.Os_File.File(input, null);
	},
	"os:stdout" => macro {
		final output:haxe.io.Output = @:define("(sys || hxnodejs)") std.Sys.stdout();
		new stdgo._internal.os.Os_File.File(null, output);
	},
	"os:stderr" => macro {
		final output:haxe.io.Output = @:define("(sys || hxnodejs)") std.Sys.stderr();
		new stdgo._internal.os.Os_File.File(null, output);
	},
	"os.File:writeString" => macro return _f.write(_s),
	"os:_fastrand" => macro return std.Std.random(1) > 0 ? -std.Std.random(2147483647) - 1 : std.Std.random(2147483647),
	"math.rand:_fastrand64" => macro return haxe.Int64.make(std.Std.random(1) > 0 ? -std.Std.random(2147483647) - 1 : std.Std.random(2147483647),
		std.Std.random(1) > 0 ? -std.Std.random(2147483647) - 1 : std.Std.random(2147483647)),
	// stdgo/math_test
	"math_test:testFloatMinMax" => macro trace("testFloatMinMax not implemented: fmt formatter"),
	"math:testGamma" => macro @:define("interp") {
		trace("interp - testGamma not implemented: high floating point precision");
		return;
	},
	"regexp.syntax:testParseInvalidRegexps" => macro trace("testParseInvalidRegexps not implemented: too slow"),
	// stdgo/math_bits_test
	"math_bits_test:testLeadingZeros" => macro {},
	"math_bits_test:testOnesCount" => macro {},
	"math_bits_test:testLen" => macro {},
	// stdgo/strings_test
	"strings_test:_makeBenchInputHard" => macro return "",
	// stdgo/runtime
	// :)
	"runtime:compiler" => macro "go2hx",
	"runtime:gOMAXPROCS" => macro return 1,
	// stdgo/reflect
	"reflect:typeOf" => macro @:splitdeps {
		// // set internal Type
		if (_i == null)
			return new stdgo._internal.internal.reflect.Reflect._Type_asInterface(stdgo.Go.pointer(new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.basic(stdgo._internal.internal.reflect.Reflect.BasicKind.unsafepointer_kind))),
				new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.basic(stdgo._internal.internal.reflect.Reflect.BasicKind.unsafepointer_kind)));
		// set internal Type
		return new stdgo._internal.internal.reflect.Reflect._Type_asInterface(stdgo.Go.pointer(_i.type), _i.type);
	},
	"reflect:valueOf" => macro {
		return new $newValue(_i);
	},
	"reflect:indirect" => macro {
		if (_v.kind() != stdgo._internal.reflect.Reflect_pointer.pointer) {
			return _v;
		}else{
			return _v.elem();
		}
	},
	"reflect:makeSlice" => macro @:splitdeps {
		// (_typ:Type, _len:GoInt, _cap:GoInt)
		final value = stdgo._internal.internal.reflect.Reflect.defaultValue(_typ);
		final slice = new stdgo.Slice(_len, _cap.toBasic(), ...[for (i in 0..._len.toBasic()) value]);
		final t = @:privateAccess (cast _typ : stdgo._internal.internal.reflect.Reflect._Type_asInterface).__type__;
		return new $newValue(new stdgo.AnyInterface(slice, t));
	},
	"reflect:deepEqual" => macro @:splitdeps {
		// _x = stdgo._internal.internal.reflect.Reflect.namedUnderlying(_x);
		// _y = stdgo._internal.internal.reflect.Reflect.namedUnderlying(_y);
		if (new $newValue(_x).isNil() || new $newValue(_y).isNil()) {
			return (_x : stdgo.AnyInterface) == (_y : stdgo.AnyInterface);
		};
		var v1 = stdgo._internal.reflect.Reflect_valueOf.valueOf(_x);
		var v2 = stdgo._internal.reflect.Reflect_valueOf.valueOf(_y);
		return stdgo._internal.internal.reflect.Reflect.deepValueEqual(v1, v2, null, 0);
	},
	"reflect.Value:canInterface" => macro {
		return true;
	},
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
	"reflect.Value:call" => macro @:splitdeps {
		final gt = @:privateAccess stdgo._internal.internal.reflect.Reflect.getUnderlying(_v.value.type._common());
		switch gt {
			case signature(_, _.get() => params, _.get() => out, _):
				throw "not implemented reflect.Value:call: " + gt;
			default:
				throw "unsupported: " + gt;
		}
	},
	"reflect.Value:mapRange" => macro @:splitdeps {
		return new stdgo._internal.reflect.Reflect_MapIter.MapIter(@:privateAccess _v.value.value, @:privateAccess _v.value.type);
	},
	"reflect.MapIter:key" => macro @:splitdeps {
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
		return new $newValue(new stdgo.AnyInterface(@:privateAccess _iter.keys[_iter.index], key));
	},
	"reflect.MapIter:value" => macro @:splitdeps {
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
		return new $newValue(new stdgo.AnyInterface(@:privateAccess _iter.values[_iter.index], value));
	},
	"reflect.MapIter:next" => macro @:splitdeps {
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
	"reflect.MapIter:reset" => macro @:splitdeps {
		@:privateAccess _iter.index = 0;
		@:privateAccess _iter.map = _v.value.value;
		@:privateAccess _iter.keys = null;
		@:privateAccess _iter.values = null;
	},
	"reflect.Value:canAddr" => macro @:splitdeps {
		return @:privateAccess _v.canAddrBool;
	},
	"reflect:zero" => macro @:splitdeps {
		return new $newValue(new stdgo.AnyInterface(stdgo._internal.internal.reflect.Reflect.defaultValue(_typ), _typ.__underlying__().value));
	},
	"reflect.Value:type" => macro @:splitdeps {
		if (@:privateAccess _v.value == null) {
			var t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.invalidType);
			return @:privateAccess new stdgo._internal.internal.reflect.Reflect._Type_asInterface(stdgo.Go.pointer(t), t);
		}
		return @:privateAccess new stdgo._internal.internal.reflect.Reflect._Type_asInterface(stdgo.Go.pointer(_v.value.type), _v.value.type);
	},
	"reflect.Value:setString" => macro {
		@:privateAccess _v.value.value = _x;
		stdgo._internal.internal.reflect.Reflect._set(_v);
	},
	"reflect.Value:setBool" => macro {
		@:privateAccess _v.value.value = _x;
		stdgo._internal.internal.reflect.Reflect._set(_v);
	},
	"reflect.Value:setUint" => macro {
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
					(_x : stdgo.GoUIntptr);
				default:
					throw "unknown setUInt kind: " + k.string();
			};
		stdgo._internal.internal.reflect.Reflect._set(_v);
	},
	"reflect.Value:setComplex" => macro {
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
	},
	"reflect.Value:setFloat" => macro {
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
	},
	"reflect.Value:setInt" => macro {
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
	},
	"reflect.Value:kind" => macro return _v.type().kind(),
	"reflect.Value:isValid" => macro {
		if (@:privateAccess _v.value == null)
			return false;
		if (@:privateAccess _v.value.type._common() != stdgo._internal.internal.reflect.Reflect.GoType.invalidType)
			return true;
		return switch @:privateAccess _v.value.type._common() {
			case stdgo._internal.internal.reflect.Reflect.GoType.basic(stdgo._internal.internal.reflect.Reflect.BasicKind.untyped_nil_kind):
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
		final gt = @:privateAccess stdgo._internal.internal.reflect.Reflect.getUnderlying(_v.value.type._common());
		return switch gt {
			case structType(fields):
				final field = fields[_i.toBasic()];
				final t = @:privateAccess (cast _v.value.type.field(_i).type : stdgo._internal.internal.reflect.Reflect._Type_asInterface).__type__;
				var fieldValue = std.Reflect.field(@:privateAccess _v.value.value, field.name);
				fieldValue = stdgo._internal.internal.reflect.Reflect.asInterfaceValue(fieldValue, t._common());
				final valueType = new $newValue(new stdgo.AnyInterface(fieldValue, t));
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
		var t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
		if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
			t = stdgo._internal.internal.reflect.Reflect.getUnderlying(t);
			switch std.Type.typeof(value) {
				case TClass(c):
					final name = std.Type.getClassName(c);
					if (std.StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
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
			case stdgo._internal.internal.reflect.Reflect.GoType.arrayType(_.get() => elem, _):
				switch elem {
					case stdgo._internal.internal.reflect.Reflect.GoType.basic(stdgo._internal.internal.reflect.Reflect.BasicKind.uint8_kind):
						return (value : stdgo.GoArray<stdgo.GoByte>).__slice__(0);
					default:
						throw new $newValueError("reflect.Value.Bytes", @:privateAccess _v.kind());
				};
			case stdgo._internal.internal.reflect.Reflect.GoType.sliceType(_.get() => elem):
				elem = stdgo._internal.internal.reflect.Reflect.getUnderlying(elem);
				switch elem {
					case stdgo._internal.internal.reflect.Reflect.GoType.basic(stdgo._internal.internal.reflect.Reflect.BasicKind.uint8_kind):
						return value;
					default:
						throw new $newValueError("reflect.Value.Bytes", @:privateAccess _v.kind());
				};
			default:
				throw new $newValueError("reflect.Value.Bytes", @:privateAccess _v.kind());
		};
	},
	"reflect.Value:numField" => macro {
		return _v.type().numField();
	},
	"reflect.Value:slice" => macro @:splitdeps {
		var value = @:privateAccess _v.value.value;
		var t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
		if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
			switch std.Type.typeof(value) {
				case TClass(c):
					final name = std.Type.getClassName(c);
					if (std.StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
				default:
					final _ = false;
			}
		}
		switch t {
			case stdgo._internal.internal.reflect.Reflect.GoType.arrayType(elem, _):
				t = stdgo._internal.internal.reflect.Reflect.GoType.sliceType(elem);
			case stdgo._internal.internal.reflect.Reflect.GoType.named(path, methods, stdgo._internal.internal.reflect.Reflect.GoType.arrayType(elem, _), alias, params):
				t = stdgo._internal.internal.reflect.Reflect.GoType.named(path, methods, stdgo._internal.internal.reflect.Reflect.GoType.sliceType(elem), alias, params);
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
					throw new $newValueError("reflect.Value.Slice", k);
			};
		return new $newValue(new stdgo.AnyInterface(value, new stdgo._internal.internal.reflect.Reflect._Type(t)));
	},
	"reflect.Value:len" => macro @:splitdeps {
		final _v = _v.__copy__();
		var value = @:privateAccess _v.value.value;
		if (value == null)
            return 0;
		final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
		if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
			switch std.Type.typeof(value) {
				case TClass(c):
					final name = std.Type.getClassName(c);
					if (std.StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
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
	},
	"reflect.Value:canUint" => macro @:splitdeps {
		return switch _v.kind() {
			case stdgo._internal.internal.reflect.Reflect.KindType.uint, stdgo._internal.internal.reflect.Reflect.KindType.uint8, stdgo._internal.internal.reflect.Reflect.KindType.uint16,
				stdgo._internal.internal.reflect.Reflect.KindType.uint32, stdgo._internal.internal.reflect.Reflect.KindType.uint64, stdgo._internal.internal.reflect.Reflect.KindType.uintptr:
				true;
			default:
				false;
		}
	},
	"reflect.Value:bool_" => macro @:splitdeps {
		var value = @:privateAccess _v.value.value;
		final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
		if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
			switch std.Type.typeof(value) {
				case TClass(c):
					final name = std.Type.getClassName(c);
					if (std.StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
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
					throw new $newValueError("reflect.Value.Bool", _v.kind());
			}
		return value;
	},
	"reflect.Value:complex" => macro @:splitdeps {
		var value = @:privateAccess _v.value.value;
		final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
		if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
			switch std.Type.typeof(value) {
				case TClass(c):
					final name = std.Type.getClassName(c);
					if (std.StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
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
					throw new $newValueError("Value.Complex", _v.kind());
			}
		return value;
	},
	"reflect.Value:uint" => macro @:splitdeps @:splitdeps {
		var value = @:privateAccess _v.value.value;
		final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
		if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
			switch std.Type.typeof(value) {
				case TClass(c):
					final name = std.Type.getClassName(c);
					if (std.StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
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
					(value : stdgo.GoUIntptr);
				default:
					throw new $newValueError("reflect.Value.Uint", _v.kind());
			}
		return value;
	},
	"reflect.Value:float_" => macro @:splitdeps {
		var value = @:privateAccess _v.value.value;
		final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
		if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
			switch std.Type.typeof(value) {
				case TClass(c):
					final name = std.Type.getClassName(c);
					if (std.StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
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
					throw new $newValueError("reflect.Value.Float", _v.kind());
			}
		return value;
	},
	"reflect.Value:int_" => macro {
		var value = @:privateAccess _v.value.value;
		final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
		if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
			switch std.Type.typeof(value) {
				case TClass(c):
					final name = std.Type.getClassName(c);
					if (std.StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
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
					throw new $newValueError("reflect.Value.Int", _v.kind());
			}
		return value;
	},
	"reflect.Value:index" => macro @:splitdeps {
		final _v = _v.__copy__();
		var value = @:privateAccess _v.value.value;
		final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
		if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
			switch std.Type.typeof(value) {
				case TClass(c):
					final name = std.Type.getClassName(c);
					if (std.StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
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
			case stdgo._internal.internal.reflect.Reflect.GoType.arrayType(_.get() => elem, _):
				final t = @:privateAccess new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.unroll(gt, elem));
				final valueInterface = stdgo._internal.internal.reflect.Reflect.asInterfaceValue((value : stdgo.GoArray<Dynamic>)[_i], t._common());
				new $newValue(new stdgo.AnyInterface(valueInterface, t), value, _i);
			case stdgo._internal.internal.reflect.Reflect.GoType.sliceType(_.get() => elem):
				final t = @:privateAccess new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.unroll(gt, elem));
				final valueInterface = stdgo._internal.internal.reflect.Reflect.asInterfaceValue((value : Slice<Dynamic>)[_i], t._common());
				final value = new $newValue(new stdgo.AnyInterface(valueInterface, t), value, _i);
				@:privateAccess value.canAddrBool = true;
				value;
			case stdgo._internal.internal.reflect.Reflect.GoType.basic(kind):
				switch kind {
					case string_kind:
						var value = value;
						if ((value is String))
							value = (value : stdgo.GoString);
						new $newValue(new stdgo.AnyInterface((value : stdgo.GoString)[_i], new stdgo._internal.internal.reflect.Reflect._Type(basic(uint8_kind))));
					default:
						throw "unsupported basic kind";
				};
			default:
				throw "not supported";
		};
	},
	"reflect:new_" => macro {
		var value = stdgo._internal.internal.reflect.Reflect.defaultValue(_typ);
		var ptr = new Pointer(() -> value, x -> value = x);
		return new $newValue(new stdgo.AnyInterface(ptr, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({
			get: () -> @:privateAccess (_typ : Dynamic)._common()
		}))));
	},
	"reflect.Value:set" => macro {
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
	},
	"reflect.Value:string" => macro {
		if (@:privateAccess _v.value == null) {
			return "<invalid Value>";
		}
		var value = @:privateAccess _v.value.value;
		final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
		if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
			switch std.Type.typeof(value) {
				case TClass(c):
					final name = std.Type.getClassName(c);
					if (std.StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
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
			case stdgo._internal.internal.reflect.Reflect.GoType.basic(kind):
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
		final gt:stdgo._internal.internal.reflect.Reflect.GoType = (_v.type() : Dynamic)._common();
		return switch k {
			case stdgo._internal.internal.reflect.Reflect.KindType.pointer:
				switch gt {
					case stdgo._internal.internal.reflect.Reflect.GoType.refType(_):
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
			case stdgo._internal.internal.reflect.Reflect.KindType.bool, stdgo._internal.internal.reflect.Reflect.KindType.int, stdgo._internal.internal.reflect.Reflect.KindType.int32,
				stdgo._internal.internal.reflect.Reflect.KindType.int64, stdgo._internal.internal.reflect.Reflect.KindType.float32,
				stdgo._internal.internal.reflect.Reflect.KindType.float64, stdgo._internal.internal.reflect.Reflect.KindType.int8, stdgo._internal.internal.reflect.Reflect.KindType.int16,
				stdgo._internal.internal.reflect.Reflect.KindType.uint, stdgo._internal.internal.reflect.Reflect.KindType.uint8, stdgo._internal.internal.reflect.Reflect.KindType.uint16,
				stdgo._internal.internal.reflect.Reflect.KindType.uint32, stdgo._internal.internal.reflect.Reflect.KindType.uint64,
				stdgo._internal.internal.reflect.Reflect.KindType.string, stdgo._internal.internal.reflect.Reflect.KindType.complex64,
				stdgo._internal.internal.reflect.Reflect.KindType.complex128:
				false;
			default:
				throw "nil check not supported kind: " + _v.kind().string();
		}
	},
	"reflect.Value:elem" => macro {
		var value = @:privateAccess _v.value.value;
		final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
		if (stdgo._internal.internal.reflect.Reflect.isNamed(t)
			&& !stdgo._internal.internal.reflect.Reflect.isRef(t)
			&& !stdgo._internal.internal.reflect.Reflect.isPointer(t)) {
			switch std.Type.typeof(value) {
				case TClass(c):
					final name = std.Type.getClassName(c);
					if (std.StringTools.endsWith(name, "_asInterface")) {
						@:privateAccess _v.value.type.gt = stdgo._internal.internal.reflect.Reflect.getElem(t);
						value = (value : Dynamic).__underlying__().value;
					}
				default:
					final _ = false;
			};
		};
		var k = _v.kind();
		switch k {
			case stdgo._internal.internal.reflect.Reflect.KindType.pointer:
				final t = stdgo._internal.internal.reflect.Reflect.getUnderlying(t);
				switch t {
					case stdgo._internal.internal.reflect.Reflect.GoType.refType(_.get() => elem):
						final value = new $newValue(new stdgo.AnyInterface(value, new stdgo._internal.internal.reflect.Reflect._Type(elem)), null);
						@:privateAccess value.canAddrBool = true;
						return value;
					case stdgo._internal.internal.reflect.Reflect.GoType.pointerType(_.get() => elem):
						if (value == null) {
							final value = new $newValue(new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(elem)), value);
							@:privateAccess value.canAddrBool = true;
							return value;
						};
						final ptrValue = (value : stdgo.Pointer<Dynamic>).value;
						final value = new $newValue(new stdgo.AnyInterface(ptrValue, new stdgo._internal.internal.reflect.Reflect._Type(elem)), value);
						@:privateAccess value.canAddrBool = true;
						return value;
					default:
						final _ = false;
				};
			case stdgo._internal.internal.reflect.Reflect.KindType.interface_:
				if (value == null)
					return new $newValue();
				return new $newValue(value, @:privateAccess _v.value.type);
		};
		throw new $newValueError("reflect.Value.Elem", k);
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
	// Swap atomically stores new into x and returns the previous value.
	// func (x *Pointer[T]) Swap(new *T) (old *T) { return (*T)(SwapPointer(&x.v, unsafe.Pointer(new))) }
	"sync.atomic_.Pointer_:swap" => macro {
		final old = @:privateAccess _x._v;
		_x._v = stdgo.Go.toInterface(_new);
		return stdgo.Go.toInterface(old);
	},
	"sync.atomic_.Pointer_:compareAndSwap" => macro {
		final b = stdgo.Go.toInterface(_old) == stdgo.Go.toInterface(_new);
		if (b)
			_x._v = stdgo.Go.toInterface(_new);
		return b;
	},
	"sync.atomic_.Pointer_:store" => macro {
		_x._v = stdgo.Go.toInterface(_val);
	},
	"sync.atomic_.Pointer_:load" => macro {
		return @:privateAccess _x._v.__toRef__();
	},
	"sync.atomic_.Int32:store" => macro {
		_x._v = _val;
	},
	"sync.atomic_.Int32:load" => macro {
		return @:privateAccess _x._v;
	},
	"sync.atomic_:loadInt64" => macro {
		return @:privateAccess _addr.value;
	},
	"sync.atomic_:storeInt64" => macro {
		_addr.value = _val;
	},
	"sync.atomic_:storeUint32" => macro {
		_addr.value = _val;
	},
	"sync.atomic_:storeUint64" => macro {
		_addr.value = _val;
	},
	"sync.Pool:_pinSlow" => macro return {_0: null, _1: 0},
	// Atomic -> Atomic_ because of restriction for cpp
	"sync.atomic_.Bool_:store" => macro stdgo._internal.sync.atomic_.Atomic__storeUint32.storeUint32(stdgo.Go.pointer(_x._v), _val ? 1 : 0),
	"sync.atomic_.Bool_:load" => macro return @:privateAccess _x._v == 1,
	// stdgo/sync
	"sync.Pool:get" => macro {
		var obj = @:define("target.threaded", @:privateAccess _p.pool.pop()) @:privateAccess _p.pool.pop(false);
		if (obj == null && @:privateAccess _p.new_ != null)
			obj = @:privateAccess _p.new_();
		return obj;
	},
	"sync.Pool:put" => macro {
		@:privateAccess _p.pool.push(_x);
	},
	"sync:_runtime_procPin" => macro return 0,
	"sync.Map_:_dirtyLocked" => macro {},
	"sync.Mutex:lock" => macro @:privateAccess @:define("target.threaded") _m.mutex.acquire(),
	"sync.Mutex:tryLock" => macro @:privateAccess return @:define("target.threaded", true) _m.mutex.tryAcquire(),
	"sync.Mutex:unlock" => macro @:privateAccess @:define("target.threaded") _m.mutex.release(),
	"sync.WaitGroup:add" => macro {
		@:privateAccess _wg.counter += _delta;
		if (@:privateAccess _wg.counter < 0)
			throw "sync: negative WaitGroup counter";
	},
	"sync.WaitGroup:done" => macro {
		@:privateAccess _wg.counter--;
		if (@:privateAccess _wg.counter <= 0) {
			@:privateAccess @:define("target.threaded") _wg.lock.release();
		}
	},
	"sync.WaitGroup:wait_" => macro @:privateAccess @:define("target.threaded") _wg.lock.wait(),
	"sync.Once:do_" => macro {
		if (@:privateAccess _o._done == 1)
			return;
		@:privateAccess _o._done = 1;
		_f();
	},
	// stdgo/math/rand
	"math.rand:intn" => macro return std.Std.random(_n),
	// log
	"log.Logger:setPrefix" => macro {},
	"log.Logger:prefix" => macro return "",
	// stdgo/internal/godebug
	"internal.godebug:new_" => macro return new stdgo._internal.internal.godebug.Godebug_Setting.Setting(),
	"internal.godebug.Setting:value" => macro return "",
	// stdgo/internal/bytealg
	"internal.bytealg:countString" => macro {
		var count = 0;
		for (i in 0..._s.length.toBasic()) {
			if (_s[i] == _c)
				count++;
		}
		return count;
	},
	// func Count(b []byte, c byte) int
	"internal.bytealg:count" => macro {
		var count = 0;
		for (i in 0..._b.length.toBasic()) {
			if (_b[i] == _c)
				count++;
		}
		return count;
	},
	"internal.bytealg:indexByteString" => macro {
		for (i in 0..._s.length.toBasic()) {
			if (_s[i] == _c)
				return i;
		}
		return -1;
	},
	"internal.bytealg:makeNoZero" => macro {
		final s = new stdgo.Slice<stdgo.GoByte>(_n,_n).__setNumber32__();
		return s;
	},
	"internal.bytealg:indexByte" => macro {
		for (i in 0..._b.length.toBasic()) {
			if (_b[i] == _c)
				return i;
		}
		return -1;
	},
	// Index returns the index of the first instance of b in a, or -1 if b is not present in a.
	// Requires 2 <= len(b) <= MaxLen.
	// func Index(a, b []byte) int
	"internal.bytealg:index" => macro {
		if (_a.length < _b.length)
			return -1;
		for (i in 0...(_a.length - _b.length + 1)) {
			var found = true;
			for (j in 0..._b.length) {
				if (_a[i + j] != _b[j]) {
					found = false;
					break;
				}
			}
			if (found) {
				return i;
			}
		}
		return -1;
	},
	// IndexString returns the index of the first instance of b in a, or -1 if b is not present in a.
	// Requires 2 <= len(b) <= MaxLen.
	// func IndexString(a, b string) int {
	"internal.bytealg:indexString" => macro {
		if (_a == "") {
			return 0;
		}
		if (_b == "") {
			return -1;
		}
	
		var aLen = _a.length;
		var bLen = _b.length;
	
		for (i in 0...(aLen - bLen + 1)) {
			var found = true;
			for (j in 0...bLen) {
				if (_a[i + j] != _b[j]) {
					found = false;
					break;
				}
			}
			if (found) {
				return i;
			}
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
		return ((stdgo.Go.toInterface((_b._buf : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : stdgo._internal.unsafe.Unsafe.UnsafePointer)
			.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({
			get: () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind)
		})) : stdgo.Pointer<stdgo.GoString>).value;
		// return (_b._buf : Slice<GoUInt8>);
	},
	"strings:clone" => macro return _s,
	// syscall
	"syscall:getpagesize" => macro return 4096,
	"syscall:mmap" => macro return {_0: null, _1: null},
	"syscall:mprotect" => macro return null,
	// testing
	"testing:mainStart" => macro {
		final args = @:define("(sys || hxnodejs)", []) Sys.args();
		var testlist:Array<stdgo._internal.testing.Testing_InternalTest.InternalTest> = [];
		var runArgBool = false;
		var excludes:Array<String> = [];
		for (i in 0...args.length) {
			if ((args[i] == "-run" || args[i] == "--run") && i < args.length - 1) {
				final match = args[i + 1];
				runArgBool = true;
				for (_ => test in _tests) {
					if (test.name.toString().indexOf(match) == 0) {
						testlist.push(test);
					}
				}
				break;
			}
		}
		if (!runArgBool)
			testlist = _tests.__toArray__();
		for (i in 0...args.length) {
			if ((args[i] == "-exclude" || args[i] == "--exclude") && i < args.length - 1) {
				final excludes = args[i + 1].split(",");
				for (test in testlist) {
					if (excludes.indexOf(test.name) != -1)
						testlist.remove(test);
				}
			}
		}
		var m = new stdgo._internal.testing.Testing_M.M(_deps, testlist, _benchmarks, _fuzzTargets, _examples);
		return m;
	},
	"testing:coverMode" => macro return "",
	"testing:short" => macro return true,
	"testing:allocsPerRun" => macro return 0,
	"testing:verbose" => macro return false,
	"testing.T_:run" => macro return true,
	"testing.T_common:log" => macro {},
	"testing.T_common:logf" => macro {},
	"testing.T_common:fatal" => macro {},
	"testing.T_common:fatalf" => macro {},
	"testing.T_common:tempDir" => macro return "temp",
	"testing.T_common:skipped" => macro return false,
	"testing.T_common:fail" => macro {
		_c._failed = true;
		@:define("(sys || hxnodejs)") Sys.exit(1);
	},
	"testing.T_common:skip" => macro {},
	"testing.T_common:helper" => macro {},
	"testing.T_common:failNow" => macro {
		_c._failed = true;
		throw "__fail__";
	},
	"testing.T_common:failed" => macro return _c._failed,
	"testing.T_common:error" => macro {
		stdgo._internal.fmt.Fmt_println.println(...[for (arg in _args) arg]);
		_c.fail();
	},
	"testing.T_common:errorf" => macro {
		stdgo._internal.fmt.Fmt_printf.printf(_format, ...[for (arg in _args) arg]);
		_c.fail();
	},
	"testing.M:run" => macro {
		final chatty = true;
		// use go version of path for passing go tests
		stdgo._internal.internal.reflect.Reflect.useHaxePath = false;
		_m._numRun++;
		for (test in _m._tests) {
			var error = false;
			final output = new StringBuf();
			var t = new stdgo._internal.testing.Testing_T_.T_(null, null, null, output);
			final stamp = Sys.time();
			Sys.println("=== RUN  " + test.name.toString());
			try {
				test.f(t);
			} catch (e) {
				if (e.message != "__fail__") {
					Sys.println(e.details());
				}
				Sys.exit(1);
				error = true;
			}
			final dstr = Sys.time() - stamp; // duration
			final format = "--- %s: %s (%s)\n";
			if (t.failed() || error) {
				Sys.println('-- FAIL: ${test.name.toString()} ($dstr)');
				Sys.exit(1);
			} else if (chatty) {
				if (t.skipped()) {
					Sys.println('-- SKIP: ${test.name.toString()} ($dstr)');
				} else {
					Sys.println('-- PASS: ${test.name.toString()} ($dstr)');
				}
			}
			Sys.println(output.toString());
		}
		return _m._exitCode;
	},
	"testing:benchmark" => macro return new stdgo._internal.testing.Testing_BenchmarkResult.BenchmarkResult(),
	// testing/iotest
	"testing.iotest:testWriteLogger" => macro {},
	// testing/fstest
	"testing.fstest:testMapFS" => macro {},
	// internal/testenv
	"internal.testenv:builder" => macro return "",
	"internal.testenv:hasGoBuild" => macro return false,
	"internal.testenv:hasGoRun" => macro return false,
	"internal.testenv:hasParallelism" => macro return false,
	"internal.testenv:canInternalLink" => macro return false,
];

final skipTargets = [
	"fmt_test:testPanics" => [], // keep Haxe specific throws, no need to replicate
	"bytes_test:testSplit" => [], // Segmentation fault (core dumped)
	"fmt_test:testFinderNext" => [], // Segmentation fault (core dumped)
	"strings_test:testGenericTrieBuilding" => [], // Segmentation fault (core dumped)
	"math_test:testFloatMinima" => ["interp", "js"],
	"math_test:testNextafter32" => ["interp", "js"],
	"strconv_test:testRoundTrip32" => ["interp", "js"], // imprecise float
	// "math_test:testSignbit" => ["interp"],
	"math_test:testGamma" => ["interp", "js"],
	"strconv_test:testAtof" => [], // uses rand and sync
	"strconv_test:testAtofSlow" => [], // uses rand and sync
	"strconv_test:testAtofRandom" => [], // imprecise float
	"strconv_test:testFtoaRandom" => [], // uses rand
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
	"bytes_test:testClone" => [], // uses unsafe sliceData
	"bytes_test:testReaderLenSize" => [], // TODO: implement - sync
	"bytes_test:testCompareBytes" => [], // very slow but passes
];

final replace = [
	"internal.reflectlite:Value" => macro stdgo._internal.reflect.Reflect_Value.Value,
	"internal.reflectlite:Type_" => macro stdgo._internal.reflect.Reflect_Type_.Type_,
];

final structs = [
	"testing:T_" => macro {
		@:local
		var output:StringBuf = null;
	},
	"syscall:IPv6Mreq" => macro {
		@:local
		var Multiaddr:stdgo.GoUInt8;
		@:local
		var Interface:stdgo.GoUInt32;
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
		var t:stdgo._internal.internal.reflect.Reflect._Type;
		@:local
		var index:Int = 0;
	},
	"reflect:Value" => macro {
		var value:stdgo.AnyInterface;
		@:local
		var underlyingValue:Dynamic;
		var underlyingIndex:stdgo.GoInt = -1;
		@:local
		var underlyingKey:Dynamic = null;
		var canAddrBool:Bool = false;
		var notSetBool:Bool = false;
		function string():stdgo.GoString @:splitdeps {
			var _v = this;
			if (@:privateAccess _v.value == null) {
				return "<invalid Value>";
			}
			var value = @:privateAccess _v.value.value;
			final t:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
			if (stdgo._internal.internal.reflect.Reflect.isNamed(t)) {
				switch std.Type.typeof(value) {
					case std.Type.ValueType.TClass(c):
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
				case stdgo._internal.internal.reflect.Reflect.GoType.basic(kind):
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
		var lock = @:define("target.threaded") new sys.thread.Lock();
		var counter:stdgo.GoUInt = 0;
	},
	"sync:Mutex" => macro {
		@:local
		var mutex = @:define("target.threaded") new sys.thread.Mutex();
	},
	"sync:RWMutex" => macro {
		@:local
		var mutex = @:define("target.threaded") new sys.thread.Mutex();
	},
	"sync:Pool" => macro {
		@:local
		var pool = @:define("target.threaded", new Array<stdgo.AnyInterface>()) new sys.thread.Deque<stdgo.AnyInterface>();
	},
	"reflect:ValueError" => macro {
		@:splitdeps function toString():String {
			return "" + method;
		};
	},
];

final adds = [
	"math:negZero" => macro {
		return stdgo._internal.math.Math_copysign.copysign(0.0, -1.0);
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
