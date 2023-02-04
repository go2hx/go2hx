package stdgo.internal.buildcfg;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

/**
	// Package buildcfg provides access to the build configuration
	// described by the current environment. It is for use by build tools
	// such as cmd/go or cmd/compile and for setting up go/build's Default context.
	//
	// Note that it does NOT provide access to the build configuration used to
	// build the currently-running binary. For that, use runtime.GOOS etc
	// as well as internal/goexperiment.
**/
private var __go2hxdoc__package:Bool;

/**
	// cached for efficiency
**/
var goroot:GoString = stdgo.runtime.Runtime.goroot();

var gowasm:T_gowasmFeatures = _gowasm();
var go386:GoString = _envOr(("GO386" : GoString), ("sse2" : GoString));
var goamd64:GoInt = _goamd64();
var gomips:GoString = _gomips();
var gomips64:GoString = _gomips64();
var goppc64:GoInt = _goppc64();
var go_LDSO:GoString = ("/lib64/ld-linux-x86-64.so.2" : GoString);
var version:GoString = ("go1.19" : GoString);
var goos:GoString = _envOr(("GOOS" : GoString), ("js" : GoString));
var goarch:GoString = _envOr(("GOARCH" : GoString), ("wasm" : GoString));
var goarm:GoInt = _goarm();

/**
	// Experiment contains the toolchain experiments enabled for the
	// current build.
	//
	// (This is not necessarily the set of experiments the compiler itself
	// was built with.)
	//
	// experimentBaseline specifies the experiment flags that are enabled by
	// default in the current toolchain. This is, in effect, the "control"
	// configuration and any variation from this is an experiment.
**/
var experiment:ExperimentFlags = {
	var a = function():ExperimentFlags {
		var __tmp__ = parseGOEXPERIMENT(goos, goarch,
			_envOr(("GOEXPERIMENT" : GoString), Go.str())), _flags:Ref<ExperimentFlags> = __tmp__._0, _err:Error = __tmp__._1;
		if (_err != null) {
			error = _err;
			return (new ExperimentFlags() : ExperimentFlags);
		};
		return (_flags == null ? null : _flags.__copy__());
	};
	a();
};

/**
	// FramePointerEnabled enables the use of platform conventions for
	// saving frame pointers.
	//
	// This used to be an experiment, but now it's always enabled on
	// platforms that support it.
	//
	// Note: must agree with runtime.framepointer_enabled.
**/
var framePointerEnabled:Bool = (goarch == ("amd64" : GoString)) || (goarch == ("arm64" : GoString));

/**
	// Error is one of the errors found (if any) in the build configuration.
**/
var error:Error = (null : Error);

/**
	// DefaultGOEXPERIMENT is the embedded default GOEXPERIMENT string.
	// It is not guaranteed to be canonical.
**/
final defaultGOEXPERIMENT:GoString = Go.str();

private final _defaultGO386:GoString = ("sse2" : GoString);
private final _defaultGOAMD64:GoString = ("v1" : GoString);
private final _defaultGOARM:GoString = ("5" : GoString);
private final _defaultGOMIPS:GoString = ("hardfloat" : GoString);
private final _defaultGOMIPS64:GoString = ("hardfloat" : GoString);
private final _defaultGOPPC64:GoString = ("power8" : GoString);
private final _defaultGOEXPERIMENT:GoString = Go.str();
private final _defaultGO_EXTLINK_ENABLED:GoString = Go.str();
private final _defaultGO_LDSO:GoString = ("/lib64/ld-linux-x86-64.so.2" : GoString);
private final _version:GoString = ("go1.19" : GoString);
private final _defaultGOOS:GoString = ("js" : GoString);
private final _defaultGOARCH:GoString = ("wasm" : GoString);

@:structInit @:using(internal.buildcfg.Buildcfg.T_gowasmFeatures_static_extension) private class T_gowasmFeatures {
	public var signExt:Bool = false;
	public var satConv:Bool = false;

	public function new(?signExt:Bool, ?satConv:Bool) {
		if (signExt != null)
			this.signExt = signExt;
		if (satConv != null)
			this.satConv = satConv;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_gowasmFeatures(signExt, satConv);
	}
}

