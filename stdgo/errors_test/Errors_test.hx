package stdgo.errors_test;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

private var _poserPathErr:Ref<stdgo.io.fs.Fs.PathError> = (({op: Go.str("poser")} : stdgo.io.fs.Fs.PathError) : Ref<stdgo.io.fs.Fs.PathError>);

private typedef T__interface_3 = StructType & {
	public function timeout():Bool;
};

/**
	// MyError is an error implementation that includes a time and message.
**/
@:structInit @:using(stdgo.errors_test.Errors_test.MyError_static_extension) class MyError {
	public var when:stdgo.time.Time.Time = ({} : stdgo.time.Time.Time);
	public var what:GoString = "";

	public function new(?when:stdgo.time.Time.Time, ?what:GoString) {
		if (when != null)
			this.when = when;
		if (what != null)
			this.what = what;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new MyError(when, what);
	}
}

@:structInit @:using(stdgo.errors_test.Errors_test.T_poser_static_extension) private class T_poser {
	public var _msg:GoString = "";
	public var _f:Error->Bool = null;

	public function new(?_msg:GoString, ?_f:Error->Bool) {
		if (_msg != null)
			this._msg = _msg;
		if (_f != null)
			this._f = _f;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_poser(_msg, _f);
	}
}

@:structInit @:using(stdgo.errors_test.Errors_test.T_errorT_static_extension) private class T_errorT {
	public var _s:GoString = "";

	public function new(?_s:GoString) {
		if (_s != null)
			this._s = _s;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_errorT(_s);
	}
}

@:structInit @:using(stdgo.errors_test.Errors_test.T_wrapped_static_extension) private class T_wrapped {
	public var _msg:GoString = "";
	public var _err:Error = (null : Error);

	public function new(?_msg:GoString, ?_err:Error) {
		if (_msg != null)
			this._msg = _msg;
		if (_err != null)
			this._err = _err;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_wrapped(_msg, _err);
	}
}

@:structInit @:using(stdgo.errors_test.Errors_test.T_errorUncomparable_static_extension) private class T_errorUncomparable {
	public var _f:Slice<GoString> = (null : Slice<GoString>);

	public function new(?_f:Slice<GoString>) {
		if (_f != null)
			this._f = _f;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_errorUncomparable(_f);
	}
}

class T__struct_0_asInterface {
	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T__struct_0>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.errors_test.Errors_test.T__struct_0_asInterface) class T__struct_0_static_extension {}

@:local @:using(stdgo.errors_test.Errors_test.T__struct_0_static_extension) private typedef T__struct_0 = {
	public var _err:Error;
	public var _target:Error;
	public var _match:Bool;
};

class T__struct_1_asInterface {
	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T__struct_1>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.errors_test.Errors_test.T__struct_1_asInterface) class T__struct_1_static_extension {}

@:local @:using(stdgo.errors_test.Errors_test.T__struct_1_static_extension) private typedef T__struct_1 = {
	public var _err:Error;
	public var _target:AnyInterface;
	public var _match:Bool;

	/**
		// value of target on match
	**/
	public var _want:AnyInterface;
};

class T__struct_2_asInterface {
	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T__struct_2>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.errors_test.Errors_test.T__struct_2_asInterface) class T__struct_2_static_extension {}

@:local @:using(stdgo.errors_test.Errors_test.T__struct_2_static_extension) private typedef T__struct_2 = {
	public var _err:Error;
	public var _want:Error;
};

function testNewEqual(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (Go.toInterface(stdgo.errors.Errors.new_(Go.str("abc"))) == (Go.toInterface(stdgo.errors.Errors.new_(Go.str("abc"))))) {
		_t.errorf(Go.str("New(\"abc\") == New(\"abc\")"));
	};
	if (Go.toInterface(stdgo.errors.Errors.new_(Go.str("abc"))) == (Go.toInterface(stdgo.errors.Errors.new_(Go.str("xyz"))))) {
		_t.errorf(Go.str("New(\"abc\") == New(\"xyz\")"));
	};
	var _err:Error = stdgo.errors.Errors.new_(Go.str("jkl"));
	if (Go.toInterface(_err) != (Go.toInterface(_err))) {
		_t.errorf(Go.str("err != err"));
	};
}

