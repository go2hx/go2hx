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

private var _poserPathErr:Ref<stdgo.io.fs.Fs.PathError> = ({op: (Go.str("poser") : GoString)} : stdgo.io.fs.Fs.PathError);

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

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new MyError(when, what);
	}
}

@:structInit @:using(stdgo.errors_test.Errors_test.T_poser_static_extension) private class T_poser {
	public var _msg:GoString = "";
	public var _f:stdgo.Error->Bool = null;

	public function new(?_msg:GoString, ?_f:stdgo.Error->Bool) {
		if (_msg != null)
			this._msg = _msg;
		if (_f != null)
			this._f = _f;
	}

	public function __underlying__():AnyInterface
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

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_errorT(_s);
	}
}

@:structInit @:using(stdgo.errors_test.Errors_test.T_wrapped_static_extension) private class T_wrapped {
	public var _msg:GoString = "";
	public var _err:stdgo.Error = (null : stdgo.Error);

	public function new(?_msg:GoString, ?_err:stdgo.Error) {
		if (_msg != null)
			this._msg = _msg;
		if (_err != null)
			this._err = _err;
	}

	public function __underlying__():AnyInterface
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

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_errorUncomparable(_f);
	}
}

@:local private typedef T__struct_0 = {
	public var _err:stdgo.Error;
	public var _target:stdgo.Error;
	public var _match:Bool;
};

@:local private typedef T__struct_1 = {
	public var _err:stdgo.Error;
	public var _target:AnyInterface;
	public var _match:Bool;

	/**
		// value of target on match
	**/
	public var _want:AnyInterface;
};

@:local private typedef T__struct_2 = {
	public var _err:stdgo.Error;
	public var _want:stdgo.Error;
};

function testNewEqual(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (stdgo.errors.Errors.new_((Go.str("abc") : GoString)) == stdgo.errors.Errors.new_((Go.str("abc") : GoString))) {
		_t.errorf(("New(\"abc\") == New(\"abc\")" : GoString));
	};
	if (stdgo.errors.Errors.new_((Go.str("abc") : GoString)) == stdgo.errors.Errors.new_((Go.str("xyz") : GoString))) {
		_t.errorf(("New(\"abc\") == New(\"xyz\")" : GoString));
	};
	var _err:stdgo.Error = stdgo.errors.Errors.new_((Go.str("jkl") : GoString));
	if (_err != _err) {
		_t.errorf(("err != err" : GoString));
	};
}

function testErrorMethod(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _err:stdgo.Error = stdgo.errors.Errors.new_((Go.str("abc") : GoString));
	if (_err.error() != (Go.str("abc") : GoString)) {
		_t.errorf(("New(\"abc\").Error() = %q, want %q" : GoString), Go.toInterface(_err.error()), Go.toInterface((Go.str("abc") : GoString)));
	};
}

function exampleNew():Void {
	var _err:stdgo.Error = stdgo.errors.Errors.new_((Go.str("emit macho dwarf: elf header corrupted") : GoString));
	if (_err != null) {
		stdgo.fmt.Fmt.print(_err);
	};
}

/**
	// The fmt package's Errorf function lets us use the package's formatting
	// features to create descriptive error messages.
**/
function exampleNew_errorf():Void {
	var _name:GoString = (Go.str("bimmler") : GoString),
		_id:GoUnTypedInt = (17 : GoUnTypedInt);
	var _err:stdgo.Error = stdgo.fmt.Fmt.errorf((Go.str("user %q (id %d) not found") : GoString), Go.toInterface((Go.str("bimmler") : GoString)),
		Go.toInterface((17 : GoInt)));
	if (_err != null) {
		stdgo.fmt.Fmt.print(_err);
	};
}