/**
	// ExperimentFlags represents a set of GOEXPERIMENT flags relative to a baseline
	// (platform-default) experiment configuration.
**/
@:structInit @:using(internal.buildcfg.Buildcfg.ExperimentFlags_static_extension) class ExperimentFlags {
	@:embedded
	public var flags:internal.goexperiment.Goexperiment.Flags = ({} : internal.goexperiment.Goexperiment.Flags);
	public var _baseline:internal.goexperiment.Goexperiment.Flags = ({} : internal.goexperiment.Goexperiment.Flags);

	public function new(?flags:internal.goexperiment.Goexperiment.Flags, ?_baseline:internal.goexperiment.Goexperiment.Flags) {
		if (flags != null)
			this.flags = flags;
		if (_baseline != null)
			this._baseline = _baseline;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new ExperimentFlags(flags, _baseline);
	}
}

/**
	// Check exits the program with a fatal error if Error is non-nil.
**/
function check():Void {
	if (error != null) {
		stdgo.fmt.Fmt.fprintf(Go.asInterface(stdgo.os.Os.stderr), ("%s: %v\n" : GoString),
			Go.toInterface(stdgo.path.filepath.Filepath.base(stdgo.os.Os.args[(0 : GoInt)])), Go.toInterface(error));
		Sys.exit((2 : GoInt));
	};
}

private function _envOr(_key:GoString, _value:GoString):GoString {
	{
		var _x:GoString = stdgo.os.Os.getenv(_key);
		if (_x != (Go.str())) {
			return _x;
		};
	};
	return _value;
}

private function _goamd64():GoInt {
	{
		var _v:GoString = _envOr(("GOAMD64" : GoString), ("v1" : GoString));
		if (_v == (("v1" : GoString))) {
			return (1 : GoInt);
		} else if (_v == (("v2" : GoString))) {
			return (2 : GoInt);
		} else if (_v == (("v3" : GoString))) {
			return (3 : GoInt);
		} else if (_v == (("v4" : GoString))) {
			return (4 : GoInt);
		};
	};
	error = stdgo.fmt.Fmt.errorf(("invalid GOAMD64: must be v1, v2, v3, v4" : GoString));
	return (("v1" : GoString)[(("v" : GoString).length : GoInt)] - (48 : GoUInt8): GoInt);
}

private function _goarm():GoInt {
	var _def:GoString = ("5" : GoString);
	if ((goos == ("android" : GoString)) && (goarch == ("arm" : GoString))) {
		_def = ("7" : GoString);
	};
	{
		var _v:GoString = _envOr(("GOARM" : GoString), _def);
		if (_v == (("5" : GoString))) {
			return (5 : GoInt);
		} else if (_v == (("6" : GoString))) {
			return (6 : GoInt);
		} else if (_v == (("7" : GoString))) {
			return (7 : GoInt);
		};
	};
	error = stdgo.fmt.Fmt.errorf(("invalid GOARM: must be 5, 6, 7" : GoString));
	return (_def[(0 : GoInt)] - (48 : GoUInt8): GoInt);
}

private function _gomips():GoString {
	{
		var _v:GoString = _envOr(("GOMIPS" : GoString), ("hardfloat" : GoString));
		if (_v == (("hardfloat" : GoString)) || _v == (("softfloat" : GoString))) {
			return _v;
		};
	};
	error = stdgo.fmt.Fmt.errorf(("invalid GOMIPS: must be hardfloat, softfloat" : GoString));
	return ("hardfloat" : GoString);
}

private function _gomips64():GoString {
	{
		var _v:GoString = _envOr(("GOMIPS64" : GoString), ("hardfloat" : GoString));
		if (_v == (("hardfloat" : GoString)) || _v == (("softfloat" : GoString))) {
			return _v;
		};
	};
	error = stdgo.fmt.Fmt.errorf(("invalid GOMIPS64: must be hardfloat, softfloat" : GoString));
	return ("hardfloat" : GoString);
}

private function _goppc64():GoInt {
	{
		var _v:GoString = _envOr(("GOPPC64" : GoString), ("power8" : GoString));
		if (_v == (("power8" : GoString))) {
			return (8 : GoInt);
		} else if (_v == (("power9" : GoString))) {
			return (9 : GoInt);
		};
	};
	error = stdgo.fmt.Fmt.errorf(("invalid GOPPC64: must be power8, power9" : GoString));
	return (("power8" : GoString)[(("power" : GoString).length : GoInt)] - (48 : GoUInt8): GoInt);
}