function testErrorMethod(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _err:Error = stdgo.errors.Errors.new_(Go.str("abc"));
	if (_err.error() != (Go.str("abc"))) {
		_t.errorf(Go.str("New(\"abc\").Error() = %q, want %q"), Go.toInterface(_err.error()), Go.toInterface(Go.str("abc")));
	};
}

function exampleNew():Void {
	var _err:Error = stdgo.errors.Errors.new_(Go.str("emit macho dwarf: elf header corrupted"));
	if (_err != null) {
		stdgo.fmt.Fmt.print(Go.toInterface(_err));
	};
}

/**
	// The fmt package's Errorf function lets us use the package's formatting
	// features to create descriptive error messages.
**/
function exampleNew_errorf():Void {
	{};
	var _err:Error = stdgo.fmt.Fmt.errorf(Go.str("user %q (id %d) not found"), Go.toInterface(Go.str("bimmler")), Go.toInterface((17 : GoInt)));
	if (_err != null) {
		stdgo.fmt.Fmt.print(Go.toInterface(_err));
	};
}

function _oops():Error {
	return Go.asInterface((new stdgo.errors_test.Errors_test.MyError((stdgo.time.Time.date((1989 : GoInt), (3 : stdgo.time.Time.Month), (15 : GoInt),
		(22 : GoInt), (30 : GoInt), (0 : GoInt), (0 : GoInt),
		stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date((1989 : GoInt), (3 : stdgo.time.Time.Month), (15 : GoInt), (22 : GoInt), (30 : GoInt),
			(0 : GoInt), (0 : GoInt), stdgo.time.Time.utc)
		.__copy__()),
		Go.str("the file system has gone away")) : stdgo.errors_test.Errors_test.MyError));
}

function example():Void {
	{
		var _err:Error = _oops();
		if (_err != null) {
			stdgo.fmt.Fmt.println(Go.toInterface(_err));
		};
	};
}

function testIs(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _err1:Error = stdgo.errors.Errors.new_(Go.str("1"));
	var _erra:stdgo.errors_test.Errors_test.T_wrapped = (new stdgo.errors_test.Errors_test.T_wrapped(Go.str("wrap 2"),
		_err1) : stdgo.errors_test.Errors_test.T_wrapped);
	var _errb:stdgo.errors_test.Errors_test.T_wrapped = (new stdgo.errors_test.Errors_test.T_wrapped(Go.str("wrap 3"),
		Go.asInterface(_erra)) : stdgo.errors_test.Errors_test.T_wrapped);
	var _err3:Error = stdgo.errors.Errors.new_(Go.str("3"));
	var _poser = ((new stdgo.errors_test.Errors_test.T_poser(Go.str("either 1 or 3"),
		function(_err:Error):Bool {
			return (Go.toInterface(_err) == Go.toInterface(_err1)) || (Go.toInterface(_err) == Go.toInterface(_err3));
		}) : stdgo.errors_test.Errors_test.T_poser) : Ref<stdgo.errors_test.Errors_test.T_poser>);
	var _testCases = (new Slice<T__struct_0>(0, 0, ({_err: (null : Error), _target: (null : Error), _match: true} : T__struct_0),
		({_err: _err1, _target: (null : Error), _match: false} : T__struct_0), ({_err: _err1, _target: _err1, _match: true} : T__struct_0),
		({_err: Go.asInterface(_erra), _target: _err1, _match: true} : T__struct_0),
		({_err: Go.asInterface(_errb), _target: _err1, _match: true} : T__struct_0), ({_err: _err1, _target: _err3, _match: false} : T__struct_0),
		({_err: Go.asInterface(_erra), _target: _err3, _match: false} : T__struct_0),
		({_err: Go.asInterface(_errb), _target: _err3, _match: false} : T__struct_0),
		({_err: Go.asInterface(_poser), _target: _err1, _match: true} : T__struct_0),
		({_err: Go.asInterface(_poser), _target: _err3, _match: true} : T__struct_0),
		({_err: Go.asInterface(_poser), _target: Go.asInterface(_erra), _match: false} : T__struct_0),
		({_err: Go.asInterface(_poser), _target: Go.asInterface(_errb), _match: false} : T__struct_0),
		({_err: Go.asInterface((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable)),
			_target: Go.asInterface((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable)),
			_match: true} : T__struct_0),
		({_err: Go.asInterface((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable)),
			_target: Go.asInterface(((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable) : Ref<stdgo.errors_test.Errors_test.T_errorUncomparable>)),
			_match: false} : T__struct_0),
		({_err: Go.asInterface(((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable) : Ref<stdgo.errors_test.Errors_test.T_errorUncomparable>)),
			_target: Go.asInterface((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable)),
			_match: true} : T__struct_0),
		({_err: Go.asInterface(((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable) : Ref<stdgo.errors_test.Errors_test.T_errorUncomparable>)),
			_target: Go.asInterface(((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable) : Ref<stdgo.errors_test.Errors_test.T_errorUncomparable>)),
			_match: false} : T__struct_0),
		({_err: Go.asInterface((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable)), _target: _err1,
			_match: false} : T__struct_0),
		({_err: Go.asInterface(((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable) : Ref<stdgo.errors_test.Errors_test.T_errorUncomparable>)),
			_target: _err1, _match: false} : T__struct_0)) : Slice<T__struct_0>);
	for (_0 => _tc in _testCases) {
		_t.run(Go.str(), function(_t:Ref<stdgo.testing.Testing.T>):Void {
			{
				var _got:Bool = stdgo.errors.Errors.is_(_tc._err, _tc._target);
				if (_got != (_tc._match)) {
					_t.errorf(Go.str("Is(%v, %v) = %v, want %v"), Go.toInterface(_tc._err), Go.toInterface(_tc._target), Go.toInterface(_got),
						Go.toInterface(_tc._match));
				};
			};
		});
	};
}

function testAs(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _errT:T_errorT = ({} : stdgo.errors_test.Errors_test.T_errorT);
	var _errP:Ref<stdgo.io.fs.Fs.PathError> = (null : Ref<stdgo.io.fs.Fs.PathError>);
	var _timeout:T__interface_3 = (null : stdgo.errors_test.Errors_test.T__interface_3);
	var _p:Ref<T_poser> = (null : Ref<stdgo.errors_test.Errors_test.T_poser>);
	var __tmp__ = stdgo.os.Os.open(Go.str("non-existing")),
		_0:Ref<stdgo.os.Os.File> = __tmp__._0,
		_errF:Error = __tmp__._1;
	var _poserErr = ((new stdgo.errors_test.Errors_test.T_poser(Go.str("oh no"),
		null) : stdgo.errors_test.Errors_test.T_poser) : Ref<stdgo.errors_test.Errors_test.T_poser>);
	var _testCases = (new Slice<T__struct_1>(0, 0, ({
		_err: (null : Error),
		_target: Go.toInterface((_errP : Ref<Ref<stdgo.io.fs.Fs.PathError>>)),
		_match: false,
		_want: (null : AnyInterface)
	} : T__struct_1), ({
		_err: Go.asInterface((new stdgo.errors_test.Errors_test.T_wrapped(Go.str("pitied the fool"),
			Go.asInterface((new stdgo.errors_test.Errors_test.T_errorT(Go.str("T")) : stdgo.errors_test.Errors_test.T_errorT))) : stdgo.errors_test.Errors_test.T_wrapped)),
		_target: Go.toInterface((_errT : Ref<stdgo.errors_test.Errors_test.T_errorT>)),
		_match: true,
		_want: Go.toInterface(Go.asInterface((new stdgo.errors_test.Errors_test.T_errorT(Go.str("T")) : stdgo.errors_test.Errors_test.T_errorT)))
		} : T__struct_1), ({
		_err: _errF,
		_target: Go.toInterface((_errP : Ref<Ref<stdgo.io.fs.Fs.PathError>>)),
		_match: true,
		_want: Go.toInterface(_errF)
		} : T__struct_1), ({
		_err: Go.asInterface((new stdgo.errors_test.Errors_test.T_errorT() : stdgo.errors_test.Errors_test.T_errorT)),
		_target: Go.toInterface((_errP : Ref<Ref<stdgo.io.fs.Fs.PathError>>)),
		_match: false,
		_want: (null : AnyInterface)
		} : T__struct_1), ({
		_err: Go.asInterface((new stdgo.errors_test.Errors_test.T_wrapped(Go.str("wrapped"), (null : Error)) : stdgo.errors_test.Errors_test.T_wrapped)),
		_target: Go.toInterface((_errT : Ref<stdgo.errors_test.Errors_test.T_errorT>)),
		_match: false,
		_want: (null : AnyInterface)
		} : T__struct_1), ({
		_err: Go.asInterface(((new stdgo.errors_test.Errors_test.T_poser(Go.str("error"),
			null) : stdgo.errors_test.Errors_test.T_poser) : Ref<stdgo.errors_test.Errors_test.T_poser>)),
		_target: Go.toInterface((_errT : Ref<stdgo.errors_test.Errors_test.T_errorT>)),
		_match: true,
		_want: Go.toInterface(Go.asInterface((new stdgo.errors_test.Errors_test.T_errorT(Go.str("poser")) : stdgo.errors_test.Errors_test.T_errorT)))
		} : T__struct_1), ({
		_err: Go.asInterface(((new stdgo.errors_test.Errors_test.T_poser(Go.str("path"),
			null) : stdgo.errors_test.Errors_test.T_poser) : Ref<stdgo.errors_test.Errors_test.T_poser>)),
		_target: Go.toInterface((_errP : Ref<Ref<stdgo.io.fs.Fs.PathError>>)),
		_match: true,
		_want: Go.toInterface(_poserPathErr)
		} : T__struct_1), ({
		_err: Go.asInterface(_poserErr),
		_target: Go.toInterface((_p : Ref<Ref<stdgo.errors_test.Errors_test.T_poser>>)),
		_match: true,
		_want: Go.toInterface(_poserErr)
		} : T__struct_1), ({
		_err: stdgo.errors.Errors.new_(Go.str("err")),
		_target: Go.toInterface((_timeout : Ref<T__interface_3>)),
		_match: false,
		_want: (null : AnyInterface)
		} : T__struct_1), ({
		_err: _errF,
		_target: Go.toInterface((_timeout : Ref<T__interface_3>)),
		_match: true,
		_want: Go.toInterface(_errF)
		} : T__struct_1), ({
		_err: Go.asInterface((new stdgo.errors_test.Errors_test.T_wrapped(Go.str("path error"), _errF) : stdgo.errors_test.Errors_test.T_wrapped)),
		_target: Go.toInterface((_timeout : Ref<T__interface_3>)),
		_match: true,
		_want: Go.toInterface(_errF)
		} : T__struct_1)) : Slice<T__struct_1>);
	for (_i => _tc in _testCases) {
		var _name:GoString = stdgo.fmt.Fmt.sprintf(Go.str("%d:As(Errorf(..., %v), %v)"), Go.toInterface(_i), Go.toInterface(_tc._err), _tc._target);
		var _rtarget:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.valueOf(_tc._target) == null ? null : stdgo.reflect.Reflect.valueOf(_tc._target)
			.__copy__());
		_rtarget.elem()
			.set((stdgo.reflect.Reflect.zero(stdgo.reflect.Reflect.typeOf(_tc._target)
				.elem()) == null ? null : stdgo.reflect.Reflect.zero(stdgo.reflect.Reflect.typeOf(_tc._target).elem()).__copy__()));
		_t.run(_name, function(_t:Ref<stdgo.testing.Testing.T>):Void {
			var _match:Bool = stdgo.errors.Errors.as(_tc._err, _tc._target);
			if (_match != (_tc._match)) {
				_t.fatalf(Go.str("match: got %v; want %v"), Go.toInterface(_match), Go.toInterface(_tc._match));
			};
			if (!_match) {
				return;
			};
			{
				var _got:AnyInterface = _rtarget.elem().interface_();
				if (Go.toInterface(_got) != (Go.toInterface(_tc._want))) {
					_t.fatalf(Go.str("got %#v, want %#v"), _got, _tc._want);
				};
			};
		});
	};
}

