package stdgo.os_test;

import stdgo.os.Os;
import stdgo.os.Os;
import stdgo.os.Os;
import stdgo.os.Os;
import stdgo.os.Os;
import stdgo.os.Os;
import stdgo.os.Os;
import stdgo.os.Os;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

private var _expandTests:Slice<T__struct_1> = (null : Slice<T__struct_1>);
private var _isExistTests:Slice<stdgo.os_test.Os_test.T_isExistTest> = (null : Slice<stdgo.os_test.Os_test.T_isExistTest>);
private var _isPermissionTests:Slice<stdgo.os_test.Os_test.T_isPermissionTest> = (null : Slice<stdgo.os_test.Os_test.T_isPermissionTest>);
private var _dot:Slice<GoString> = (null : Slice<GoString>);
private var _sysdir:Ref<stdgo.os_test.Os_test.T_sysDir> = (null : Ref<stdgo.os_test.Os_test.T_sysDir>);
private var _sfdir:GoString = ("" : GoString);
private var _sfname:GoString = ("" : GoString);
private var _openErrorTests:Slice<stdgo.os_test.Os_test.T_openErrorTest> = (null : Slice<stdgo.os_test.Os_test.T_openErrorTest>);
private var _testLargeWrite:Pointer<Bool> = (null : Pointer<Bool>);
private var _nilFileMethodTests:Slice<T__struct_3> = (null : Slice<T__struct_3>);
private var _isReadonlyError:Error->Bool = null;
private var _global:AnyInterface = (null : AnyInterface);
private final _executable_EnvVar:GoString = ("" : GoString);
private final _testExecutableDeletion:GoString = ("" : GoString);

@:structInit private class T_isExistTest {
	public var _err:Error = (null : Error);
	public var _is:Bool = false;
	public var _isnot:Bool = false;

	public function new(?_err:Error, ?_is:Bool, ?_isnot:Bool) {
		if (_err != null)
			this._err = _err;
		if (_is != null)
			this._is = _is;
		if (_isnot != null)
			this._isnot = _isnot;
	}

	public function __copy__() {
		return new T_isExistTest(_err, _is, _isnot);
	}
}

@:structInit private class T_isPermissionTest {
	public var _err:Error = (null : Error);
	public var _want:Bool = false;

	public function new(?_err:Error, ?_want:Bool) {
		if (_err != null)
			this._err = _err;
		if (_want != null)
			this._want = _want;
	}

	public function __copy__() {
		return new T_isPermissionTest(_err, _want);
	}
}

@:structInit @:using(stdgo.os_test.Os_test.T_myErrorIs_static_extension) private class T_myErrorIs {
	@:embedded
	public var _error:Error = (null : Error);

	public function new(?_error:Error) {
		if (_error != null)
			this._error = _error;
	}

	@:embedded
	public function error():GoString
		return ("" : GoString);

	public function __copy__() {
		return new T_myErrorIs(_error);
	}
}

@:structInit private class T_sysDir {
	public var _name:GoString = "";
	public var _files:Slice<GoString> = (null : Slice<GoString>);

	public function new(?_name:GoString, ?_files:Slice<GoString>) {
		if (_name != null)
			this._name = _name;
		if (_files != null)
			this._files = _files;
	}

	public function __copy__() {
		return new T_sysDir(_name, _files);
	}
}

@:structInit private class T_openErrorTest {
	public var _path:GoString = "";
	public var _mode:GoInt = 0;
	public var _error:Error = (null : Error);

	public function new(?_path:GoString, ?_mode:GoInt, ?_error:Error) {
		if (_path != null)
			this._path = _path;
		if (_mode != null)
			this._mode = _mode;
		if (_error != null)
			this._error = _error;
	}

	public function __copy__() {
		return new T_openErrorTest(_path, _mode, _error);
	}
}

@:structInit @:local private class T__struct_1 {
	public var _in:GoString = "";
	public var _out:GoString = "";

	public function string():String
		return "{" + Go.string(_in) + " " + Go.string(_out) + "}";

	public function new(?_in:GoString, ?_out:GoString, ?string) {
		if (_in != null)
			this._in = _in;
		if (_out != null)
			this._out = _out;
	}

	public function __copy__() {
		return new T__struct_1(_in, _out);
	}
}

@:structInit @:local private class T__struct_2 {
	public var _name:GoString = "";
	public var _create:() -> Error = null;

	public function string():String
		return "{" + Go.string(_name) + " " + Go.string(_create) + "}";

	public function new(?_name:GoString, ?_create:() -> Error, ?string) {
		if (_name != null)
			this._name = _name;
		if (_create != null)
			this._create = _create;
	}

	public function __copy__() {
		return new T__struct_2(_name, _create);
	}
}

@:structInit @:local private class T__struct_3 {
	public var _name:GoString = "";
	public var _f:Ref<File>->Error = null;

	public function string():String
		return "{" + Go.string(_name) + " " + Go.string(_f) + "}";

	public function new(?_name:GoString, ?_f:Ref<File>->Error, ?string) {
		if (_name != null)
			this._name = _name;
		if (_f != null)
			this._f = _f;
	}

	public function __copy__() {
		return new T__struct_3(_name, _f);
	}
}

@:structInit @:local private class T__struct_4 {
	public function string():String
		return "{" + "}";

	public function new(?string) {}

	public function __copy__() {
		return new T__struct_4();
	}
}

@:structInit @:local private class T__struct_5 {
	public var _path:GoString = "";
	public var _wantDir:GoString = "";
	public var _wantBase:GoString = "";

	public function string():String
		return "{" + Go.string(_path) + " " + Go.string(_wantDir) + " " + Go.string(_wantBase) + "}";

	public function new(?_path:GoString, ?_wantDir:GoString, ?_wantBase:GoString, ?string) {
		if (_path != null)
			this._path = _path;
		if (_wantDir != null)
			this._wantDir = _wantDir;
		if (_wantBase != null)
			this._wantBase = _wantBase;
	}

	public function __copy__() {
		return new T__struct_5(_path, _wantDir, _wantBase);
	}
}

@:structInit @:local private class T__struct_6 {
	public var _pattern:GoString = "";
	public var _prefix:GoString = "";
	public var _suffix:GoString = "";

	public function string():String
		return "{" + Go.string(_pattern) + " " + Go.string(_prefix) + " " + Go.string(_suffix) + "}";

	public function new(?_pattern:GoString, ?_prefix:GoString, ?_suffix:GoString, ?string) {
		if (_pattern != null)
			this._pattern = _pattern;
		if (_prefix != null)
			this._prefix = _prefix;
		if (_suffix != null)
			this._suffix = _suffix;
	}

	public function __copy__() {
		return new T__struct_6(_pattern, _prefix, _suffix);
	}
}

@:structInit @:local private class T__struct_7 {
	public var _pattern:GoString = "";
	public var _wantErr:Bool = false;

	public function string():String
		return "{" + Go.string(_pattern) + " " + Go.string(_wantErr) + "}";

	public function new(?_pattern:GoString, ?_wantErr:Bool, ?string) {
		if (_pattern != null)
			this._pattern = _pattern;
		if (_wantErr != null)
			this._wantErr = _wantErr;
	}

	public function __copy__() {
		return new T__struct_7(_pattern, _wantErr);
	}
}

@:structInit @:local private class T__struct_8 {
	public var _pattern:GoString = "";
	public var _wantPrefix:GoString = "";
	public var _wantSuffix:GoString = "";

	public function string():String
		return "{" + Go.string(_pattern) + " " + Go.string(_wantPrefix) + " " + Go.string(_wantSuffix) + "}";

	public function new(?_pattern:GoString, ?_wantPrefix:GoString, ?_wantSuffix:GoString, ?string) {
		if (_pattern != null)
			this._pattern = _pattern;
		if (_wantPrefix != null)
			this._wantPrefix = _wantPrefix;
		if (_wantSuffix != null)
			this._wantSuffix = _wantSuffix;
	}

	public function __copy__() {
		return new T__struct_8(_pattern, _wantPrefix, _wantSuffix);
	}
}

/**
	// For TestRawConnReadWrite.
**/
@:follow private typedef T_syscallDescriptor = GoInt;

/**
	// testGetenv gives us a controlled set of variables for testing Expand.
**/
function _testGetenv(_s:GoString):GoString {
	if (_s == (Go.str("*"))) {
		return Go.str("all the args");
	} else if (_s == (Go.str("#"))) {
		return Go.str("NARGS");
	} else if (_s == (Go.str("$$"))) {
		return Go.str("PID");
	} else if (_s == (Go.str("1"))) {
		return Go.str("ARGUMENT1");
	} else if (_s == (Go.str("HOME"))) {
		return Go.str("/usr/gopher");
	} else if (_s == (Go.str("H"))) {
		return Go.str("(Value of H)");
	} else if (_s == (Go.str("home_1"))) {
		return Go.str("/usr/foo");
	} else if (_s == (Go.str("_"))) {
		return Go.str("underscore");
	};
	return Go.str();
}

function testExpand(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in _expandTests) {
		var _result:GoString = expand(_test._in, _testGetenv);
		if (_result != (_test._out)) {
			_t.errorf(Go.str("Expand(%q)=%q; expected %q"), Go.toInterface(_test._in), Go.toInterface(_result), Go.toInterface(_test._out));
		};
	};
}

function benchmarkExpand(_b:Ref<stdgo.testing.Testing.B>):Void {
	_b.run(Go.str("noop"), function(_b:Ref<stdgo.testing.Testing.B>):Void {
		var _s:GoString = ("" : GoString);
		_b.reportAllocs();
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _b.n, _i++, {
				_s = expand(Go.str("tick tick tick tick"), function(_0:GoString):GoString {
					return Go.str();
				});
			});
		};
		_global = Go.toInterface(_s);
	});
	_b.run(Go.str("multiple"), function(_b:Ref<stdgo.testing.Testing.B>):Void {
		var _s:GoString = ("" : GoString);
		_b.reportAllocs();
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _b.n, _i++, {
				_s = expand(Go.str("$$a $$a $$a $$a"), function(_0:GoString):GoString {
					return Go.str("boom");
				});
			});
		};
		_global = Go.toInterface(_s);
	});
}

function testConsistentEnviron(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _e0 = environ();
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (10:GoInt), _i++, {
			var _e1 = environ();
			if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_e0), Go.toInterface(_e1))) {
				_t.fatalf(Go.str("environment changed"));
			};
		});
	};
}

function testUnsetenv(_t:Ref<stdgo.testing.Testing.T>):Void {
	{};
	var _set:() -> Bool = function():Bool {
		var _prefix:GoString = Go.str("GO_TEST_UNSETENV=");
		for (_0 => _key in environ()) {
			if (stdgo.strings.Strings.hasPrefix(_key, _prefix)) {
				return true;
			};
		};
		return false;
	};
	{
		var _err:Error = setenv(Go.str("GO_TEST_UNSETENV"), Go.str("1"));
		if (_err != null) {
			_t.fatalf(Go.str("Setenv: %v"), Go.toInterface(_err));
		};
	};
	if (!_set()) {
		_t.error(Go.toInterface(Go.str("Setenv didn\'t set TestUnsetenv")));
	};
	{
		var _err:Error = unsetenv(Go.str("GO_TEST_UNSETENV"));
		if (_err != null) {
			_t.fatalf(Go.str("Unsetenv: %v"), Go.toInterface(_err));
		};
	};
	if (_set()) {
		_t.fatal(Go.toInterface(Go.str("Unsetenv didn\'t clear TestUnsetenv")));
	};
}