function _oops():Error {
	return Go.asInterface((new stdgo.errors_test.Errors_test.MyError((stdgo.time.Time.date((1989 : GoInt), (3 : stdgo.time.Time.Month), (15 : GoInt),
		(22 : GoInt), (30 : GoInt), (0 : GoInt), (0 : GoInt),
		stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date((1989 : GoInt), (3 : stdgo.time.Time.Month), (15 : GoInt), (22 : GoInt), (30 : GoInt),
			(0 : GoInt), (0 : GoInt), stdgo.time.Time.utc)
		.__copy__()),
		(Go.str("the file system has gone away") : GoString)) : stdgo.errors_test.Errors_test.MyError));
}

function example():Void {
	{
		var _err:stdgo.Error = _oops();
		if (_err != null) {
			stdgo.fmt.Fmt.println(_err);
		};
	};
}

function testIs(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _err1:stdgo.Error = stdgo.errors.Errors.new_((Go.str("1") : GoString));
	var _erra:stdgo.errors_test.Errors_test.T_wrapped = (new stdgo.errors_test.Errors_test.T_wrapped((Go.str("wrap 2") : GoString),
		_err1) : stdgo.errors_test.Errors_test.T_wrapped);
	var _errb:stdgo.errors_test.Errors_test.T_wrapped = (new stdgo.errors_test.Errors_test.T_wrapped((Go.str("wrap 3") : GoString),
		Go.asInterface(_erra)) : stdgo.errors_test.Errors_test.T_wrapped);
	var _err3:stdgo.Error = stdgo.errors.Errors.new_((Go.str("3") : GoString));
	var _poser = (new stdgo.errors_test.Errors_test.T_poser((Go.str("either 1 or 3") : GoString), function(_err:Error):Bool {
		return (_err == _err1) || (_err == _err3);
	}) : stdgo.errors_test.Errors_test.T_poser);
	var _testCases = (new Slice<T__struct_0>(0, 0, ({_err: (null : stdgo.Error), _target: (null : stdgo.Error), _match: true} : T__struct_0),
		({_err: _err1, _target: (null : stdgo.Error), _match: false} : T__struct_0), ({_err: _err1, _target: _err1, _match: true} : T__struct_0),
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
			_target: Go.asInterface((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable)),
			_match: false} : T__struct_0),
		({_err: Go.asInterface((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable)),
			_target: Go.asInterface((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable)),
			_match: true} : T__struct_0),
		({_err: Go.asInterface((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable)),
			_target: Go.asInterface((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable)),
			_match: false} : T__struct_0),
		({_err: Go.asInterface((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable)), _target: _err1,
			_match: false} : T__struct_0),
		({_err: Go.asInterface((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable)), _target: _err1,
			_match: false} : T__struct_0)) : Slice<T__struct_0>);
	for (_0 => _tc in _testCases) {
		_t.run((Go.str() : GoString), function(_t:Ref<stdgo.testing.Testing.T>):Void {
			{
				var _got:Bool = stdgo.errors.Errors.is_(_tc._err, _tc._target);
				if (_got != _tc._match) {
					_t.errorf((Go.str("Is(%v, %v) = %v, want %v") : GoString), Go.toInterface(_tc._err), Go.toInterface(_tc._target), Go.toInterface(_got),
						Go.toInterface(_tc._match));
				};
			};
		});
	};
}