function testAsValidation(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _s:GoString = ("" : GoString);
	var _testCases = (new Slice<AnyInterface>(0, 0, (null : AnyInterface), Go.toInterface((null : Pointer<GoInt>)), Go.toInterface(Go.str("error")),
		Go.toInterface(Go.pointer(_s))) : Slice<AnyInterface>);
	var _err:Error = stdgo.errors.Errors.new_(Go.str("error"));
	for (_0 => _tc in _testCases) {
		_t.run(stdgo.fmt.Fmt.sprintf(Go.str("%T(%v)"), _tc, _tc), function(_t:Ref<stdgo.testing.Testing.T>):Void {
			var __deferstack__:Array<Void->Void> = [];
			__deferstack__.unshift(() -> {
				var a = function():Void {
					({
						final r = Go.recover_exception;
						Go.recover_exception = null;
						r;
					});
				};
				a();
			});
			try {
				if (stdgo.errors.Errors.as(_err, _tc)) {
					_t.errorf(Go.str("As(err, %T(%v)) = true, want false"), _tc, _tc);
					{
						for (defer in __deferstack__) {
							defer();
						};
						return;
					};
				};
				_t.errorf(Go.str("As(err, %T(%v)) did not panic"), _tc, _tc);
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

function testUnwrap(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _err1:Error = stdgo.errors.Errors.new_(Go.str("1"));
	var _erra:stdgo.errors_test.Errors_test.T_wrapped = (new stdgo.errors_test.Errors_test.T_wrapped(Go.str("wrap 2"),
		_err1) : stdgo.errors_test.Errors_test.T_wrapped);
	var _testCases = (new Slice<T__struct_2>(0, 0, ({_err: (null : Error), _want: (null : Error)} : T__struct_2),
		({_err: Go.asInterface((new stdgo.errors_test.Errors_test.T_wrapped(Go.str("wrapped"),
			(null : Error)) : stdgo.errors_test.Errors_test.T_wrapped)), _want: (null : Error)} : T__struct_2),
		({_err: _err1, _want: (null : Error)} : T__struct_2), ({_err: Go.asInterface(_erra), _want: _err1} : T__struct_2),
		({_err: Go.asInterface((new stdgo.errors_test.Errors_test.T_wrapped(Go.str("wrap 3"),
			Go.asInterface(_erra)) : stdgo.errors_test.Errors_test.T_wrapped)), _want: Go.asInterface(_erra)} : T__struct_2)) : Slice<T__struct_2>);
	for (_0 => _tc in _testCases) {
		{
			var _got:Error = stdgo.errors.Errors.unwrap(_tc._err);
			if (Go.toInterface(_got) != (Go.toInterface(_tc._want))) {
				_t.errorf(Go.str("Unwrap(%v) = %v, want %v"), Go.toInterface(_tc._err), Go.toInterface(_got), Go.toInterface(_tc._want));
			};
		};
	};
}

function exampleIs():Void {
	{
		var __tmp__ = stdgo.os.Os.open(Go.str("non-existing")),
			_0:Ref<stdgo.os.Os.File> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			if (stdgo.errors.Errors.is_(_err, stdgo.io.fs.Fs.errNotExist)) {
				stdgo.fmt.Fmt.println(Go.toInterface(Go.str("file does not exist")));
			} else {
				stdgo.fmt.Fmt.println(Go.toInterface(_err));
			};
		};
	};
}

function exampleAs():Void {
	{
		var __tmp__ = stdgo.os.Os.open(Go.str("non-existing")),
			_0:Ref<stdgo.os.Os.File> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			var _pathError:Ref<stdgo.io.fs.Fs.PathError> = (null : Ref<stdgo.io.fs.Fs.PathError>);
			if (stdgo.errors.Errors.as(_err, Go.toInterface((_pathError : Ref<Ref<stdgo.io.fs.Fs.PathError>>)))) {
				stdgo.fmt.Fmt.println(Go.toInterface(Go.str("Failed at path:")), Go.toInterface(_pathError.path));
			} else {
				stdgo.fmt.Fmt.println(Go.toInterface(_err));
			};
		};
	};
}

function exampleUnwrap():Void {
	var _err1:Error = stdgo.errors.Errors.new_(Go.str("error1"));
	var _err2:Error = stdgo.fmt.Fmt.errorf(Go.str("error2: [%w]"), Go.toInterface(_err1));
	stdgo.fmt.Fmt.println(Go.toInterface(_err2));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.errors.Errors.unwrap(_err2)));
}

class MyError_asInterface {
	@:keep
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

	var __self__:Pointer<MyError>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.errors_test.Errors_test.MyError_asInterface) class MyError_static_extension {
	@:keep
	static public function error(_e:MyError):GoString {
		return stdgo.fmt.Fmt.sprintf(Go.str("%v: %v"), Go.toInterface(Go.asInterface(_e.when)), Go.toInterface(_e.what));
	}
}

class T_poser_asInterface {
	@:keep
	public function as(_err:AnyInterface):Bool
		return __self__.value.as(_err);

	@:keep
	public function is_(_err:Error):Bool
		return __self__.value.is_(_err);

	@:keep
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

	var __self__:Pointer<T_poser>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.errors_test.Errors_test.T_poser_asInterface) class T_poser_static_extension {
	@:keep
	static public function as(_p:Ref<T_poser>, _err:AnyInterface):Bool {
		{
			final __type__ = _err;
			if (Go.typeEquals((__type__ : Ref<Ref<T_poser>>))) {
				var _x:Ref<Ref<stdgo.errors_test.Errors_test.T_poser>> = __type__ == null ? null : __type__.__underlying__() == null ? null : __type__ == null ? null : __type__.__underlying__()
					.value;
				_x = _p;
			} else if (Go.typeEquals((__type__ : Ref<T_errorT>))) {
				var _x:Ref<stdgo.errors_test.Errors_test.T_errorT> = __type__ == null ? (null : Ref<stdgo.errors_test.Errors_test.T_errorT>) : __type__.__underlying__() == null ? (null : Ref<stdgo.errors_test.Errors_test.T_errorT>) : __type__ == null ? (null : Ref<stdgo.errors_test.Errors_test.T_errorT>) : __type__.__underlying__()
					.value;
				{
					var __tmp__ = (new stdgo.errors_test.Errors_test.T_errorT(Go.str("poser")) : stdgo.errors_test.Errors_test.T_errorT);
					_x._s = __tmp__._s;
				};
			} else if (Go.typeEquals((__type__ : Ref<Ref<stdgo.io.fs.Fs.PathError>>))) {
				var _x:Ref<Ref<stdgo.io.fs.Fs.PathError>> = __type__ == null ? null : __type__.__underlying__() == null ? null : __type__ == null ? null : __type__.__underlying__()
					.value;
				_x = _poserPathErr;
			} else {
				var _x:AnyInterface = __type__ == null ? null : __type__.__underlying__();
				return false;
			};
		};
		return true;
	}

	@:keep
	static public function is_(_p:Ref<T_poser>, _err:Error):Bool {
		return _p._f(_err);
	}

	@:keep
	static public function error(_p:Ref<T_poser>):GoString {
		return _p._msg;
	}
}

class T_errorT_asInterface {
	@:keep
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

	var __self__:Pointer<T_errorT>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.errors_test.Errors_test.T_errorT_asInterface) class T_errorT_static_extension {
	@:keep
	static public function error(_e:T_errorT):GoString {
		return stdgo.fmt.Fmt.sprintf(Go.str("errorT(%s)"), Go.toInterface(_e._s));
	}
}

class T_wrapped_asInterface {
	@:keep
	public function unwrap():Error
		return __self__.value.unwrap();

	@:keep
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

	var __self__:Pointer<T_wrapped>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.errors_test.Errors_test.T_wrapped_asInterface) class T_wrapped_static_extension {
	@:keep
	static public function unwrap(_e:T_wrapped):Error {
		return _e._err;
	}

	@:keep
	static public function error(_e:T_wrapped):GoString {
		return _e._msg;
	}
}

class T_errorUncomparable_asInterface {
	@:keep
	public function is_(_target:Error):Bool
		return __self__.value.is_(_target);

	@:keep
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

	var __self__:Pointer<T_errorUncomparable>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.errors_test.Errors_test.T_errorUncomparable_asInterface) class T_errorUncomparable_static_extension {
	@:keep
	static public function is_(_:T_errorUncomparable, _target:Error):Bool {
		var __tmp__ = try {
			{value: (Go.typeAssert((Go.toInterface(_target) : T_errorUncomparable)) : T_errorUncomparable), ok: true};
		} catch (_) {
			{value: ({} : stdgo.errors_test.Errors_test.T_errorUncomparable), ok: false};
		}, _0 = __tmp__.value, _ok = __tmp__.ok;
		return _ok;
	}

	@:keep
	static public function error(_:T_errorUncomparable):GoString {
		return Go.str("uncomparable error");
	}
}