private function _gowasm():T_gowasmFeatures {
	var _f:T_gowasmFeatures = ({} : T_gowasmFeatures);
	for (_0 => _opt in stdgo.strings.Strings.split(_envOr(("GOWASM" : GoString), Go.str()), ("," : GoString))) {
		if (_opt == (("satconv" : GoString))) {
			_f.satConv = true;
		} else if (_opt == (("signext" : GoString))) {
			_f.signExt = true;
		} else if (_opt == (Go.str())) {} else {
			error = stdgo.fmt.Fmt.errorf(("invalid GOWASM: no such feature %q" : GoString), Go.toInterface(_opt));
		};
	};
	return _f;
}

function getgoextlinkenabled():GoString {
	return _envOr(("GO_EXTLINK_ENABLED" : GoString), Go.str());
}

/**
	// ParseGOEXPERIMENT parses a (GOOS, GOARCH, GOEXPERIMENT)
	// configuration tuple and returns the enabled and baseline experiment
	// flag sets.
	//
	// TODO(mdempsky): Move to internal/goexperiment.
**/
function parseGOEXPERIMENT(_goos:GoString, _goarch:GoString, _goexp:GoString):{var _0:Ref<ExperimentFlags>; var _1:Error;} {
	var _0:Bool = false,
		_1:Bool = false,
		_regabiAlwaysOn:Bool = _1,
		_regabiSupported:Bool = _0;
	if (_goarch == (("amd64" : GoString)) || _goarch == (("arm64" : GoString)) || _goarch == (("ppc64le" : GoString)) || _goarch == (("ppc64" : GoString))) {
		_regabiAlwaysOn = true;
		_regabiSupported = true;
	} else if (_goarch == (("riscv64" : GoString))) {
		_regabiSupported = true;
	};
	var _baseline:internal.goexperiment.Goexperiment.Flags = ({regabiWrappers: _regabiSupported,
		regabiArgs: _regabiSupported} : internal.goexperiment.Goexperiment.Flags);
	var _flags = (({flags: (_baseline == null ? null : _baseline.__copy__()),
		_baseline: (_baseline == null ? null : _baseline.__copy__())} : ExperimentFlags) : Ref<ExperimentFlags>);
	if (_goexp != (Go.str())) {
		var _names = (new GoObjectMap<GoString, Bool->Void>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({get: () ->
			stdgo.internal.reflect.Reflect.GoType.basic(string_kind)},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> null}, {get: () -> null},
				{get: () -> null})}))) : GoMap<GoString, Bool->Void>);
		var _rv:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.valueOf(Go.toInterface((_flags.flags : Ref<internal.goexperiment.Goexperiment.Flags>)))
			.elem() == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface((_flags.flags : Ref<internal.goexperiment.Goexperiment.Flags>)))
			.elem()
			.__copy__());
		var _rt:stdgo.reflect.Reflect.Type = _rv.type();
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _rt.numField(), _i++, {
				var _field:stdgo.reflect.Reflect.Value = (_rv.field(_i) == null ? null : _rv.field(_i).__copy__());
				_names[stdgo.strings.Strings.toLower(_rt.field(_i).name)] = _field.setBool;
			});
		};
		_names[("regabi" : GoString)] = function(_v:Bool):Void {
			_flags.flags.regabiWrappers = _v;
			_flags.flags.regabiArgs = _v;
		};
		for (_0 => _f in stdgo.strings.Strings.split(_goexp, ("," : GoString))) {
			if (_f == (Go.str())) {
				continue;
			};
			if (_f == (("none" : GoString))) {
				_flags.flags = (new internal.goexperiment.Goexperiment.Flags() : internal.goexperiment.Goexperiment.Flags);
				continue;
			};
			var _val:Bool = true;
			if (stdgo.strings.Strings.hasPrefix(_f, ("no" : GoString))) {
				{
					final __tmp__0 = (_f.__slice__((2 : GoInt)) : GoString);
					final __tmp__1 = false;
					_f = __tmp__0;
					_val = __tmp__1;
				};
			};
			var __tmp__ = (_names != null && _names.__exists__(_f) ? {value: _names[_f], ok: true} : {value: null, ok: false}),
				_set:Bool->Void = __tmp__.value,
				_ok:Bool = __tmp__.ok;
			if (!_ok) {
				return {_0: null, _1: stdgo.fmt.Fmt.errorf(("unknown GOEXPERIMENT %s" : GoString), Go.toInterface(_f))};
			};
			_set(_val);
		};
	};
	if (_regabiAlwaysOn) {
		_flags.flags.regabiWrappers = true;
		_flags.flags.regabiArgs = true;
	};
	if (!_regabiSupported) {
		_flags.flags.regabiWrappers = false;
		_flags.flags.regabiArgs = false;
	};
	if (_flags.flags.regabiArgs && !_flags.flags.regabiWrappers) {
		return {_0: null, _1: stdgo.fmt.Fmt.errorf(("GOEXPERIMENT regabiargs requires regabiwrappers" : GoString))};
	};
	return {_0: _flags, _1: (null : Error)};
}