function testAs(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _errT:T_errorT = ({} : stdgo.errors_test.Errors_test.T_errorT);
	var _errP:Ref<stdgo.io.fs.Fs.PathError> = (null : stdgo.io.fs.Fs.PathError);
	var _timeout:T__interface_3 = (null : stdgo.errors_test.Errors_test.T__interface_3);
	var _p:Ref<T_poser> = (null : stdgo.errors_test.Errors_test.T_poser);
	var __tmp__ = stdgo.os.Os.open((Go.str("non-existing") : GoString)),
		_0:Ref<stdgo.os.Os.File> = __tmp__._0,
		_errF:stdgo.Error = __tmp__._1;
	var _poserErr = (new stdgo.errors_test.Errors_test.T_poser((Go.str("oh no") : GoString), null) : stdgo.errors_test.Errors_test.T_poser);
	var _testCases = (new Slice<T__struct_1>(0, 0, ({
		_err: (null : stdgo.Error),
		_target: Go.toInterface((_errP : Ref<Ref<stdgo.io.fs.Fs.PathError>>)),
		_match: false,
		_want: (null : AnyInterface)
	} : T__struct_1), ({
		_err: Go.asInterface((new stdgo.errors_test.Errors_test.T_wrapped((Go.str("pitied the fool") : GoString),
			Go.asInterface((new stdgo.errors_test.Errors_test.T_errorT((Go.str("T") : GoString)) : stdgo.errors_test.Errors_test.T_errorT))) : stdgo.errors_test.Errors_test.T_wrapped)),
		_target: Go.toInterface(_errT),
		_match: true,
		_want: Go.toInterface(Go.asInterface((new stdgo.errors_test.Errors_test.T_errorT((Go.str("T") : GoString)) : stdgo.errors_test.Errors_test.T_errorT)))
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
		_err: Go.asInterface((new stdgo.errors_test.Errors_test.T_wrapped((Go.str("wrapped") : GoString),
			(null : stdgo.Error)) : stdgo.errors_test.Errors_test.T_wrapped)),
		_target: Go.toInterface(_errT),
		_match: false,
		_want: (null : AnyInterface)
		} : T__struct_1), ({
		_err: Go.asInterface((new stdgo.errors_test.Errors_test.T_poser((Go.str("error") : GoString), null) : stdgo.errors_test.Errors_test.T_poser)),
		_target: Go.toInterface(_errT),
		_match: true,
		_want: Go.toInterface(Go.asInterface((new stdgo.errors_test.Errors_test.T_errorT((Go.str("poser") : GoString)) : stdgo.errors_test.Errors_test.T_errorT)))
		} : T__struct_1), ({
		_err: Go.asInterface((new stdgo.errors_test.Errors_test.T_poser((Go.str("path") : GoString), null) : stdgo.errors_test.Errors_test.T_poser)),
		_target: Go.toInterface((_errP : Ref<Ref<stdgo.io.fs.Fs.PathError>>)),
		_match: true,
		_want: Go.toInterface(_poserPathErr)
		} : T__struct_1), ({
		_err: Go.asInterface(_poserErr),
		_target: Go.toInterface((_p : Ref<Ref<stdgo.errors_test.Errors_test.T_poser>>)),
		_match: true,
		_want: Go.toInterface(_poserErr)
		} : T__struct_1), ({
		_err: stdgo.errors.Errors.new_((Go.str("err") : GoString)),
		_target: Go.toInterface(_timeout),
		_match: false,
		_want: (null : AnyInterface)
		} : T__struct_1), ({
		_err: _errF,
		_target: Go.toInterface(_timeout),
		_match: true,
		_want: Go.toInterface(_errF)
		} : T__struct_1), ({
		_err: Go.asInterface((new stdgo.errors_test.Errors_test.T_wrapped((Go.str("path error") : GoString),
			_errF) : stdgo.errors_test.Errors_test.T_wrapped)),
		_target: Go.toInterface(_timeout),
		_match: true,
		_want: Go.toInterface(_errF)
		} : T__struct_1)) : Slice<T__struct_1>);
	for (_i => _tc in _testCases) {
		var _name:GoString = stdgo.fmt.Fmt.sprintf((Go.str("%d:As(Errorf(..., %v), %v)") : GoString), Go.toInterface(_i), Go.toInterface(_tc._err),
			_tc._target);
		var _rtarget:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.valueOf(_tc._target) == null ? null : stdgo.reflect.Reflect.valueOf(_tc._target)
			.__copy__());
		_rtarget.elem()
			.set((stdgo.reflect.Reflect.zero(stdgo.reflect.Reflect.typeOf(_tc._target)
				.elem()) == null ? null : stdgo.reflect.Reflect.zero(stdgo.reflect.Reflect.typeOf(_tc._target).elem()).__copy__()));
		_t.run(_name, function(_t:Ref<stdgo.testing.Testing.T>):Void {
			var _match:Bool = stdgo.errors.Errors.as(_tc._err, _tc._target);
			if (_match != _tc._match) {
				_t.fatalf((Go.str("match: got %v; want %v") : GoString), Go.toInterface(_match), Go.toInterface(_tc._match));
			};
			if (!_match) {
				return;
			};
			{
				var _got:AnyInterface = _rtarget.elem().interface_();
				if (_got != _tc._want) {
					_t.fatalf((Go.str("got %#v, want %#v") : GoString), _got, _tc._want);
				};
			};
		});
	};
}