function testClearenv(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	{};
	try {
		{};
		{
			var _a0 = environ();
			__deferstack__.unshift(() -> {
				var a = function(_origEnv:Slice<GoString>):Void {
					for (_0 => _pair in _origEnv) {
						var _i:GoInt = stdgo.strings.Strings.index((_pair.__slice__((1 : GoInt)) : GoString), Go.str("=")) + (1 : GoInt);
						{
							var _err:Error = setenv((_pair.__slice__(0, _i) : GoString), (_pair.__slice__(_i + (1 : GoInt)) : GoString));
							if (_err != null) {
								_t.errorf(Go.str("Setenv(%q, %q) failed during reset: %v"), Go.toInterface((_pair.__slice__(0, _i) : GoString)),
									Go.toInterface((_pair.__slice__(_i + (1 : GoInt)) : GoString)), Go.toInterface(_err));
							};
						};
					};
				};
				a(_a0);
			});
		};
		{
			var _err:Error = setenv(Go.str("GO_TEST_CLEARENV"), Go.str("1"));
			if (_err != null) {
				_t.fatalf(Go.str("Setenv(%q, %q) failed: %v"), Go.toInterface(Go.str("GO_TEST_CLEARENV")), Go.toInterface(Go.str("1")), Go.toInterface(_err));
			};
		};
		{
			var __tmp__ = lookupEnv(Go.str("GO_TEST_CLEARENV")),
				_0:GoString = __tmp__._0,
				_ok:Bool = __tmp__._1;
			if (!_ok) {
				_t.errorf(Go.str("Setenv(%q, %q) didn\'t set $$%s"), Go.toInterface(Go.str("GO_TEST_CLEARENV")), Go.toInterface(Go.str("1")),
					Go.toInterface(Go.str("GO_TEST_CLEARENV")));
			};
		};
		clearenv();
		{
			var __tmp__ = lookupEnv(Go.str("GO_TEST_CLEARENV")),
				_val:GoString = __tmp__._0,
				_ok:Bool = __tmp__._1;
			if (_ok) {
				_t.errorf(Go.str("Clearenv() didn\'t clear $$%s, remained with value %q"), Go.toInterface(Go.str("GO_TEST_CLEARENV")), Go.toInterface(_val));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testLookupEnv(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	{};
	try {
		var __tmp__ = lookupEnv(Go.str("SMALLPOX")),
			_value:GoString = __tmp__._0,
			_ok:Bool = __tmp__._1;
		if (_ok || (_value != Go.str())) {
			_t.fatalf(Go.str("%s=%q"), Go.toInterface(Go.str("SMALLPOX")), Go.toInterface(_value));
		};
		{
			var _a0 = Go.str("SMALLPOX");
			__deferstack__.unshift(() -> unsetenv(_a0));
		};
		var _err:Error = setenv(Go.str("SMALLPOX"), Go.str("virus"));
		if (_err != null) {
			_t.fatalf(Go.str("failed to release smallpox virus"));
		};
		{
			var __tmp__ = lookupEnv(Go.str("SMALLPOX"));
			_ok = __tmp__._1;
		};
		if (!_ok) {
			_t.errorf(Go.str("smallpox release failed; world remains safe but LookupEnv is broken"));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

/**
	// On Windows, Environ was observed to report keys with a single leading "=".
	// Check that they are properly reported by LookupEnv and can be set by SetEnv.
	// See https://golang.org/issue/49886.
**/
function testEnvironConsistency(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _kv in environ()) {
		var _i:GoInt = stdgo.strings.Strings.index(_kv, Go.str("="));
		if (_i == ((0 : GoInt))) {
			_i = stdgo.strings.Strings.index((_kv.__slice__((1 : GoInt)) : GoString), Go.str("=")) + (1 : GoInt);
		};
		if (_i < (0:GoInt)) {
			_t.errorf(Go.str("Environ entry missing \'=\': %q"), Go.toInterface(_kv));
		};
		var _k:GoString = (_kv.__slice__(0, _i) : GoString);
		var _v:GoString = (_kv.__slice__(_i + (1 : GoInt)) : GoString);
		var __tmp__ = lookupEnv(_k),
			_v2:GoString = __tmp__._0,
			_ok:Bool = __tmp__._1;
		if (_ok && (_v == _v2)) {
			_t.logf(Go.str("LookupEnv(%q) = %q, %t"), Go.toInterface(_k), Go.toInterface(_v2), Go.toInterface(_ok));
		} else {
			_t.errorf(Go.str("Environ contains %q, but LookupEnv(%q) = %q, %t"), Go.toInterface(_kv), Go.toInterface(_k), Go.toInterface(_v2),
				Go.toInterface(_ok));
		};
		{
			var _err:Error = setenv(_k, _v);
			if (_err == null) {
				_t.logf(Go.str("Setenv(%q, %q)"), Go.toInterface(_k), Go.toInterface(_v));
			} else {
				_t.errorf(Go.str("Environ contains %q, but SetEnv(%q, %q) = %q"), Go.toInterface(_kv), Go.toInterface(_k), Go.toInterface(_v),
					Go.toInterface(_err));
			};
		};
	};
}

function testErrIsExist(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var __tmp__ = stdgo.os.Os.createTemp(Go.str(), Go.str("_Go_ErrIsExist")),
		_f:Ref<File> = __tmp__._0,
		_err:Error = __tmp__._1;
	try {
		if (_err != null) {
			_t.fatalf(Go.str("open ErrIsExist tempfile: %s"), Go.toInterface(_err));
			return;
		};
		{
			var _a0 = _f.name();
			__deferstack__.unshift(() -> stdgo.os.Os.remove(_a0));
		};
		__deferstack__.unshift(() -> _f.close());
		var __tmp__ = stdgo.os.Os.openFile(_f.name(), (194 : GoInt), (("384" : GoUInt32) : stdgo.io.fs.Fs.FileMode)),
			_f2:Ref<File> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err == null) {
			_f2.close();
			_t.fatal(Go.toInterface(Go.str("Open should have failed")));
			{
				for (defer in __deferstack__) {
					defer();
				};
				return;
			};
		};
		{
			var _s:GoString = _checkErrorPredicate(Go.str("os.IsExist"), stdgo.os.Os.isExist, _err, stdgo.io.fs.Fs.errExist);
			if (_s != (Go.str())) {
				_t.fatal(Go.toInterface(_s));
				{
					for (defer in __deferstack__) {
						defer();
					};
					return;
				};
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function _testErrNotExist(_t:Ref<stdgo.testing.Testing.T>, _name:GoString):GoString {
	var __tmp__ = stdgo.os.Os.getwd(),
		_originalWD:GoString = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
	var __tmp__ = stdgo.os.Os.open(_name),
		_f:Ref<File> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err == null) {
		_f.close();
		return Go.str("Open should have failed");
	};
	{
		var _s:GoString = _checkErrorPredicate(Go.str("os.IsNotExist"), stdgo.os.Os.isNotExist, _err, stdgo.io.fs.Fs.errNotExist);
		if (_s != (Go.str())) {
			return _s;
		};
	};
	_err = stdgo.os.Os.chdir(_name);
	if (_err == null) {
		{
			var _err:Error = stdgo.os.Os.chdir(_originalWD);
			if (_err != null) {
				_t.fatalf(Go.str("Chdir should have failed, failed to restore original working directory: %v"), Go.toInterface(_err));
			};
		};
		return Go.str("Chdir should have failed, restored original working directory");
	};
	{
		var _s:GoString = _checkErrorPredicate(Go.str("os.IsNotExist"), stdgo.os.Os.isNotExist, _err, stdgo.io.fs.Fs.errNotExist);
		if (_s != (Go.str())) {
			return _s;
		};
	};
	return Go.str();
}

function testErrIsNotExist(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _tmpDir:GoString = _t.tempDir();
	var _name:GoString = stdgo.path.filepath.Filepath.join(_tmpDir, Go.str("NotExists"));
	{
		var _s:GoString = _testErrNotExist(_t, _name);
		if (_s != (Go.str())) {
			_t.fatal(Go.toInterface(_s));
			return;
		};
	};
	_name = stdgo.path.filepath.Filepath.join(_name, Go.str("NotExists2"));
	{
		var _s:GoString = _testErrNotExist(_t, _name);
		if (_s != (Go.str())) {
			_t.fatal(Go.toInterface(_s));
			return;
		};
	};
}

function _checkErrorPredicate(_predName:GoString, _pred:Error->Bool, _err:Error, _target:Error):GoString {
	if (!_pred(_err)) {
		return stdgo.fmt.Fmt.sprintf(Go.str("%s does not work as expected for %#v"), Go.toInterface(_predName), Go.toInterface(_err));
	};
	if (!stdgo.errors.Errors.is_(_err, _target)) {
		return stdgo.fmt.Fmt.sprintf(Go.str("errors.Is(%#v, %#v) = false, want true"), Go.toInterface(_err), Go.toInterface(_target));
	};
	return Go.str();
}

function testIsExist(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _isExistTests) {
		{
			var _is:Bool = stdgo.os.Os.isExist(_tt._err);
			if (_is != (_tt._is)) {
				_t.errorf(Go.str("os.IsExist(%T %v) = %v, want %v"), Go.toInterface(_tt._err), Go.toInterface(_tt._err), Go.toInterface(_is),
					Go.toInterface(_tt._is));
			};
		};
		{
			var _is:Bool = stdgo.errors.Errors.is_(_tt._err, stdgo.io.fs.Fs.errExist);
			if (_is != (_tt._is)) {
				_t.errorf(Go.str("errors.Is(%T %v, fs.ErrExist) = %v, want %v"), Go.toInterface(_tt._err), Go.toInterface(_tt._err), Go.toInterface(_is),
					Go.toInterface(_tt._is));
			};
		};
		{
			var _isnot:Bool = stdgo.os.Os.isNotExist(_tt._err);
			if (_isnot != (_tt._isnot)) {
				_t.errorf(Go.str("os.IsNotExist(%T %v) = %v, want %v"), Go.toInterface(_tt._err), Go.toInterface(_tt._err), Go.toInterface(_isnot),
					Go.toInterface(_tt._isnot));
			};
		};
		{
			var _isnot:Bool = stdgo.errors.Errors.is_(_tt._err, stdgo.io.fs.Fs.errNotExist);
			if (_isnot != (_tt._isnot)) {
				_t.errorf(Go.str("errors.Is(%T %v, fs.ErrNotExist) = %v, want %v"), Go.toInterface(_tt._err), Go.toInterface(_tt._err),
					Go.toInterface(_isnot), Go.toInterface(_tt._isnot));
			};
		};
	};
}

function testIsPermission(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _isPermissionTests) {
		{
			var _got:Bool = stdgo.os.Os.isPermission(_tt._err);
			if (_got != (_tt._want)) {
				_t.errorf(Go.str("os.IsPermission(%#v) = %v; want %v"), Go.toInterface(_tt._err), Go.toInterface(_got), Go.toInterface(_tt._want));
			};
		};
		{
			var _got:Bool = stdgo.errors.Errors.is_(_tt._err, stdgo.io.fs.Fs.errPermission);
			if (_got != (_tt._want)) {
				_t.errorf(Go.str("errors.Is(%#v, fs.ErrPermission) = %v; want %v"), Go.toInterface(_tt._err), Go.toInterface(_got), Go.toInterface(_tt._want));
			};
		};
	};
}

function testErrPathNUL(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var __tmp__ = stdgo.os.Os.createTemp(Go.str(), Go.str("_Go_ErrPathNUL", 0)),
		_f:Ref<File> = __tmp__._0,
		_err:Error = __tmp__._1;
	try {
		if (_err == null) {
			_f.close();
			_t.fatal(Go.toInterface(Go.str("TempFile should have failed")));
		};
		{
			var __tmp__ = stdgo.os.Os.createTemp(Go.str(), Go.str("_Go_ErrPathNUL"));
			_f = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			_t.fatalf(Go.str("open ErrPathNUL tempfile: %s"), Go.toInterface(_err));
		};
		{
			var _a0 = _f.name();
			__deferstack__.unshift(() -> stdgo.os.Os.remove(_a0));
		};
		__deferstack__.unshift(() -> _f.close());
		var __tmp__ = stdgo.os.Os.openFile(_f.name(), (2 : GoInt), (("384" : GoUInt32) : stdgo.io.fs.Fs.FileMode)),
			_f2:Ref<File> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("open ErrPathNUL: %s"), Go.toInterface(_err));
		};
		_f2.close();
		{
			var __tmp__ = stdgo.os.Os.openFile(_f.name() + Go.str(0), (2 : GoInt), (("384" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
			_f2 = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err == null) {
			_f2.close();
			_t.fatal(Go.toInterface(Go.str("Open should have failed")));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testPathErrorUnwrap(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _pe = (({err: stdgo.io.fs.Fs.errInvalid} : stdgo.io.fs.Fs.PathError) : Ref<stdgo.io.fs.Fs.PathError>);
	if (!stdgo.errors.Errors.is_(Go.asInterface(_pe), stdgo.io.fs.Fs.errInvalid)) {
		_t.error(Go.toInterface(Go.str("errors.Is failed, wanted success")));
	};
}

function testErrorIsMethods(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (stdgo.os.Os.isPermission(Go.asInterface((new stdgo.os_test.Os_test.T_myErrorIs(stdgo.io.fs.Fs.errPermission) : stdgo.os_test.Os_test.T_myErrorIs)))) {
		_t.error(Go.toInterface(Go.str("os.IsPermission(err) = true when err.Is(fs.ErrPermission), wanted false")));
	};
}

function exampleOpenFile():Void {
	var __tmp__ = stdgo.os.Os.openFile(Go.str("notes.txt"), (66 : GoInt), (("493" : GoUInt32) : stdgo.io.fs.Fs.FileMode)),
		_f:Ref<File> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		stdgo.log.Log.fatal(Go.toInterface(_err));
	};
	{
		var _err:Error = _f.close();
		if (_err != null) {
			stdgo.log.Log.fatal(Go.toInterface(_err));
		};
	};
}

function exampleOpenFile_append():Void {
	var __tmp__ = stdgo.os.Os.openFile(Go.str("access.log"), (1089 : GoInt), (("420" : GoUInt32) : stdgo.io.fs.Fs.FileMode)),
		_f:Ref<File> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		stdgo.log.Log.fatal(Go.toInterface(_err));
	};
	{
		var __tmp__ = _f.write((Go.str("appended some data\n") : Slice<GoByte>)),
			_0:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_f.close();
			stdgo.log.Log.fatal(Go.toInterface(_err));
		};
	};
	{
		var _err:Error = _f.close();
		if (_err != null) {
			stdgo.log.Log.fatal(Go.toInterface(_err));
		};
	};
}

function exampleChmod():Void {
	{
		var _err:Error = stdgo.os.Os.chmod(Go.str("some-filename"), (("420" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		if (_err != null) {
			stdgo.log.Log.fatal(Go.toInterface(_err));
		};
	};
}

function exampleChtimes():Void {
	var _mtime:stdgo.time.Time.Time = (stdgo.time.Time.date((2006 : GoInt), (2 : stdgo.time.Time.Month), (1 : GoInt), (3 : GoInt), (4 : GoInt), (5 : GoInt),
		(0 : GoInt),
		stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date((2006 : GoInt), (2 : stdgo.time.Time.Month), (1 : GoInt), (3 : GoInt), (4 : GoInt),
			(5 : GoInt), (0 : GoInt), stdgo.time.Time.utc)
		.__copy__());
	var _atime:stdgo.time.Time.Time = (stdgo.time.Time.date((2007 : GoInt), (3 : stdgo.time.Time.Month), (2 : GoInt), (4 : GoInt), (5 : GoInt), (6 : GoInt),
		(0 : GoInt),
		stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date((2007 : GoInt), (3 : stdgo.time.Time.Month), (2 : GoInt), (4 : GoInt), (5 : GoInt),
			(6 : GoInt), (0 : GoInt), stdgo.time.Time.utc)
		.__copy__());
	{
		var _err:Error = stdgo.os.Os.chtimes(Go.str("some-filename"), (_atime == null ? null : _atime.__copy__()),
			(_mtime == null ? null : _mtime.__copy__()));
		if (_err != null) {
			stdgo.log.Log.fatal(Go.toInterface(_err));
		};
	};
}

function exampleFileMode():Void {
	var __tmp__ = stdgo.os.Os.lstat(Go.str("some-filename")),
		_fi:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		stdgo.log.Log.fatal(Go.toInterface(_err));
	};
	stdgo.fmt.Fmt.printf(Go.str("permissions: %#o\n"), Go.toInterface(Go.asInterface(_fi.mode().perm())));
	{
		var _mode:stdgo.io.fs.Fs.FileMode = _fi.mode();
		if (_mode.isRegular()) {
			stdgo.fmt.Fmt.println(Go.str("regular file"));
		} else if (_mode.isDir()) {
			stdgo.fmt.Fmt.println(Go.str("directory"));
		} else if (_mode & (("134217728" : GoUInt32) : stdgo.io.fs.Fs.FileMode) != ((("0" : GoUInt32) : stdgo.io.fs.Fs.FileMode))) {
			stdgo.fmt.Fmt.println(Go.str("symbolic link"));
		} else if (_mode & (("33554432" : GoUInt32) : stdgo.io.fs.Fs.FileMode) != ((("0" : GoUInt32) : stdgo.io.fs.Fs.FileMode))) {
			stdgo.fmt.Fmt.println(Go.str("named pipe"));
		};
	};
}

function exampleErrNotExist():Void {
	var _filename:GoString = Go.str("a-nonexistent-file");
	{
		var __tmp__ = stdgo.os.Os.stat(_filename),
			_0:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err:Error = __tmp__._1;
		if (stdgo.errors.Errors.is_(_err, stdgo.io.fs.Fs.errNotExist)) {
			stdgo.fmt.Fmt.println(Go.str("file does not exist"));
		};
	};
}

function exampleExpand():Void {
	var _mapper:GoString->GoString = function(_placeholderName:GoString):GoString {
		if (_placeholderName == (Go.str("DAY_PART"))) {
			return Go.str("morning");
		} else if (_placeholderName == (Go.str("NAME"))) {
			return Go.str("Gopher");
		};
		return Go.str();
	};
	stdgo.fmt.Fmt.println(stdgo.os.Os.expand(Go.str("Good $${DAY_PART}, $$NAME!"), _mapper));
}

function exampleExpandEnv():Void {
	stdgo.os.Os.setenv(Go.str("NAME"), Go.str("gopher"));
	stdgo.os.Os.setenv(Go.str("BURROW"), Go.str("/usr/gopher"));
	stdgo.fmt.Fmt.println(stdgo.os.Os.expandEnv(Go.str("$$NAME lives in $${BURROW}.")));
}

function exampleLookupEnv():Void {
	var _show:GoString->Void = function(_key:GoString):Void {
		var __tmp__ = stdgo.os.Os.lookupEnv(_key), _val:GoString = __tmp__._0, _ok:Bool = __tmp__._1;
		if (!_ok) {
			stdgo.fmt.Fmt.printf(Go.str("%s not set\n"), Go.toInterface(_key));
		} else {
			stdgo.fmt.Fmt.printf(Go.str("%s=%s\n"), Go.toInterface(_key), Go.toInterface(_val));
		};
	};
	stdgo.os.Os.setenv(Go.str("SOME_KEY"), Go.str("value"));
	stdgo.os.Os.setenv(Go.str("EMPTY_KEY"), Go.str());
	_show(Go.str("SOME_KEY"));
	_show(Go.str("EMPTY_KEY"));
	_show(Go.str("MISSING_KEY"));
}

function exampleGetenv():Void {
	stdgo.os.Os.setenv(Go.str("NAME"), Go.str("gopher"));
	stdgo.os.Os.setenv(Go.str("BURROW"), Go.str("/usr/gopher"));
	stdgo.fmt.Fmt.printf(Go.str("%s lives in %s.\n"), Go.toInterface(stdgo.os.Os.getenv(Go.str("NAME"))),
		Go.toInterface(stdgo.os.Os.getenv(Go.str("BURROW"))));
}

function exampleUnsetenv():Void {
	var __deferstack__:Array<Void->Void> = [];
	stdgo.os.Os.setenv(Go.str("TMPDIR"), Go.str("/my/tmp"));
	try {
		{
			var _a0 = Go.str("TMPDIR");
			__deferstack__.unshift(() -> stdgo.os.Os.unsetenv(_a0));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function exampleReadDir():Void {
	var __tmp__ = stdgo.os.Os.readDir(Go.str(".")),
		_files:Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		stdgo.log.Log.fatal(Go.toInterface(_err));
	};
	for (_0 => _file in _files) {
		stdgo.fmt.Fmt.println(_file.name());
	};
}

function exampleMkdirTemp():Void {
	var __deferstack__:Array<Void->Void> = [];
	var __tmp__ = stdgo.os.Os.mkdirTemp(Go.str(), Go.str("example")),
		_dir:GoString = __tmp__._0,
		_err:Error = __tmp__._1;
	try {
		if (_err != null) {
			stdgo.log.Log.fatal(Go.toInterface(_err));
		};
		{
			var _a0 = _dir;
			__deferstack__.unshift(() -> stdgo.os.Os.removeAll(_a0));
		};
		var _file:GoString = stdgo.path.filepath.Filepath.join(_dir, Go.str("tmpfile"));
		{
			var _err:Error = stdgo.os.Os.writeFile(_file, (Go.str("content") : Slice<GoByte>), (("438" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
			if (_err != null) {
				stdgo.log.Log.fatal(Go.toInterface(_err));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function exampleMkdirTemp_suffix():Void {
	var __deferstack__:Array<Void->Void> = [];
	var __tmp__ = stdgo.os.Os.mkdirTemp(Go.str(), Go.str("*-logs")),
		_logsDir:GoString = __tmp__._0,
		_err:Error = __tmp__._1;
	try {
		if (_err != null) {
			stdgo.log.Log.fatal(Go.toInterface(_err));
		};
		{
			var _a0 = _logsDir;
			__deferstack__.unshift(() -> stdgo.os.Os.removeAll(_a0));
		};
		var _globPattern:GoString = stdgo.path.filepath.Filepath.join(stdgo.os.Os.tempDir(), Go.str("*-logs"));
		var __tmp__ = stdgo.path.filepath.Filepath.glob(_globPattern),
			_matches:Slice<GoString> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			stdgo.log.Log.fatalf(Go.str("Failed to match %q: %v"), Go.toInterface(_globPattern), Go.toInterface(_err));
		};
		for (_0 => _match in _matches) {
			{
				var _err:Error = stdgo.os.Os.removeAll(_match);
				if (_err != null) {
					stdgo.log.Log.printf(Go.str("Failed to remove %q: %v"), Go.toInterface(_match), Go.toInterface(_err));
				};
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function exampleCreateTemp():Void {
	var __deferstack__:Array<Void->Void> = [];
	var __tmp__ = stdgo.os.Os.createTemp(Go.str(), Go.str("example")),
		_f:Ref<File> = __tmp__._0,
		_err:Error = __tmp__._1;
	try {
		if (_err != null) {
			stdgo.log.Log.fatal(Go.toInterface(_err));
		};
		{
			var _a0 = _f.name();
			__deferstack__.unshift(() -> stdgo.os.Os.remove(_a0));
		};
		{
			var __tmp__ = _f.write((Go.str("content") : Slice<GoByte>)),
				_0:GoInt = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err != null) {
				stdgo.log.Log.fatal(Go.toInterface(_err));
			};
		};
		{
			var _err:Error = _f.close();
			if (_err != null) {
				stdgo.log.Log.fatal(Go.toInterface(_err));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function exampleCreateTemp_suffix():Void {
	var __deferstack__:Array<Void->Void> = [];
	var __tmp__ = stdgo.os.Os.createTemp(Go.str(), Go.str("example.*.txt")),
		_f:Ref<File> = __tmp__._0,
		_err:Error = __tmp__._1;
	try {
		if (_err != null) {
			stdgo.log.Log.fatal(Go.toInterface(_err));
		};
		{
			var _a0 = _f.name();
			__deferstack__.unshift(() -> stdgo.os.Os.remove(_a0));
		};
		{
			var __tmp__ = _f.write((Go.str("content") : Slice<GoByte>)),
				_0:GoInt = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err != null) {
				_f.close();
				stdgo.log.Log.fatal(Go.toInterface(_err));
			};
		};
		{
			var _err:Error = _f.close();
			if (_err != null) {
				stdgo.log.Log.fatal(Go.toInterface(_err));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function exampleReadFile():Void {
	var __tmp__ = stdgo.os.Os.readFile(Go.str("testdata/hello")),
		_data:Slice<GoUInt8> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		stdgo.log.Log.fatal(Go.toInterface(_err));
	};
	stdgo.os.Os.stdout.write(_data);
}

function exampleWriteFile():Void {
	var _err:Error = stdgo.os.Os.writeFile(Go.str("testdata/hello"), (Go.str("Hello, Gophers!") : Slice<GoByte>),
		(("438" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
	if (_err != null) {
		stdgo.log.Log.fatal(Go.toInterface(_err));
	};
}

function exampleMkdir():Void {
	var _err:Error = stdgo.os.Os.mkdir(Go.str("testdir"), (("488" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
	if ((_err != null) && !stdgo.os.Os.isExist(_err)) {
		stdgo.log.Log.fatal(Go.toInterface(_err));
	};
	_err = stdgo.os.Os.writeFile(Go.str("testdir/testfile.txt"), (Go.str("Hello, Gophers!") : Slice<GoByte>), (("432" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
	if (_err != null) {
		stdgo.log.Log.fatal(Go.toInterface(_err));
	};
}

function exampleMkdirAll():Void {
	var _err:Error = stdgo.os.Os.mkdirAll(Go.str("test/subdir"), (("488" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
	if ((_err != null) && !stdgo.os.Os.isExist(_err)) {
		stdgo.log.Log.fatal(Go.toInterface(_err));
	};
	_err = stdgo.os.Os.writeFile(Go.str("test/subdir/testfile.txt"), (Go.str("Hello, Gophers!") : Slice<GoByte>),
		(("432" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
	if (_err != null) {
		stdgo.log.Log.fatal(Go.toInterface(_err));
	};
}

function testExecutable(_t:Ref<stdgo.testing.Testing.T>):Void {
	stdgo.internal.testenv.Testenv.mustHaveExec(Go.asInterface(_t));
	var __tmp__ = stdgo.os.Os.executable(),
		_ep:GoString = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatalf(Go.str("Executable failed: %v"), Go.toInterface(_err));
	};
	var _dir:GoString = stdgo.path.filepath.Filepath.dir(stdgo.path.filepath.Filepath.dir(_ep));
	var __tmp__ = stdgo.path.filepath.Filepath.rel(_dir, _ep),
		_fn:GoString = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatalf(Go.str("filepath.Rel: %v"), Go.toInterface(_err));
	};
	var _cmd = ((new stdgo.os.exec.Exec.Cmd() : stdgo.os.exec.Exec.Cmd) : Ref<stdgo.os.exec.Exec.Cmd>);
	_cmd.dir = _dir;
	_cmd.path = _fn;
	_cmd.args = (new Slice<GoString>(0, 0, Go.str("-"), Go.str("-test.run=XXXX")) : Slice<GoString>);
	if (false) {
		_cmd.args[(0 : GoInt)] = _fn;
	};
	_cmd.env = (stdgo.os.Os.environ().__append__(stdgo.fmt.Fmt.sprintf(Go.str("%s=1"), Go.toInterface(Go.str("OSTEST_OUTPUT_EXECPATH")))));
	var __tmp__ = _cmd.combinedOutput(),
		_out:Slice<GoUInt8> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatalf(Go.str("exec(self) failed: %v"), Go.toInterface(_err));
	};
	var _outs:GoString = (_out : GoString);
	if (!stdgo.path.filepath.Filepath.isAbs(_outs)) {
		_t.fatalf(Go.str("Child returned %q, want an absolute path"), Go.toInterface(_out));
	};
	if (!_sameFile(_outs, _ep)) {
		_t.fatalf(Go.str("Child returned %q, not the same file as %q"), Go.toInterface(_out), Go.toInterface(_ep));
	};
}

function _sameFile(_fn1:GoString, _fn2:GoString):Bool {
	var __tmp__ = stdgo.os.Os.stat(_fn1),
		_fi1:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		return false;
	};
	var __tmp__ = stdgo.os.Os.stat(_fn2),
		_fi2:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		return false;
	};
	return stdgo.os.Os.sameFile(_fi1, _fi2);
}

function testExecutableDeleted(_t:Ref<stdgo.testing.Testing.T>):Void {
	stdgo.internal.testenv.Testenv.mustHaveExec(Go.asInterface(_t));
	if (Go.str("js") == (Go.str("windows")) || Go.str("js") == (Go.str("plan9"))) {
		_t.skipf(Go.str("%v does not support deleting running binary"), Go.toInterface(Go.str("js")));
	} else if (Go.str("js") == (Go.str("openbsd")) || Go.str("js") == (Go.str("freebsd")) || Go.str("js") == (Go.str("aix"))) {
		_t.skipf(Go.str("%v does not support reading deleted binary name"), Go.toInterface(Go.str("js")));
	};
	var _dir:GoString = _t.tempDir();
	var _src:GoString = stdgo.path.filepath.Filepath.join(_dir, Go.str("testdel.go"));
	var _exe:GoString = stdgo.path.filepath.Filepath.join(_dir, Go.str("testdel.exe"));
	var _err:Error = stdgo.os.Os.writeFile(_src,
		(Go.str("package main\n\nimport (\n\t\"fmt\"\n\t\"os\"\n)\n\nfunc main() {\n\tbefore, err := os.Executable()\n\tif err != nil {\n\t\tfmt.Fprintf(os.Stderr, \"failed to read executable name before deletion: %v\\n\", err)\n\t\tos.Exit(1)\n\t}\n\n\terr = os.Remove(before)\n\tif err != nil {\n\t\tfmt.Fprintf(os.Stderr, \"failed to remove executable: %v\\n\", err)\n\t\tos.Exit(1)\n\t}\n\n\tafter, err := os.Executable()\n\tif err != nil {\n\t\tfmt.Fprintf(os.Stderr, \"failed to read executable name after deletion: %v\\n\", err)\n\t\tos.Exit(1)\n\t}\n\n\tif before != after {\n\t\tfmt.Fprintf(os.Stderr, \"before and after do not match: %v != %v\\n\", before, after)\n\t\tos.Exit(1)\n\t}\n}\n") : Slice<GoByte>),
		(("438" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
	var __tmp__ = stdgo.os.exec.Exec.command(stdgo.internal.testenv.Testenv.goToolPath(Go.asInterface(_t)), Go.str("build"), Go.str("-o"), _exe, _src)
		.combinedOutput(),
		_out:Slice<GoUInt8> = __tmp__._0,
		_err:Error = __tmp__._1;
	_t.logf(Go.str("build output:\n%s"), Go.toInterface(_out));
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
	{
		var __tmp__ = stdgo.os.exec.Exec.command(_exe).combinedOutput();
		_out = __tmp__._0;
		_err = __tmp__._1;
	};
	_t.logf(Go.str("exec output:\n%s"), Go.toInterface(_out));
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
}

function testMain(_m:Ref<stdgo.testing.Testing.M>):Void {
	if (getenv(Go.str("GO_OS_TEST_DRAIN_STDIN")) == (Go.str("1"))) {
		stdgo.os.Os.stdout.close();
		stdgo.io.Io.copy(stdgo.io.Io.discard, Go.asInterface(stdgo.os.Os.stdin));
		exit((0 : GoInt));
	};
	exit(_m.run());
}

function _size(_name:GoString, _t:Ref<stdgo.testing.Testing.T>):GoInt64 {
	var __deferstack__:Array<Void->Void> = [];
	var __tmp__ = open(_name),
		_file:Ref<File> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface(Go.str("open failed:")), Go.toInterface(_err));
	};
	try {
		__deferstack__.unshift(() -> {
			var a = function():Void {
				{
					var _err:Error = _file.close();
					if (_err != null) {
						_t.error(Go.toInterface(_err));
					};
				};
			};
			a();
		});
		var __tmp__ = stdgo.io.Io.copy(stdgo.io.Io.discard, Go.asInterface(_file)),
			_n:GoInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			return _n;
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return (0 : GoInt64);
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return (0 : GoInt64);
	};
}

function _equal(_name1:GoString, _name2:GoString):Bool {
	var _r:Bool = false;
	if (Go.str("js") == (Go.str("windows"))) {
		_r = stdgo.strings.Strings.toLower(_name1) == (stdgo.strings.Strings.toLower(_name2));
	} else {
		_r = _name1 == (_name2);
	};
	return _r;
}

/**
	// localTmp returns a local temporary directory not on NFS.
**/
function _localTmp():GoString {
	if (Go.str("js") == (Go.str("android")) || Go.str("js") == (Go.str("ios")) || Go.str("js") == (Go.str("windows"))) {
		return tempDir();
	};
	return Go.str("/tmp");
}

function _newFile(_testName:GoString, _t:Ref<stdgo.testing.Testing.T>):Ref<File> {
	var _f:Ref<File> = (null : Ref<File>);
	var __tmp__ = stdgo.os.Os.createTemp(_localTmp(), Go.str("_Go_") + _testName),
		_f:Ref<File> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatalf(Go.str("TempFile %s: %s"), Go.toInterface(_testName), Go.toInterface(_err));
	};
	return _f;
}

function _newDir(_testName:GoString, _t:Ref<stdgo.testing.Testing.T>):GoString {
	var _name:GoString = ("" : GoString);
	var __tmp__ = stdgo.os.Os.mkdirTemp(_localTmp(), Go.str("_Go_") + _testName),
		_name:GoString = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatalf(Go.str("TempDir %s: %s"), Go.toInterface(_testName), Go.toInterface(_err));
	};
	return _name;
}

function testStat(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _path:GoString = (_sfdir + Go.str("/")) + _sfname;
	var __tmp__ = stat(_path),
		_dir:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface(Go.str("stat failed:")), Go.toInterface(_err));
	};
	if (!_equal(_sfname, _dir.name())) {
		_t.error(Go.toInterface(Go.str("name should be ")), Go.toInterface(_sfname), Go.toInterface(Go.str("; is")), Go.toInterface(_dir.name()));
	};
	var _filesize:GoInt64 = _size(_path, _t);
	if (_dir.size() != (_filesize)) {
		_t.error(Go.toInterface(Go.str("size should be")), Go.toInterface(_filesize), Go.toInterface(Go.str("; is")), Go.toInterface(_dir.size()));
	};
}

function testStatError(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	__deferstack__.unshift(() -> _chtmpdir(_t)());
	try {
		var _path:GoString = Go.str("no-such-file");
		var __tmp__ = stat(_path),
			_fi:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err == null) {
			_t.fatal(Go.toInterface(Go.str("got nil, want error")));
		};
		if (_fi != null) {
			_t.errorf(Go.str("got %v, want nil"), Go.toInterface(_fi));
		};
		{
			var __tmp__ = try {
				{value: (Go.typeAssert((Go.toInterface(_err) : Ref<PathError>)) : Ref<PathError>), ok: true};
			} catch (_) {
				{value: (null : Ref<stdgo.io.fs.Fs.PathError>), ok: false};
			}, _perr = __tmp__.value, _ok = __tmp__.ok;
			if (!_ok) {
				_t.errorf(Go.str("got %T, want %T"), Go.toInterface(_err), Go.toInterface(_perr));
			};
		};
		stdgo.internal.testenv.Testenv.mustHaveSymlink(Go.asInterface(_t));
		var _link:GoString = Go.str("symlink");
		_err = symlink(_path, _link);
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		{
			var __tmp__ = stat(_link);
			_fi = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err == null) {
			_t.fatal(Go.toInterface(Go.str("got nil, want error")));
		};
		if (_fi != null) {
			_t.errorf(Go.str("got %v, want nil"), Go.toInterface(_fi));
		};
		{
			var __tmp__ = try {
				{value: (Go.typeAssert((Go.toInterface(_err) : Ref<PathError>)) : Ref<PathError>), ok: true};
			} catch (_) {
				{value: (null : Ref<stdgo.io.fs.Fs.PathError>), ok: false};
			}, _perr = __tmp__.value, _ok = __tmp__.ok;
			if (!_ok) {
				_t.errorf(Go.str("got %T, want %T"), Go.toInterface(_err), Go.toInterface(_perr));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testStatSymlinkLoop(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	stdgo.internal.testenv.Testenv.mustHaveSymlink(Go.asInterface(_t));
	try {
		__deferstack__.unshift(() -> _chtmpdir(_t)());
		var _err:Error = stdgo.os.Os.symlink(Go.str("x"), Go.str("y"));
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		{
			var _a0 = Go.str("y");
			__deferstack__.unshift(() -> stdgo.os.Os.remove(_a0));
		};
		_err = stdgo.os.Os.symlink(Go.str("y"), Go.str("x"));
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		{
			var _a0 = Go.str("x");
			__deferstack__.unshift(() -> stdgo.os.Os.remove(_a0));
		};
		{
			var __tmp__ = stdgo.os.Os.stat(Go.str("x"));
			_err = __tmp__._1;
		};
		{
			var __tmp__ = try {
				{value: (Go.typeAssert((Go.toInterface(_err) : Ref<stdgo.io.fs.Fs.PathError>)) : Ref<stdgo.io.fs.Fs.PathError>), ok: true};
			} catch (_) {
				{value: (null : Ref<stdgo.io.fs.Fs.PathError>), ok: false};
			}, _0 = __tmp__.value, _ok = __tmp__.ok;
			if (!_ok) {
				_t.errorf(Go.str("expected *PathError, got %T: %v\n"), Go.toInterface(_err), Go.toInterface(_err));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testFstat(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _path:GoString = (_sfdir + Go.str("/")) + _sfname;
	try {
		var __tmp__ = open(_path),
			_file:Ref<File> = __tmp__._0,
			_err1:Error = __tmp__._1;
		if (_err1 != null) {
			_t.fatal(Go.toInterface(Go.str("open failed:")), Go.toInterface(_err1));
		};
		__deferstack__.unshift(() -> _file.close());
		var __tmp__ = _file.stat(),
			_dir:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err2:Error = __tmp__._1;
		if (_err2 != null) {
			_t.fatal(Go.toInterface(Go.str("fstat failed:")), Go.toInterface(_err2));
		};
		if (!_equal(_sfname, _dir.name())) {
			_t.error(Go.toInterface(Go.str("name should be ")), Go.toInterface(_sfname), Go.toInterface(Go.str("; is")), Go.toInterface(_dir.name()));
		};
		var _filesize:GoInt64 = _size(_path, _t);
		if (_dir.size() != (_filesize)) {
			_t.error(Go.toInterface(Go.str("size should be")), Go.toInterface(_filesize), Go.toInterface(Go.str("; is")), Go.toInterface(_dir.size()));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testLstat(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _path:GoString = (_sfdir + Go.str("/")) + _sfname;
	var __tmp__ = lstat(_path),
		_dir:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface(Go.str("lstat failed:")), Go.toInterface(_err));
	};
	if (!_equal(_sfname, _dir.name())) {
		_t.error(Go.toInterface(Go.str("name should be ")), Go.toInterface(_sfname), Go.toInterface(Go.str("; is")), Go.toInterface(_dir.name()));
	};
	var _filesize:GoInt64 = _size(_path, _t);
	if (_dir.size() != (_filesize)) {
		_t.error(Go.toInterface(Go.str("size should be")), Go.toInterface(_filesize), Go.toInterface(Go.str("; is")), Go.toInterface(_dir.size()));
	};
}

/**
	// Read with length 0 should not return EOF.
**/
function testRead0(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _path:GoString = (_sfdir + Go.str("/")) + _sfname;
	try {
		var __tmp__ = open(_path),
			_f:Ref<File> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatal(Go.toInterface(Go.str("open failed:")), Go.toInterface(_err));
		};
		__deferstack__.unshift(() -> _f.close());
		var _b = new Slice<GoUInt8>((0 : GoInt).toBasic(), 0, ...[for (i in 0...(0 : GoInt).toBasic()) (0 : GoUInt8)]);
		var __tmp__ = _f.read(_b),
			_n:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if ((_n != (0 : GoInt)) || (_err != null)) {
			_t.errorf(Go.str("Read(0) = %d, %v, want 0, nil"), Go.toInterface(_n), Go.toInterface(_err));
		};
		_b = new Slice<GoUInt8>((100 : GoInt).toBasic(), 0, ...[for (i in 0...(100 : GoInt).toBasic()) (0 : GoUInt8)]);
		{
			var __tmp__ = _f.read(_b);
			_n = __tmp__._0;
			_err = __tmp__._1;
		};
		if ((_n <= (0 : GoInt)) || (_err != null)) {
			_t.errorf(Go.str("Read(100) = %d, %v, want >0, nil"), Go.toInterface(_n), Go.toInterface(_err));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

/**
	// Reading a closed file should return ErrClosed error
**/
function testReadClosed(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _path:GoString = (_sfdir + Go.str("/")) + _sfname;
	var __tmp__ = open(_path),
		_file:Ref<File> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface(Go.str("open failed:")), Go.toInterface(_err));
	};
	_file.close();
	var _b = new Slice<GoUInt8>((100 : GoInt).toBasic(), 0, ...[for (i in 0...(100 : GoInt).toBasic()) (0 : GoUInt8)]);
	{
		var __tmp__ = _file.read(_b);
		_err = __tmp__._1;
	};
	var __tmp__ = try {
		{value: (Go.typeAssert((Go.toInterface(_err) : Ref<PathError>)) : Ref<PathError>), ok: true};
	} catch (_) {
		{value: (null : Ref<stdgo.io.fs.Fs.PathError>), ok: false};
	}, _e = __tmp__.value, _ok = __tmp__.ok;
	if (!_ok) {
		_t.fatalf(Go.str("Read: %T(%v), want PathError"), Go.toInterface(_e), Go.toInterface(_e));
	};
	if (Go.toInterface(_e.err) != (Go.toInterface(errClosed))) {
		_t.errorf(Go.str("Read: %v, want PathError(ErrClosed)"), Go.toInterface(_e));
	};
}

function _testReaddirnames(_dir:GoString, _contents:Slice<GoString>, _t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var __tmp__ = open(_dir),
		_file:Ref<File> = __tmp__._0,
		_err:Error = __tmp__._1;
	try {
		if (_err != null) {
			_t.fatalf(Go.str("open %q failed: %v"), Go.toInterface(_dir), Go.toInterface(_err));
		};
		__deferstack__.unshift(() -> _file.close());
		var __tmp__ = _file.readdirnames((-1 : GoInt)),
			_s:Slice<GoString> = __tmp__._0,
			_err2:Error = __tmp__._1;
		if (_err2 != null) {
			_t.fatalf(Go.str("Readdirnames %q failed: %v"), Go.toInterface(_dir), Go.toInterface(_err2));
		};
		for (_0 => _m in _contents) {
			var _found:Bool = false;
			for (_1 => _n in _s) {
				if ((_n == Go.str(".")) || (_n == Go.str(".."))) {
					_t.errorf(Go.str("got %q in directory"), Go.toInterface(_n));
				};
				if (!_equal(_m, _n)) {
					continue;
				};
				if (_found) {
					_t.error(Go.toInterface(Go.str("present twice:")), Go.toInterface(_m));
				};
				_found = true;
			};
			if (!_found) {
				_t.error(Go.toInterface(Go.str("could not find")), Go.toInterface(_m));
			};
		};
		if (_s == null) {
			_t.error(Go.toInterface(Go.str("Readdirnames returned nil instead of empty slice")));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function _testReaddir(_dir:GoString, _contents:Slice<GoString>, _t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var __tmp__ = open(_dir),
		_file:Ref<File> = __tmp__._0,
		_err:Error = __tmp__._1;
	try {
		if (_err != null) {
			_t.fatalf(Go.str("open %q failed: %v"), Go.toInterface(_dir), Go.toInterface(_err));
		};
		__deferstack__.unshift(() -> _file.close());
		var __tmp__ = _file.readdir((-1 : GoInt)),
			_s:Slice<stdgo.io.fs.Fs.FileInfo> = __tmp__._0,
			_err2:Error = __tmp__._1;
		if (_err2 != null) {
			_t.fatalf(Go.str("Readdir %q failed: %v"), Go.toInterface(_dir), Go.toInterface(_err2));
		};
		for (_0 => _m in _contents) {
			var _found:Bool = false;
			for (_1 => _n in _s) {
				if ((_n.name() == Go.str(".")) || (_n.name() == Go.str(".."))) {
					_t.errorf(Go.str("got %q in directory"), Go.toInterface(_n.name()));
				};
				if (!_equal(_m, _n.name())) {
					continue;
				};
				if (_found) {
					_t.error(Go.toInterface(Go.str("present twice:")), Go.toInterface(_m));
				};
				_found = true;
			};
			if (!_found) {
				_t.error(Go.toInterface(Go.str("could not find")), Go.toInterface(_m));
			};
		};
		if (_s == null) {
			_t.error(Go.toInterface(Go.str("Readdir returned nil instead of empty slice")));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function _testReadDir(_dir:GoString, _contents:Slice<GoString>, _t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var __tmp__ = open(_dir),
		_file:Ref<File> = __tmp__._0,
		_err:Error = __tmp__._1;
	try {
		if (_err != null) {
			_t.fatalf(Go.str("open %q failed: %v"), Go.toInterface(_dir), Go.toInterface(_err));
		};
		__deferstack__.unshift(() -> _file.close());
		var __tmp__ = _file.readDir((-1 : GoInt)),
			_s:Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0,
			_err2:Error = __tmp__._1;
		if (_err2 != null) {
			_t.fatalf(Go.str("ReadDir %q failed: %v"), Go.toInterface(_dir), Go.toInterface(_err2));
		};
		for (_0 => _m in _contents) {
			var _found:Bool = false;
			for (_1 => _n in _s) {
				if ((_n.name() == Go.str(".")) || (_n.name() == Go.str(".."))) {
					_t.errorf(Go.str("got %q in directory"), Go.toInterface(_n));
				};
				if (!_equal(_m, _n.name())) {
					continue;
				};
				if (_found) {
					_t.error(Go.toInterface(Go.str("present twice:")), Go.toInterface(_m));
				};
				_found = true;
				var __tmp__ = lstat((_dir + Go.str("/")) + _m),
					_lstat:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
					_err:Error = __tmp__._1;
				if (_err != null) {
					_t.fatal(Go.toInterface(_err));
				};
				if (_n.isDir() != (_lstat.isDir())) {
					_t.errorf(Go.str("%s: IsDir=%v, want %v"), Go.toInterface(_m), Go.toInterface(_n.isDir()), Go.toInterface(_lstat.isDir()));
				};
				if (_n.type() != (_lstat.mode().type())) {
					_t.errorf(Go.str("%s: IsDir=%v, want %v"), Go.toInterface(_m), Go.toInterface(Go.asInterface(_n.type())),
						Go.toInterface(Go.asInterface(_lstat.mode().type())));
				};
				var __tmp__ = _n.info(),
					_info:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
					_err:Error = __tmp__._1;
				if (_err != null) {
					_t.errorf(Go.str("%s: Info: %v"), Go.toInterface(_m), Go.toInterface(_err));
					continue;
				};
				if (!sameFile(_info, _lstat)) {
					_t.errorf(Go.str("%s: Info: SameFile(info, lstat) = false"), Go.toInterface(_m));
				};
			};
			if (!_found) {
				_t.error(Go.toInterface(Go.str("could not find")), Go.toInterface(_m));
			};
		};
		if (_s == null) {
			_t.error(Go.toInterface(Go.str("ReadDir returned nil instead of empty slice")));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testFileReaddirnames(_t:Ref<stdgo.testing.Testing.T>):Void {
	_testReaddirnames(Go.str("."), _dot, _t);
	_testReaddirnames(_sysdir._name, _sysdir._files, _t);
	_testReaddirnames(_t.tempDir(), (null : Slice<GoString>), _t);
}

function testFileReaddir(_t:Ref<stdgo.testing.Testing.T>):Void {
	_testReaddir(Go.str("."), _dot, _t);
	_testReaddir(_sysdir._name, _sysdir._files, _t);
	_testReaddir(_t.tempDir(), (null : Slice<GoString>), _t);
}

function testFileReadDir(_t:Ref<stdgo.testing.Testing.T>):Void {
	_testReadDir(Go.str("."), _dot, _t);
	_testReadDir(_sysdir._name, _sysdir._files, _t);
	_testReadDir(_t.tempDir(), (null : Slice<GoString>), _t);
}

function _benchmarkReaddirname(_path:GoString, _b:Ref<stdgo.testing.Testing.B>):Void {
	var _nentries:GoInt = (0 : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			var __tmp__ = open(_path),
				_f:Ref<File> = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err != null) {
				_b.fatalf(Go.str("open %q failed: %v"), Go.toInterface(_path), Go.toInterface(_err));
			};
			var __tmp__ = _f.readdirnames((-1 : GoInt)),
				_ns:Slice<GoString> = __tmp__._0,
				_err:Error = __tmp__._1;
			_f.close();
			if (_err != null) {
				_b.fatalf(Go.str("readdirnames %q failed: %v"), Go.toInterface(_path), Go.toInterface(_err));
			};
			_nentries = (_ns.length);
		});
	};
	_b.logf(Go.str("benchmarkReaddirname %q: %d entries"), Go.toInterface(_path), Go.toInterface(_nentries));
}

function _benchmarkReaddir(_path:GoString, _b:Ref<stdgo.testing.Testing.B>):Void {
	var _nentries:GoInt = (0 : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			var __tmp__ = open(_path),
				_f:Ref<File> = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err != null) {
				_b.fatalf(Go.str("open %q failed: %v"), Go.toInterface(_path), Go.toInterface(_err));
			};
			var __tmp__ = _f.readdir((-1 : GoInt)),
				_fs:Slice<stdgo.io.fs.Fs.FileInfo> = __tmp__._0,
				_err:Error = __tmp__._1;
			_f.close();
			if (_err != null) {
				_b.fatalf(Go.str("readdir %q failed: %v"), Go.toInterface(_path), Go.toInterface(_err));
			};
			_nentries = (_fs.length);
		});
	};
	_b.logf(Go.str("benchmarkReaddir %q: %d entries"), Go.toInterface(_path), Go.toInterface(_nentries));
}

function _benchmarkReadDir(_path:GoString, _b:Ref<stdgo.testing.Testing.B>):Void {
	var _nentries:GoInt = (0 : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			var __tmp__ = open(_path),
				_f:Ref<File> = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err != null) {
				_b.fatalf(Go.str("open %q failed: %v"), Go.toInterface(_path), Go.toInterface(_err));
			};
			var __tmp__ = _f.readDir((-1 : GoInt)),
				_fs:Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0,
				_err:Error = __tmp__._1;
			_f.close();
			if (_err != null) {
				_b.fatalf(Go.str("readdir %q failed: %v"), Go.toInterface(_path), Go.toInterface(_err));
			};
			_nentries = (_fs.length);
		});
	};
	_b.logf(Go.str("benchmarkReadDir %q: %d entries"), Go.toInterface(_path), Go.toInterface(_nentries));
}

function benchmarkReaddirname(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkReaddirname(Go.str("."), _b);
}

function benchmarkReaddir(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkReaddir(Go.str("."), _b);
}

function benchmarkReadDir(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkReadDir(Go.str("."), _b);
}

function _benchmarkStat(_b:Ref<stdgo.testing.Testing.B>, _path:GoString):Void {
	_b.resetTimer();
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			var __tmp__ = stat(_path),
				_0:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err != null) {
				_b.fatalf(Go.str("Stat(%q) failed: %v"), Go.toInterface(_path), Go.toInterface(_err));
			};
		});
	};
}

function _benchmarkLstat(_b:Ref<stdgo.testing.Testing.B>, _path:GoString):Void {
	_b.resetTimer();
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			var __tmp__ = lstat(_path),
				_0:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err != null) {
				_b.fatalf(Go.str("Lstat(%q) failed: %v"), Go.toInterface(_path), Go.toInterface(_err));
			};
		});
	};
}

function benchmarkStatDot(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkStat(_b, Go.str("."));
}

function benchmarkStatFile(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkStat(_b, stdgo.path.filepath.Filepath.join(stdgo.runtime.Runtime.goroot(), Go.str("src/os/os_test.go")));
}

function benchmarkStatDir(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkStat(_b, stdgo.path.filepath.Filepath.join(stdgo.runtime.Runtime.goroot(), Go.str("src/os")));
}

function benchmarkLstatDot(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkLstat(_b, Go.str("."));
}

function benchmarkLstatFile(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkLstat(_b, stdgo.path.filepath.Filepath.join(stdgo.runtime.Runtime.goroot(), Go.str("src/os/os_test.go")));
}

function benchmarkLstatDir(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkLstat(_b, stdgo.path.filepath.Filepath.join(stdgo.runtime.Runtime.goroot(), Go.str("src/os")));
}

/**
	// Read the directory one entry at a time.
**/
function _smallReaddirnames(_file:Ref<File>, _length:GoInt, _t:Ref<stdgo.testing.Testing.T>):Slice<GoString> {
	var _names = new Slice<GoString>((_length : GoInt).toBasic(), 0, ...[for (i in 0...(_length : GoInt).toBasic()) ("" : GoString)]);
	var _count:GoInt = (0 : GoInt);
	while (true) {
		var __tmp__ = _file.readdirnames((1 : GoInt)),
			_d:Slice<GoString> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (Go.toInterface(_err) == (Go.toInterface(stdgo.io.Io.eof))) {
			break;
		};
		if (_err != null) {
			_t.fatalf(Go.str("readdirnames %q failed: %v"), Go.toInterface(_file.name()), Go.toInterface(_err));
		};
		if ((_d.length) == ((0 : GoInt))) {
			_t.fatalf(Go.str("readdirnames %q returned empty slice and no error"), Go.toInterface(_file.name()));
		};
		_names[_count] = _d[(0 : GoInt)];
		_count++;
	};
	return (_names.__slice__((0 : GoInt), _count) : Slice<GoString>);
}

/**
	// Check that reading a directory one entry at a time gives the same result
	// as reading it all at once.
**/
function testReaddirnamesOneAtATime(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _dir:GoString = Go.str("/usr/bin");
	try {
		if (Go.str("js") == (Go.str("android"))) {
			_dir = Go.str("/system/bin");
		} else if (Go.str("js") == (Go.str("ios"))) {
			var __tmp__ = getwd(),
				_wd:GoString = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err != null) {
				_t.fatal(Go.toInterface(_err));
			};
			_dir = _wd;
		} else if (Go.str("js") == (Go.str("plan9"))) {
			_dir = Go.str("/bin");
		} else if (Go.str("js") == (Go.str("windows"))) {
			_dir = getenv(Go.str("SystemRoot")) + Go.str("\\system32");
		};
		var __tmp__ = open(_dir),
			_file:Ref<File> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("open %q failed: %v"), Go.toInterface(_dir), Go.toInterface(_err));
		};
		__deferstack__.unshift(() -> _file.close());
		var __tmp__ = _file.readdirnames((-1 : GoInt)),
			_all:Slice<GoString> = __tmp__._0,
			_err1:Error = __tmp__._1;
		if (_err1 != null) {
			_t.fatalf(Go.str("readdirnames %q failed: %v"), Go.toInterface(_dir), Go.toInterface(_err1));
		};
		var __tmp__ = open(_dir),
			_file1:Ref<File> = __tmp__._0,
			_err2:Error = __tmp__._1;
		if (_err2 != null) {
			_t.fatalf(Go.str("open %q failed: %v"), Go.toInterface(_dir), Go.toInterface(_err2));
		};
		__deferstack__.unshift(() -> _file1.close());
		var _small = _smallReaddirnames(_file1, (_all.length) + (100 : GoInt), _t);
		if ((_small.length) < (_all.length)) {
			_t.fatalf(Go.str("len(small) is %d, less than %d"), Go.toInterface((_small.length)), Go.toInterface((_all.length)));
		};
		for (_i => _n in _all) {
			if (_small[_i] != (_n)) {
				_t.errorf(Go.str("small read %q mismatch: %v"), Go.toInterface(_small[_i]), Go.toInterface(_n));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testReaddirNValues(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (stdgo.testing.Testing.short()) {
		_t.skip(Go.toInterface(Go.str("test.short; skipping")));
	};
	var _dir:GoString = _t.tempDir();
	{
		var _i:GoInt = (1 : GoInt);
		Go.cfor(_i <= (105 : GoInt), _i++, {
			var __tmp__ = create(stdgo.path.filepath.Filepath.join(_dir, stdgo.fmt.Fmt.sprintf(Go.str("%d"), Go.toInterface(_i)))),
				_f:Ref<File> = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err != null) {
				_t.fatalf(Go.str("Create: %v"), Go.toInterface(_err));
			};
			_f.write((stdgo.strings.Strings.repeat(Go.str("X"), _i) : Slice<GoByte>));
			_f.close();
		});
	};
	var _d:Ref<File> = (null : Ref<File>);
	var _openDir:() -> Void = function():Void {
		var _err:Error = (null : Error);
		{
			var __tmp__ = open(_dir);
			_d = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			_t.fatalf(Go.str("Open directory: %v"), Go.toInterface(_err));
		};
	};
	var _readdirExpect:(GoInt, GoInt, Error) -> Void = function(_n:GoInt, _want:GoInt, _wantErr:Error):Void {
		_t.helper();
		var __tmp__ = _d.readdir(_n), _fi:Slice<stdgo.io.fs.Fs.FileInfo> = __tmp__._0, _err:Error = __tmp__._1;
		if (Go.toInterface(_err) != (Go.toInterface(_wantErr))) {
			_t.fatalf(Go.str("Readdir of %d got error %v, want %v"), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface(_wantErr));
		};
		{
			var _0:GoInt = (_fi.length), _1:GoInt = _want, _e:GoInt = _1, _g:GoInt = _0;
			if (_g != (_e)) {
				_t.errorf(Go.str("Readdir of %d got %d files, want %d"), Go.toInterface(_n), Go.toInterface(_g), Go.toInterface(_e));
			};
		};
	};
	var _readDirExpect:(GoInt, GoInt, Error) -> Void = function(_n:GoInt, _want:GoInt, _wantErr:Error):Void {
		_t.helper();
		var __tmp__ = _d.readDir(_n), _de:Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0, _err:Error = __tmp__._1;
		if (Go.toInterface(_err) != (Go.toInterface(_wantErr))) {
			_t.fatalf(Go.str("ReadDir of %d got error %v, want %v"), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface(_wantErr));
		};
		{
			var _0:GoInt = (_de.length), _1:GoInt = _want, _e:GoInt = _1, _g:GoInt = _0;
			if (_g != (_e)) {
				_t.errorf(Go.str("ReadDir of %d got %d files, want %d"), Go.toInterface(_n), Go.toInterface(_g), Go.toInterface(_e));
			};
		};
	};
	var _readdirnamesExpect:(GoInt, GoInt, Error) -> Void = function(_n:GoInt, _want:GoInt, _wantErr:Error):Void {
		_t.helper();
		var __tmp__ = _d.readdirnames(_n), _fi:Slice<GoString> = __tmp__._0, _err:Error = __tmp__._1;
		if (Go.toInterface(_err) != (Go.toInterface(_wantErr))) {
			_t.fatalf(Go.str("Readdirnames of %d got error %v, want %v"), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface(_wantErr));
		};
		{
			var _0:GoInt = (_fi.length), _1:GoInt = _want, _e:GoInt = _1, _g:GoInt = _0;
			if (_g != (_e)) {
				_t.errorf(Go.str("Readdirnames of %d got %d files, want %d"), Go.toInterface(_n), Go.toInterface(_g), Go.toInterface(_e));
			};
		};
	};
	for (_0 => _fn in (new Slice<(GoInt, GoInt,
			Error) -> Void>(0, 0, _readdirExpect, _readdirnamesExpect, _readDirExpect) : Slice<(GoInt, GoInt, Error) -> Void>)) {
		_openDir();
		_fn((0 : GoInt), (105 : GoInt), (null : Error));
		_fn((0 : GoInt), (0 : GoInt), (null : Error));
		_d.close();
		_openDir();
		_fn((-1 : GoInt), (105 : GoInt), (null : Error));
		_fn((-2 : GoInt), (0 : GoInt), (null : Error));
		_fn((0 : GoInt), (0 : GoInt), (null : Error));
		_d.close();
		_openDir();
		_fn((1 : GoInt), (1 : GoInt), (null : Error));
		_fn((2 : GoInt), (2 : GoInt), (null : Error));
		_fn((105 : GoInt), (102 : GoInt), (null : Error));
		_fn((3 : GoInt), (0 : GoInt), stdgo.io.Io.eof);
		_d.close();
	};
}

function _touch(_t:Ref<stdgo.testing.Testing.T>, _name:GoString):Void {
	var __tmp__ = create(_name),
		_f:Ref<File> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
	{
		var _err:Error = _f.close();
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
}

function testReaddirStatFailures(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	if (Go.str("js") == (Go.str("windows")) || Go.str("js") == (Go.str("plan9"))) {
		_t.skipf(Go.str("skipping test on %v"), Go.toInterface(Go.str("js")));
	};
	try {
		var _dir:GoString = _t.tempDir();
		_touch(_t, stdgo.path.filepath.Filepath.join(_dir, Go.str("good1")));
		_touch(_t, stdgo.path.filepath.Filepath.join(_dir, Go.str("x")));
		_touch(_t, stdgo.path.filepath.Filepath.join(_dir, Go.str("good2")));
		__deferstack__.unshift(() -> {
			var a = function():Void {
				lstatP = lstat;
			};
			a();
		});
		var _xerr:Error = (null : Error);
		lstatP = function(_path:GoString):{var _0:FileInfo; var _1:Error;} {
			if ((_xerr != null) && stdgo.strings.Strings.hasSuffix(_path, Go.str("x"))) {
				return {_0: (null : stdgo.io.fs.Fs.FileInfo), _1: _xerr};
			};
			return lstat(_path);
		};
		var _readDir:() -> {
			var _0:Slice<stdgo.io.fs.Fs.FileInfo>;
			var _1:Error;
		} = function():{var _0:Slice<FileInfo>; var _1:Error;} {
			var __deferstack__:Array<Void->Void> = [];
			var __tmp__ = open(_dir), _d:Ref<File> = __tmp__._0, _err:Error = __tmp__._1;
			if (_err != null) {
				_t.fatal(Go.toInterface(_err));
			};
			__deferstack__.unshift(() -> _d.close());
			try {
				{
					for (defer in __deferstack__) {
						defer();
					};
					return _d.readdir((-1 : GoInt));
				};
				for (defer in __deferstack__) {
					defer();
				};
				{
					for (defer in __deferstack__) {
						defer();
					};
					if (Go.recover_exception != null)
						throw Go.recover_exception;
					return {_0: (null : Slice<stdgo.io.fs.Fs.FileInfo>), _1: (null : Error)};
				};
			} catch (__exception__) {
				if (!(__exception__.native is AnyInterfaceData))
					throw __exception__;
				Go.recover_exception = __exception__.native;
				for (defer in __deferstack__) {
					defer();
				};
				if (Go.recover_exception != null)
					throw Go.recover_exception;
				return {_0: (null : Slice<stdgo.io.fs.Fs.FileInfo>), _1: (null : Error)};
			};
		};
		var _mustReadDir = function(_testName:GoString):Slice<FileInfo> {
			var __tmp__ = _readDir(), _fis:Slice<stdgo.io.fs.Fs.FileInfo> = __tmp__._0, _err:Error = __tmp__._1;
			if (_err != null) {
				_t.fatalf(Go.str("%s: Readdir: %v"), Go.toInterface(_testName), Go.toInterface(_err));
			};
			return _fis;
		};
		var _names = function(_fis:Slice<FileInfo>):Slice<GoString> {
			var _s = new Slice<GoString>((_fis.length : GoInt).toBasic(), 0, ...[for (i in 0...(_fis.length : GoInt).toBasic()) ("" : GoString)]);
			for (_i => _fi in _fis) {
				_s[_i] = _fi.name();
			};
			stdgo.sort.Sort.strings(_s);
			return _s;
		};
		{
			var _0 = _names(_mustReadDir(Go.str("initial readdir"))),
				_1 = (new Slice<GoString>(0, 0, Go.str("good1"), Go.str("good2"), Go.str("x")) : Slice<GoString>),
				_want = _1,
				_got = _0;
			if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_got), Go.toInterface(_want))) {
				_t.errorf(Go.str("initial readdir got %q; want %q"), Go.toInterface(_got), Go.toInterface(_want));
			};
		};
		_xerr = errNotExist;
		{
			var _0 = _names(_mustReadDir(Go.str("with x disappearing"))),
				_1 = (new Slice<GoString>(0, 0, Go.str("good1"), Go.str("good2")) : Slice<GoString>),
				_want = _1,
				_got = _0;
			if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_got), Go.toInterface(_want))) {
				_t.errorf(Go.str("with x disappearing, got %q; want %q"), Go.toInterface(_got), Go.toInterface(_want));
			};
		};
		_xerr = stdgo.errors.Errors.new_(Go.str("some real error"));
		{
			var __tmp__ = _readDir(),
				_0:Slice<stdgo.io.fs.Fs.FileInfo> = __tmp__._0,
				_err:Error = __tmp__._1;
			if (Go.toInterface(_err) != (Go.toInterface(_xerr))) {
				_t.errorf(Go.str("with a non-ErrNotExist error, got error %v; want %v"), Go.toInterface(_err), Go.toInterface(_xerr));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

/**
	// Readdir on a regular file should fail.
**/
function testReaddirOfFile(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var __tmp__ = stdgo.os.Os.createTemp(Go.str(), Go.str("_Go_ReaddirOfFile")),
		_f:Ref<File> = __tmp__._0,
		_err:Error = __tmp__._1;
	try {
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		{
			var _a0 = _f.name();
			__deferstack__.unshift(() -> remove(_a0));
		};
		_f.write((Go.str("foo") : Slice<GoByte>));
		_f.close();
		var __tmp__ = open(_f.name()),
			_reg:Ref<File> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		__deferstack__.unshift(() -> _reg.close());
		var __tmp__ = _reg.readdirnames((-1 : GoInt)),
			_names:Slice<GoString> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err == null) {
			_t.error(Go.toInterface(Go.str("Readdirnames succeeded; want non-nil error")));
		};
		var _pe:Ref<PathError> = (null : Ref<stdgo.io.fs.Fs.PathError>);
		if (!stdgo.errors.Errors.as(_err, Go.toInterface((_pe : Ref<Ref<stdgo.io.fs.Fs.PathError>>))) || (_pe.path != _f.name())) {
			_t.errorf(Go.str("Readdirnames returned %q; want a PathError with path %q"), Go.toInterface(_err), Go.toInterface(_f.name()));
		};
		if ((_names.length) > (0 : GoInt)) {
			_t.errorf(Go.str("unexpected dir names in regular file: %q"), Go.toInterface(_names));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testHardLink(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	stdgo.internal.testenv.Testenv.mustHaveLink(Go.asInterface(_t));
	try {
		__deferstack__.unshift(() -> _chtmpdir(_t)());
		var _0:GoString = Go.str("hardlinktestfrom"),
			_1:GoString = Go.str("hardlinktestto"),
			_to:GoString = _1,
			_from:GoString = _0;
		var __tmp__ = create(_to),
			_file:Ref<File> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("open %q failed: %v"), Go.toInterface(_to), Go.toInterface(_err));
		};
		{
			_err = _file.close();
			if (_err != null) {
				_t.errorf(Go.str("close %q failed: %v"), Go.toInterface(_to), Go.toInterface(_err));
			};
		};
		_err = link(_to, _from);
		if (_err != null) {
			_t.fatalf(Go.str("link %q, %q failed: %v"), Go.toInterface(_to), Go.toInterface(_from), Go.toInterface(_err));
		};
		var _none:GoString = Go.str("hardlinktestnone");
		_err = link(_none, _none);
		{
			var __tmp__ = try {
				{value: (Go.typeAssert((Go.toInterface(_err) : Ref<LinkError>)) : Ref<LinkError>), ok: true};
			} catch (_) {
				{value: (null : Ref<LinkError>), ok: false};
			}, _lerr = __tmp__.value, _ok = __tmp__.ok;
			if (!_ok || (_lerr.error() == Go.str())) {
				_t.errorf(Go.str("link %q, %q failed to return a valid error"), Go.toInterface(_none), Go.toInterface(_none));
			};
		};
		var __tmp__ = stat(_to),
			_tostat:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("stat %q failed: %v"), Go.toInterface(_to), Go.toInterface(_err));
		};
		var __tmp__ = stat(_from),
			_fromstat:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("stat %q failed: %v"), Go.toInterface(_from), Go.toInterface(_err));
		};
		if (!sameFile(_tostat, _fromstat)) {
			_t.errorf(Go.str("link %q, %q did not create hard link"), Go.toInterface(_to), Go.toInterface(_from));
		};
		_err = link(_to, _from);
		{
			final __type__ = _err;
			if (Go.typeEquals((__type__ : Ref<LinkError>))) {
				var _err:Ref<LinkError> = __type__ == null ? (null : Ref<LinkError>) : __type__.__underlying__() == null ? (null : Ref<LinkError>) : __type__ == null ? (null : Ref<LinkError>) : __type__.__underlying__()
					.value;
				if (_err.op != (Go.str("link"))) {
					_t.errorf(Go.str("Link(%q, %q) err.Op = %q; want %q"), Go.toInterface(_to), Go.toInterface(_from), Go.toInterface(_err.op),
						Go.toInterface(Go.str("link")));
				};
				if (_err.old != (_to)) {
					_t.errorf(Go.str("Link(%q, %q) err.Old = %q; want %q"), Go.toInterface(_to), Go.toInterface(_from), Go.toInterface(_err.old),
						Go.toInterface(_to));
				};
				if (_err.new_ != (_from)) {
					_t.errorf(Go.str("Link(%q, %q) err.New = %q; want %q"), Go.toInterface(_to), Go.toInterface(_from), Go.toInterface(_err.new_),
						Go.toInterface(_from));
				};
				if (!isExist(_err.err)) {
					_t.errorf(Go.str("Link(%q, %q) err.Err = %q; want %q"), Go.toInterface(_to), Go.toInterface(_from), Go.toInterface(_err.err),
						Go.toInterface(Go.str("file exists error")));
				};
			} else if (__type__ == null) {
				var _err:AnyInterface = __type__ == null ? (null : AnyInterface) : __type__.__underlying__();
				_t.errorf(Go.str("link %q, %q: expected error, got nil"), Go.toInterface(_from), Go.toInterface(_to));
			} else {
				var _err:Error = __type__ == null ? null : __type__.__underlying__() == null ? null : __type__ == null ? null : __type__.__underlying__()
					.value;
				_t.errorf(Go.str("link %q, %q: expected %T, got %T %v"), Go.toInterface(_from), Go.toInterface(_to), Go.toInterface(({} : LinkError)),
					Go.toInterface(_err), Go.toInterface(_err));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

/**
	// chtmpdir changes the working directory to a new temporary directory and
	// provides a cleanup function.
**/
function _chtmpdir(_t:Ref<stdgo.testing.Testing.T>):() -> Void {
	var __tmp__ = getwd(),
		_oldwd:GoString = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatalf(Go.str("chtmpdir: %v"), Go.toInterface(_err));
	};
	var __tmp__ = stdgo.os.Os.mkdirTemp(Go.str(), Go.str("test")),
		_d:GoString = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatalf(Go.str("chtmpdir: %v"), Go.toInterface(_err));
	};
	{
		var _err:Error = chdir(_d);
		if (_err != null) {
			_t.fatalf(Go.str("chtmpdir: %v"), Go.toInterface(_err));
		};
	};
	return function():Void {
		{
			var _err:Error = chdir(_oldwd);
			if (_err != null) {
				_t.fatalf(Go.str("chtmpdir: %v"), Go.toInterface(_err));
			};
		};
		removeAll(_d);
	};
}

function testSymlink(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	stdgo.internal.testenv.Testenv.mustHaveSymlink(Go.asInterface(_t));
	try {
		__deferstack__.unshift(() -> _chtmpdir(_t)());
		var _0:GoString = Go.str("symlinktestfrom"),
			_1:GoString = Go.str("symlinktestto"),
			_to:GoString = _1,
			_from:GoString = _0;
		var __tmp__ = create(_to),
			_file:Ref<File> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("Create(%q) failed: %v"), Go.toInterface(_to), Go.toInterface(_err));
		};
		{
			_err = _file.close();
			if (_err != null) {
				_t.errorf(Go.str("Close(%q) failed: %v"), Go.toInterface(_to), Go.toInterface(_err));
			};
		};
		_err = symlink(_to, _from);
		if (_err != null) {
			_t.fatalf(Go.str("Symlink(%q, %q) failed: %v"), Go.toInterface(_to), Go.toInterface(_from), Go.toInterface(_err));
		};
		var __tmp__ = lstat(_to),
			_tostat:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("Lstat(%q) failed: %v"), Go.toInterface(_to), Go.toInterface(_err));
		};
		if (_tostat.mode() & (("134217728" : GoUInt32) : stdgo.io.fs.Fs.FileMode) != ((("0" : GoUInt32) : stdgo.io.fs.Fs.FileMode))) {
			_t.fatalf(Go.str("Lstat(%q).Mode()&ModeSymlink = %v, want 0"), Go.toInterface(_to),
				Go.toInterface(Go.asInterface(_tostat.mode() & (("134217728" : GoUInt32) : stdgo.io.fs.Fs.FileMode))));
		};
		var __tmp__ = stat(_from),
			_fromstat:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("Stat(%q) failed: %v"), Go.toInterface(_from), Go.toInterface(_err));
		};
		if (!sameFile(_tostat, _fromstat)) {
			_t.errorf(Go.str("Symlink(%q, %q) did not create symlink"), Go.toInterface(_to), Go.toInterface(_from));
		};
		{
			var __tmp__ = lstat(_from);
			_fromstat = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			_t.fatalf(Go.str("Lstat(%q) failed: %v"), Go.toInterface(_from), Go.toInterface(_err));
		};
		if (_fromstat.mode() & (("134217728" : GoUInt32) : stdgo.io.fs.Fs.FileMode) == ((("0" : GoUInt32) : stdgo.io.fs.Fs.FileMode))) {
			_t.fatalf(Go.str("Lstat(%q).Mode()&ModeSymlink = 0, want %v"), Go.toInterface(_from),
				Go.toInterface(Go.asInterface((("134217728" : GoUInt32) : stdgo.io.fs.Fs.FileMode))));
		};
		{
			var __tmp__ = stat(_from);
			_fromstat = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			_t.fatalf(Go.str("Stat(%q) failed: %v"), Go.toInterface(_from), Go.toInterface(_err));
		};
		if (_fromstat.name() != (_from)) {
			_t.errorf(Go.str("Stat(%q).Name() = %q, want %q"), Go.toInterface(_from), Go.toInterface(_fromstat.name()), Go.toInterface(_from));
		};
		if (_fromstat.mode() & (("134217728" : GoUInt32) : stdgo.io.fs.Fs.FileMode) != ((("0" : GoUInt32) : stdgo.io.fs.Fs.FileMode))) {
			_t.fatalf(Go.str("Stat(%q).Mode()&ModeSymlink = %v, want 0"), Go.toInterface(_from),
				Go.toInterface(Go.asInterface(_fromstat.mode() & (("134217728" : GoUInt32) : stdgo.io.fs.Fs.FileMode))));
		};
		var __tmp__ = readlink(_from),
			_s:GoString = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("Readlink(%q) failed: %v"), Go.toInterface(_from), Go.toInterface(_err));
		};
		if (_s != (_to)) {
			_t.fatalf(Go.str("Readlink(%q) = %q, want %q"), Go.toInterface(_from), Go.toInterface(_s), Go.toInterface(_to));
		};
		{
			var __tmp__ = open(_from);
			_file = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			_t.fatalf(Go.str("Open(%q) failed: %v"), Go.toInterface(_from), Go.toInterface(_err));
		};
		_file.close();
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testLongSymlink(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	stdgo.internal.testenv.Testenv.mustHaveSymlink(Go.asInterface(_t));
	try {
		__deferstack__.unshift(() -> _chtmpdir(_t)());
		var _s:GoString = Go.str("0123456789abcdef");
		_s = (((((((((((((_s + _s) + _s) + _s) + _s) + _s) + _s) + _s) + _s) + _s) + _s) + _s) + _s) + _s) + _s;
		var _from:GoString = Go.str("longsymlinktestfrom");
		var _err:Error = symlink(_s, _from);
		if (_err != null) {
			_t.fatalf(Go.str("symlink %q, %q failed: %v"), Go.toInterface(_s), Go.toInterface(_from), Go.toInterface(_err));
		};
		var __tmp__ = readlink(_from),
			_r:GoString = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("readlink %q failed: %v"), Go.toInterface(_from), Go.toInterface(_err));
		};
		if (_r != (_s)) {
			_t.fatalf(Go.str("after symlink %q != %q"), Go.toInterface(_r), Go.toInterface(_s));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testRename(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	__deferstack__.unshift(() -> _chtmpdir(_t)());
	try {
		var _0:GoString = Go.str("renamefrom"),
			_1:GoString = Go.str("renameto"),
			_to:GoString = _1,
			_from:GoString = _0;
		var __tmp__ = create(_from),
			_file:Ref<File> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("open %q failed: %v"), Go.toInterface(_from), Go.toInterface(_err));
		};
		{
			_err = _file.close();
			if (_err != null) {
				_t.errorf(Go.str("close %q failed: %v"), Go.toInterface(_from), Go.toInterface(_err));
			};
		};
		_err = rename(_from, _to);
		if (_err != null) {
			_t.fatalf(Go.str("rename %q, %q failed: %v"), Go.toInterface(_to), Go.toInterface(_from), Go.toInterface(_err));
		};
		{
			var __tmp__ = stat(_to);
			_err = __tmp__._1;
		};
		if (_err != null) {
			_t.errorf(Go.str("stat %q failed: %v"), Go.toInterface(_to), Go.toInterface(_err));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testRenameOverwriteDest(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	__deferstack__.unshift(() -> _chtmpdir(_t)());
	try {
		var _0:GoString = Go.str("renamefrom"),
			_1:GoString = Go.str("renameto"),
			_to:GoString = _1,
			_from:GoString = _0;
		var _toData = (Go.str("to") : Slice<GoByte>);
		var _fromData = (Go.str("from") : Slice<GoByte>);
		var _err:Error = stdgo.os.Os.writeFile(_to, _toData, (("511" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		if (_err != null) {
			_t.fatalf(Go.str("write file %q failed: %v"), Go.toInterface(_to), Go.toInterface(_err));
		};
		_err = stdgo.os.Os.writeFile(_from, _fromData, (("511" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		if (_err != null) {
			_t.fatalf(Go.str("write file %q failed: %v"), Go.toInterface(_from), Go.toInterface(_err));
		};
		_err = rename(_from, _to);
		if (_err != null) {
			_t.fatalf(Go.str("rename %q, %q failed: %v"), Go.toInterface(_to), Go.toInterface(_from), Go.toInterface(_err));
		};
		{
			var __tmp__ = stat(_from);
			_err = __tmp__._1;
		};
		if (_err == null) {
			_t.errorf(Go.str("from file %q still exists"), Go.toInterface(_from));
		};
		if ((_err != null) && !isNotExist(_err)) {
			_t.fatalf(Go.str("stat from: %v"), Go.toInterface(_err));
		};
		var __tmp__ = stat(_to),
			_toFi:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("stat %q failed: %v"), Go.toInterface(_to), Go.toInterface(_err));
		};
		if (_toFi.size() != ((_fromData.length : GoInt64))) {
			_t.errorf(Go.str("\"to\" size = %d; want %d (old \"from\" size)"), Go.toInterface(_toFi.size()), Go.toInterface((_fromData.length)));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testRenameFailed(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	__deferstack__.unshift(() -> _chtmpdir(_t)());
	try {
		var _0:GoString = Go.str("renamefrom"),
			_1:GoString = Go.str("renameto"),
			_to:GoString = _1,
			_from:GoString = _0;
		var _err:Error = rename(_from, _to);
		{
			final __type__ = _err;
			if (Go.typeEquals((__type__ : Ref<LinkError>))) {
				var _err:Ref<LinkError> = __type__ == null ? (null : Ref<LinkError>) : __type__.__underlying__() == null ? (null : Ref<LinkError>) : __type__ == null ? (null : Ref<LinkError>) : __type__.__underlying__()
					.value;
				if (_err.op != (Go.str("rename"))) {
					_t.errorf(Go.str("rename %q, %q: err.Op: want %q, got %q"), Go.toInterface(_from), Go.toInterface(_to), Go.toInterface(Go.str("rename")),
						Go.toInterface(_err.op));
				};
				if (_err.old != (_from)) {
					_t.errorf(Go.str("rename %q, %q: err.Old: want %q, got %q"), Go.toInterface(_from), Go.toInterface(_to), Go.toInterface(_from),
						Go.toInterface(_err.old));
				};
				if (_err.new_ != (_to)) {
					_t.errorf(Go.str("rename %q, %q: err.New: want %q, got %q"), Go.toInterface(_from), Go.toInterface(_to), Go.toInterface(_to),
						Go.toInterface(_err.new_));
				};
			} else if (__type__ == null) {
				var _err:AnyInterface = __type__ == null ? (null : AnyInterface) : __type__.__underlying__();
				_t.errorf(Go.str("rename %q, %q: expected error, got nil"), Go.toInterface(_from), Go.toInterface(_to));
			} else {
				var _err:Error = __type__ == null ? null : __type__.__underlying__() == null ? null : __type__ == null ? null : __type__.__underlying__()
					.value;
				_t.errorf(Go.str("rename %q, %q: expected %T, got %T %v"), Go.toInterface(_from), Go.toInterface(_to), Go.toInterface(({} : LinkError)),
					Go.toInterface(_err), Go.toInterface(_err));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testRenameNotExisting(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	__deferstack__.unshift(() -> _chtmpdir(_t)());
	try {
		var _0:GoString = Go.str("doesnt-exist"),
			_1:GoString = Go.str("dest"),
			_to:GoString = _1,
			_from:GoString = _0;
		mkdir(_to, (("511" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		{
			var _err:Error = rename(_from, _to);
			if (!isNotExist(_err)) {
				_t.errorf(Go.str("Rename(%q, %q) = %v; want an IsNotExist error"), Go.toInterface(_from), Go.toInterface(_to), Go.toInterface(_err));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testRenameToDirFailed(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	__deferstack__.unshift(() -> _chtmpdir(_t)());
	try {
		var _0:GoString = Go.str("renamefrom"),
			_1:GoString = Go.str("renameto"),
			_to:GoString = _1,
			_from:GoString = _0;
		mkdir(_from, (("511" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		mkdir(_to, (("511" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		var _err:Error = rename(_from, _to);
		{
			final __type__ = _err;
			if (Go.typeEquals((__type__ : Ref<LinkError>))) {
				var _err:Ref<LinkError> = __type__ == null ? (null : Ref<LinkError>) : __type__.__underlying__() == null ? (null : Ref<LinkError>) : __type__ == null ? (null : Ref<LinkError>) : __type__.__underlying__()
					.value;
				if (_err.op != (Go.str("rename"))) {
					_t.errorf(Go.str("rename %q, %q: err.Op: want %q, got %q"), Go.toInterface(_from), Go.toInterface(_to), Go.toInterface(Go.str("rename")),
						Go.toInterface(_err.op));
				};
				if (_err.old != (_from)) {
					_t.errorf(Go.str("rename %q, %q: err.Old: want %q, got %q"), Go.toInterface(_from), Go.toInterface(_to), Go.toInterface(_from),
						Go.toInterface(_err.old));
				};
				if (_err.new_ != (_to)) {
					_t.errorf(Go.str("rename %q, %q: err.New: want %q, got %q"), Go.toInterface(_from), Go.toInterface(_to), Go.toInterface(_to),
						Go.toInterface(_err.new_));
				};
			} else if (__type__ == null) {
				var _err:AnyInterface = __type__ == null ? (null : AnyInterface) : __type__.__underlying__();
				_t.errorf(Go.str("rename %q, %q: expected error, got nil"), Go.toInterface(_from), Go.toInterface(_to));
			} else {
				var _err:Error = __type__ == null ? null : __type__.__underlying__() == null ? null : __type__ == null ? null : __type__.__underlying__()
					.value;
				_t.errorf(Go.str("rename %q, %q: expected %T, got %T %v"), Go.toInterface(_from), Go.toInterface(_to), Go.toInterface(({} : LinkError)),
					Go.toInterface(_err), Go.toInterface(_err));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testRenameCaseDifference(_pt:Ref<stdgo.testing.Testing.T>):Void {
	var _0:GoString = Go.str("renameFROM"),
		_1:GoString = Go.str("RENAMEfrom"),
		_to:GoString = _1,
		_from:GoString = _0;
	var _tests = (new Slice<T__struct_2>(0, 0, ({
		_name: Go.str("dir"),
		_create: function():Error {
			return mkdir(_from, (("511" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		}
	} : T__struct_2), ({
		_name: Go.str("file"),
		_create: function():Error {
			var __tmp__ = create(_from), _fd:Ref<File> = __tmp__._0, _err:Error = __tmp__._1;
			if (_err != null) {
				return _err;
			};
			return _fd.close();
		}
		} : T__struct_2)) : Slice<T__struct_2>);
	for (_0 => _test in _tests) {
		_pt.run(_test._name, function(_t:Ref<stdgo.testing.Testing.T>):Void {
			var __deferstack__:Array<Void->Void> = [];
			__deferstack__.unshift(() -> _chtmpdir(_t)());
			try {
				{
					var _err:Error = _test._create();
					if (_err != null) {
						_t.fatalf(Go.str("failed to create test file: %s"), Go.toInterface(_err));
					};
				};
				{
					var __tmp__ = stat(_to),
						_0:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
						_err:Error = __tmp__._1;
					if (_err != null) {
						if (isNotExist(_err)) {
							_t.skipf(Go.str("case sensitive filesystem"));
						};
						_t.fatalf(Go.str("stat %q, got: %q"), Go.toInterface(_to), Go.toInterface(_err));
					};
				};
				{
					var _err:Error = rename(_from, _to);
					if (_err != null) {
						_t.fatalf(Go.str("unexpected error when renaming from %q to %q: %s"), Go.toInterface(_from), Go.toInterface(_to),
							Go.toInterface(_err));
					};
				};
				var __tmp__ = open(Go.str(".")),
					_fd:Ref<File> = __tmp__._0,
					_err:Error = __tmp__._1;
				if (_err != null) {
					_t.fatalf(Go.str("Open .: %s"), Go.toInterface(_err));
				};
				var __tmp__ = _fd.readdirnames((-1 : GoInt)),
					_dirNames:Slice<GoString> = __tmp__._0,
					_err:Error = __tmp__._1;
				if (_err != null) {
					_t.fatalf(Go.str("readdirnames: %s"), Go.toInterface(_err));
				};
				{
					var _dirNamesLen:GoInt = (_dirNames.length);
					if (_dirNamesLen != ((1 : GoInt))) {
						_t.fatalf(Go.str("unexpected dirNames len, got %q, want %q"), Go.toInterface(_dirNamesLen), Go.toInterface((1 : GoInt)));
					};
				};
				if (_dirNames[(0 : GoInt)] != (_to)) {
					_t.errorf(Go.str("unexpected name, got %q, want %q"), Go.toInterface(_dirNames[(0 : GoInt)]), Go.toInterface(_to));
				};
				for (defer in __deferstack__) {
					defer();
				};
				{
					for (defer in __deferstack__) {
						defer();
					};
					if (Go.recover_exception != null)
						throw Go.recover_exception;
					return;
				};
			} catch (__exception__) {
				if (!(__exception__.native is AnyInterfaceData))
					throw __exception__;
				Go.recover_exception = __exception__.native;
				for (defer in __deferstack__) {
					defer();
				};
				if (Go.recover_exception != null)
					throw Go.recover_exception;
				return;
			};
		});
	};
}

function _exec(_t:Ref<stdgo.testing.Testing.T>, _dir:GoString, _cmd:GoString, _args:Slice<GoString>, _expect:GoString):Void {
	var __deferstack__:Array<Void->Void> = [];
	var __tmp__ = pipe(),
		_r:Ref<File> = __tmp__._0,
		_w:Ref<File> = __tmp__._1,
		_err:Error = __tmp__._2;
	try {
		if (_err != null) {
			_t.fatalf(Go.str("Pipe: %v"), Go.toInterface(_err));
		};
		__deferstack__.unshift(() -> _r.close());
		var _attr = (({dir: _dir, files: (new Slice<Ref<File>>(0, 0, null, _w, stderr) : Slice<Ref<File>>)} : ProcAttr) : Ref<ProcAttr>);
		var __tmp__ = startProcess(_cmd, _args, _attr),
			_p:Ref<Process> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("StartProcess: %v"), Go.toInterface(_err));
		};
		_w.close();
		var _b:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
		stdgo.io.Io.copy(Go.asInterface((_b : Ref<stdgo.bytes.Bytes.Buffer>)), Go.asInterface(_r));
		var _output:GoString = (_b.string() : GoString);
		var __tmp__ = stat(stdgo.strings.Strings.trimSpace(_output)),
			_fi1:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_0:Error = __tmp__._1;
		var __tmp__ = stat(_expect),
			_fi2:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_1:Error = __tmp__._1;
		if (!sameFile(_fi1, _fi2)) {
			_t.errorf(Go.str("exec %q returned %q wanted %q"),
				Go.toInterface(stdgo.strings.Strings.join(((new Slice<GoString>(0, 0, _cmd) : Slice<GoString>).__append__(..._args.__toArray__())),
					Go.str(" "))),
				Go.toInterface(_output), Go.toInterface(_expect));
		};
		_p.wait_();
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testStartProcess(_t:Ref<stdgo.testing.Testing.T>):Void {
	stdgo.internal.testenv.Testenv.mustHaveExec(Go.asInterface(_t));
	var _0:GoString = ("" : GoString),
		_1:GoString = ("" : GoString),
		_cmd:GoString = _1,
		_dir:GoString = _0;
	var _args:Slice<GoString> = (null : Slice<GoString>);
	if (Go.str("js") == (Go.str("android"))) {
		_t.skip(Go.toInterface(Go.str("android doesn\'t have /bin/pwd")));
	} else if (Go.str("js") == (Go.str("windows"))) {
		_cmd = getenv(Go.str("COMSPEC"));
		_dir = getenv(Go.str("SystemRoot"));
		_args = (new Slice<GoString>(0, 0, Go.str("/c"), Go.str("cd")) : Slice<GoString>);
	} else {
		var _err:Error = (null : Error);
		{
			var __tmp__ = stdgo.os.exec.Exec.lookPath(Go.str("pwd"));
			_cmd = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			_t.fatalf(Go.str("Can\'t find pwd: %v"), Go.toInterface(_err));
		};
		_dir = Go.str("/");
		_args = (new Slice<GoString>(0, 0) : Slice<GoString>);
		_t.logf(Go.str("Testing with %v"), Go.toInterface(_cmd));
	};
	var __tmp__ = stdgo.path.filepath.Filepath.split(_cmd),
		_cmddir:GoString = __tmp__._0,
		_cmdbase:GoString = __tmp__._1;
	_args = ((new Slice<GoString>(0, 0, _cmdbase) : Slice<GoString>).__append__(..._args.__toArray__()));
	_exec(_t, _dir, _cmd, _args, _dir);
	_exec(_t, _cmddir, _cmdbase, _args, _cmddir);
}

function _checkMode(_t:Ref<stdgo.testing.Testing.T>, _path:GoString, _mode:FileMode):Void {
	var __tmp__ = stat(_path),
		_dir:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatalf(Go.str("Stat %q (looking for mode %#o): %s"), Go.toInterface(_path), Go.toInterface(Go.asInterface(_mode)), Go.toInterface(_err));
	};
	if (_dir.mode() & (("511" : GoUInt32) : stdgo.io.fs.Fs.FileMode) != (_mode)) {
		_t.errorf(Go.str("Stat %q: mode %#o want %#o"), Go.toInterface(_path), Go.toInterface(Go.asInterface(_dir.mode())),
			Go.toInterface(Go.asInterface(_mode)));
	};
}

function testChmod(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _f = _newFile(Go.str("TestChmod"), _t);
	try {
		{
			var _a0 = _f.name();
			__deferstack__.unshift(() -> remove(_a0));
		};
		__deferstack__.unshift(() -> _f.close());
		var _fm:stdgo.io.fs.Fs.FileMode = ((("302" : GoUInt32) : stdgo.io.fs.Fs.FileMode) : FileMode);
		if (false) {
			_fm = ((("292" : GoUInt32) : stdgo.io.fs.Fs.FileMode) : FileMode);
		};
		{
			var _err:Error = chmod(_f.name(), _fm);
			if (_err != null) {
				_t.fatalf(Go.str("chmod %s %#o: %s"), Go.toInterface(_f.name()), Go.toInterface(Go.asInterface(_fm)), Go.toInterface(_err));
			};
		};
		_checkMode(_t, _f.name(), _fm);
		_fm = ((("83" : GoUInt32) : stdgo.io.fs.Fs.FileMode) : FileMode);
		if (false) {
			_fm = ((("438" : GoUInt32) : stdgo.io.fs.Fs.FileMode) : FileMode);
		};
		{
			var _err:Error = _f.chmod(_fm);
			if (_err != null) {
				_t.fatalf(Go.str("chmod %s %#o: %s"), Go.toInterface(_f.name()), Go.toInterface(Go.asInterface(_fm)), Go.toInterface(_err));
			};
		};
		_checkMode(_t, _f.name(), _fm);
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function _checkSize(_t:Ref<stdgo.testing.Testing.T>, _f:Ref<File>, _size:GoInt64):Void {
	_t.helper();
	var __tmp__ = _f.stat(),
		_dir:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatalf(Go.str("Stat %q (looking for size %d): %s"), Go.toInterface(_f.name()), Go.toInterface(_size), Go.toInterface(_err));
	};
	if (_dir.size() != (_size)) {
		_t.errorf(Go.str("Stat %q: size %d want %d"), Go.toInterface(_f.name()), Go.toInterface(_dir.size()), Go.toInterface(_size));
	};
}

function testFTruncate(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _f = _newFile(Go.str("TestFTruncate"), _t);
	try {
		{
			var _a0 = _f.name();
			__deferstack__.unshift(() -> remove(_a0));
		};
		__deferstack__.unshift(() -> _f.close());
		_checkSize(_t, _f, ("0" : GoInt64));
		_f.write((Go.str("hello, world\n") : Slice<GoByte>));
		_checkSize(_t, _f, ("13" : GoInt64));
		_f.truncate(("10" : GoInt64));
		_checkSize(_t, _f, ("10" : GoInt64));
		_f.truncate(("1024" : GoInt64));
		_checkSize(_t, _f, ("1024" : GoInt64));
		_f.truncate(("0" : GoInt64));
		_checkSize(_t, _f, ("0" : GoInt64));
		var __tmp__ = _f.write((Go.str("surprise!") : Slice<GoByte>)),
			_0:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err == null) {
			_checkSize(_t, _f, ("22" : GoInt64));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testTruncate(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _f = _newFile(Go.str("TestTruncate"), _t);
	try {
		{
			var _a0 = _f.name();
			__deferstack__.unshift(() -> remove(_a0));
		};
		__deferstack__.unshift(() -> _f.close());
		_checkSize(_t, _f, ("0" : GoInt64));
		_f.write((Go.str("hello, world\n") : Slice<GoByte>));
		_checkSize(_t, _f, ("13" : GoInt64));
		truncate(_f.name(), ("10" : GoInt64));
		_checkSize(_t, _f, ("10" : GoInt64));
		truncate(_f.name(), ("1024" : GoInt64));
		_checkSize(_t, _f, ("1024" : GoInt64));
		truncate(_f.name(), ("0" : GoInt64));
		_checkSize(_t, _f, ("0" : GoInt64));
		var __tmp__ = _f.write((Go.str("surprise!") : Slice<GoByte>)),
			_0:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err == null) {
			_checkSize(_t, _f, ("22" : GoInt64));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

/**
	// Use TempDir (via newFile) to make sure we're on a local file system,
	// so that timings are not distorted by latency and caching.
	// On NFS, timings can be off due to caching of meta-data on
	// NFS servers (Issue 848).
**/
function testChtimes(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _f = _newFile(Go.str("TestChtimes"), _t);
	try {
		{
			var _a0 = _f.name();
			__deferstack__.unshift(() -> remove(_a0));
		};
		_f.write((Go.str("hello, world\n") : Slice<GoByte>));
		_f.close();
		_testChtimes(_t, _f.name());
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

/**
	// Use TempDir (via newDir) to make sure we're on a local file system,
	// so that timings are not distorted by latency and caching.
	// On NFS, timings can be off due to caching of meta-data on
	// NFS servers (Issue 848).
**/
function testChtimesDir(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _name:GoString = _newDir(Go.str("TestChtimes"), _t);
	try {
		{
			var _a0 = _name;
			__deferstack__.unshift(() -> removeAll(_a0));
		};
		_testChtimes(_t, _name);
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function _testChtimes(_t:Ref<stdgo.testing.Testing.T>, _name:GoString):Void {
	var __tmp__ = stat(_name),
		_st:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatalf(Go.str("Stat %s: %s"), Go.toInterface(_name), Go.toInterface(_err));
	};
	var _preStat:stdgo.io.fs.Fs.FileInfo = _st;
	var _at:stdgo.time.Time.Time = (atime(_preStat) == null ? null : atime(_preStat).__copy__());
	var _mt:stdgo.time.Time.Time = (_preStat.modTime() == null ? null : _preStat.modTime().__copy__());
	_err = chtimes(_name,
		(_at.add((("-1000000000" : GoInt64) : stdgo.time.Time.Duration)) == null ? null : _at.add((("-1000000000" : GoInt64) : stdgo.time.Time.Duration))
			.__copy__()),
		(_mt.add((("-1000000000" : GoInt64) : stdgo.time.Time.Duration)) == null ? null : _mt.add((("-1000000000" : GoInt64) : stdgo.time.Time.Duration))
			.__copy__()));
	if (_err != null) {
		_t.fatalf(Go.str("Chtimes %s: %s"), Go.toInterface(_name), Go.toInterface(_err));
	};
	{
		var __tmp__ = stat(_name);
		_st = __tmp__._0;
		_err = __tmp__._1;
	};
	if (_err != null) {
		_t.fatalf(Go.str("second Stat %s: %s"), Go.toInterface(_name), Go.toInterface(_err));
	};
	var _postStat:stdgo.io.fs.Fs.FileInfo = _st;
	var _pat:stdgo.time.Time.Time = (atime(_postStat) == null ? null : atime(_postStat).__copy__());
	var _pmt:stdgo.time.Time.Time = (_postStat.modTime() == null ? null : _postStat.modTime().__copy__());
	if (!_pat.before((_at == null ? null : _at.__copy__()))) {
		if (Go.str("js") == (Go.str("plan9"))) {} else if (Go.str("js") == (Go.str("netbsd"))) {
			var __tmp__ = stdgo.os.Os.readFile(Go.str("/proc/mounts")),
				_mounts:Slice<GoUInt8> = __tmp__._0,
				_0:Error = __tmp__._1;
			if (stdgo.strings.Strings.contains((_mounts : GoString), Go.str("noatime"))) {
				_t.logf(Go.str("AccessTime didn\'t go backwards, but see a filesystem mounted noatime; ignoring. Issue 19293."));
			} else {
				_t.logf(Go.str("AccessTime didn\'t go backwards; was=%v, after=%v (Ignoring on NetBSD, assuming noatime, Issue 19293)"),
					Go.toInterface(Go.asInterface(_at)), Go.toInterface(Go.asInterface(_pat)));
			};
		} else {
			_t.errorf(Go.str("AccessTime didn\'t go backwards; was=%v, after=%v"), Go.toInterface(Go.asInterface(_at)), Go.toInterface(Go.asInterface(_pat)));
		};
	};
	if (!_pmt.before((_mt == null ? null : _mt.__copy__()))) {
		_t.errorf(Go.str("ModTime didn\'t go backwards; was=%v, after=%v"), Go.toInterface(Go.asInterface(_mt)), Go.toInterface(Go.asInterface(_pmt)));
	};
}

function testFileChdir(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	if (false) {
		return;
	};
	try {
		var __tmp__ = getwd(),
			_wd:GoString = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("Getwd: %s"), Go.toInterface(_err));
		};
		{
			var _a0 = _wd;
			__deferstack__.unshift(() -> chdir(_a0));
		};
		var __tmp__ = open(Go.str(".")),
			_fd:Ref<File> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("Open .: %s"), Go.toInterface(_err));
		};
		__deferstack__.unshift(() -> _fd.close());
		{
			var _err:Error = chdir(Go.str("/"));
			if (_err != null) {
				_t.fatalf(Go.str("Chdir /: %s"), Go.toInterface(_err));
			};
		};
		{
			var _err:Error = _fd.chdir();
			if (_err != null) {
				_t.fatalf(Go.str("fd.Chdir: %s"), Go.toInterface(_err));
			};
		};
		var __tmp__ = getwd(),
			_wdNew:GoString = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("Getwd: %s"), Go.toInterface(_err));
		};
		if (_wdNew != (_wd)) {
			_t.fatalf(Go.str("fd.Chdir failed, got %s, want %s"), Go.toInterface(_wdNew), Go.toInterface(_wd));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testChdirAndGetwd(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (false) {
		return;
	};
	var __tmp__ = open(Go.str(".")),
		_fd:Ref<File> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatalf(Go.str("Open .: %s"), Go.toInterface(_err));
	};
	var _dirs = (new Slice<GoString>(0, 0, Go.str("/"), Go.str("/usr/bin"), Go.str("/tmp")) : Slice<GoString>);
	if (Go.str("js") == (Go.str("android"))) {
		_dirs = (new Slice<GoString>(0, 0, Go.str("/system/bin")) : Slice<GoString>);
	} else if (Go.str("js") == (Go.str("plan9"))) {
		_dirs = (new Slice<GoString>(0, 0, Go.str("/"), Go.str("/usr")) : Slice<GoString>);
	} else if (Go.str("js") == (Go.str("ios"))) {
		_dirs = (null : Slice<GoString>);
		for (_0 => _d in (new Slice<GoString>(0, 0, Go.str("d1"), Go.str("d2")) : Slice<GoString>)) {
			var __tmp__ = stdgo.os.Os.mkdirTemp(Go.str(), _d),
				_dir:GoString = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err != null) {
				_t.fatalf(Go.str("TempDir: %v"), Go.toInterface(_err));
			};
			{
				var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_dir);
				_dir = __tmp__._0;
				_err = __tmp__._1;
			};
			if (_err != null) {
				_t.fatalf(Go.str("EvalSymlinks: %v"), Go.toInterface(_err));
			};
			_dirs = _dirs.__appendref__(_dir);
		};
	};
	var _oldwd:GoString = getenv(Go.str("PWD"));
	{
		var _mode:GoInt = (0 : GoInt);
		Go.cfor(_mode < (2:GoInt), _mode++, {
			for (_1 => _d in _dirs) {
				if (_mode == ((0 : GoInt))) {
					_err = chdir(_d);
				} else {
					var __tmp__ = open(_d),
						_fd1:Ref<File> = __tmp__._0,
						_err1:Error = __tmp__._1;
					if (_err1 != null) {
						_t.errorf(Go.str("Open %s: %s"), Go.toInterface(_d), Go.toInterface(_err1));
						continue;
					};
					_err = _fd1.chdir();
					_fd1.close();
				};
				if (_d == (Go.str("/tmp"))) {
					setenv(Go.str("PWD"), Go.str("/tmp"));
				};
				var __tmp__ = getwd(),
					_pwd:GoString = __tmp__._0,
					_err1:Error = __tmp__._1;
				setenv(Go.str("PWD"), _oldwd);
				var _err2:Error = _fd.chdir();
				if (_err2 != null) {
					stdgo.fmt.Fmt.fprintf(Go.asInterface(stderr), Go.str("fchdir back to dot failed: %s\n"), Go.toInterface(_err2));
					exit((1 : GoInt));
				};
				if (_err != null) {
					_fd.close();
					_t.fatalf(Go.str("Chdir %s: %s"), Go.toInterface(_d), Go.toInterface(_err));
				};
				if (_err1 != null) {
					_fd.close();
					_t.fatalf(Go.str("Getwd in %s: %s"), Go.toInterface(_d), Go.toInterface(_err1));
				};
				if (_pwd != (_d)) {
					_fd.close();
					_t.fatalf(Go.str("Getwd returned %q want %q"), Go.toInterface(_pwd), Go.toInterface(_d));
				};
			};
		});
	};
	_fd.close();
}

/**
	// Test that Chdir+Getwd is program-wide.
**/
function testProgWideChdir(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	{};
	try {
		{};
		var _c = new Chan<Bool>(0, () -> false);
		var _cpwd = new Chan<GoString>((10 : GoInt).toBasic(), () -> ("" : GoString));
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (10:GoInt), _i++, {
				Go.routine(() -> {
					var a = function(_i:GoInt):Void {
						if (_i % (2 : GoInt) == ((1 : GoInt))) {
							stdgo.runtime.Runtime.lockOSThread();
						};
						var __tmp__ = _c.__smartGet__(), _hasErr = __tmp__.value, _closed = __tmp__.ok;
						if (!_closed && _hasErr) {
							_cpwd.__send__(Go.str("Error!"));
							return;
						};
						var __tmp__ = getwd(), _pwd:GoString = __tmp__._0, _err:Error = __tmp__._1;
						if (_err != null) {
							_t.errorf(Go.str("Getwd on goroutine %d: %v"), Go.toInterface(_i), Go.toInterface(_err));
							_cpwd.__send__(Go.str("Error!"));
							return;
						};
						_cpwd.__send__(_pwd);
					};
					a(_i);
				});
			});
		};
		var __tmp__ = getwd(),
			_oldwd:GoString = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_c.__send__(true);
			_t.fatalf(Go.str("Getwd: %v"), Go.toInterface(_err));
		};
		var __tmp__ = stdgo.os.Os.mkdirTemp(Go.str(), Go.str("test")),
			_d:GoString = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_c.__send__(true);
			_t.fatalf(Go.str("TempDir: %v"), Go.toInterface(_err));
		};
		__deferstack__.unshift(() -> {
			var a = function():Void {
				{
					var _err:Error = chdir(_oldwd);
					if (_err != null) {
						_t.fatalf(Go.str("Chdir: %v"), Go.toInterface(_err));
					};
				};
				removeAll(_d);
			};
			a();
		});
		{
			var _err:Error = chdir(_d);
			if (_err != null) {
				_c.__send__(true);
				_t.fatalf(Go.str("Chdir: %v"), Go.toInterface(_err));
			};
		};
		{
			var __tmp__ = getwd();
			_d = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			_c.__send__(true);
			_t.fatalf(Go.str("Getwd: %v"), Go.toInterface(_err));
		};
		if (_c != null)
			_c.__close__();
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (10:GoInt), _i++, {
				var _pwd:GoString = _cpwd.__get__();
				if (_pwd == (Go.str("Error!"))) {
					_t.failNow();
				};
				if (_pwd != (_d)) {
					_t.errorf(Go.str("Getwd returned %q; want %q"), Go.toInterface(_pwd), Go.toInterface(_d));
				};
			});
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

@:structInit private class T_test_testSeek_0 {
	public var _in:GoInt64 = 0;
	public var _whence:GoInt = 0;
	public var _out:GoInt64 = 0;

	public function new(?_in:GoInt64, ?_whence:GoInt, ?_out:GoInt64) {
		if (_in != null)
			this._in = _in;
		if (_whence != null)
			this._whence = _whence;
		if (_out != null)
			this._out = _out;
	}

	public function __copy__() {
		return new T_test_testSeek_0(_in, _whence, _out);
	}
}

function testSeek(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _f = _newFile(Go.str("TestSeek"), _t);
	try {
		{
			var _a0 = _f.name();
			__deferstack__.unshift(() -> remove(_a0));
		};
		__deferstack__.unshift(() -> _f.close());
		{};
		stdgo.io.Io.writeString(Go.asInterface(_f), Go.str("hello, world\n"));
		{};
		var _tests:Slice<stdgo.os_test.Os_test.T_test_testSeek_0> = (new Slice<stdgo.os_test.Os_test.T_test_testSeek_0>(0, 0,
			(new stdgo.os_test.Os_test.T_test_testSeek_0(("0" : GoInt64), (1 : GoInt),
				(Go.str("hello, world\n").length : GoInt64)) : stdgo.os_test.Os_test.T_test_testSeek_0),
			(new stdgo.os_test.Os_test.T_test_testSeek_0(("0" : GoInt64), (0 : GoInt), ("0" : GoInt64)) : stdgo.os_test.Os_test.T_test_testSeek_0),
			(new stdgo.os_test.Os_test.T_test_testSeek_0(("5" : GoInt64), (0 : GoInt), ("5" : GoInt64)) : stdgo.os_test.Os_test.T_test_testSeek_0),
			(new stdgo.os_test.Os_test.T_test_testSeek_0(("0" : GoInt64), (2 : GoInt),
				(Go.str("hello, world\n").length : GoInt64)) : stdgo.os_test.Os_test.T_test_testSeek_0),
			(new stdgo.os_test.Os_test.T_test_testSeek_0(("0" : GoInt64), (0 : GoInt), ("0" : GoInt64)) : stdgo.os_test.Os_test.T_test_testSeek_0),
			(new stdgo.os_test.Os_test.T_test_testSeek_0(("-1" : GoInt64), (2 : GoInt), ("12" : GoInt64)) : stdgo.os_test.Os_test.T_test_testSeek_0),
			(new stdgo.os_test.Os_test.T_test_testSeek_0(("8589934592" : GoInt64), (0 : GoInt),
				("8589934592" : GoInt64)) : stdgo.os_test.Os_test.T_test_testSeek_0),
			(new stdgo.os_test.Os_test.T_test_testSeek_0(("8589934592" : GoInt64), (2 : GoInt),
				("8589934605" : GoInt64)) : stdgo.os_test.Os_test.T_test_testSeek_0),
			(new stdgo.os_test.Os_test.T_test_testSeek_0(("4294967295" : GoInt64), (0 : GoInt),
				("4294967295" : GoInt64)) : stdgo.os_test.Os_test.T_test_testSeek_0),
			(new stdgo.os_test.Os_test.T_test_testSeek_0(("0" : GoInt64), (1 : GoInt), ("4294967295" : GoInt64)) : stdgo.os_test.Os_test.T_test_testSeek_0),
			(new stdgo.os_test.Os_test.T_test_testSeek_0(("8589934591" : GoInt64), (0 : GoInt),
				("8589934591" : GoInt64)) : stdgo.os_test.Os_test.T_test_testSeek_0),
			(new stdgo.os_test.Os_test.T_test_testSeek_0(("0" : GoInt64), (1 : GoInt),
				("8589934591" : GoInt64)) : stdgo.os_test.Os_test.T_test_testSeek_0)) : Slice<stdgo.os_test.Os_test.T_test_testSeek_0>);
		for (_i => _tt in _tests) {
			var __tmp__ = _f.seek(_tt._in, _tt._whence),
				_off:GoInt64 = __tmp__._0,
				_err:Error = __tmp__._1;
			if ((_off != _tt._out) || (_err != null)) {
				{
					var __tmp__ = try {
						{value: (Go.typeAssert((Go.toInterface(_err) : Ref<PathError>)) : Ref<PathError>), ok: true};
					} catch (_) {
						{value: (null : Ref<stdgo.io.fs.Fs.PathError>), ok: false};
					}, _e = __tmp__.value, _ok = __tmp__.ok;
					if (((_ok && (Go.toInterface(_e.err) == Go.toInterface(Go.asInterface((22 : stdgo.syscall.Syscall.Errno)))))
						&& (_tt._out > (("4294967296" : GoInt64) : GoInt64)))
						&& false) {
						var __tmp__ = stdgo.os.Os.readFile(Go.str("/proc/mounts")),
							_mounts:Slice<GoUInt8> = __tmp__._0,
							_0:Error = __tmp__._1;
						if (stdgo.strings.Strings.contains((_mounts : GoString), Go.str("reiserfs"))) {
							_t.skipf(Go.str("skipping test known to fail on reiserfs; https://golang.org/issue/91"));
						};
					};
				};
				_t.errorf(Go.str("#%d: Seek(%v, %v) = %v, %v want %v, nil"), Go.toInterface(_i), Go.toInterface(_tt._in), Go.toInterface(_tt._whence),
					Go.toInterface(_off), Go.toInterface(_err), Go.toInterface(_tt._out));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testSeekError(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (Go.str("js") == (Go.str("js")) || Go.str("js") == (Go.str("plan9"))) {
		_t.skipf(Go.str("skipping test on %v"), Go.toInterface(Go.str("js")));
	};
	var __tmp__ = pipe(),
		_r:Ref<File> = __tmp__._0,
		_w:Ref<File> = __tmp__._1,
		_err:Error = __tmp__._2;
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
	{
		var __tmp__ = _r.seek(("0" : GoInt64), (0 : GoInt));
		_err = __tmp__._1;
	};
	if (_err == null) {
		_t.fatal(Go.toInterface(Go.str("Seek on pipe should fail")));
	};
	{
		var __tmp__ = try {
			{value: (Go.typeAssert((Go.toInterface(_err) : Ref<PathError>)) : Ref<PathError>), ok: true};
		} catch (_) {
			{value: (null : Ref<stdgo.io.fs.Fs.PathError>), ok: false};
		}, _perr = __tmp__.value, _ok = __tmp__.ok;
		if (!_ok || (Go.toInterface(_perr.err) != Go.toInterface(Go.asInterface((29 : stdgo.syscall.Syscall.Errno))))) {
			_t.errorf(Go.str("Seek returned error %v, want &PathError{Err: syscall.ESPIPE}"), Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = _w.seek(("0" : GoInt64), (0 : GoInt));
		_err = __tmp__._1;
	};
	if (_err == null) {
		_t.fatal(Go.toInterface(Go.str("Seek on pipe should fail")));
	};
	{
		var __tmp__ = try {
			{value: (Go.typeAssert((Go.toInterface(_err) : Ref<PathError>)) : Ref<PathError>), ok: true};
		} catch (_) {
			{value: (null : Ref<stdgo.io.fs.Fs.PathError>), ok: false};
		}, _perr = __tmp__.value, _ok = __tmp__.ok;
		if (!_ok || (Go.toInterface(_perr.err) != Go.toInterface(Go.asInterface((29 : stdgo.syscall.Syscall.Errno))))) {
			_t.errorf(Go.str("Seek returned error %v, want &PathError{Err: syscall.ESPIPE}"), Go.toInterface(_err));
		};
	};
}

function testOpenError(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _openErrorTests) {
		var __tmp__ = openFile(_tt._path, _tt._mode, (("0" : GoUInt32) : stdgo.io.fs.Fs.FileMode)),
			_f:Ref<File> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err == null) {
			_t.errorf(Go.str("Open(%q, %d) succeeded"), Go.toInterface(_tt._path), Go.toInterface(_tt._mode));
			_f.close();
			continue;
		};
		var __tmp__ = try {
			{value: (Go.typeAssert((Go.toInterface(_err) : Ref<PathError>)) : Ref<PathError>), ok: true};
		} catch (_) {
			{value: (null : Ref<stdgo.io.fs.Fs.PathError>), ok: false};
		}, _perr = __tmp__.value, _ok = __tmp__.ok;
		if (!_ok) {
			_t.errorf(Go.str("Open(%q, %d) returns error of %T type; want *PathError"), Go.toInterface(_tt._path), Go.toInterface(_tt._mode),
				Go.toInterface(_err));
		};
		if (Go.toInterface(_perr.err) != (Go.toInterface(_tt._error))) {
			if (false) {
				var _syscallErrStr:GoString = _perr.err.error();
				var _expectedErrStr:GoString = stdgo.strings.Strings.replace(_tt._error.error(), Go.str("file "), Go.str(), (1 : GoInt));
				if (!stdgo.strings.Strings.hasSuffix(_syscallErrStr, _expectedErrStr)) {
					if ((Go.toInterface(_tt._error) == Go.toInterface(Go.asInterface((21 : stdgo.syscall.Syscall.Errno))))
						&& stdgo.strings.Strings.hasSuffix(_syscallErrStr, (13 : stdgo.syscall.Syscall.Errno).error())) {
						continue;
					};
					_t.errorf(Go.str("Open(%q, %d) = _, %q; want suffix %q"), Go.toInterface(_tt._path), Go.toInterface(_tt._mode),
						Go.toInterface(_syscallErrStr), Go.toInterface(_expectedErrStr));
				};
				continue;
			};
			if (false) {
				if ((Go.toInterface(_tt._error) == Go.toInterface(Go.asInterface((21 : stdgo.syscall.Syscall.Errno))))
					&& (Go.toInterface(_perr.err) == Go.toInterface(Go.asInterface((13 : stdgo.syscall.Syscall.Errno))))) {
					continue;
				};
			};
			_t.errorf(Go.str("Open(%q, %d) = _, %q; want %q"), Go.toInterface(_tt._path), Go.toInterface(_tt._mode), Go.toInterface(_perr.err.error()),
				Go.toInterface(_tt._error.error()));
		};
	};
}

function testOpenNoName(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __tmp__ = open(Go.str()),
		_f:Ref<File> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err == null) {
		_f.close();
		_t.fatal(Go.toInterface(Go.str("Open(\"\") succeeded")));
	};
}

function _runBinHostname(_t:Ref<stdgo.testing.Testing.T>):GoString {
	var __deferstack__:Array<Void->Void> = [];
	var __tmp__ = pipe(),
		_r:Ref<File> = __tmp__._0,
		_w:Ref<File> = __tmp__._1,
		_err:Error = __tmp__._2;
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
	try {
		__deferstack__.unshift(() -> _r.close());
		var __tmp__ = stdgo.os.exec.Exec.lookPath(Go.str("hostname")),
			_path:GoString = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			if (stdgo.errors.Errors.is_(_err, stdgo.os.exec.Exec.errNotFound)) {
				_t.skip(Go.toInterface(Go.str("skipping test; test requires hostname but it does not exist")));
			};
			_t.fatal(Go.toInterface(_err));
		};
		var _argv = (new Slice<GoString>(0, 0, Go.str("hostname")) : Slice<GoString>);
		if (false) {
			_argv = (new Slice<GoString>(0, 0, Go.str("hostname"), Go.str("-s")) : Slice<GoString>);
		};
		var __tmp__ = startProcess(_path, _argv, (({files: (new Slice<Ref<File>>(0, 0, null, _w, stderr) : Slice<Ref<File>>)} : ProcAttr) : Ref<ProcAttr>)),
			_p:Ref<Process> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		_w.close();
		var _b:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
		stdgo.io.Io.copy(Go.asInterface((_b : Ref<stdgo.bytes.Bytes.Buffer>)), Go.asInterface(_r));
		{
			var __tmp__ = _p.wait_();
			_err = __tmp__._1;
		};
		if (_err != null) {
			_t.fatalf(Go.str("run hostname Wait: %v"), Go.toInterface(_err));
		};
		_err = _p.kill();
		if (_err == null) {
			_t.errorf(Go.str("expected an error from Kill running \'hostname\'"));
		};
		var _output:GoString = (_b.string() : GoString);
		{
			var _n:GoInt = (_output.length);
			if ((_n > (0 : GoInt)) && (_output[_n - (1 : GoInt)] == (10 : GoUInt8))) {
				_output = (_output.__slice__((0 : GoInt), _n - (1 : GoInt)) : GoString);
			};
		};
		if (_output == (Go.str())) {
			_t.fatalf(Go.str("/bin/hostname produced no output"));
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			return _output;
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return ("" : GoString);
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return ("" : GoString);
	};
}

function _testWindowsHostname(_t:Ref<stdgo.testing.Testing.T>, _hostname:GoString):Void {
	var _cmd = stdgo.os.exec.Exec.command(Go.str("hostname"));
	var __tmp__ = _cmd.output(),
		_out:Slice<GoUInt8> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatalf(Go.str("Failed to execute hostname command: %v %s"), Go.toInterface(_err), Go.toInterface(_out));
	};
	var _want:GoString = stdgo.strings.Strings.trim((_out : GoString), Go.str("\r\n"));
	if (_hostname != (_want)) {
		_t.fatalf(Go.str("Hostname() = %q != system hostname of %q"), Go.toInterface(_hostname), Go.toInterface(_want));
	};
}

function testHostname(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __tmp__ = hostname(),
		_hostname:GoString = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
	if (_hostname == (Go.str())) {
		_t.fatal(Go.toInterface(Go.str("Hostname returned empty string and no error")));
	};
	if (stdgo.strings.Strings.contains(_hostname, Go.str(0))) {
		_t.fatalf(Go.str("unexpected zero byte in hostname: %q"), Go.toInterface(_hostname));
	};
	if (Go.str("js") == (Go.str("android")) || Go.str("js") == (Go.str("plan9"))) {
		return;
	} else if (Go.str("js") == (Go.str("windows"))) {
		_testWindowsHostname(_t, _hostname);
		return;
	};
	stdgo.internal.testenv.Testenv.mustHaveExec(Go.asInterface(_t));
	var _want:GoString = _runBinHostname(_t);
	if (_hostname != (_want)) {
		var __tmp__ = stdgo.strings.Strings.cut(_hostname, Go.str(".")),
			_host:GoString = __tmp__._0,
			_0:GoString = __tmp__._1,
			_ok:Bool = __tmp__._2;
		if (!_ok || (_host != _want)) {
			_t.errorf(Go.str("Hostname() = %q, want %q"), Go.toInterface(_hostname), Go.toInterface(_want));
		};
	};
}

function testReadAt(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _f = _newFile(Go.str("TestReadAt"), _t);
	try {
		{
			var _a0 = _f.name();
			__deferstack__.unshift(() -> remove(_a0));
		};
		__deferstack__.unshift(() -> _f.close());
		{};
		stdgo.io.Io.writeString(Go.asInterface(_f), Go.str("hello, world\n"));
		var _b = new Slice<GoUInt8>((5 : GoInt).toBasic(), 0, ...[for (i in 0...(5 : GoInt).toBasic()) (0 : GoUInt8)]);
		var __tmp__ = _f.readAt(_b, ("7" : GoInt64)),
			_n:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if ((_err != null) || (_n != (_b.length))) {
			_t.fatalf(Go.str("ReadAt 7: %d, %v"), Go.toInterface(_n), Go.toInterface(_err));
		};
		if ((_b : GoString) != (Go.str("world"))) {
			_t.fatalf(Go.str("ReadAt 7: have %q want %q"), Go.toInterface((_b : GoString)), Go.toInterface(Go.str("world")));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

/**
	// Verify that ReadAt doesn't affect seek offset.
	// In the Plan 9 kernel, there used to be a bug in the implementation of
	// the pread syscall, where the channel offset was erroneously updated after
	// calling pread on a file.
**/
function testReadAtOffset(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _f = _newFile(Go.str("TestReadAtOffset"), _t);
	try {
		{
			var _a0 = _f.name();
			__deferstack__.unshift(() -> remove(_a0));
		};
		__deferstack__.unshift(() -> _f.close());
		{};
		stdgo.io.Io.writeString(Go.asInterface(_f), Go.str("hello, world\n"));
		_f.seek(("0" : GoInt64), (0 : GoInt));
		var _b = new Slice<GoUInt8>((5 : GoInt).toBasic(), 0, ...[for (i in 0...(5 : GoInt).toBasic()) (0 : GoUInt8)]);
		var __tmp__ = _f.readAt(_b, ("7" : GoInt64)),
			_n:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if ((_err != null) || (_n != (_b.length))) {
			_t.fatalf(Go.str("ReadAt 7: %d, %v"), Go.toInterface(_n), Go.toInterface(_err));
		};
		if ((_b : GoString) != (Go.str("world"))) {
			_t.fatalf(Go.str("ReadAt 7: have %q want %q"), Go.toInterface((_b : GoString)), Go.toInterface(Go.str("world")));
		};
		{
			var __tmp__ = _f.read(_b);
			_n = __tmp__._0;
			_err = __tmp__._1;
		};
		if ((_err != null) || (_n != (_b.length))) {
			_t.fatalf(Go.str("Read: %d, %v"), Go.toInterface(_n), Go.toInterface(_err));
		};
		if ((_b : GoString) != (Go.str("hello"))) {
			_t.fatalf(Go.str("Read: have %q want %q"), Go.toInterface((_b : GoString)), Go.toInterface(Go.str("hello")));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

/**
	// Verify that ReadAt doesn't allow negative offset.
**/
function testReadAtNegativeOffset(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _f = _newFile(Go.str("TestReadAtNegativeOffset"), _t);
	try {
		{
			var _a0 = _f.name();
			__deferstack__.unshift(() -> remove(_a0));
		};
		__deferstack__.unshift(() -> _f.close());
		{};
		stdgo.io.Io.writeString(Go.asInterface(_f), Go.str("hello, world\n"));
		_f.seek(("0" : GoInt64), (0 : GoInt));
		var _b = new Slice<GoUInt8>((5 : GoInt).toBasic(), 0, ...[for (i in 0...(5 : GoInt).toBasic()) (0 : GoUInt8)]);
		var __tmp__ = _f.readAt(_b, ("-10" : GoInt64)),
			_n:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		{};
		if (!stdgo.strings.Strings.contains(stdgo.fmt.Fmt.sprint(_err), Go.str("negative offset")) || (_n != (0 : GoInt))) {
			_t.errorf(Go.str("ReadAt(-10) = %v, %v; want 0, ...%q..."), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface(Go.str("negative offset")));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testWriteAt(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _f = _newFile(Go.str("TestWriteAt"), _t);
	try {
		{
			var _a0 = _f.name();
			__deferstack__.unshift(() -> remove(_a0));
		};
		__deferstack__.unshift(() -> _f.close());
		{};
		stdgo.io.Io.writeString(Go.asInterface(_f), Go.str("hello, world\n"));
		var __tmp__ = _f.writeAt((Go.str("WORLD") : Slice<GoByte>), ("7" : GoInt64)),
			_n:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if ((_err != null) || (_n != (5 : GoInt))) {
			_t.fatalf(Go.str("WriteAt 7: %d, %v"), Go.toInterface(_n), Go.toInterface(_err));
		};
		var __tmp__ = stdgo.os.Os.readFile(_f.name()),
			_b:Slice<GoUInt8> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("ReadFile %s: %v"), Go.toInterface(_f.name()), Go.toInterface(_err));
		};
		if ((_b : GoString) != (Go.str("hello, WORLD\n"))) {
			_t.fatalf(Go.str("after write: have %q want %q"), Go.toInterface((_b : GoString)), Go.toInterface(Go.str("hello, WORLD\n")));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

/**
	// Verify that WriteAt doesn't allow negative offset.
**/
function testWriteAtNegativeOffset(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _f = _newFile(Go.str("TestWriteAtNegativeOffset"), _t);
	try {
		{
			var _a0 = _f.name();
			__deferstack__.unshift(() -> remove(_a0));
		};
		__deferstack__.unshift(() -> _f.close());
		var __tmp__ = _f.writeAt((Go.str("WORLD") : Slice<GoByte>), ("-10" : GoInt64)),
			_n:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		{};
		if (!stdgo.strings.Strings.contains(stdgo.fmt.Fmt.sprint(_err), Go.str("negative offset")) || (_n != (0 : GoInt))) {
			_t.errorf(Go.str("WriteAt(-10) = %v, %v; want 0, ...%q..."), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface(Go.str("negative offset")));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

/**
	// Verify that WriteAt doesn't work in append mode.
**/
function testWriteAtInAppendMode(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	__deferstack__.unshift(() -> _chtmpdir(_t)());
	try {
		var __tmp__ = openFile(Go.str("write_at_in_append_mode.txt"), (1088 : GoInt), (("438" : GoUInt32) : stdgo.io.fs.Fs.FileMode)),
			_f:Ref<File> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("OpenFile: %v"), Go.toInterface(_err));
		};
		__deferstack__.unshift(() -> _f.close());
		{
			var __tmp__ = _f.writeAt((Go.str() : Slice<GoByte>), ("1" : GoInt64));
			_err = __tmp__._1;
		};
		if (Go.toInterface(_err) != (Go.toInterface(errWriteAtInAppendMode))) {
			_t.fatalf(Go.str("f.WriteAt returned %v, expected %v"), Go.toInterface(_err), Go.toInterface(errWriteAtInAppendMode));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function _writeFile(_t:Ref<stdgo.testing.Testing.T>, _fname:GoString, _flag:GoInt, _text:GoString):GoString {
	var __tmp__ = openFile(_fname, _flag, (("438" : GoUInt32) : stdgo.io.fs.Fs.FileMode)),
		_f:Ref<File> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatalf(Go.str("Open: %v"), Go.toInterface(_err));
	};
	var __tmp__ = stdgo.io.Io.writeString(Go.asInterface(_f), _text),
		_n:GoInt = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatalf(Go.str("WriteString: %d, %v"), Go.toInterface(_n), Go.toInterface(_err));
	};
	_f.close();
	var __tmp__ = stdgo.os.Os.readFile(_fname),
		_data:Slice<GoUInt8> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatalf(Go.str("ReadFile: %v"), Go.toInterface(_err));
	};
	return (_data : GoString);
}

function testAppend(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	__deferstack__.unshift(() -> _chtmpdir(_t)());
	try {
		{};
		var _s:GoString = _writeFile(_t, Go.str("append.txt"), (578 : GoInt), Go.str("new"));
		if (_s != (Go.str("new"))) {
			_t.fatalf(Go.str("writeFile: have %q want %q"), Go.toInterface(_s), Go.toInterface(Go.str("new")));
		};
		_s = _writeFile(_t, Go.str("append.txt"), (1026 : GoInt), Go.str("|append"));
		if (_s != (Go.str("new|append"))) {
			_t.fatalf(Go.str("writeFile: have %q want %q"), Go.toInterface(_s), Go.toInterface(Go.str("new|append")));
		};
		_s = _writeFile(_t, Go.str("append.txt"), (1090 : GoInt), Go.str("|append"));
		if (_s != (Go.str("new|append|append"))) {
			_t.fatalf(Go.str("writeFile: have %q want %q"), Go.toInterface(_s), Go.toInterface(Go.str("new|append|append")));
		};
		var _err:Error = remove(Go.str("append.txt"));
		if (_err != null) {
			_t.fatalf(Go.str("Remove: %v"), Go.toInterface(_err));
		};
		_s = _writeFile(_t, Go.str("append.txt"), (1090 : GoInt), Go.str("new&append"));
		if (_s != (Go.str("new&append"))) {
			_t.fatalf(Go.str("writeFile: after append have %q want %q"), Go.toInterface(_s), Go.toInterface(Go.str("new&append")));
		};
		_s = _writeFile(_t, Go.str("append.txt"), (66 : GoInt), Go.str("old"));
		if (_s != (Go.str("old&append"))) {
			_t.fatalf(Go.str("writeFile: after create have %q want %q"), Go.toInterface(_s), Go.toInterface(Go.str("old&append")));
		};
		_s = _writeFile(_t, Go.str("append.txt"), (578 : GoInt), Go.str("new"));
		if (_s != (Go.str("new"))) {
			_t.fatalf(Go.str("writeFile: after truncate have %q want %q"), Go.toInterface(_s), Go.toInterface(Go.str("new")));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testStatDirWithTrailingSlash(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _path:GoString = _t.tempDir();
	{
		var __tmp__ = stat(_path),
			_0:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("stat %s failed: %s"), Go.toInterface(_path), Go.toInterface(_err));
		};
	};
	_path = _path + (Go.str("/"));
	{
		var __tmp__ = stat(_path),
			_1:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("stat %s failed: %s"), Go.toInterface(_path), Go.toInterface(_err));
		};
	};
}

function testNilProcessStateString(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _ps:Ref<ProcessState> = (null : Ref<ProcessState>);
	var _s:GoString = (_ps.string() : GoString);
	if (_s != (Go.str("<nil>"))) {
		_t.errorf(Go.str("(*ProcessState)(nil).String() = %q, want %q"), Go.toInterface(_s), Go.toInterface(Go.str("<nil>")));
	};
}

function testSameFile(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	__deferstack__.unshift(() -> _chtmpdir(_t)());
	try {
		var __tmp__ = create(Go.str("a")),
			_fa:Ref<File> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("Create(a): %v"), Go.toInterface(_err));
		};
		_fa.close();
		var __tmp__ = create(Go.str("b")),
			_fb:Ref<File> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("Create(b): %v"), Go.toInterface(_err));
		};
		_fb.close();
		var __tmp__ = stat(Go.str("a")),
			_ia1:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("Stat(a): %v"), Go.toInterface(_err));
		};
		var __tmp__ = stat(Go.str("a")),
			_ia2:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("Stat(a): %v"), Go.toInterface(_err));
		};
		if (!sameFile(_ia1, _ia2)) {
			_t.errorf(Go.str("files should be same"));
		};
		var __tmp__ = stat(Go.str("b")),
			_ib:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("Stat(b): %v"), Go.toInterface(_err));
		};
		if (sameFile(_ia1, _ib)) {
			_t.errorf(Go.str("files should be different"));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function _testDevNullFileInfo(_t:Ref<stdgo.testing.Testing.T>, _statname:GoString, _devNullName:GoString, _fi:FileInfo, _ignoreCase:Bool):Void {
	var _pre:GoString = stdgo.fmt.Fmt.sprintf(Go.str("%s(%q): "), Go.toInterface(_statname), Go.toInterface(_devNullName));
	var _name:GoString = stdgo.path.filepath.Filepath.base(_devNullName);
	if (_ignoreCase) {
		if (stdgo.strings.Strings.toUpper(_fi.name()) != (stdgo.strings.Strings.toUpper(_name))) {
			_t.errorf(_pre + Go.str("wrong file name have %v want %v"), Go.toInterface(_fi.name()), Go.toInterface(_name));
		};
	} else {
		if (_fi.name() != (_name)) {
			_t.errorf(_pre + Go.str("wrong file name have %v want %v"), Go.toInterface(_fi.name()), Go.toInterface(_name));
		};
	};
	if (_fi.size() != (("0" : GoInt64))) {
		_t.errorf(_pre + Go.str("wrong file size have %d want 0"), Go.toInterface(_fi.size()));
	};
	if (_fi.mode() & (("67108864" : GoUInt32) : stdgo.io.fs.Fs.FileMode) == ((("0" : GoUInt32) : stdgo.io.fs.Fs.FileMode))) {
		_t.errorf(_pre + Go.str("wrong file mode %q: ModeDevice is not set"), Go.toInterface(Go.asInterface(_fi.mode())));
	};
	if (_fi.mode() & (("2097152" : GoUInt32) : stdgo.io.fs.Fs.FileMode) == ((("0" : GoUInt32) : stdgo.io.fs.Fs.FileMode))) {
		_t.errorf(_pre + Go.str("wrong file mode %q: ModeCharDevice is not set"), Go.toInterface(Go.asInterface(_fi.mode())));
	};
	if (_fi.mode().isRegular()) {
		_t.errorf(_pre + Go.str("wrong file mode %q: IsRegular returns true"), Go.toInterface(Go.asInterface(_fi.mode())));
	};
}

function _testDevNullFile(_t:Ref<stdgo.testing.Testing.T>, _devNullName:GoString, _ignoreCase:Bool):Void {
	var __deferstack__:Array<Void->Void> = [];
	var __tmp__ = open(_devNullName),
		_f:Ref<File> = __tmp__._0,
		_err:Error = __tmp__._1;
	try {
		if (_err != null) {
			_t.fatalf(Go.str("Open(%s): %v"), Go.toInterface(_devNullName), Go.toInterface(_err));
		};
		__deferstack__.unshift(() -> _f.close());
		var __tmp__ = _f.stat(),
			_fi:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("Stat(%s): %v"), Go.toInterface(_devNullName), Go.toInterface(_err));
		};
		_testDevNullFileInfo(_t, Go.str("f.Stat"), _devNullName, _fi, _ignoreCase);
		{
			var __tmp__ = stat(_devNullName);
			_fi = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			_t.fatalf(Go.str("Stat(%s): %v"), Go.toInterface(_devNullName), Go.toInterface(_err));
		};
		_testDevNullFileInfo(_t, Go.str("Stat"), _devNullName, _fi, _ignoreCase);
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testDevNullFile(_t:Ref<stdgo.testing.Testing.T>):Void {
	_testDevNullFile(_t, Go.str("/dev/null"), false);
}

function testLargeWriteToConsole(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (!_testLargeWrite.value) {
		_t.skip(Go.toInterface(Go.str("skipping console-flooding test; enable with -large_write")));
	};
	var _b = new Slice<GoUInt8>((32000 : GoInt).toBasic(), 0, ...[for (i in 0...(32000 : GoInt).toBasic()) (0 : GoUInt8)]);
	for (_i in 0..._b.length.toBasic()) {
		_b[_i] = (46 : GoUInt8);
	};
	_b[(_b.length) - (1 : GoInt)] = (10 : GoUInt8);
	var __tmp__ = stdout.write(_b),
		_n:GoInt = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatalf(Go.str("Write to os.Stdout failed: %v"), Go.toInterface(_err));
	};
	if (_n != ((_b.length))) {
		_t.errorf(Go.str("Write to os.Stdout should return %d; got %d"), Go.toInterface((_b.length)), Go.toInterface(_n));
	};
	{
		var __tmp__ = stderr.write(_b);
		_n = __tmp__._0;
		_err = __tmp__._1;
	};
	if (_err != null) {
		_t.fatalf(Go.str("Write to os.Stderr failed: %v"), Go.toInterface(_err));
	};
	if (_n != ((_b.length))) {
		_t.errorf(Go.str("Write to os.Stderr should return %d; got %d"), Go.toInterface((_b.length)), Go.toInterface(_n));
	};
}

function testStatDirModeExec(_t:Ref<stdgo.testing.Testing.T>):Void {
	{};
	var _path:GoString = _t.tempDir();
	{
		var _err:Error = chmod(_path, (("511" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		if (_err != null) {
			_t.fatalf(Go.str("Chmod %q 0777: %v"), Go.toInterface(_path), Go.toInterface(_err));
		};
	};
	var __tmp__ = stat(_path),
		_dir:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatalf(Go.str("Stat %q (looking for mode %#o): %s"), Go.toInterface(_path), Go.toInterface((73 : GoInt)), Go.toInterface(_err));
	};
	if (_dir.mode() & (("73" : GoUInt32) : stdgo.io.fs.Fs.FileMode) != ((("73" : GoUInt32) : stdgo.io.fs.Fs.FileMode))) {
		_t.errorf(Go.str("Stat %q: mode %#o want %#o"), Go.toInterface(_path),
			Go.toInterface(Go.asInterface(_dir.mode() & (("73" : GoUInt32) : stdgo.io.fs.Fs.FileMode))), Go.toInterface((73 : GoInt)));
	};
}

function testStatStdin(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (Go.str("js") == (Go.str("android")) || Go.str("js") == (Go.str("plan9"))) {
		_t.skipf(Go.str("%s doesn\'t have /bin/sh"), Go.toInterface(Go.str("js")));
	};
	stdgo.internal.testenv.Testenv.mustHaveExec(Go.asInterface(_t));
	if (getenv(Go.str("GO_WANT_HELPER_PROCESS")) == (Go.str("1"))) {
		var __tmp__ = stdin.stat(),
			_st:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("Stat failed: %v"), Go.toInterface(_err));
		};
		stdgo.fmt.Fmt.println(_st.mode() & (("33554432" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		exit((0 : GoInt));
	};
	var __tmp__ = stdin.stat(),
		_fi:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
	{
		var _mode:stdgo.io.fs.Fs.FileMode = _fi.mode();
		if (((_mode & (("2097152" : GoUInt32) : stdgo.io.fs.Fs.FileMode)) != (("0" : GoUInt32) : stdgo.io.fs.Fs.FileMode))
			&& ((_mode & (("67108864" : GoUInt32) : stdgo.io.fs.Fs.FileMode)) != (("0" : GoUInt32) : stdgo.io.fs.Fs.FileMode))) {} else
			if (_mode & (("33554432" : GoUInt32) : stdgo.io.fs.Fs.FileMode) != ((("0" : GoUInt32) : stdgo.io.fs.Fs.FileMode))) {} else {
			_t.fatalf(Go.str("unexpected Stdin mode (%v), want ModeCharDevice or ModeNamedPipe"), Go.toInterface(Go.asInterface(_mode)));
		};
	};
	var _cmd:Ref<stdgo.os.exec.Exec.Cmd> = (null : Ref<stdgo.os.exec.Exec.Cmd>);
	if (false) {
		_cmd = stdgo.os.exec.Exec.command(Go.str("cmd"), Go.str("/c"), (Go.str("echo output | ") + args[(0 : GoInt)]) + Go.str(" -test.run=TestStatStdin"));
	} else {
		_cmd = stdgo.os.exec.Exec.command(Go.str("/bin/sh"), Go.str("-c"),
			(Go.str("echo output | ") + args[(0 : GoInt)]) + Go.str(" -test.run=TestStatStdin"));
	};
	_cmd.env = (environ().__append__(Go.str("GO_WANT_HELPER_PROCESS=1")));
	var __tmp__ = _cmd.combinedOutput(),
		_output:Slice<GoUInt8> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatalf(Go.str("Failed to spawn child process: %v %q"), Go.toInterface(_err), Go.toInterface((_output : GoString)));
	};
	if ((_output.length < (1:GoInt)) || (_output[(0 : GoInt)] != (112 : GoUInt8))) {
		_t.fatalf(Go.str("Child process reports stdin is not pipe \'%v\'"), Go.toInterface((_output : GoString)));
	};
}

function testStatRelativeSymlink(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	stdgo.internal.testenv.Testenv.mustHaveSymlink(Go.asInterface(_t));
	try {
		var _tmpdir:GoString = _t.tempDir();
		var _target:GoString = stdgo.path.filepath.Filepath.join(_tmpdir, Go.str("target"));
		var __tmp__ = create(_target),
			_f:Ref<File> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		__deferstack__.unshift(() -> _f.close());
		var __tmp__ = _f.stat(),
			_st:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		var _link:GoString = stdgo.path.filepath.Filepath.join(_tmpdir, Go.str("link"));
		_err = symlink(stdgo.path.filepath.Filepath.base(_target), _link);
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		var __tmp__ = stat(_link),
			_st1:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		if (!sameFile(_st, _st1)) {
			_t.error(Go.toInterface(Go.str("Stat doesn\'t follow relative symlink")));
		};
		if (false) {
			remove(_link);
			_err = symlink((_target.__slice__((stdgo.path.filepath.Filepath.volumeName(_target).length)) : GoString), _link);
			if (_err != null) {
				_t.fatal(Go.toInterface(_err));
			};
			var __tmp__ = stat(_link),
				_st1:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err != null) {
				_t.fatal(Go.toInterface(_err));
			};
			if (!sameFile(_st, _st1)) {
				_t.error(Go.toInterface(Go.str("Stat doesn\'t follow relative symlink")));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testReadAtEOF(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _f = _newFile(Go.str("TestReadAtEOF"), _t);
	try {
		{
			var _a0 = _f.name();
			__deferstack__.unshift(() -> remove(_a0));
		};
		__deferstack__.unshift(() -> _f.close());
		var __tmp__ = _f.readAt(new Slice<GoUInt8>((10 : GoInt).toBasic(), 0, ...[for (i in 0...(10 : GoInt).toBasic()) (0 : GoUInt8)]), ("0" : GoInt64)),
			_0:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if (Go.toInterface(_err) == (Go.toInterface(stdgo.io.Io.eof))) {} else if (_err == null) {
			_t.fatalf(Go.str("ReadAt succeeded"));
		} else {
			_t.fatalf(Go.str("ReadAt failed: %s"), Go.toInterface(_err));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testLongPath(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _tmpdir:GoString = _newDir(Go.str("TestLongPath"), _t);
	try {
		{
			var _a0 = _tmpdir;
			__deferstack__.unshift(() -> {
				var a = function(_d:GoString):Void {
					{
						var _err:Error = removeAll(_d);
						if (_err != null) {
							_t.fatalf(Go.str("RemoveAll failed: %v"), Go.toInterface(_err));
						};
					};
				};
				a(_a0);
			});
		};
		var _sizes = (new Slice<GoInt>(0, 0, (247 : GoInt), (248 : GoInt), (249 : GoInt), (400 : GoInt)) : Slice<GoInt>);
		while ((_tmpdir.length) < (400 : GoInt)) {
			_tmpdir = _tmpdir + (Go.str("/dir3456789"));
		};
		for (_0 => _sz in _sizes) {
			_t.run(stdgo.fmt.Fmt.sprintf(Go.str("length=%d"), Go.toInterface(_sz)), function(_t:Ref<stdgo.testing.Testing.T>):Void {
				var _sizedTempDir:GoString = (_tmpdir.__slice__(0, _sz - (1 : GoInt)) : GoString) + Go.str("x");
				{
					var _err:Error = mkdirAll(_sizedTempDir, (("493" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
					if (_err != null) {
						_t.fatalf(Go.str("MkdirAll failed: %v"), Go.toInterface(_err));
					};
				};
				var _data = (Go.str("hello world\n") : Slice<GoByte>);
				{
					var _err:Error = stdgo.os.Os.writeFile(_sizedTempDir + Go.str("/foo.txt"), _data, (("420" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
					if (_err != null) {
						_t.fatalf(Go.str("os.WriteFile() failed: %v"), Go.toInterface(_err));
					};
				};
				{
					var _err:Error = rename(_sizedTempDir + Go.str("/foo.txt"), _sizedTempDir + Go.str("/bar.txt"));
					if (_err != null) {
						_t.fatalf(Go.str("Rename failed: %v"), Go.toInterface(_err));
					};
				};
				var _mtime:stdgo.time.Time.Time = (stdgo.time.Time.now()
					.truncate((("60000000000" : GoInt64) : stdgo.time.Time.Duration)) == null ? null : stdgo.time.Time.now()
					.truncate((("60000000000" : GoInt64) : stdgo.time.Time.Duration))
					.__copy__());
				{
					var _err:Error = chtimes(_sizedTempDir + Go.str("/bar.txt"), (_mtime == null ? null : _mtime.__copy__()),
						(_mtime == null ? null : _mtime.__copy__()));
					if (_err != null) {
						_t.fatalf(Go.str("Chtimes failed: %v"), Go.toInterface(_err));
					};
				};
				var _names = (new Slice<GoString>(0, 0, Go.str("bar.txt")) : Slice<GoString>);
				if (stdgo.internal.testenv.Testenv.hasSymlink()) {
					{
						var _err:Error = symlink(_sizedTempDir + Go.str("/bar.txt"), _sizedTempDir + Go.str("/symlink.txt"));
						if (_err != null) {
							_t.fatalf(Go.str("Symlink failed: %v"), Go.toInterface(_err));
						};
					};
					_names = _names.__appendref__(Go.str("symlink.txt"));
				};
				if (stdgo.internal.testenv.Testenv.hasLink()) {
					{
						var _err:Error = link(_sizedTempDir + Go.str("/bar.txt"), _sizedTempDir + Go.str("/link.txt"));
						if (_err != null) {
							_t.fatalf(Go.str("Link failed: %v"), Go.toInterface(_err));
						};
					};
					_names = _names.__appendref__(Go.str("link.txt"));
				};
				for (_0 => _wantSize in (new Slice<GoInt64>(0, 0, (_data.length : GoInt64), ("0" : GoInt64)) : Slice<GoInt64>)) {
					for (_1 => _name in _names) {
						var _path:GoString = (_sizedTempDir + Go.str("/")) + _name;
						var __tmp__ = stat(_path),
							_dir:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
							_err:Error = __tmp__._1;
						if (_err != null) {
							_t.fatalf(Go.str("Stat(%q) failed: %v"), Go.toInterface(_path), Go.toInterface(_err));
						};
						var _filesize:GoInt64 = _size(_path, _t);
						if ((_dir.size() != _filesize) || (_filesize != _wantSize)) {
							_t.errorf(Go.str("Size(%q) is %d, len(ReadFile()) is %d, want %d"), Go.toInterface(_path), Go.toInterface(_dir.size()),
								Go.toInterface(_filesize), Go.toInterface(_wantSize));
						};
						_err = chmod(_path, _dir.mode());
						if (_err != null) {
							_t.fatalf(Go.str("Chmod(%q) failed: %v"), Go.toInterface(_path), Go.toInterface(_err));
						};
					};
					{
						var _err:Error = truncate(_sizedTempDir + Go.str("/bar.txt"), ("0" : GoInt64));
						if (_err != null) {
							_t.fatalf(Go.str("Truncate failed: %v"), Go.toInterface(_err));
						};
					};
				};
			});
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function _testKillProcess(_t:Ref<stdgo.testing.Testing.T>, _processKiller:(_p:Ref<Process>) -> Void):Void {
	var __deferstack__:Array<Void->Void> = [];
	stdgo.internal.testenv.Testenv.mustHaveExec(Go.asInterface(_t));
	try {
		_t.parallel();
		var _cmd = stdgo.os.exec.Exec.command(args[(0 : GoInt)]);
		_cmd.env = (stdgo.os.Os.environ().__append__(Go.str("GO_OS_TEST_DRAIN_STDIN=1")));
		var __tmp__ = _cmd.stdoutPipe(),
			_stdout:stdgo.io.Io.ReadCloser = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		var __tmp__ = _cmd.stdinPipe(),
			_stdin:stdgo.io.Io.WriteCloser = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		_err = _cmd.start();
		if (_err != null) {
			_t.fatalf(Go.str("Failed to start test process: %v"), Go.toInterface(_err));
		};
		__deferstack__.unshift(() -> {
			var a = function():Void {
				{
					var _err:Error = _cmd.wait_();
					if (_err == null) {
						_t.errorf(Go.str("Test process succeeded, but expected to fail"));
					};
				};
				_stdin.close();
			};
			a();
		});
		stdgo.io.Io.copy(stdgo.io.Io.discard, _stdout);
		_processKiller(_cmd.process);
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testKillStartProcess(_t:Ref<stdgo.testing.Testing.T>):Void {
	_testKillProcess(_t, function(_p:Ref<Process>):Void {
		var _err:Error = _p.kill();
		if (_err != null) {
			_t.fatalf(Go.str("Failed to kill test process: %v"), Go.toInterface(_err));
		};
	});
}

function testGetppid(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (false) {
		_t.skipf(Go.str("skipping test on plan9; see issue 8206"));
	};
	stdgo.internal.testenv.Testenv.mustHaveExec(Go.asInterface(_t));
	if (getenv(Go.str("GO_WANT_HELPER_PROCESS")) == (Go.str("1"))) {
		stdgo.fmt.Fmt.print(getppid());
		exit((0 : GoInt));
	};
	var _cmd = stdgo.os.exec.Exec.command(args[(0 : GoInt)], Go.str("-test.run=TestGetppid"));
	_cmd.env = (environ().__append__(Go.str("GO_WANT_HELPER_PROCESS=1")));
	var __tmp__ = _cmd.combinedOutput(),
		_output:Slice<GoUInt8> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatalf(Go.str("Failed to spawn child process: %v %q"), Go.toInterface(_err), Go.toInterface((_output : GoString)));
	};
	var _childPpid:GoString = (_output : GoString);
	var _ourPid:GoString = stdgo.fmt.Fmt.sprintf(Go.str("%d"), Go.toInterface(getpid()));
	if (_childPpid != (_ourPid)) {
		_t.fatalf(Go.str("Child process reports parent process id \'%v\', expected \'%v\'"), Go.toInterface(_childPpid), Go.toInterface(_ourPid));
	};
}

function testKillFindProcess(_t:Ref<stdgo.testing.Testing.T>):Void {
	_testKillProcess(_t, function(_p:Ref<Process>):Void {
		var __tmp__ = findProcess(_p.pid),
			_p2:Ref<Process> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("Failed to find test process: %v"), Go.toInterface(_err));
		};
		_err = _p2.kill();
		if (_err != null) {
			_t.fatalf(Go.str("Failed to kill test process: %v"), Go.toInterface(_err));
		};
	});
}

/**
	// Test that all File methods give ErrInvalid if the receiver is nil.
**/
function testNilFileMethods(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _nilFileMethodTests) {
		var _file:Ref<File> = (null : Ref<File>);
		var _got:Error = _tt._f(_file);
		if (Go.toInterface(_got) != (Go.toInterface(errInvalid))) {
			_t.errorf(Go.str("%v should fail when f is nil; got %v"), Go.toInterface(_tt._name), Go.toInterface(_got));
		};
	};
}

function _mkdirTree(_t:Ref<stdgo.testing.Testing.T>, _root:GoString, _level:GoInt, _max:GoInt):Void {
	if (_level >= _max) {
		return;
	};
	_level++;
	{
		var _i:GoInt32 = (97 : GoInt32);
		Go.cfor(_i < (99:GoInt32), _i++, {
			var _dir:GoString = stdgo.path.filepath.Filepath.join(_root, (_i : GoString));
			{
				var _err:Error = mkdir(_dir, (("448" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
				if (_err != null) {
					_t.fatal(Go.toInterface(_err));
				};
			};
			_mkdirTree(_t, _dir, _level, _max);
		});
	};
}

/**
	// Test that simultaneous RemoveAll do not report an error.
	// As long as it gets removed, we should be happy.
**/
function testRemoveAllRace(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	if (false) {
		_t.skip(Go.toInterface(Go.str("skipping on windows")));
	};
	try {
		if (false) {
			stdgo.internal.testenv.Testenv.skipFlaky(Go.asInterface(_t), (52301 : GoInt));
		};
		var _n:GoInt = stdgo.runtime.Runtime.gomaxprocs((16 : GoInt));
		{
			var _a0 = _n;
			__deferstack__.unshift(() -> stdgo.runtime.Runtime.gomaxprocs(_a0));
		};
		var __tmp__ = stdgo.os.Os.mkdirTemp(Go.str(), Go.str("issue")),
			_root:GoString = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		_mkdirTree(_t, _root, (1 : GoInt), (6 : GoInt));
		var _hold = new Chan<T__struct_4>(0, () -> ({} : T__struct_4));
		var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (4:GoInt), _i++, {
				_wg.add((1 : GoInt));
				Go.routine(() -> {
					var a = function():Void {
						var __deferstack__:Array<Void->Void> = [];
						__deferstack__.unshift(() -> _wg.done());
						try {
							_hold.__get__();
							var _err:Error = removeAll(_root);
							if (_err != null) {
								_t.errorf(Go.str("unexpected error: %T, %q"), Go.toInterface(_err), Go.toInterface(_err));
							};
							for (defer in __deferstack__) {
								defer();
							};
							{
								for (defer in __deferstack__) {
									defer();
								};
								if (Go.recover_exception != null)
									throw Go.recover_exception;
								return;
							};
						} catch (__exception__) {
							if (!(__exception__.native is AnyInterfaceData))
								throw __exception__;
							Go.recover_exception = __exception__.native;
							for (defer in __deferstack__) {
								defer();
							};
							if (Go.recover_exception != null)
								throw Go.recover_exception;
							return;
						};
					};
					a();
				});
			});
		};
		if (_hold != null)
			_hold.__close__();
		_wg.wait_();
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

/**
	// Test that reading from a pipe doesn't use up a thread.
**/
function testPipeThreads(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	if (Go.str("js") == (Go.str("illumos")) || Go.str("js") == (Go.str("solaris"))) {
		_t.skip(Go.toInterface(Go.str("skipping on Solaris and illumos; issue 19111")));
	} else if (Go.str("js") == (Go.str("windows"))) {
		_t.skip(Go.toInterface(Go.str("skipping on Windows; issue 19098")));
	} else if (Go.str("js") == (Go.str("plan9"))) {
		_t.skip(Go.toInterface(Go.str("skipping on Plan 9; does not support runtime poller")));
	} else if (Go.str("js") == (Go.str("js"))) {
		_t.skip(Go.toInterface(Go.str("skipping on js; no support for os.Pipe")));
	};
	try {
		var _threads:GoInt = (100 : GoInt);
		if (false) {
			_threads = (50 : GoInt);
		};
		var _r = new Slice<Ref<File>>((_threads : GoInt).toBasic(), 0, ...[for (i in 0...(_threads : GoInt).toBasic()) (null : Ref<File>)]);
		var _w = new Slice<Ref<File>>((_threads : GoInt).toBasic(), 0, ...[for (i in 0...(_threads : GoInt).toBasic()) (null : Ref<File>)]);
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _threads, _i++, {
				var __tmp__ = pipe(),
					_rp:Ref<File> = __tmp__._0,
					_wp:Ref<File> = __tmp__._1,
					_err:Error = __tmp__._2;
				if (_err != null) {
					{
						var _j:GoInt = (0 : GoInt);
						Go.cfor(_j < _i, _j++, {
							_r[_j].close();
							_w[_j].close();
						});
					};
					_t.fatal(Go.toInterface(_err));
				};
				_r[_i] = _rp;
				_w[_i] = _wp;
			});
		};
		{
			var _a0 = stdgo.runtime.debug.Debug.setMaxThreads(_threads / (2 : GoInt));
			__deferstack__.unshift(() -> stdgo.runtime.debug.Debug.setMaxThreads(_a0));
		};
		var _creading = new Chan<Bool>((_threads : GoInt).toBasic(), () -> false);
		var _cdone = new Chan<Bool>((_threads : GoInt).toBasic(), () -> false);
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _threads, _i++, {
				Go.routine(() -> {
					var a = function(_i:GoInt):Void {
						var _b:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...1) (0 : GoUInt8)]);
						_creading.__send__(true);
						{
							var __tmp__ = _r[_i].read((_b.__slice__(0) : Slice<GoUInt8>)), _0:GoInt = __tmp__._0, _err:Error = __tmp__._1;
							if (_err != null) {
								_t.error(Go.toInterface(_err));
							};
						};
						{
							var _err:Error = _r[_i].close();
							if (_err != null) {
								_t.error(Go.toInterface(_err));
							};
						};
						_cdone.__send__(true);
					};
					a(_i);
				});
			});
		};
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _threads, _i++, {
				_creading.__get__();
			});
		};
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _threads, _i++, {
				{
					var __tmp__ = _w[_i].write((new Slice<GoUInt8>(0, 0, (0 : GoUInt8)) : Slice<GoUInt8>)),
						_0:GoInt = __tmp__._0,
						_err:Error = __tmp__._1;
					if (_err != null) {
						_t.error(Go.toInterface(_err));
					};
				};
				{
					var _err:Error = _w[_i].close();
					if (_err != null) {
						_t.error(Go.toInterface(_err));
					};
				};
				_cdone.__get__();
			});
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function _testDoubleCloseError(_t:Ref<stdgo.testing.Testing.T>, _path:GoString):Void {
	var __tmp__ = open(_path),
		_file:Ref<File> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
	{
		var _err:Error = _file.close();
		if (_err != null) {
			_t.fatalf(Go.str("unexpected error from Close: %v"), Go.toInterface(_err));
		};
	};
	{
		var _err:Error = _file.close();
		if (_err == null) {
			_t.error(Go.toInterface(Go.str("second Close did not fail")));
		} else {
			var __tmp__ = try {
				{value: (Go.typeAssert((Go.toInterface(_err) : Ref<PathError>)) : Ref<PathError>), ok: true};
			} catch (_) {
				{value: (null : Ref<stdgo.io.fs.Fs.PathError>), ok: false};
			}, _pe = __tmp__.value, _ok = __tmp__.ok;
			if (!_ok) {
				_t.errorf(Go.str("second Close returned unexpected error type %T; expected fs.PathError"), Go.toInterface(_pe));
			} else if (Go.toInterface(_pe.err) != (Go.toInterface(errClosed))) {
				_t.errorf(Go.str("second Close returned %q, wanted %q"), Go.toInterface(_err), Go.toInterface(errClosed));
			} else {
				_t.logf(Go.str("second close returned expected error %q"), Go.toInterface(_err));
			};
		};
	};
}

function testDoubleCloseError(_t:Ref<stdgo.testing.Testing.T>):Void {
	_testDoubleCloseError(_t, stdgo.path.filepath.Filepath.join(_sfdir, _sfname));
	_testDoubleCloseError(_t, _sfdir);
}

function testUserHomeDir(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __tmp__ = userHomeDir(),
		_dir:GoString = __tmp__._0,
		_err:Error = __tmp__._1;
	if ((_dir == Go.str()) && (_err == null)) {
		_t.fatal(Go.toInterface(Go.str("UserHomeDir returned an empty string but no error")));
	};
	if (_err != null) {
		_t.skipf(Go.str("UserHomeDir failed: %v"), Go.toInterface(_err));
	};
	var __tmp__ = stat(_dir),
		_fi:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
	if (!_fi.isDir()) {
		_t.fatalf(Go.str("dir %s is not directory; type = %v"), Go.toInterface(_dir), Go.toInterface(Go.asInterface(_fi.mode())));
	};
}

function testDirSeek(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (false) {
		stdgo.internal.testenv.Testenv.skipFlaky(Go.asInterface(_t), (36019 : GoInt));
	};
	var __tmp__ = getwd(), _wd:GoString = __tmp__._0, _err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
	var __tmp__ = open(_wd),
		_f:Ref<File> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
	var __tmp__ = _f.readdirnames((0 : GoInt)),
		_dirnames1:Slice<GoString> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
	var __tmp__ = _f.seek(("0" : GoInt64), (0 : GoInt)),
		_ret:GoInt64 = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
	if (_ret != (("0" : GoInt64))) {
		_t.fatalf(Go.str("seek result not zero: %d"), Go.toInterface(_ret));
	};
	var __tmp__ = _f.readdirnames((0 : GoInt)),
		_dirnames2:Slice<GoString> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
		return;
	};
	if ((_dirnames1.length) != ((_dirnames2.length))) {
		_t.fatalf(Go.str("listings have different lengths: %d and %d\n"), Go.toInterface((_dirnames1.length)), Go.toInterface((_dirnames2.length)));
	};
	for (_i => _n1 in _dirnames1) {
		var _n2:GoString = _dirnames2[_i];
		if (_n1 != (_n2)) {
			_t.fatalf(Go.str("different name i=%d n1=%s n2=%s\n"), Go.toInterface(_i), Go.toInterface(_n1), Go.toInterface(_n2));
		};
	};
}

function testReaddirSmallSeek(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (false) {
		stdgo.internal.testenv.Testenv.skipFlaky(Go.asInterface(_t), (36019 : GoInt));
	};
	var __tmp__ = getwd(), _wd:GoString = __tmp__._0, _err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
	var __tmp__ = open(stdgo.path.filepath.Filepath.join(_wd, Go.str("testdata"), Go.str("issue37161"))),
		_df:Ref<File> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
	var __tmp__ = _df.readdirnames((1 : GoInt)),
		_names1:Slice<GoString> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
	{
		{
			var __tmp__ = _df.seek(("0" : GoInt64), (0 : GoInt));
			_err = __tmp__._1;
		};
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
	var __tmp__ = _df.readdirnames((0 : GoInt)),
		_names2:Slice<GoString> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
	if ((_names2.length) != ((3 : GoInt))) {
		_t.fatalf(Go.str("first names: %v, second names: %v"), Go.toInterface(_names1), Go.toInterface(_names2));
	};
}

/**
	// isDeadlineExceeded reports whether err is or wraps os.ErrDeadlineExceeded.
	// We also check that the error has a Timeout method that returns true.
**/
function _isDeadlineExceeded(_err:Error):Bool {
	if (!isTimeout(_err)) {
		return false;
	};
	if (!stdgo.errors.Errors.is_(_err, errDeadlineExceeded)) {
		return false;
	};
	return true;
}

/**
	// Test that opening a file does not change its permissions.  Issue 38225.
**/
function testOpenFileKeepsPermissions(_t:Ref<stdgo.testing.Testing.T>):Void {
	_t.parallel();
	var _dir:GoString = _t.tempDir();
	var _name:GoString = stdgo.path.filepath.Filepath.join(_dir, Go.str("x"));
	var __tmp__ = create(_name),
		_f:Ref<File> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
	{
		var _err:Error = _f.close();
		if (_err != null) {
			_t.error(Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = openFile(_name, (577 : GoInt), (("0" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		_f = __tmp__._0;
		_err = __tmp__._1;
	};
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
	{
		var __tmp__ = _f.stat(),
			_fi:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.error(Go.toInterface(_err));
		} else if (_fi.mode() & (("146" : GoUInt32) : stdgo.io.fs.Fs.FileMode) == ((("0" : GoUInt32) : stdgo.io.fs.Fs.FileMode))) {
			_t.errorf(Go.str("f.Stat.Mode after OpenFile is %v, should be writable"), Go.toInterface(Go.asInterface(_fi.mode())));
		};
	};
	{
		var _err:Error = _f.close();
		if (_err != null) {
			_t.error(Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = stat(_name),
			_fi:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.error(Go.toInterface(_err));
		} else if (_fi.mode() & (("146" : GoUInt32) : stdgo.io.fs.Fs.FileMode) == ((("0" : GoUInt32) : stdgo.io.fs.Fs.FileMode))) {
			_t.errorf(Go.str("Stat after OpenFile is %v, should be writable"), Go.toInterface(Go.asInterface(_fi.mode())));
		};
	};
}

function testDirFS(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (false) {
		{
			var _err:Error = stdgo.path.filepath.Filepath.walkDir(Go.str("./testdata/dirfs"),
				function(_path:GoString, _d:stdgo.io.fs.Fs.DirEntry, _err:Error):Error {
					if (_err != null) {
						_t.fatal(Go.toInterface(_err));
					};
					var __tmp__ = _d.info(), _info:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:Error = __tmp__._1;
					if (_err != null) {
						_t.fatal(Go.toInterface(_err));
					};
					var __tmp__ = stat(_path), _stat:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:Error = __tmp__._1;
					if (_err != null) {
						_t.fatal(Go.toInterface(_err));
					};
					if (Go.toInterface(Go.asInterface(_stat.modTime())) == Go.toInterface(Go.asInterface(_info.modTime()))) {
						return (null : Error);
					};
					{
						var _err:Error = chtimes(_path, (_stat.modTime() == null ? null : _stat.modTime().__copy__()),
							(_stat.modTime() == null ? null : _stat.modTime().__copy__()));
						if (_err != null) {
							_t.log(Go.toInterface(_err));
						};
					};
					return (null : Error);
				});
			if (_err != null) {
				_t.fatal(Go.toInterface(_err));
			};
		};
	};
	{
		var _err:Error = stdgo.testing.fstest.Fstest.testFS(dirFS(Go.str("./testdata/dirfs")), Go.str("a"), Go.str("b"), Go.str("dir/x"));
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
	var _d:stdgo.io.fs.Fs.FS = dirFS(Go.str("."));
	var __tmp__ = _d.open(Go.str("testdata\\dirfs")),
		_0:stdgo.io.fs.Fs.File = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err == null) {
		_t.fatalf(Go.str("Open testdata\\dirfs succeeded"));
	};
}

function testDirFSPathsValid(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (false) {
		_t.skipf(Go.str("skipping on Windows"));
	};
	var _d:GoString = _t.tempDir();
	{
		var _err:Error = stdgo.os.Os.writeFile(stdgo.path.filepath.Filepath.join(_d, Go.str("control.txt")),
			((Go.str("Hello, world!") : GoString) : Slice<GoByte>), (("420" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
	{
		var _err:Error = stdgo.os.Os.writeFile(stdgo.path.filepath.Filepath.join(_d, Go.str("e:xperi\\ment.txt")),
			((Go.str("Hello, colon and backslash!") : GoString) : Slice<GoByte>), (("420" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
	var _fsys:stdgo.io.fs.Fs.FS = stdgo.os.Os.dirFS(_d);
	var _err:Error = stdgo.io.fs.Fs.walkDir(_fsys, Go.str("."), function(_path:GoString, _e:stdgo.io.fs.Fs.DirEntry, _err:Error):Error {
		if (stdgo.io.fs.Fs.validPath(_e.name())) {
			_t.logf(Go.str("%q ok"), Go.toInterface(_e.name()));
		} else {
			_t.errorf(Go.str("%q INVALID"), Go.toInterface(_e.name()));
		};
		return (null : Error);
	});
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
}

function testReadFileProc(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _name:GoString = Go.str("/proc/sys/fs/pipe-max-size");
	{
		var __tmp__ = stat(_name),
			_0:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.skip(Go.toInterface(_err));
		};
	};
	var __tmp__ = readFile(_name),
		_data:Slice<GoUInt8> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
	if ((_data.length == (0 : GoInt)) || (_data[(_data.length) - (1 : GoInt)] != (10 : GoUInt8))) {
		_t.fatalf(Go.str("read %s: not newline-terminated: %q"), Go.toInterface(_name), Go.toInterface(_data));
	};
}

function testWriteStringAlloc(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	if (true) {
		_t.skip(Go.toInterface(Go.str("js allocates a lot during File.WriteString")));
	};
	try {
		var _d:GoString = _t.tempDir();
		var __tmp__ = create(stdgo.path.filepath.Filepath.join(_d, Go.str("whiteboard.txt"))),
			_f:Ref<File> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		__deferstack__.unshift(() -> _f.close());
		var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun((100 : GoInt), function():Void {
			_f.writeString(Go.str("I will not allocate when passed a string longer than 32 bytes.\n"));
		});
		if (_allocs != (0 : GoFloat64)) {
			_t.errorf(Go.str("expected 0 allocs for File.WriteString, got %v"), Go.toInterface(_allocs));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function _checkUidGid(_t:Ref<stdgo.testing.Testing.T>, _path:GoString, _uid:GoInt, _gid:GoInt):Void {
	var __tmp__ = lstat(_path),
		_dir:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatalf(Go.str("Lstat %q (looking for uid/gid %d/%d): %s"), Go.toInterface(_path), Go.toInterface(_uid), Go.toInterface(_gid), Go.toInterface(_err));
	};
	var _sys = (Go.typeAssert((_dir.sys() : Ref<stdgo.syscall.Syscall.Stat_t>)) : Ref<stdgo.syscall.Syscall.Stat_t>);
	if ((_sys.uid : GoInt) != (_uid)) {
		_t.errorf(Go.str("Lstat %q: uid %d want %d"), Go.toInterface(_path), Go.toInterface(_sys.uid), Go.toInterface(_uid));
	};
	if ((_sys.gid : GoInt) != (_gid)) {
		_t.errorf(Go.str("Lstat %q: gid %d want %d"), Go.toInterface(_path), Go.toInterface(_sys.gid), Go.toInterface(_gid));
	};
}

function testChown(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _f = _newFile(Go.str("TestChown"), _t);
	try {
		{
			var _a0 = _f.name();
			__deferstack__.unshift(() -> remove(_a0));
		};
		__deferstack__.unshift(() -> _f.close());
		var __tmp__ = _f.stat(),
			_dir:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("stat %s: %s"), Go.toInterface(_f.name()), Go.toInterface(_err));
		};
		var _gid:GoInt = getgid();
		_t.log(Go.toInterface(Go.str("gid:")), Go.toInterface(_gid));
		{
			_err = chown(_f.name(), (-1 : GoInt), _gid);
			if (_err != null) {
				_t.fatalf(Go.str("chown %s -1 %d: %s"), Go.toInterface(_f.name()), Go.toInterface(_gid), Go.toInterface(_err));
			};
		};
		var _sys = (Go.typeAssert((_dir.sys() : Ref<stdgo.syscall.Syscall.Stat_t>)) : Ref<stdgo.syscall.Syscall.Stat_t>);
		_checkUidGid(_t, _f.name(), (_sys.uid : GoInt), _gid);
		var __tmp__ = getgroups(),
			_groups:Slice<GoInt> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("getgroups: %s"), Go.toInterface(_err));
		};
		_t.log(Go.toInterface(Go.str("groups: ")), Go.toInterface(_groups));
		for (_0 => _g in _groups) {
			{
				_err = chown(_f.name(), (-1 : GoInt), _g);
				if (_err != null) {
					_t.fatalf(Go.str("chown %s -1 %d: %s"), Go.toInterface(_f.name()), Go.toInterface(_g), Go.toInterface(_err));
				};
			};
			_checkUidGid(_t, _f.name(), (_sys.uid : GoInt), _g);
			{
				_err = _f.chown((-1 : GoInt), _gid);
				if (_err != null) {
					_t.fatalf(Go.str("fchown %s -1 %d: %s"), Go.toInterface(_f.name()), Go.toInterface(_gid), Go.toInterface(_err));
				};
			};
			_checkUidGid(_t, _f.name(), (_sys.uid : GoInt), _gid);
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testFileChown(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _f = _newFile(Go.str("TestFileChown"), _t);
	try {
		{
			var _a0 = _f.name();
			__deferstack__.unshift(() -> remove(_a0));
		};
		__deferstack__.unshift(() -> _f.close());
		var __tmp__ = _f.stat(),
			_dir:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("stat %s: %s"), Go.toInterface(_f.name()), Go.toInterface(_err));
		};
		var _gid:GoInt = getgid();
		_t.log(Go.toInterface(Go.str("gid:")), Go.toInterface(_gid));
		{
			_err = _f.chown((-1 : GoInt), _gid);
			if (_err != null) {
				_t.fatalf(Go.str("fchown %s -1 %d: %s"), Go.toInterface(_f.name()), Go.toInterface(_gid), Go.toInterface(_err));
			};
		};
		var _sys = (Go.typeAssert((_dir.sys() : Ref<stdgo.syscall.Syscall.Stat_t>)) : Ref<stdgo.syscall.Syscall.Stat_t>);
		_checkUidGid(_t, _f.name(), (_sys.uid : GoInt), _gid);
		var __tmp__ = getgroups(),
			_groups:Slice<GoInt> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("getgroups: %s"), Go.toInterface(_err));
		};
		_t.log(Go.toInterface(Go.str("groups: ")), Go.toInterface(_groups));
		for (_0 => _g in _groups) {
			{
				_err = _f.chown((-1 : GoInt), _g);
				if (_err != null) {
					_t.fatalf(Go.str("fchown %s -1 %d: %s"), Go.toInterface(_f.name()), Go.toInterface(_g), Go.toInterface(_err));
				};
			};
			_checkUidGid(_t, _f.name(), (_sys.uid : GoInt), _g);
			{
				_err = _f.chown((-1 : GoInt), _gid);
				if (_err != null) {
					_t.fatalf(Go.str("fchown %s -1 %d: %s"), Go.toInterface(_f.name()), Go.toInterface(_gid), Go.toInterface(_err));
				};
			};
			_checkUidGid(_t, _f.name(), (_sys.uid : GoInt), _gid);
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testLchown(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _f = _newFile(Go.str("TestLchown"), _t);
	try {
		{
			var _a0 = _f.name();
			__deferstack__.unshift(() -> remove(_a0));
		};
		__deferstack__.unshift(() -> _f.close());
		var __tmp__ = _f.stat(),
			_dir:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("stat %s: %s"), Go.toInterface(_f.name()), Go.toInterface(_err));
		};
		var _linkname:GoString = _f.name() + Go.str("2");
		{
			var _err:Error = symlink(_f.name(), _linkname);
			if (_err != null) {
				if (false && isPermission(_err)) {
					_t.skip(Go.toInterface(Go.str("skipping test on Android; permission error creating symlink")));
				};
				_t.fatalf(Go.str("link %s -> %s: %v"), Go.toInterface(_f.name()), Go.toInterface(_linkname), Go.toInterface(_err));
			};
		};
		{
			var _a0 = _linkname;
			__deferstack__.unshift(() -> remove(_a0));
		};
		var _gid:GoInt = getgid();
		_t.log(Go.toInterface(Go.str("gid:")), Go.toInterface(_gid));
		{
			_err = lchown(_linkname, (-1 : GoInt), _gid);
			if (_err != null) {
				{
					var __tmp__ = try {
						{value: (Go.typeAssert((Go.toInterface(_err) : Ref<PathError>)) : Ref<PathError>), ok: true};
					} catch (_) {
						{value: (null : Ref<stdgo.io.fs.Fs.PathError>), ok: false};
					}, _err = __tmp__.value, _ok = __tmp__.ok;
					if (_ok && (Go.toInterface(_err.err) == Go.toInterface(Go.asInterface((38 : stdgo.syscall.Syscall.Errno))))) {
						_t.skip(Go.toInterface(Go.str("lchown is unavailable")));
					};
				};
				_t.fatalf(Go.str("lchown %s -1 %d: %s"), Go.toInterface(_linkname), Go.toInterface(_gid), Go.toInterface(_err));
			};
		};
		var _sys = (Go.typeAssert((_dir.sys() : Ref<stdgo.syscall.Syscall.Stat_t>)) : Ref<stdgo.syscall.Syscall.Stat_t>);
		_checkUidGid(_t, _linkname, (_sys.uid : GoInt), _gid);
		var __tmp__ = getgroups(),
			_groups:Slice<GoInt> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("getgroups: %s"), Go.toInterface(_err));
		};
		_t.log(Go.toInterface(Go.str("groups: ")), Go.toInterface(_groups));
		for (_0 => _g in _groups) {
			{
				_err = lchown(_linkname, (-1 : GoInt), _g);
				if (_err != null) {
					_t.fatalf(Go.str("lchown %s -1 %d: %s"), Go.toInterface(_linkname), Go.toInterface(_g), Go.toInterface(_err));
				};
			};
			_checkUidGid(_t, _linkname, (_sys.uid : GoInt), _g);
			_checkUidGid(_t, _f.name(), (_sys.uid : GoInt), (_sys.gid : GoInt));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

/**
	// Issue 16919: Readdir must return a non-empty slice or an error.
**/
function testReaddirRemoveRace(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _oldStat:GoString -> {
		var _0:stdgo.io.fs.Fs.FileInfo;
		var _1:Error;
	} = lstatP;
	try {
		__deferstack__.unshift(() -> {
			var a = function():Void {
				lstatP = _oldStat;
			};
			a();
		});
		lstatP = function(_name:GoString):{var _0:FileInfo; var _1:Error;} {
			if (stdgo.strings.Strings.hasSuffix(_name, Go.str("some-file"))) {
				return {_0: (null : stdgo.io.fs.Fs.FileInfo), _1: errNotExist};
			};
			return _oldStat(_name);
		};
		var _dir:GoString = _newDir(Go.str("TestReaddirRemoveRace"), _t);
		{
			var _a0 = _dir;
			__deferstack__.unshift(() -> removeAll(_a0));
		};
		{
			var _err:Error = stdgo.os.Os.writeFile(stdgo.path.filepath.Filepath.join(_dir, Go.str("some-file")), (Go.str("hello") : Slice<GoByte>),
				(("420" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
			if (_err != null) {
				_t.fatal(Go.toInterface(_err));
			};
		};
		var __tmp__ = open(_dir),
			_d:Ref<File> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		__deferstack__.unshift(() -> _d.close());
		var __tmp__ = _d.readdir((2 : GoInt)),
			_fis:Slice<stdgo.io.fs.Fs.FileInfo> = __tmp__._0,
			_err:Error = __tmp__._1;
		if ((_fis.length == (0 : GoInt)) && (_err == null)) {
			_t.fatal(Go.toInterface(Go.str("Readdir = empty slice & err == nil")));
		};
		if ((_fis.length != (0 : GoInt)) || (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof))) {
			_t.errorf(Go.str("Readdir = %d entries: %v; want 0, io.EOF"), Go.toInterface((_fis.length)), Go.toInterface(_err));
			for (_i => _fi in _fis) {
				_t.errorf(Go.str("  entry[%d]: %q, %v"), Go.toInterface(_i), Go.toInterface(_fi.name()), Go.toInterface(Go.asInterface(_fi.mode())));
			};
			_t.failNow();
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

/**
	// Issue 23120: respect umask when doing Mkdir with the sticky bit
**/
function testMkdirStickyUmask(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	{};
	try {
		var _dir:GoString = _newDir(Go.str("TestMkdirStickyUmask"), _t);
		{
			var _a0 = _dir;
			__deferstack__.unshift(() -> removeAll(_a0));
		};
		var _oldUmask:GoInt = stdgo.syscall.Syscall.umask((63 : GoInt));
		{
			var _a0 = _oldUmask;
			__deferstack__.unshift(() -> stdgo.syscall.Syscall.umask(_a0));
		};
		var _p:GoString = stdgo.path.filepath.Filepath.join(_dir, Go.str("dir1"));
		{
			var _err:Error = mkdir(_p, (("1049069" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
			if (_err != null) {
				_t.fatal(Go.toInterface(_err));
			};
		};
		var __tmp__ = stat(_p),
			_fi:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		{
			var _mode:stdgo.io.fs.Fs.FileMode = _fi.mode();
			if (((_mode & (("63" : GoUInt32) : stdgo.io.fs.Fs.FileMode)) != (("0" : GoUInt32) : stdgo.io.fs.Fs.FileMode))
				|| ((_mode & ((("511" : GoUInt32) : stdgo.io.fs.Fs.FileMode) ^ (-1 : GoInt))) != (("2148532224" : GoUInt32) : stdgo.io.fs.Fs.FileMode))) {
				_t.errorf(Go.str("unexpected mode %s"), Go.toInterface(Go.asInterface(_mode)));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

/**
	// See also issues: 22939, 24331
**/
function _newFileTest(_t:Ref<stdgo.testing.Testing.T>, _blocking:Bool):Void {
	var __deferstack__:Array<Void->Void> = [];
	if (true) {
		_t.skipf(Go.str("syscall.Pipe is not available on %s."), Go.toInterface(Go.str("js")));
	};
	try {
		var _p = new Slice<GoInt>((2 : GoInt).toBasic(), 0, ...[for (i in 0...(2 : GoInt).toBasic()) (0 : GoInt)]);
		{
			var _err:Error = stdgo.syscall.Syscall.pipe(_p);
			if (_err != null) {
				_t.fatalf(Go.str("pipe: %v"), Go.toInterface(_err));
			};
		};
		{
			var _a0 = _p[(1 : GoInt)];
			__deferstack__.unshift(() -> stdgo.syscall.Syscall.close(_a0));
		};
		if (!_blocking) {
			{
				var _err:Error = stdgo.syscall.Syscall.setNonblock(_p[(0 : GoInt)], true);
				if (_err != null) {
					stdgo.syscall.Syscall.close(_p[(0 : GoInt)]);
					_t.fatalf(Go.str("SetNonblock: %v"), Go.toInterface(_err));
				};
			};
		};
		var _file = newFile((_p[(0 : GoInt)] : GoUIntptr), Go.str("notapipe"));
		if (_file == null) {
			stdgo.syscall.Syscall.close(_p[(0 : GoInt)]);
			_t.fatalf(Go.str("failed to convert fd to file!"));
		};
		__deferstack__.unshift(() -> _file.close());
		var _timeToWrite:stdgo.time.Time.Duration = (("100000000" : GoInt64) : stdgo.time.Time.Duration);
		var _timeToDeadline:stdgo.time.Time.Duration = (("1000000" : GoInt64) : stdgo.time.Time.Duration);
		if (!_blocking) {
			_timeToWrite = (("1000000000" : GoInt64) : stdgo.time.Time.Duration);
		};
		var _b = new Slice<GoUInt8>((1 : GoInt).toBasic(), 0, ...[for (i in 0...(1 : GoInt).toBasic()) (0 : GoUInt8)]);
		var _timer = stdgo.time.Time.afterFunc(_timeToWrite, function():Void {
			stdgo.syscall.Syscall.write(_p[(1 : GoInt)], (Go.str("a") : Slice<GoByte>));
		});
		__deferstack__.unshift(() -> _timer.stop());
		_file.setReadDeadline((stdgo.time.Time.now()
			.add(_timeToDeadline) == null ? null : stdgo.time.Time.now()
			.add(_timeToDeadline)
			.__copy__()));
		var __tmp__ = _file.read(_b),
			_0:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if (!_blocking) {
			if (!_isDeadlineExceeded(_err)) {
				_t.fatalf(Go.str("No timeout reading from file: %v"), Go.toInterface(_err));
			};
		} else {
			if (_err != null) {
				_t.fatalf(Go.str("Error reading from file: %v"), Go.toInterface(_err));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testNewFileBlock(_t:Ref<stdgo.testing.Testing.T>):Void {
	_t.parallel();
	_newFileTest(_t, true);
}

function testNewFileNonBlock(_t:Ref<stdgo.testing.Testing.T>):Void {
	_t.parallel();
	_newFileTest(_t, false);
}

function testSplitPath(_t:Ref<stdgo.testing.Testing.T>):Void {
	_t.parallel();
	for (_0 => _tt in (new Slice<T__struct_5>(0, 0, ({_path: Go.str("a"), _wantDir: Go.str("."), _wantBase: Go.str("a")} : T__struct_5),
		({_path: Go.str("a/"), _wantDir: Go.str("."), _wantBase: Go.str("a")} : T__struct_5),
		({_path: Go.str("a//"), _wantDir: Go.str("."), _wantBase: Go.str("a")} : T__struct_5),
		({_path: Go.str("a/b"), _wantDir: Go.str("a"), _wantBase: Go.str("b")} : T__struct_5),
		({_path: Go.str("a/b/"), _wantDir: Go.str("a"), _wantBase: Go.str("b")} : T__struct_5),
		({_path: Go.str("a/b/c"), _wantDir: Go.str("a/b"), _wantBase: Go.str("c")} : T__struct_5),
		({_path: Go.str("/a"), _wantDir: Go.str("/"), _wantBase: Go.str("a")} : T__struct_5),
		({_path: Go.str("/a/"), _wantDir: Go.str("/"), _wantBase: Go.str("a")} : T__struct_5),
		({_path: Go.str("/a/b"), _wantDir: Go.str("/a"), _wantBase: Go.str("b")} : T__struct_5),
		({_path: Go.str("/a/b/"), _wantDir: Go.str("/a"), _wantBase: Go.str("b")} : T__struct_5),
		({_path: Go.str("/a/b/c"), _wantDir: Go.str("/a/b"), _wantBase: Go.str("c")} : T__struct_5),
		({_path: Go.str("//a"), _wantDir: Go.str("/"), _wantBase: Go.str("a")} : T__struct_5),
		({_path: Go.str("//a/"), _wantDir: Go.str("/"), _wantBase: Go.str("a")} : T__struct_5),
		({_path: Go.str("///a"), _wantDir: Go.str("/"), _wantBase: Go.str("a")} : T__struct_5),
		({_path: Go.str("///a/"), _wantDir: Go.str("/"), _wantBase: Go.str("a")} : T__struct_5)) : Slice<T__struct_5>)) {
		{
			var __tmp__ = splitPath(_tt._path),
				_dir:GoString = __tmp__._0,
				_base:GoString = __tmp__._1;
			if ((_dir != _tt._wantDir) || (_base != _tt._wantBase)) {
				_t.errorf(Go.str("splitPath(%q) = %q, %q, want %q, %q"), Go.toInterface(_tt._path), Go.toInterface(_dir), Go.toInterface(_base),
					Go.toInterface(_tt._wantDir), Go.toInterface(_tt._wantBase));
			};
		};
	};
}

function testMkdirAll(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _tmpDir:GoString = tempDir();
	try {
		var _path:GoString = _tmpDir + Go.str("/_TestMkdirAll_/dir/./dir2");
		var _err:Error = mkdirAll(_path, (("511" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		if (_err != null) {
			_t.fatalf(Go.str("MkdirAll %q: %s"), Go.toInterface(_path), Go.toInterface(_err));
		};
		{
			var _a0 = _tmpDir + Go.str("/_TestMkdirAll_");
			__deferstack__.unshift(() -> removeAll(_a0));
		};
		_err = mkdirAll(_path, (("511" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		if (_err != null) {
			_t.fatalf(Go.str("MkdirAll %q (second time): %s"), Go.toInterface(_path), Go.toInterface(_err));
		};
		var _fpath:GoString = _path + Go.str("/file");
		var __tmp__ = create(_fpath),
			_f:Ref<File> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("create %q: %s"), Go.toInterface(_fpath), Go.toInterface(_err));
		};
		__deferstack__.unshift(() -> _f.close());
		_err = mkdirAll(_fpath, (("511" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		if (_err == null) {
			_t.fatalf(Go.str("MkdirAll %q: no error"), Go.toInterface(_fpath));
		};
		var __tmp__ = try {
			{value: (Go.typeAssert((Go.toInterface(_err) : Ref<PathError>)) : Ref<PathError>), ok: true};
		} catch (_) {
			{value: (null : Ref<stdgo.io.fs.Fs.PathError>), ok: false};
		}, _perr = __tmp__.value, _ok = __tmp__.ok;
		if (!_ok) {
			_t.fatalf(Go.str("MkdirAll %q returned %T, not *PathError"), Go.toInterface(_fpath), Go.toInterface(_err));
		};
		if (stdgo.path.filepath.Filepath.clean(_perr.path) != (stdgo.path.filepath.Filepath.clean(_fpath))) {
			_t.fatalf(Go.str("MkdirAll %q returned wrong error path: %q not %q"), Go.toInterface(_fpath),
				Go.toInterface(stdgo.path.filepath.Filepath.clean(_perr.path)), Go.toInterface(stdgo.path.filepath.Filepath.clean(_fpath)));
		};
		var _ffpath:GoString = _fpath + Go.str("/subdir");
		_err = mkdirAll(_ffpath, (("511" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		if (_err == null) {
			_t.fatalf(Go.str("MkdirAll %q: no error"), Go.toInterface(_ffpath));
		};
		{
			var __tmp__ = try {
				{value: (Go.typeAssert((Go.toInterface(_err) : Ref<PathError>)) : Ref<PathError>), ok: true};
			} catch (_) {
				{value: (null : Ref<stdgo.io.fs.Fs.PathError>), ok: false};
			};
			_perr = __tmp__.value;
			_ok = __tmp__.ok;
		};
		if (!_ok) {
			_t.fatalf(Go.str("MkdirAll %q returned %T, not *PathError"), Go.toInterface(_ffpath), Go.toInterface(_err));
		};
		if (stdgo.path.filepath.Filepath.clean(_perr.path) != (stdgo.path.filepath.Filepath.clean(_fpath))) {
			_t.fatalf(Go.str("MkdirAll %q returned wrong error path: %q not %q"), Go.toInterface(_ffpath),
				Go.toInterface(stdgo.path.filepath.Filepath.clean(_perr.path)), Go.toInterface(stdgo.path.filepath.Filepath.clean(_fpath)));
		};
		if (false) {
			var _path:GoString = _tmpDir + Go.str("\\_TestMkdirAll_\\dir\\.\\dir2\\");
			var _err:Error = mkdirAll(_path, (("511" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
			if (_err != null) {
				_t.fatalf(Go.str("MkdirAll %q: %s"), Go.toInterface(_path), Go.toInterface(_err));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testMkdirAllWithSymlink(_t:Ref<stdgo.testing.Testing.T>):Void {
	stdgo.internal.testenv.Testenv.mustHaveSymlink(Go.asInterface(_t));
	var _tmpDir:GoString = _t.tempDir();
	var _dir:GoString = _tmpDir + Go.str("/dir");
	{
		var _err:Error = mkdir(_dir, (("493" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		if (_err != null) {
			_t.fatalf(Go.str("Mkdir %s: %s"), Go.toInterface(_dir), Go.toInterface(_err));
		};
	};
	var _link:GoString = _tmpDir + Go.str("/link");
	{
		var _err:Error = symlink(Go.str("dir"), _link);
		if (_err != null) {
			_t.fatalf(Go.str("Symlink %s: %s"), Go.toInterface(_link), Go.toInterface(_err));
		};
	};
	var _path:GoString = _link + Go.str("/foo");
	{
		var _err:Error = mkdirAll(_path, (("493" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		if (_err != null) {
			_t.errorf(Go.str("MkdirAll %q: %s"), Go.toInterface(_path), Go.toInterface(_err));
		};
	};
}

function testMkdirAllAtSlash(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (Go.str("js") == (Go.str("android")) || Go.str("js") == (Go.str("ios")) || Go.str("js") == (Go.str("plan9")) || Go.str("js") == (Go.str("windows"))) {
		_t.skipf(Go.str("skipping on %s"), Go.toInterface(Go.str("js")));
	};
	removeAll(Go.str("/_go_os_test"));
	{};
	var _err:Error = mkdirAll(Go.str("/_go_os_test/dir"), (("511" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
	if (_err != null) {
		var __tmp__ = try {
			{value: (Go.typeAssert((Go.toInterface(_err) : Ref<PathError>)) : Ref<PathError>), ok: true};
		} catch (_) {
			{value: (null : Ref<stdgo.io.fs.Fs.PathError>), ok: false};
		}, _pathErr = __tmp__.value, _ok = __tmp__.ok;
		if (_ok
			&& ((Go.toInterface(_pathErr.err) == Go.toInterface(Go.asInterface((13 : stdgo.syscall.Syscall.Errno))))
				|| _isReadonlyError(_pathErr.err))) {
			_t.skipf(Go.str("could not create %v: %v"), Go.toInterface(Go.str("/_go_os_test/dir")), Go.toInterface(_err));
		};
		_t.fatalf(Go.str("MkdirAll \"/_go_os_test/dir\": %v, %s"), Go.toInterface(_err), Go.toInterface(_pathErr.err));
	};
	removeAll(Go.str("/_go_os_test"));
}

function _checkNamedSize(_t:Ref<stdgo.testing.Testing.T>, _path:GoString, _size:GoInt64):Void {
	var __tmp__ = stat(_path),
		_dir:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatalf(Go.str("Stat %q (looking for size %d): %s"), Go.toInterface(_path), Go.toInterface(_size), Go.toInterface(_err));
	};
	if (_dir.size() != (_size)) {
		_t.errorf(Go.str("Stat %q: size %d want %d"), Go.toInterface(_path), Go.toInterface(_dir.size()), Go.toInterface(_size));
	};
}

function testReadFile(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _filename:GoString = Go.str("rumpelstilzchen");
	var __tmp__ = readFile(_filename),
		_contents:Slice<GoUInt8> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err == null) {
		_t.fatalf(Go.str("ReadFile %s: error expected, none found"), Go.toInterface(_filename));
	};
	_filename = Go.str("read_test.go");
	{
		var __tmp__ = readFile(_filename);
		_contents = __tmp__._0;
		_err = __tmp__._1;
	};
	if (_err != null) {
		_t.fatalf(Go.str("ReadFile %s: %v"), Go.toInterface(_filename), Go.toInterface(_err));
	};
	_checkNamedSize(_t, _filename, (_contents.length : GoInt64));
}

function testWriteFile(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var __tmp__ = createTemp(Go.str(), Go.str("ioutil-test")),
		_f:Ref<File> = __tmp__._0,
		_err:Error = __tmp__._1;
	try {
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		__deferstack__.unshift(() -> _f.close());
		{
			var _a0 = _f.name();
			__deferstack__.unshift(() -> remove(_a0));
		};
		var _msg:GoString = Go.str("Programming today is a race between software engineers striving to build bigger and better idiot-proof programs, and the Universe trying to produce bigger and better idiots. So far, the Universe is winning.");
		{
			var _err:Error = writeFile(_f.name(), (_msg : Slice<GoByte>), (("420" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
			if (_err != null) {
				_t.fatalf(Go.str("WriteFile %s: %v"), Go.toInterface(_f.name()), Go.toInterface(_err));
			};
		};
		var __tmp__ = readFile(_f.name()),
			_data:Slice<GoUInt8> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("ReadFile %s: %v"), Go.toInterface(_f.name()), Go.toInterface(_err));
		};
		if ((_data : GoString) != (_msg)) {
			_t.fatalf(Go.str("ReadFile: wrong data:\nhave %q\nwant %q"), Go.toInterface((_data : GoString)), Go.toInterface(_msg));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testReadOnlyWriteFile(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	if (getuid() == ((0 : GoInt))) {
		_t.skipf(Go.str("Root can write to read-only files anyway, so skip the read-only test."));
	};
	try {
		var __tmp__ = mkdirTemp(Go.str(), _t.name()),
			_tempDir:GoString = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		{
			var _a0 = _tempDir;
			__deferstack__.unshift(() -> removeAll(_a0));
		};
		var _filename:GoString = stdgo.path.filepath.Filepath.join(_tempDir, Go.str("blurp.txt"));
		var _shmorp = (Go.str("shmorp") : Slice<GoByte>);
		var _florp = (Go.str("florp") : Slice<GoByte>);
		_err = writeFile(_filename, _shmorp, (("292" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		if (_err != null) {
			_t.fatalf(Go.str("WriteFile %s: %v"), Go.toInterface(_filename), Go.toInterface(_err));
		};
		_err = writeFile(_filename, _florp, (("292" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		if (_err == null) {
			_t.fatalf(Go.str("Expected an error when writing to read-only file %s"), Go.toInterface(_filename));
		};
		var __tmp__ = readFile(_filename),
			_got:Slice<GoUInt8> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("ReadFile %s: %v"), Go.toInterface(_filename), Go.toInterface(_err));
		};
		if (!stdgo.bytes.Bytes.equal(_got, _shmorp)) {
			_t.fatalf(Go.str("want %s, got %s"), Go.toInterface(_shmorp), Go.toInterface(_got));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testReadDir(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _dirname:GoString = Go.str("rumpelstilzchen");
	var __tmp__ = readDir(_dirname),
		_0:Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err == null) {
		_t.fatalf(Go.str("ReadDir %s: error expected, none found"), Go.toInterface(_dirname));
	};
	_dirname = Go.str(".");
	var __tmp__ = readDir(_dirname),
		_list:Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatalf(Go.str("ReadDir %s: %v"), Go.toInterface(_dirname), Go.toInterface(_err));
	};
	var _foundFile:Bool = false;
	var _foundSubDir:Bool = false;
	for (_1 => _dir in _list) {
		if (!_dir.isDir() && (_dir.name() == Go.str("read_test.go"))) {
			_foundFile = true;
		} else if (_dir.isDir() && (_dir.name() == Go.str("exec"))) {
			_foundSubDir = true;
		};
	};
	if (!_foundFile) {
		_t.fatalf(Go.str("ReadDir %s: read_test.go file not found"), Go.toInterface(_dirname));
	};
	if (!_foundSubDir) {
		_t.fatalf(Go.str("ReadDir %s: exec directory not found"), Go.toInterface(_dirname));
	};
}

function testRemoveAll(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _tmpDir:GoString = _t.tempDir();
	{
		var _err:Error = removeAll(Go.str());
		if (_err != null) {
			_t.errorf(Go.str("RemoveAll(\"\"): %v; want nil"), Go.toInterface(_err));
		};
	};
	var _file:GoString = stdgo.path.filepath.Filepath.join(_tmpDir, Go.str("file"));
	var _path:GoString = stdgo.path.filepath.Filepath.join(_tmpDir, Go.str("_TestRemoveAll_"));
	var _fpath:GoString = stdgo.path.filepath.Filepath.join(_path, Go.str("file"));
	var _dpath:GoString = stdgo.path.filepath.Filepath.join(_path, Go.str("dir"));
	var __tmp__ = create(_file),
		_fd:Ref<File> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatalf(Go.str("create %q: %s"), Go.toInterface(_file), Go.toInterface(_err));
	};
	_fd.close();
	{
		_err = removeAll(_file);
		if (_err != null) {
			_t.fatalf(Go.str("RemoveAll %q (first): %s"), Go.toInterface(_file), Go.toInterface(_err));
		};
	};
	{
		{
			var __tmp__ = lstat(_file);
			_err = __tmp__._1;
		};
		if (_err == null) {
			_t.fatalf(Go.str("Lstat %q succeeded after RemoveAll (first)"), Go.toInterface(_file));
		};
	};
	{
		var _err:Error = mkdirAll(_path, (("511" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		if (_err != null) {
			_t.fatalf(Go.str("MkdirAll %q: %s"), Go.toInterface(_path), Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = create(_fpath);
		_fd = __tmp__._0;
		_err = __tmp__._1;
	};
	if (_err != null) {
		_t.fatalf(Go.str("create %q: %s"), Go.toInterface(_fpath), Go.toInterface(_err));
	};
	_fd.close();
	{
		_err = removeAll(_path);
		if (_err != null) {
			_t.fatalf(Go.str("RemoveAll %q (second): %s"), Go.toInterface(_path), Go.toInterface(_err));
		};
	};
	{
		{
			var __tmp__ = lstat(_path);
			_err = __tmp__._1;
		};
		if (_err == null) {
			_t.fatalf(Go.str("Lstat %q succeeded after RemoveAll (second)"), Go.toInterface(_path));
		};
	};
	{
		_err = mkdirAll(_dpath, (("511" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		if (_err != null) {
			_t.fatalf(Go.str("MkdirAll %q: %s"), Go.toInterface(_dpath), Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = create(_fpath);
		_fd = __tmp__._0;
		_err = __tmp__._1;
	};
	if (_err != null) {
		_t.fatalf(Go.str("create %q: %s"), Go.toInterface(_fpath), Go.toInterface(_err));
	};
	_fd.close();
	{
		var __tmp__ = create(_dpath + Go.str("/file"));
		_fd = __tmp__._0;
		_err = __tmp__._1;
	};
	if (_err != null) {
		_t.fatalf(Go.str("create %q: %s"), Go.toInterface(_fpath), Go.toInterface(_err));
	};
	_fd.close();
	{
		_err = removeAll(_path);
		if (_err != null) {
			_t.fatalf(Go.str("RemoveAll %q (third): %s"), Go.toInterface(_path), Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = lstat(_path),
			_0:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err == null) {
			_t.fatalf(Go.str("Lstat %q succeeded after RemoveAll (third)"), Go.toInterface(_path));
		};
	};
	if (true && (getuid() != (0 : GoInt))) {
		{
			_err = mkdirAll(_dpath, (("511" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
			if (_err != null) {
				_t.fatalf(Go.str("MkdirAll %q: %s"), Go.toInterface(_dpath), Go.toInterface(_err));
			};
		};
		for (_1 => _s in (new Slice<GoString>(0, 0, _fpath, _dpath + Go.str("/file1"), _path + Go.str("/zzz")) : Slice<GoString>)) {
			{
				var __tmp__ = create(_s);
				_fd = __tmp__._0;
				_err = __tmp__._1;
			};
			if (_err != null) {
				_t.fatalf(Go.str("create %q: %s"), Go.toInterface(_s), Go.toInterface(_err));
			};
			_fd.close();
		};
		{
			_err = chmod(_dpath, (("0" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
			if (_err != null) {
				_t.fatalf(Go.str("Chmod %q 0: %s"), Go.toInterface(_dpath), Go.toInterface(_err));
			};
		};
		removeAll(_path);
		chmod(_dpath, (("511" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		for (_2 => _s in (new Slice<GoString>(0, 0, _fpath, _path + Go.str("/zzz")) : Slice<GoString>)) {
			{
				{
					var __tmp__ = lstat(_s);
					_err = __tmp__._1;
				};
				if (_err == null) {
					_t.fatalf(Go.str("Lstat %q succeeded after partial RemoveAll"), Go.toInterface(_s));
				};
			};
		};
	};
	{
		_err = removeAll(_path);
		if (_err != null) {
			_t.fatalf(Go.str("RemoveAll %q after partial RemoveAll: %s"), Go.toInterface(_path), Go.toInterface(_err));
		};
	};
	{
		{
			var __tmp__ = lstat(_path);
			_err = __tmp__._1;
		};
		if (_err == null) {
			_t.fatalf(Go.str("Lstat %q succeeded after RemoveAll (final)"), Go.toInterface(_path));
		};
	};
}

/**
	// Test RemoveAll on a large directory.
**/
function testRemoveAllLarge(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (stdgo.testing.Testing.short()) {
		_t.skip(Go.toInterface(Go.str("skipping in short mode")));
	};
	var _tmpDir:GoString = _t.tempDir();
	var _path:GoString = stdgo.path.filepath.Filepath.join(_tmpDir, Go.str("_TestRemoveAllLarge_"));
	{
		var _err:Error = mkdirAll(_path, (("511" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		if (_err != null) {
			_t.fatalf(Go.str("MkdirAll %q: %s"), Go.toInterface(_path), Go.toInterface(_err));
		};
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (1000:GoInt), _i++, {
			var _fpath:GoString = stdgo.fmt.Fmt.sprintf(Go.str("%s/file%d"), Go.toInterface(_path), Go.toInterface(_i));
			var __tmp__ = create(_fpath),
				_fd:Ref<File> = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err != null) {
				_t.fatalf(Go.str("create %q: %s"), Go.toInterface(_fpath), Go.toInterface(_err));
			};
			_fd.close();
		});
	};
	{
		var _err:Error = removeAll(_path);
		if (_err != null) {
			_t.fatalf(Go.str("RemoveAll %q: %s"), Go.toInterface(_path), Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = lstat(_path),
			_0:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err == null) {
			_t.fatalf(Go.str("Lstat %q succeeded after RemoveAll"), Go.toInterface(_path));
		};
	};
}

function testRemoveAllLongPath(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	{
		var __switchIndex__ = -1;
		while (true) {
			if (Go.str("js") == (Go.str("aix"))
				|| Go.str("js") == (Go.str("darwin"))
				|| Go.str("js") == (Go.str("ios"))
				|| Go.str("js") == (Go.str("dragonfly"))
				|| Go.str("js") == (Go.str("freebsd"))
				|| Go.str("js") == (Go.str("linux"))
				|| Go.str("js") == (Go.str("netbsd"))
				|| Go.str("js") == (Go.str("openbsd"))
				|| Go.str("js") == (Go.str("illumos"))
				|| Go.str("js") == (Go.str("solaris"))) {
				break;
				break;
			} else {
				_t.skip(Go.toInterface(Go.str("skipping for not implemented platforms")));
			};
			break;
		};
	};
	try {
		var __tmp__ = getwd(),
			_prevDir:GoString = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("Could not get wd: %s"), Go.toInterface(_err));
		};
		var __tmp__ = stdgo.os.Os.mkdirTemp(Go.str(), Go.str("TestRemoveAllLongPath-")),
			_startPath:GoString = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("Could not create TempDir: %s"), Go.toInterface(_err));
		};
		{
			var _a0 = _startPath;
			__deferstack__.unshift(() -> removeAll(_a0));
		};
		_err = chdir(_startPath);
		if (_err != null) {
			_t.fatalf(Go.str("Could not chdir %s: %s"), Go.toInterface(_startPath), Go.toInterface(_err));
		};
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (41:GoInt), _i++, {
				var _name:GoString = stdgo.strings.Strings.repeat(Go.str("a"), (100 : GoInt));
				_err = mkdir(_name, (("493" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
				if (_err != null) {
					_t.fatalf(Go.str("Could not mkdir %s: %s"), Go.toInterface(_name), Go.toInterface(_err));
				};
				_err = chdir(_name);
				if (_err != null) {
					_t.fatalf(Go.str("Could not chdir %s: %s"), Go.toInterface(_name), Go.toInterface(_err));
				};
			});
		};
		_err = chdir(_prevDir);
		if (_err != null) {
			_t.fatalf(Go.str("Could not chdir %s: %s"), Go.toInterface(_prevDir), Go.toInterface(_err));
		};
		_err = removeAll(_startPath);
		if (_err != null) {
			_t.errorf(Go.str("RemoveAll could not remove long file path %s: %s"), Go.toInterface(_startPath), Go.toInterface(_err));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testRemoveAllDot(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var __tmp__ = getwd(),
		_prevDir:GoString = __tmp__._0,
		_err:Error = __tmp__._1;
	try {
		if (_err != null) {
			_t.fatalf(Go.str("Could not get wd: %s"), Go.toInterface(_err));
		};
		var __tmp__ = stdgo.os.Os.mkdirTemp(Go.str(), Go.str("TestRemoveAllDot-")),
			_tempDir:GoString = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("Could not create TempDir: %s"), Go.toInterface(_err));
		};
		{
			var _a0 = _tempDir;
			__deferstack__.unshift(() -> removeAll(_a0));
		};
		_err = chdir(_tempDir);
		if (_err != null) {
			_t.fatalf(Go.str("Could not chdir to tempdir: %s"), Go.toInterface(_err));
		};
		_err = removeAll(Go.str("."));
		if (_err == null) {
			_t.errorf(Go.str("RemoveAll succeed to remove ."));
		};
		_err = chdir(_prevDir);
		if (_err != null) {
			_t.fatalf(Go.str("Could not chdir %s: %s"), Go.toInterface(_prevDir), Go.toInterface(_err));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testRemoveAllDotDot(_t:Ref<stdgo.testing.Testing.T>):Void {
	_t.parallel();
	var _tempDir:GoString = _t.tempDir();
	var _subdir:GoString = stdgo.path.filepath.Filepath.join(_tempDir, Go.str("x"));
	var _subsubdir:GoString = stdgo.path.filepath.Filepath.join(_subdir, Go.str("y"));
	{
		var _err:Error = mkdirAll(_subsubdir, (("511" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
	{
		var _err:Error = removeAll(stdgo.path.filepath.Filepath.join(_subsubdir, Go.str("..")));
		if (_err != null) {
			_t.error(Go.toInterface(_err));
		};
	};
	for (_0 => _dir in (new Slice<GoString>(0, 0, _subsubdir, _subdir) : Slice<GoString>)) {
		{
			var __tmp__ = stat(_dir),
				_1:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err == null) {
				_t.errorf(Go.str("%s: exists after RemoveAll"), Go.toInterface(_dir));
			};
		};
	};
}

/**
	// Issue #29178.
**/
function testRemoveReadOnlyDir(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	_t.parallel();
	try {
		var _tempDir:GoString = _t.tempDir();
		var _subdir:GoString = stdgo.path.filepath.Filepath.join(_tempDir, Go.str("x"));
		{
			var _err:Error = mkdir(_subdir, (("0" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
			if (_err != null) {
				_t.fatal(Go.toInterface(_err));
			};
		};
		{
			var _a0 = _subdir;
			var _a1 = (("511" : GoUInt32) : stdgo.io.fs.Fs.FileMode);
			__deferstack__.unshift(() -> chmod(_a0, _a1));
		};
		{
			var _err:Error = removeAll(_subdir);
			if (_err != null) {
				_t.fatal(Go.toInterface(_err));
			};
		};
		{
			var __tmp__ = stat(_subdir),
				_0:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err == null) {
				_t.error(Go.toInterface(Go.str("subdirectory was not removed")));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

/**
	// Issue #29983.
**/
function testRemoveAllButReadOnlyAndPathError(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	if (Go.str("js") == (Go.str("js")) || Go.str("js") == (Go.str("windows"))) {
		_t.skipf(Go.str("skipping test on %s"), Go.toInterface(Go.str("js")));
	};
	try {
		if (getuid() == ((0 : GoInt))) {
			_t.skip(Go.toInterface(Go.str("skipping test when running as root")));
		};
		_t.parallel();
		var _tempDir:GoString = _t.tempDir();
		var _dirs = (new Slice<GoString>(0, 0, Go.str("a"), Go.str("a/x"), Go.str("a/x/1"), Go.str("b"), Go.str("b/y"), Go.str("b/y/2"), Go.str("c"),
			Go.str("c/z"), Go.str("c/z/3")) : Slice<GoString>);
		var _readonly = (new Slice<GoString>(0, 0, Go.str("b")) : Slice<GoString>);
		var _inReadonly:GoString->Bool = function(_d:GoString):Bool {
			for (_0 => _ro in _readonly) {
				if (_d == (_ro)) {
					return true;
				};
				var __tmp__ = stdgo.path.filepath.Filepath.split(_d), _dd:GoString = __tmp__._0, _1:GoString = __tmp__._1;
				if (stdgo.path.filepath.Filepath.clean(_dd) == (_ro)) {
					return true;
				};
			};
			return false;
		};
		for (_0 => _dir in _dirs) {
			{
				var _err:Error = mkdir(stdgo.path.filepath.Filepath.join(_tempDir, _dir), (("511" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
				if (_err != null) {
					_t.fatal(Go.toInterface(_err));
				};
			};
		};
		for (_1 => _dir in _readonly) {
			var _d:GoString = stdgo.path.filepath.Filepath.join(_tempDir, _dir);
			{
				var _err:Error = chmod(_d, (("365" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
				if (_err != null) {
					_t.fatal(Go.toInterface(_err));
				};
			};
			{
				var _a0 = _d;
				var _a1 = (("511" : GoUInt32) : stdgo.io.fs.Fs.FileMode);
				__deferstack__.unshift(() -> chmod(_a0, _a1));
			};
		};
		var _err:Error = removeAll(_tempDir);
		if (_err == null) {
			_t.fatal(Go.toInterface(Go.str("RemoveAll succeeded unexpectedly")));
		};
		{
			var __tmp__ = try {
				{value: (Go.typeAssert((Go.toInterface(_err) : Ref<PathError>)) : Ref<PathError>), ok: true};
			} catch (_) {
				{value: (null : Ref<stdgo.io.fs.Fs.PathError>), ok: false};
			}, _pathErr = __tmp__.value, _ok = __tmp__.ok;
			if (_ok) {
				var _want:GoString = stdgo.path.filepath.Filepath.join(_tempDir, Go.str("b"), Go.str("y"));
				if (_pathErr.path != (_want)) {
					_t.errorf(Go.str("RemoveAll(%q): err.Path=%q, want %q"), Go.toInterface(_tempDir), Go.toInterface(_pathErr.path), Go.toInterface(_want));
				};
			} else {
				_t.errorf(Go.str("RemoveAll(%q): error has type %T, want *fs.PathError"), Go.toInterface(_tempDir), Go.toInterface(_err));
			};
		};
		for (_2 => _dir in _dirs) {
			var __tmp__ = stat(stdgo.path.filepath.Filepath.join(_tempDir, _dir)),
				_3:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_inReadonly(_dir)) {
				if (_err != null) {
					_t.errorf(Go.str("file %q was deleted but should still exist"), Go.toInterface(_dir));
				};
			} else {
				if (_err == null) {
					_t.errorf(Go.str("file %q still exists but should have been deleted"), Go.toInterface(_dir));
				};
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testRemoveUnreadableDir(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (Go.str("js") == (Go.str("js"))) {
		_t.skipf(Go.str("skipping test on %s"), Go.toInterface(Go.str("js")));
	};
	if (getuid() == ((0 : GoInt))) {
		_t.skip(Go.toInterface(Go.str("skipping test when running as root")));
	};
	_t.parallel();
	var _tempDir:GoString = _t.tempDir();
	var _target:GoString = stdgo.path.filepath.Filepath.join(_tempDir, Go.str("d0"), Go.str("d1"), Go.str("d2"));
	{
		var _err:Error = mkdirAll(_target, (("493" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
	{
		var _err:Error = chmod(_target, (("192" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
	{
		var _err:Error = removeAll(stdgo.path.filepath.Filepath.join(_tempDir, Go.str("d0")));
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
}

/**
	// Issue 29921
**/
function testRemoveAllWithMoreErrorThanReqSize(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	if (stdgo.testing.Testing.short()) {
		_t.skip(Go.toInterface(Go.str("skipping in short mode")));
	};
	try {
		var _tmpDir:GoString = _t.tempDir();
		var _path:GoString = stdgo.path.filepath.Filepath.join(_tmpDir, Go.str("_TestRemoveAllWithMoreErrorThanReqSize_"));
		{
			var _err:Error = mkdirAll(_path, (("511" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
			if (_err != null) {
				_t.fatalf(Go.str("MkdirAll %q: %s"), Go.toInterface(_path), Go.toInterface(_err));
			};
		};
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (1025:GoInt), _i++, {
				var _fpath:GoString = stdgo.path.filepath.Filepath.join(_path, stdgo.fmt.Fmt.sprintf(Go.str("file%d"), Go.toInterface(_i)));
				var __tmp__ = create(_fpath),
					_fd:Ref<File> = __tmp__._0,
					_err:Error = __tmp__._1;
				if (_err != null) {
					_t.fatalf(Go.str("create %q: %s"), Go.toInterface(_fpath), Go.toInterface(_err));
				};
				_fd.close();
			});
		};
		{
			var _err:Error = chmod(_path, (("365" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
			if (_err != null) {
				_t.fatal(Go.toInterface(_err));
			};
		};
		{
			var _a0 = _path;
			var _a1 = (("493" : GoUInt32) : stdgo.io.fs.Fs.FileMode);
			__deferstack__.unshift(() -> chmod(_a0, _a1));
		};
		var _err:Error = removeAll(_path);
		if (getuid() == ((0 : GoInt))) {
			{
				for (defer in __deferstack__) {
					defer();
				};
				return;
			};
		};
		if (_err == null) {
			if (false) {
				{
					for (defer in __deferstack__) {
						defer();
					};
					return;
				};
			};
			_t.fatal(Go.toInterface(Go.str("RemoveAll(<read-only directory>) = nil; want error")));
		};
		var __tmp__ = open(_path),
			_dir:Ref<File> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		__deferstack__.unshift(() -> _dir.close());
		var __tmp__ = _dir.readdirnames((1025 : GoInt)),
			_names:Slice<GoString> = __tmp__._0,
			_0:Error = __tmp__._1;
		if ((_names.length) < (1025 : GoInt)) {
			_t.fatalf(Go.str("RemoveAll(<read-only directory>) unexpectedly removed %d read-only files from that directory"),
				Go.toInterface((1025 : GoInt) - (_names.length)));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testOpenFileLimit(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _fileCount:GoInt = (1200 : GoInt);
	if (false) {
		_fileCount = (768 : GoInt);
	};
	var _files:Slice<Ref<File>> = (null : Slice<Ref<File>>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _fileCount, _i++, {
			var __tmp__ = open(Go.str("rlimit.go")),
				_f:Ref<File> = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err != null) {
				_t.error(Go.toInterface(_err));
				break;
			};
			_files = _files.__appendref__(_f);
		});
	};
	for (_0 => _f in _files) {
		_f.close();
	};
}

/**
	// testStatAndLstat verifies that all os.Stat, os.Lstat os.File.Stat and os.Readdir work.
**/
function _testStatAndLstat(_t:Ref<stdgo.testing.Testing.T>, _path:GoString, _isLink:Bool,
		_statCheck:(Ref<stdgo.testing.Testing.T>, GoString, stdgo.io.fs.Fs.FileInfo) -> Void,
		_lstatCheck:(Ref<stdgo.testing.Testing.T>, GoString, stdgo.io.fs.Fs.FileInfo) -> Void):Void {
	var __deferstack__:Array<Void->Void> = [];
	var __tmp__ = stdgo.os.Os.stat(_path),
		_sfi:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
		_err:Error = __tmp__._1;
	try {
		if (_err != null) {
			_t.error(Go.toInterface(_err));
			return;
		};
		_statCheck(_t, _path, _sfi);
		var __tmp__ = stdgo.os.Os.lstat(_path),
			_lsfi:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.error(Go.toInterface(_err));
			return;
		};
		_lstatCheck(_t, _path, _lsfi);
		if (_isLink) {
			if (stdgo.os.Os.sameFile(_sfi, _lsfi)) {
				_t.errorf(Go.str("stat and lstat of %q should not be the same"), Go.toInterface(_path));
			};
		} else {
			if (!stdgo.os.Os.sameFile(_sfi, _lsfi)) {
				_t.errorf(Go.str("stat and lstat of %q should be the same"), Go.toInterface(_path));
			};
		};
		var __tmp__ = stdgo.os.Os.open(_path),
			_f:Ref<File> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.error(Go.toInterface(_err));
			return;
		};
		__deferstack__.unshift(() -> _f.close());
		var __tmp__ = _f.stat(),
			_sfi2:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.error(Go.toInterface(_err));
			{
				for (defer in __deferstack__) {
					defer();
				};
				return;
			};
		};
		_statCheck(_t, _path, _sfi2);
		if (!stdgo.os.Os.sameFile(_sfi, _sfi2)) {
			_t.errorf(Go.str("stat of open %q file and stat of %q should be the same"), Go.toInterface(_path), Go.toInterface(_path));
		};
		if (_isLink) {
			if (stdgo.os.Os.sameFile(_sfi2, _lsfi)) {
				_t.errorf(Go.str("stat of opened %q file and lstat of %q should not be the same"), Go.toInterface(_path), Go.toInterface(_path));
			};
		} else {
			if (!stdgo.os.Os.sameFile(_sfi2, _lsfi)) {
				_t.errorf(Go.str("stat of opened %q file and lstat of %q should be the same"), Go.toInterface(_path), Go.toInterface(_path));
			};
		};
		if ((_path.length > (0 : GoInt)) && stdgo.os.Os.isPathSeparator(_path[(_path.length) - (1 : GoInt)])) {
			{
				for (defer in __deferstack__) {
					defer();
				};
				return;
			};
		};
		var _parentdir:GoString = stdgo.path.filepath.Filepath.dir(_path);
		var __tmp__ = stdgo.os.Os.open(_parentdir),
			_parent:Ref<File> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.error(Go.toInterface(_err));
			{
				for (defer in __deferstack__) {
					defer();
				};
				return;
			};
		};
		__deferstack__.unshift(() -> _parent.close());
		var __tmp__ = _parent.readdir((-1 : GoInt)),
			_fis:Slice<stdgo.io.fs.Fs.FileInfo> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.error(Go.toInterface(_err));
			{
				for (defer in __deferstack__) {
					defer();
				};
				return;
			};
		};
		var _lsfi2:stdgo.io.fs.Fs.FileInfo = (null : stdgo.io.fs.Fs.FileInfo);
		var _base:GoString = stdgo.path.filepath.Filepath.base(_path);
		for (_0 => _fi2 in _fis) {
			if (_fi2.name() == (_base)) {
				_lsfi2 = _fi2;
				break;
			};
		};
		if (_lsfi2 == null) {
			_t.errorf(Go.str("failed to find %q in its parent"), Go.toInterface(_path));
			{
				for (defer in __deferstack__) {
					defer();
				};
				return;
			};
		};
		_lstatCheck(_t, _path, _lsfi2);
		if (!stdgo.os.Os.sameFile(_lsfi, _lsfi2)) {
			_t.errorf(Go.str("lstat of %q file in %q directory and %q should be the same"), Go.toInterface(_lsfi2.name()), Go.toInterface(_parentdir),
				Go.toInterface(_path));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

/**
	// testIsDir verifies that fi refers to directory.
**/
function _testIsDir(_t:Ref<stdgo.testing.Testing.T>, _path:GoString, _fi:stdgo.io.fs.Fs.FileInfo):Void {
	_t.helper();
	if (!_fi.isDir()) {
		_t.errorf(Go.str("%q should be a directory"), Go.toInterface(_path));
	};
	if (_fi.mode() & (("134217728" : GoUInt32) : stdgo.io.fs.Fs.FileMode) != ((("0" : GoUInt32) : stdgo.io.fs.Fs.FileMode))) {
		_t.errorf(Go.str("%q should not be a symlink"), Go.toInterface(_path));
	};
}

/**
	// testIsSymlink verifies that fi refers to symlink.
**/
function _testIsSymlink(_t:Ref<stdgo.testing.Testing.T>, _path:GoString, _fi:stdgo.io.fs.Fs.FileInfo):Void {
	_t.helper();
	if (_fi.isDir()) {
		_t.errorf(Go.str("%q should not be a directory"), Go.toInterface(_path));
	};
	if (_fi.mode() & (("134217728" : GoUInt32) : stdgo.io.fs.Fs.FileMode) == ((("0" : GoUInt32) : stdgo.io.fs.Fs.FileMode))) {
		_t.errorf(Go.str("%q should be a symlink"), Go.toInterface(_path));
	};
}

/**
	// testIsFile verifies that fi refers to file.
**/
function _testIsFile(_t:Ref<stdgo.testing.Testing.T>, _path:GoString, _fi:stdgo.io.fs.Fs.FileInfo):Void {
	_t.helper();
	if (_fi.isDir()) {
		_t.errorf(Go.str("%q should not be a directory"), Go.toInterface(_path));
	};
	if (_fi.mode() & (("134217728" : GoUInt32) : stdgo.io.fs.Fs.FileMode) != ((("0" : GoUInt32) : stdgo.io.fs.Fs.FileMode))) {
		_t.errorf(Go.str("%q should not be a symlink"), Go.toInterface(_path));
	};
}

function _testDirStats(_t:Ref<stdgo.testing.Testing.T>, _path:GoString):Void {
	_testStatAndLstat(_t, _path, false, _testIsDir, _testIsDir);
}

function _testFileStats(_t:Ref<stdgo.testing.Testing.T>, _path:GoString):Void {
	_testStatAndLstat(_t, _path, false, _testIsFile, _testIsFile);
}

function _testSymlinkStats(_t:Ref<stdgo.testing.Testing.T>, _path:GoString, _isdir:Bool):Void {
	if (_isdir) {
		_testStatAndLstat(_t, _path, true, _testIsDir, _testIsSymlink);
	} else {
		_testStatAndLstat(_t, _path, true, _testIsFile, _testIsSymlink);
	};
}

function _testSymlinkSameFile(_t:Ref<stdgo.testing.Testing.T>, _path:GoString, _link:GoString):Void {
	var __tmp__ = stdgo.os.Os.stat(_path),
		_pathfi:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.error(Go.toInterface(_err));
		return;
	};
	var __tmp__ = stdgo.os.Os.stat(_link),
		_linkfi:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.error(Go.toInterface(_err));
		return;
	};
	if (!stdgo.os.Os.sameFile(_pathfi, _linkfi)) {
		_t.errorf(Go.str("os.Stat(%q) and os.Stat(%q) are not the same file"), Go.toInterface(_path), Go.toInterface(_link));
	};
	{
		var __tmp__ = stdgo.os.Os.lstat(_link);
		_linkfi = __tmp__._0;
		_err = __tmp__._1;
	};
	if (_err != null) {
		_t.error(Go.toInterface(_err));
		return;
	};
	if (stdgo.os.Os.sameFile(_pathfi, _linkfi)) {
		_t.errorf(Go.str("os.Stat(%q) and os.Lstat(%q) are the same file"), Go.toInterface(_path), Go.toInterface(_link));
	};
}

function testDirAndSymlinkStats(_t:Ref<stdgo.testing.Testing.T>):Void {
	stdgo.internal.testenv.Testenv.mustHaveSymlink(Go.asInterface(_t));
	var _tmpdir:GoString = _t.tempDir();
	var _dir:GoString = stdgo.path.filepath.Filepath.join(_tmpdir, Go.str("dir"));
	{
		var _err:Error = stdgo.os.Os.mkdir(_dir, (("511" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
	_testDirStats(_t, _dir);
	var _dirlink:GoString = stdgo.path.filepath.Filepath.join(_tmpdir, Go.str("link"));
	{
		var _err:Error = stdgo.os.Os.symlink(_dir, _dirlink);
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
	_testSymlinkStats(_t, _dirlink, true);
	_testSymlinkSameFile(_t, _dir, _dirlink);
	var _linklink:GoString = stdgo.path.filepath.Filepath.join(_tmpdir, Go.str("linklink"));
	{
		var _err:Error = stdgo.os.Os.symlink(_dirlink, _linklink);
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
	_testSymlinkStats(_t, _linklink, true);
	_testSymlinkSameFile(_t, _dir, _linklink);
}

function testFileAndSymlinkStats(_t:Ref<stdgo.testing.Testing.T>):Void {
	stdgo.internal.testenv.Testenv.mustHaveSymlink(Go.asInterface(_t));
	var _tmpdir:GoString = _t.tempDir();
	var _file:GoString = stdgo.path.filepath.Filepath.join(_tmpdir, Go.str("file"));
	{
		var _err:Error = stdgo.os.Os.writeFile(_file, (Go.str() : Slice<GoByte>), (("420" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
	_testFileStats(_t, _file);
	var _filelink:GoString = stdgo.path.filepath.Filepath.join(_tmpdir, Go.str("link"));
	{
		var _err:Error = stdgo.os.Os.symlink(_file, _filelink);
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
	_testSymlinkStats(_t, _filelink, false);
	_testSymlinkSameFile(_t, _file, _filelink);
	var _linklink:GoString = stdgo.path.filepath.Filepath.join(_tmpdir, Go.str("linklink"));
	{
		var _err:Error = stdgo.os.Os.symlink(_filelink, _linklink);
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
	_testSymlinkStats(_t, _linklink, false);
	_testSymlinkSameFile(_t, _file, _linklink);
}

/**
	// see issue 27225 for details
**/
function testSymlinkWithTrailingSlash(_t:Ref<stdgo.testing.Testing.T>):Void {
	stdgo.internal.testenv.Testenv.mustHaveSymlink(Go.asInterface(_t));
	var _tmpdir:GoString = _t.tempDir();
	var _dir:GoString = stdgo.path.filepath.Filepath.join(_tmpdir, Go.str("dir"));
	{
		var _err:Error = stdgo.os.Os.mkdir(_dir, (("511" : GoUInt32) : stdgo.io.fs.Fs.FileMode));
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
	var _dirlink:GoString = stdgo.path.filepath.Filepath.join(_tmpdir, Go.str("link"));
	{
		var _err:Error = stdgo.os.Os.symlink(_dir, _dirlink);
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
	var _dirlinkWithSlash:GoString = _dirlink + ((47 : GoInt32) : GoString);
	if (false) {
		_testSymlinkStats(_t, _dirlinkWithSlash, true);
	} else {
		_testDirStats(_t, _dirlinkWithSlash);
	};
	var __tmp__ = stdgo.os.Os.stat(_dir),
		_fi1:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.error(Go.toInterface(_err));
		return;
	};
	var __tmp__ = stdgo.os.Os.stat(_dirlinkWithSlash),
		_fi2:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.error(Go.toInterface(_err));
		return;
	};
	if (!stdgo.os.Os.sameFile(_fi1, _fi2)) {
		_t.errorf(Go.str("os.Stat(%q) and os.Stat(%q) are not the same file"), Go.toInterface(_dir), Go.toInterface(_dirlinkWithSlash));
	};
}

function testCreateTemp(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var __tmp__ = mkdirTemp(Go.str(), Go.str("TestCreateTempBadDir")),
		_dir:GoString = __tmp__._0,
		_err:Error = __tmp__._1;
	try {
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		{
			var _a0 = _dir;
			__deferstack__.unshift(() -> removeAll(_a0));
		};
		var _nonexistentDir:GoString = stdgo.path.filepath.Filepath.join(_dir, Go.str("_not_exists_"));
		var __tmp__ = createTemp(_nonexistentDir, Go.str("foo")),
			_f:Ref<File> = __tmp__._0,
			_err:Error = __tmp__._1;
		if ((_f != null) || (_err == null)) {
			_t.errorf(Go.str("CreateTemp(%q, `foo`) = %v, %v"), Go.toInterface(_nonexistentDir), Go.toInterface(_f), Go.toInterface(_err));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testCreateTempPattern(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _tests = (new Slice<T__struct_6>(0, 0, ({_pattern: Go.str("tempfile_test"), _prefix: Go.str("tempfile_test"), _suffix: Go.str()} : T__struct_6),
		({_pattern: Go.str("tempfile_test*"), _prefix: Go.str("tempfile_test"), _suffix: Go.str()} : T__struct_6),
		({_pattern: Go.str("tempfile_test*xyz"), _prefix: Go.str("tempfile_test"), _suffix: Go.str("xyz")} : T__struct_6)) : Slice<T__struct_6>);
	try {
		for (_0 => _test in _tests) {
			var __tmp__ = createTemp(Go.str(), _test._pattern),
				_f:Ref<File> = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err != null) {
				_t.errorf(Go.str("CreateTemp(..., %q) error: %v"), Go.toInterface(_test._pattern), Go.toInterface(_err));
				continue;
			};
			{
				var _a0 = _f.name();
				__deferstack__.unshift(() -> remove(_a0));
			};
			var _base:GoString = stdgo.path.filepath.Filepath.base(_f.name());
			_f.close();
			if (!(stdgo.strings.Strings.hasPrefix(_base, _test._prefix) && stdgo.strings.Strings.hasSuffix(_base, _test._suffix))) {
				_t.errorf(Go.str("CreateTemp pattern %q created bad name %q; want prefix %q & suffix %q"), Go.toInterface(_test._pattern),
					Go.toInterface(_base), Go.toInterface(_test._prefix), Go.toInterface(_test._suffix));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testCreateTempBadPattern(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var __tmp__ = mkdirTemp(Go.str(), _t.name()),
		_tmpDir:GoString = __tmp__._0,
		_err:Error = __tmp__._1;
	try {
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		{
			var _a0 = _tmpDir;
			__deferstack__.unshift(() -> removeAll(_a0));
		};
		{};
		var _tests = (new Slice<T__struct_7>(0, 0, ({_pattern: Go.str("ioutil*test"), _wantErr: false} : T__struct_7),
			({_pattern: Go.str("tempfile_test*foo"), _wantErr: false} : T__struct_7), ({_pattern: Go.str("tempfile_test/foo"), _wantErr: true} : T__struct_7),
			({_pattern: Go.str("tempfile_test*/foo"), _wantErr: true} : T__struct_7),
			({_pattern: Go.str("tempfile_test/*foo"), _wantErr: true} : T__struct_7),
			({_pattern: Go.str("/tempfile_test/*foo"), _wantErr: true} : T__struct_7),
			({_pattern: Go.str("tempfile_test*foo/"), _wantErr: true} : T__struct_7)) : Slice<T__struct_7>);
		for (_0 => _tt in _tests) {
			_t.run(_tt._pattern, function(_t:Ref<stdgo.testing.Testing.T>):Void {
				var __deferstack__:Array<Void->Void> = [];
				var __tmp__ = createTemp(_tmpDir, _tt._pattern),
					_tmpfile:Ref<File> = __tmp__._0,
					_err:Error = __tmp__._1;
				try {
					if (_tmpfile != null) {
						__deferstack__.unshift(() -> _tmpfile.close());
					};
					if (_tt._wantErr) {
						if (_err == null) {
							_t.errorf(Go.str("CreateTemp(..., %#q) succeeded, expected error"), Go.toInterface(_tt._pattern));
						};
						if (!stdgo.errors.Errors.is_(_err, errPatternHasSeparator)) {
							_t.errorf(Go.str("CreateTemp(..., %#q): %v, expected ErrPatternHasSeparator"), Go.toInterface(_tt._pattern), Go.toInterface(_err));
						};
					} else if (_err != null) {
						_t.errorf(Go.str("CreateTemp(..., %#q): %v"), Go.toInterface(_tt._pattern), Go.toInterface(_err));
					};
					for (defer in __deferstack__) {
						defer();
					};
					{
						for (defer in __deferstack__) {
							defer();
						};
						if (Go.recover_exception != null)
							throw Go.recover_exception;
						return;
					};
				} catch (__exception__) {
					if (!(__exception__.native is AnyInterfaceData))
						throw __exception__;
					Go.recover_exception = __exception__.native;
					for (defer in __deferstack__) {
						defer();
					};
					if (Go.recover_exception != null)
						throw Go.recover_exception;
					return;
				};
			});
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testMkdirTemp(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __tmp__ = mkdirTemp(Go.str("/_not_exists_"), Go.str("foo")),
		_name:GoString = __tmp__._0,
		_err:Error = __tmp__._1;
	if ((_name != Go.str()) || (_err == null)) {
		_t.errorf(Go.str("MkdirTemp(`/_not_exists_`, `foo`) = %v, %v"), Go.toInterface(_name), Go.toInterface(_err));
	};
	var _tests = (new Slice<T__struct_8>(0, 0,
		({_pattern: Go.str("tempfile_test"), _wantPrefix: Go.str("tempfile_test"), _wantSuffix: Go.str()} : T__struct_8),
		({_pattern: Go.str("tempfile_test*"), _wantPrefix: Go.str("tempfile_test"), _wantSuffix: Go.str()} : T__struct_8),
		({_pattern: Go.str("tempfile_test*xyz"), _wantPrefix: Go.str("tempfile_test"), _wantSuffix: Go.str("xyz")} : T__struct_8)) : Slice<T__struct_8>);
	var _dir:GoString = stdgo.path.filepath.Filepath.clean(tempDir());
	var _runTestMkdirTemp = function(_t:Ref<stdgo.testing.Testing.T>, _pattern:GoString, _wantRePat:GoString):Void {
		var __deferstack__:Array<Void->Void> = [];
		var __tmp__ = mkdirTemp(_dir, _pattern), _name:GoString = __tmp__._0, _err:Error = __tmp__._1;
		try {
			if ((_name == Go.str()) || (_err != null)) {
				_t.fatalf(Go.str("MkdirTemp(dir, `tempfile_test`) = %v, %v"), Go.toInterface(_name), Go.toInterface(_err));
			};
			{
				var _a0 = _name;
				__deferstack__.unshift(() -> remove(_a0));
			};
			var _re = stdgo.regexp.Regexp.mustCompile(_wantRePat);
			if (!_re.matchString(_name)) {
				_t.errorf(Go.str("MkdirTemp(%q, %q) created bad name\n\t%q\ndid not match pattern\n\t%q"), Go.toInterface(_dir), Go.toInterface(_pattern),
					Go.toInterface(_name), Go.toInterface(_wantRePat));
			};
			for (defer in __deferstack__) {
				defer();
			};
			{
				for (defer in __deferstack__) {
					defer();
				};
				if (Go.recover_exception != null)
					throw Go.recover_exception;
				return;
			};
		} catch (__exception__) {
			if (!(__exception__.native is AnyInterfaceData))
				throw __exception__;
			Go.recover_exception = __exception__.native;
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	};
	for (_0 => _tt in _tests) {
		_t.run(_tt._pattern, function(_t:Ref<stdgo.testing.Testing.T>):Void {
			var _wantRePat:GoString = (((Go.str("^") + stdgo.regexp.Regexp.quoteMeta(stdgo.path.filepath.Filepath.join(_dir, _tt._wantPrefix)))
				+ Go.str("[0-9]+"))
				+ stdgo.regexp.Regexp.quoteMeta(_tt._wantSuffix))
				+ Go.str("$$");
			_runTestMkdirTemp(_t, _tt._pattern, _wantRePat);
		});
	};
	_t.run(Go.str("*xyz"), function(_t:Ref<stdgo.testing.Testing.T>):Void {
		var _wantRePat:GoString = ((Go.str("^") + stdgo.regexp.Regexp.quoteMeta(stdgo.path.filepath.Filepath.join(_dir)))
			+ stdgo.regexp.Regexp.quoteMeta(((47 : GoInt32) : GoString)))
			+ Go.str("[0-9]+xyz$$");
		_runTestMkdirTemp(_t, Go.str("*xyz"), _wantRePat);
	});
}

/**
	// test that we return a nice error message if the dir argument to TempDir doesn't
	// exist (or that it's empty and TempDir doesn't exist)
**/
function testMkdirTempBadDir(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var __tmp__ = mkdirTemp(Go.str(), Go.str("MkdirTempBadDir")),
		_dir:GoString = __tmp__._0,
		_err:Error = __tmp__._1;
	try {
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		{
			var _a0 = _dir;
			__deferstack__.unshift(() -> removeAll(_a0));
		};
		var _badDir:GoString = stdgo.path.filepath.Filepath.join(_dir, Go.str("not-exist"));
		{
			var __tmp__ = mkdirTemp(_badDir, Go.str("foo"));
			_err = __tmp__._1;
		};
		{
			var __tmp__ = try {
				{value: (Go.typeAssert((Go.toInterface(_err) : Ref<stdgo.io.fs.Fs.PathError>)) : Ref<stdgo.io.fs.Fs.PathError>), ok: true};
			} catch (_) {
				{value: (null : Ref<stdgo.io.fs.Fs.PathError>), ok: false};
			}, _pe = __tmp__.value, _ok = __tmp__.ok;
			if ((!_ok || !isNotExist(_err)) || (_pe.path != _badDir)) {
				_t.errorf(Go.str("TempDir error = %#v; want PathError for path %q satisfying IsNotExist"), Go.toInterface(_err), Go.toInterface(_badDir));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testMkdirTempBadPattern(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var __tmp__ = mkdirTemp(Go.str(), _t.name()),
		_tmpDir:GoString = __tmp__._0,
		_err:Error = __tmp__._1;
	try {
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		{
			var _a0 = _tmpDir;
			__deferstack__.unshift(() -> removeAll(_a0));
		};
		{};
		var _tests = (new Slice<T__struct_7>(0, 0, ({_pattern: Go.str("ioutil*test"), _wantErr: false} : T__struct_7),
			({_pattern: Go.str("tempfile_test*foo"), _wantErr: false} : T__struct_7), ({_pattern: Go.str("tempfile_test/foo"), _wantErr: true} : T__struct_7),
			({_pattern: Go.str("tempfile_test*/foo"), _wantErr: true} : T__struct_7),
			({_pattern: Go.str("tempfile_test/*foo"), _wantErr: true} : T__struct_7),
			({_pattern: Go.str("/tempfile_test/*foo"), _wantErr: true} : T__struct_7),
			({_pattern: Go.str("tempfile_test*foo/"), _wantErr: true} : T__struct_7)) : Slice<T__struct_7>);
		for (_0 => _tt in _tests) {
			_t.run(_tt._pattern, function(_t:Ref<stdgo.testing.Testing.T>):Void {
				var __tmp__ = mkdirTemp(_tmpDir, _tt._pattern),
					_0:GoString = __tmp__._0,
					_err:Error = __tmp__._1;
				if (_tt._wantErr) {
					if (_err == null) {
						_t.errorf(Go.str("MkdirTemp(..., %#q) succeeded, expected error"), Go.toInterface(_tt._pattern));
					};
					if (!stdgo.errors.Errors.is_(_err, errPatternHasSeparator)) {
						_t.errorf(Go.str("MkdirTemp(..., %#q): %v, expected ErrPatternHasSeparator"), Go.toInterface(_tt._pattern), Go.toInterface(_err));
					};
				} else if (_err != null) {
					_t.errorf(Go.str("MkdirTemp(..., %#q): %v"), Go.toInterface(_tt._pattern), Go.toInterface(_err));
				};
			});
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

@:keep var _ = {
	try {
		_isExistTests = _isExistTests.__appendref__(({_err: Go.asInterface((({err: Go.asInterface((17 : stdgo.syscall.Syscall.Errno))} : stdgo.io.fs.Fs.PathError) : Ref<stdgo.io.fs.Fs.PathError>)),
			_is: true, _isnot: false} : stdgo.os_test.Os_test.T_isExistTest),
			({_err: Go.asInterface((({err: Go.asInterface((39 : stdgo.syscall.Syscall.Errno))} : stdgo.io.fs.Fs.PathError) : Ref<stdgo.io.fs.Fs.PathError>)),
				_is: true, _isnot: false} : stdgo.os_test.Os_test.T_isExistTest),
			({_err: Go.asInterface((({err: Go.asInterface((17 : stdgo.syscall.Syscall.Errno))} : LinkError) : Ref<LinkError>)), _is: true,
				_isnot: false} : stdgo.os_test.Os_test.T_isExistTest),
			({_err: Go.asInterface((({err: Go.asInterface((39 : stdgo.syscall.Syscall.Errno))} : LinkError) : Ref<LinkError>)), _is: true,
				_isnot: false} : stdgo.os_test.Os_test.T_isExistTest),
			({_err: Go.asInterface((({err: Go.asInterface((17 : stdgo.syscall.Syscall.Errno))} : SyscallError) : Ref<SyscallError>)), _is: true,
				_isnot: false} : stdgo.os_test.Os_test.T_isExistTest),
			({_err: Go.asInterface((({err: Go.asInterface((39 : stdgo.syscall.Syscall.Errno))} : SyscallError) : Ref<SyscallError>)), _is: true,
				_isnot: false} : stdgo.os_test.Os_test.T_isExistTest));
		_isPermissionTests = _isPermissionTests.__appendref__(({_err: Go.asInterface((({err: Go.asInterface((13 : stdgo.syscall.Syscall.Errno))} : stdgo.io.fs.Fs.PathError) : Ref<stdgo.io.fs.Fs.PathError>)),
			_want: true} : stdgo.os_test.Os_test.T_isPermissionTest),
			({_err: Go.asInterface((({err: Go.asInterface((1 : stdgo.syscall.Syscall.Errno))} : stdgo.io.fs.Fs.PathError) : Ref<stdgo.io.fs.Fs.PathError>)),
				_want: true} : stdgo.os_test.Os_test.T_isPermissionTest),
			({_err: Go.asInterface((({err: Go.asInterface((17 : stdgo.syscall.Syscall.Errno))} : stdgo.io.fs.Fs.PathError) : Ref<stdgo.io.fs.Fs.PathError>)),
				_want: false} : stdgo.os_test.Os_test.T_isPermissionTest),
			({_err: Go.asInterface((({err: Go.asInterface((13 : stdgo.syscall.Syscall.Errno))} : LinkError) : Ref<LinkError>)),
				_want: true} : stdgo.os_test.Os_test.T_isPermissionTest),
			({_err: Go.asInterface((({err: Go.asInterface((1 : stdgo.syscall.Syscall.Errno))} : LinkError) : Ref<LinkError>)),
				_want: true} : stdgo.os_test.Os_test.T_isPermissionTest),
			({_err: Go.asInterface((({err: Go.asInterface((17 : stdgo.syscall.Syscall.Errno))} : LinkError) : Ref<LinkError>)),
				_want: false} : stdgo.os_test.Os_test.T_isPermissionTest),
			({_err: Go.asInterface((({err: Go.asInterface((13 : stdgo.syscall.Syscall.Errno))} : SyscallError) : Ref<SyscallError>)),
				_want: true} : stdgo.os_test.Os_test.T_isPermissionTest),
			({_err: Go.asInterface((({err: Go.asInterface((1 : stdgo.syscall.Syscall.Errno))} : SyscallError) : Ref<SyscallError>)),
				_want: true} : stdgo.os_test.Os_test.T_isPermissionTest),
			({_err: Go.asInterface((({err: Go.asInterface((17 : stdgo.syscall.Syscall.Errno))} : SyscallError) : Ref<SyscallError>)),
				_want: false} : stdgo.os_test.Os_test.T_isPermissionTest));
		{
			var _e:GoString = stdgo.os.Os.getenv(Go.str("OSTEST_OUTPUT_EXECPATH"));
			if (_e != (Go.str())) {
				var _dir:GoString = Go.str("/");
				if (false) {
					var __tmp__ = stdgo.os.Os.getwd(), _cwd:GoString = __tmp__._0, _err:Error = __tmp__._1;
					if (_err != null) {
						throw Go.toInterface(_err);
					};
					_dir = stdgo.path.filepath.Filepath.volumeName(_cwd);
				};
				stdgo.os.Os.chdir(_dir);
				{
					var __tmp__ = stdgo.os.Os.executable(), _ep:GoString = __tmp__._0, _err:Error = __tmp__._1;
					if (_err != null) {
						stdgo.fmt.Fmt.fprint(stdgo.os.Os.stderr, Go.str("ERROR: "), _err);
					} else {
						stdgo.fmt.Fmt.fprint(stdgo.os.Os.stderr, _ep);
					};
				};
				Sys.exit((0 : GoInt));
			};
		};
		_isReadonlyError = function(_err:Error):Bool {
			throw "__return__";
		};
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};

class T_myErrorIs_asInterface {
	@:keep
	public function is_(_target:Error):Bool
		return __self__.value.is_(_target);

	@:embedded
	public function error():GoString
		return __self__.value.error();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_myErrorIs>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.os_test.Os_test.T_myErrorIs_asInterface) class T_myErrorIs_static_extension {
	@:keep
	static public function is_(_e:T_myErrorIs, _target:Error):Bool {
		return Go.toInterface(_target) == (Go.toInterface(_e._error));
	}

	@:embedded
	public static function error(__self__:T_myErrorIs):GoString
		return __self__.error();
}