/**
	// expList returns the list of lower-cased experiment names for
	// experiments that differ from base. base may be nil to indicate no
	// experiments. If all is true, then include all experiment flags,
	// regardless of base.
**/
private function _expList(_exp:Ref<internal.goexperiment.Goexperiment.Flags>, _base:Ref<internal.goexperiment.Goexperiment.Flags>, _all:Bool):Slice<GoString> {
	var _list:Slice<GoString> = (null : Slice<GoString>);
	var _rv:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.valueOf(Go.toInterface(_exp))
		.elem() == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_exp))
		.elem()
		.__copy__());
	var _rBase:stdgo.reflect.Reflect.Value = ({} : stdgo.reflect.Reflect.Value);
	if (_base != null) {
		_rBase = (stdgo.reflect.Reflect.valueOf(Go.toInterface(_base))
			.elem() == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_base))
			.elem()
			.__copy__());
	};
	var _rt:stdgo.reflect.Reflect.Type = _rv.type();
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _rt.numField(), _i++, {
			var _name:GoString = stdgo.strings.Strings.toLower(_rt.field(_i).name);
			var _val:Bool = _rv.field(_i).bool_();
			var _baseVal:Bool = false;
			if (_base != null) {
				_baseVal = _rBase.field(_i).bool_();
			};
			if (_all || (_val != _baseVal)) {
				if (_val) {
					_list = _list.__appendref__(_name);
				} else {
					_list = _list.__appendref__(("no" : GoString) + _name);
				};
			};
		});
	};
	return _list;
}

class T_gowasmFeatures_asInterface {
	@:keep
	public function string():GoString
		return __self__.value.string();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_gowasmFeatures>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(internal.buildcfg.Buildcfg.T_gowasmFeatures_asInterface) class T_gowasmFeatures_static_extension {
	@:keep
	static public function string(_f:T_gowasmFeatures):GoString {
		var _flags:Slice<GoString> = (null : Slice<GoString>);
		if (_f.satConv) {
			_flags = _flags.__appendref__(("satconv" : GoString));
		};
		if (_f.signExt) {
			_flags = _flags.__appendref__(("signext" : GoString));
		};
		return stdgo.strings.Strings.join(_flags, ("," : GoString));
	}
}

class ExperimentFlags_asInterface {
	/**
		// All returns a list of all experiment settings.
		// Disabled experiments appear in the list prefixed by "no".
	**/
	@:keep
	public function all():Slice<GoString>
		return __self__.value.all();

	/**
		// Enabled returns a list of enabled experiments, as
		// lower-cased experiment names.
	**/
	@:keep
	public function enabled():Slice<GoString>
		return __self__.value.enabled();

	/**
		// String returns the canonical GOEXPERIMENT string to enable this experiment
		// configuration. (Experiments in the same state as in the baseline are elided.)
	**/
	@:keep
	public function string():GoString
		return __self__.value.string();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<ExperimentFlags>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(internal.buildcfg.Buildcfg.ExperimentFlags_asInterface) class ExperimentFlags_static_extension {
	/**
		// All returns a list of all experiment settings.
		// Disabled experiments appear in the list prefixed by "no".
	**/
	@:keep
	static public function all(_exp:Ref<ExperimentFlags>):Slice<GoString> {
		return _expList((_exp.flags : Ref<internal.goexperiment.Goexperiment.Flags>), null, true);
	}

	/**
		// Enabled returns a list of enabled experiments, as
		// lower-cased experiment names.
	**/
	@:keep
	static public function enabled(_exp:Ref<ExperimentFlags>):Slice<GoString> {
		return _expList((_exp.flags : Ref<internal.goexperiment.Goexperiment.Flags>), null, false);
	}

	/**
		// String returns the canonical GOEXPERIMENT string to enable this experiment
		// configuration. (Experiments in the same state as in the baseline are elided.)
	**/
	@:keep
	static public function string(_exp:Ref<ExperimentFlags>):GoString {
		return stdgo.strings.Strings.join(_expList((_exp.flags : Ref<internal.goexperiment.Goexperiment.Flags>),
			(_exp._baseline : Ref<internal.goexperiment.Goexperiment.Flags>), false),
			("," : GoString));
	}
}