function testAsValidation(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _s:GoString = ("" : GoString);
	var _testCases = (new Slice<AnyInterface>(0, 0, (null : AnyInterface), Go.toInterface((null : Pointer<GoInt>)),
		Go.toInterface((Go.str("error") : GoString)), Go.toInterface(Go.pointer(_s))) : Slice<AnyInterface>);
	var _err:stdgo.Error = stdgo.errors.Errors.new_((Go.str("error") : GoString));
	for (_0 => _tc in _testCases) {
		_t.run(stdgo.fmt.Fmt.sprintf((Go.str("%T(%v)") : GoString), _tc, _tc), function(_t:Ref<stdgo.testing.Testing.T>):Void {
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
					_t.errorf((Go.str("As(err, %T(%v)) = true, want false") : GoString), _tc, _tc);
					{
						for (defer in __deferstack__) {
							defer();
						};
						return;
					};
				};
				_t.errorf((Go.str("As(err, %T(%v)) did not panic") : GoString), _tc, _tc);
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
	var _err1:stdgo.Error = stdgo.errors.Errors.new_((Go.str("1") : GoString));
	var _erra:stdgo.errors_test.Errors_test.T_wrapped = (new stdgo.errors_test.Errors_test.T_wrapped((Go.str("wrap 2") : GoString),
		_err1) : stdgo.errors_test.Errors_test.T_wrapped);
	var _testCases = (new Slice<T__struct_2>(0, 0, ({_err: (null : stdgo.Error), _want: (null : stdgo.Error)} : T__struct_2),
		({_err: Go.asInterface((new stdgo.errors_test.Errors_test.T_wrapped((Go.str("wrapped") : GoString),
			(null : stdgo.Error)) : stdgo.errors_test.Errors_test.T_wrapped)), _want: (null : stdgo.Error)} : T__struct_2),
		({_err: _err1, _want: (null : stdgo.Error)} : T__struct_2), ({_err: Go.asInterface(_erra), _want: _err1} : T__struct_2),
		({_err: Go.asInterface((new stdgo.errors_test.Errors_test.T_wrapped((Go.str("wrap 3") : GoString),
			Go.asInterface(_erra)) : stdgo.errors_test.Errors_test.T_wrapped)), _want: Go.asInterface(_erra)} : T__struct_2)) : Slice<T__struct_2>);
	for (_0 => _tc in _testCases) {
		{
			var _got:stdgo.Error = stdgo.errors.Errors.unwrap(_tc._err);
			if (_got != _tc._want) {
				_t.errorf((Go.str("Unwrap(%v) = %v, want %v") : GoString), Go.toInterface(_tc._err), Go.toInterface(_got), Go.toInterface(_tc._want));
			};
		};
	};
}

function exampleIs():Void {
	{
		var __tmp__ = stdgo.os.Os.open((Go.str("non-existing") : GoString)),
			_0:Ref<stdgo.os.Os.File> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			if (stdgo.errors.Errors.is_(_err, stdgo.io.fs.Fs.errNotExist)) {
				stdgo.fmt.Fmt.println((Go.str("file does not exist") : GoString));
			} else {
				stdgo.fmt.Fmt.println(_err);
			};
		};
	};
}

function exampleAs():Void {
	{
		var __tmp__ = stdgo.os.Os.open((Go.str("non-existing") : GoString)),
			_0:Ref<stdgo.os.Os.File> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			var _pathError:Ref<stdgo.io.fs.Fs.PathError> = (null : stdgo.io.fs.Fs.PathError);
			if (stdgo.errors.Errors.as(_err, Go.toInterface((_pathError : Ref<Ref<stdgo.io.fs.Fs.PathError>>)))) {
				stdgo.fmt.Fmt.println((Go.str("Failed at path:") : GoString), _pathError.path);
			} else {
				stdgo.fmt.Fmt.println(_err);
			};
		};
	};
}

function exampleUnwrap():Void {
	var _err1:stdgo.Error = stdgo.errors.Errors.new_((Go.str("error1") : GoString));
	var _err2:stdgo.Error = stdgo.fmt.Fmt.errorf((Go.str("error2: [%w]") : GoString), Go.toInterface(_err1));
	stdgo.fmt.Fmt.println(_err2);
	stdgo.fmt.Fmt.println(stdgo.errors.Errors.unwrap(_err2));
}

class MyError_asInterface {
	@:keep
	public function error():GoString
		return __self__.error();

	public function new(?__self__) {
		if (__self__ != null)
			this.__self__ = __self__;
	}

	public function __underlying__()
		return Go.toInterface(__self__);

	var __self__:MyError;
}

@:keep private class MyError_static_extension {
	@:keep
	static public function error(_e:MyError):GoString {
		return stdgo.fmt.Fmt.sprintf((Go.str("%v: %v") : GoString), Go.toInterface(Go.asInterface(_e.when)), Go.toInterface(_e.what));
	}
}

private class T_poser_asInterface {
	@:keep
	public function as(_err:AnyInterface):Bool
		return __self__.as(_err);

	@:keep
	public function is_(_err:Error):Bool
		return __self__.is_(_err);

	@:keep
	public function error():GoString
		return __self__.error();

	public function new(?__self__) {
		if (__self__ != null)
			this.__self__ = __self__;
	}

	public function __underlying__()
		return Go.toInterface(__self__);

	var __self__:T_poser;
}

@:keep private class T_poser_static_extension {
	@:keep
	static public function as(_p:Ref<T_poser>, _err:AnyInterface):Bool {
		if (Go.assertable((_err : Ref<Ref<T_poser>>))) {
			var _x:Ref<Ref<stdgo.errors_test.Errors_test.T_poser>> = _err == null ? null : _err.__underlying__() == null ? null : _err == null ? null : _err.__underlying__()
				.value;
			_x = _p;
		} else if (Go.assertable((_err : Ref<T_errorT>))) {
			var _x:Ref<stdgo.errors_test.Errors_test.T_errorT> = _err == null ? null : _err.__underlying__() == null ? null : _err == null ? null : _err.__underlying__()
				.value;
			{
				var __tmp__ = (new stdgo.errors_test.Errors_test.T_errorT((Go.str("poser") : GoString)) : stdgo.errors_test.Errors_test.T_errorT);
				_x._s = __tmp__._s;
			};
		} else if (Go.assertable((_err : Ref<Ref<stdgo.io.fs.Fs.PathError>>))) {
			var _x:Ref<Ref<stdgo.io.fs.Fs.PathError>> = _err == null ? null : _err.__underlying__() == null ? null : _err == null ? null : _err.__underlying__()
				.value;
			_x = _poserPathErr;
		} else {
			var _x:AnyInterface = _err == null ? null : _err.__underlying__();
			return false;
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

private class T_errorT_asInterface {
	@:keep
	public function error():GoString
		return __self__.error();

	public function new(?__self__) {
		if (__self__ != null)
			this.__self__ = __self__;
	}

	public function __underlying__()
		return Go.toInterface(__self__);

	var __self__:T_errorT;
}

@:keep private class T_errorT_static_extension {
	@:keep
	static public function error(_e:T_errorT):GoString {
		return stdgo.fmt.Fmt.sprintf((Go.str("errorT(%s)") : GoString), Go.toInterface(_e._s));
	}
}

private class T_wrapped_asInterface {
	@:keep
	public function unwrap():Error
		return __self__.unwrap();

	@:keep
	public function error():GoString
		return __self__.error();

	public function new(?__self__) {
		if (__self__ != null)
			this.__self__ = __self__;
	}

	public function __underlying__()
		return Go.toInterface(__self__);

	var __self__:T_wrapped;
}

@:keep private class T_wrapped_static_extension {
	@:keep
	static public function unwrap(_e:T_wrapped):Error {
		return _e._err;
	}

	@:keep
	static public function error(_e:T_wrapped):GoString {
		return _e._msg;
	}
}

private class T_errorUncomparable_asInterface {
	@:keep
	public function is_(_target:Error):Bool
		return __self__.is_(_target);

	@:keep
	public function error():GoString
		return __self__.error();

	public function new(?__self__) {
		if (__self__ != null)
			this.__self__ = __self__;
	}

	public function __underlying__()
		return Go.toInterface(__self__);

	var __self__:T_errorUncomparable;
}

@:keep private class T_errorUncomparable_static_extension {
	@:keep
	static public function is_(_:T_errorUncomparable, _target:Error):Bool {
		var __tmp__ = try {
			{value: ((_target.__underlying__().value : Dynamic) : T_errorUncomparable), ok: true};
		} catch (_) {
			{value: ({} : stdgo.errors_test.Errors_test.T_errorUncomparable), ok: false};
		}, _0 = __tmp__.value, _ok = __tmp__.ok;
		return _ok;
	}

	@:keep
	static public function error(_:T_errorUncomparable):GoString {
		return (Go.str("uncomparable error") : GoString);
	}
}
