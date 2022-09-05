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

@:local typedef T__interface_3 = StructType & {
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

@:local typedef T__struct_0 = {
	public var _err:stdgo.Error;
	public var _target:stdgo.Error;
	public var _match:Bool;
};

@:local typedef T__struct_1 = {
	public var _err:stdgo.Error;
	public var _target:AnyInterface;
	public var _match:Bool;

	/**
		// value of target on match
	**/
	public var _want:AnyInterface;
};

@:local typedef T__struct_2 = {
	public var _err:stdgo.Error;
	public var _want:stdgo.Error;
};

function testNewEqual(_t:stdgo.testing.Testing.T):Void {
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

function testErrorMethod(_t:stdgo.testing.Testing.T):Void {
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
	return {
		final __self__ = new stdgo.errors_test.Errors_test.MyError_asInterface((new stdgo.errors_test.Errors_test.MyError((stdgo.time.Time.date((1989 : GoInt),
			(3 : stdgo.time.Time.Month), (15 : GoInt), (22 : GoInt), (30 : GoInt), (0 : GoInt), (0 : GoInt),
			stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date((1989 : GoInt), (3 : stdgo.time.Time.Month), (15 : GoInt), (22 : GoInt), (30 : GoInt),
				(0 : GoInt), (0 : GoInt), stdgo.time.Time.utc)
			.__copy__()),
			(Go.str("the file system has gone away") : GoString)) : stdgo.errors_test.Errors_test.MyError));
		__self__.error = #if !macro function():GoString return (new stdgo.errors_test.Errors_test.MyError((stdgo.time.Time.date((1989 : GoInt),
			(3 : stdgo.time.Time.Month), (15 : GoInt), (22 : GoInt), (30 : GoInt), (0 : GoInt), (0 : GoInt),
			stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date((1989 : GoInt), (3 : stdgo.time.Time.Month), (15 : GoInt), (22 : GoInt), (30 : GoInt),
				(0 : GoInt), (0 : GoInt), stdgo.time.Time.utc)
			.__copy__()),
			(Go.str("the file system has gone away") : GoString)) : stdgo.errors_test.Errors_test.MyError).error() #else null #end;
		__self__;
	};
}

function example():Void {
	{
		var _err:stdgo.Error = _oops();
		if (_err != null) {
			stdgo.fmt.Fmt.println(_err);
		};
	};
}

function testIs(_t:stdgo.testing.Testing.T):Void {
	var _err1:stdgo.Error = stdgo.errors.Errors.new_((Go.str("1") : GoString));
	var _erra:stdgo.errors_test.Errors_test.T_wrapped = (new stdgo.errors_test.Errors_test.T_wrapped((Go.str("wrap 2") : GoString),
		_err1) : stdgo.errors_test.Errors_test.T_wrapped);
	var _errb:stdgo.errors_test.Errors_test.T_wrapped = (new stdgo.errors_test.Errors_test.T_wrapped((Go.str("wrap 3") : GoString), {
		final __self__ = new stdgo.errors_test.Errors_test.T_wrapped_asInterface(_erra);
		__self__.error = #if !macro function():GoString return _erra.error() #else null #end;
		__self__.unwrap = #if !macro function():stdgo.Error return _erra.unwrap() #else null #end;
		__self__;
	}) : stdgo.errors_test.Errors_test.T_wrapped);
	var _err3:stdgo.Error = stdgo.errors.Errors.new_((Go.str("3") : GoString));
	var _poser = (new stdgo.errors_test.Errors_test.T_poser((Go.str("either 1 or 3") : GoString), function(_err:Error):Bool {
		return (_err == _err1) || (_err == _err3);
	}) : stdgo.errors_test.Errors_test.T_poser);
	var _testCases = (new Slice<T__struct_0>(0, 0, ({_err: (null : stdgo.Error), _target: (null : stdgo.Error), _match: true} : T__struct_0),
		({_err: _err1, _target: (null : stdgo.Error), _match: false} : T__struct_0), ({_err: _err1, _target: _err1, _match: true} : T__struct_0), ({
			_err: {
				final __self__ = new stdgo.errors_test.Errors_test.T_wrapped_asInterface(_erra);
				__self__.error = #if !macro function():GoString return _erra.error() #else null #end;
				__self__.unwrap = #if !macro function():stdgo.Error return _erra.unwrap() #else null #end;
				__self__;
			},
			_target: _err1,
			_match: true
		} : T__struct_0), ({
			_err: {
				final __self__ = new stdgo.errors_test.Errors_test.T_wrapped_asInterface(_errb);
				__self__.error = #if !macro function():GoString return _errb.error() #else null #end;
				__self__.unwrap = #if !macro function():stdgo.Error return _errb.unwrap() #else null #end;
				__self__;
			},
			_target: _err1,
			_match: true
		} : T__struct_0), ({_err: _err1, _target: _err3, _match: false} : T__struct_0), ({
			_err: {
				final __self__ = new stdgo.errors_test.Errors_test.T_wrapped_asInterface(_erra);
				__self__.error = #if !macro function():GoString return _erra.error() #else null #end;
				__self__.unwrap = #if !macro function():stdgo.Error return _erra.unwrap() #else null #end;
				__self__;
			},
			_target: _err3,
			_match: false
		} : T__struct_0), ({
			_err: {
				final __self__ = new stdgo.errors_test.Errors_test.T_wrapped_asInterface(_errb);
				__self__.error = #if !macro function():GoString return _errb.error() #else null #end;
				__self__.unwrap = #if !macro function():stdgo.Error return _errb.unwrap() #else null #end;
				__self__;
			},
			_target: _err3,
			_match: false
		} : T__struct_0), ({
			_err: {
				final __self__ = new stdgo.errors_test.Errors_test.T_poser_asInterface(_poser);
				__self__.as = #if !macro function(_i:AnyInterface):Bool return _poser.as(_i) #else null #end;
				__self__.error = #if !macro function():GoString return _poser.error() #else null #end;
				__self__.is_ = #if !macro function(__0:stdgo.Error):Bool return _poser.is_(__0) #else null #end;
				__self__;
			},
			_target: _err1,
			_match: true
		} : T__struct_0), ({
			_err: {
				final __self__ = new stdgo.errors_test.Errors_test.T_poser_asInterface(_poser);
				__self__.as = #if !macro function(_i:AnyInterface):Bool return _poser.as(_i) #else null #end;
				__self__.error = #if !macro function():GoString return _poser.error() #else null #end;
				__self__.is_ = #if !macro function(__0:stdgo.Error):Bool return _poser.is_(__0) #else null #end;
				__self__;
			},
			_target: _err3,
			_match: true
		} : T__struct_0), ({
			_err: {
				final __self__ = new stdgo.errors_test.Errors_test.T_poser_asInterface(_poser);
				__self__.as = #if !macro function(_i:AnyInterface):Bool return _poser.as(_i) #else null #end;
				__self__.error = #if !macro function():GoString return _poser.error() #else null #end;
				__self__.is_ = #if !macro function(__0:stdgo.Error):Bool return _poser.is_(__0) #else null #end;
				__self__;
			},
			_target: {
				final __self__ = new stdgo.errors_test.Errors_test.T_wrapped_asInterface(_erra);
				__self__.error = #if !macro function():GoString return _erra.error() #else null #end;
				__self__.unwrap = #if !macro function():stdgo.Error return _erra.unwrap() #else null #end;
				__self__;
			},
			_match: false
		} : T__struct_0), ({
			_err: {
				final __self__ = new stdgo.errors_test.Errors_test.T_poser_asInterface(_poser);
				__self__.as = #if !macro function(_i:AnyInterface):Bool return _poser.as(_i) #else null #end;
				__self__.error = #if !macro function():GoString return _poser.error() #else null #end;
				__self__.is_ = #if !macro function(__0:stdgo.Error):Bool return _poser.is_(__0) #else null #end;
				__self__;
			},
			_target: {
				final __self__ = new stdgo.errors_test.Errors_test.T_wrapped_asInterface(_errb);
				__self__.error = #if !macro function():GoString return _errb.error() #else null #end;
				__self__.unwrap = #if !macro function():stdgo.Error return _errb.unwrap() #else null #end;
				__self__;
			},
			_match: false
		} : T__struct_0), ({
			_err: {
				final __self__ = new stdgo.errors_test.Errors_test.T_errorUncomparable_asInterface((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable));
				__self__.error = #if !macro function():GoString return
					(new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable).error() #else null #end;
				__self__.is_ = #if !macro function(__0:stdgo.Error):Bool return
					(new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable).is_(__0) #else null #end;
				__self__;
			},
			_target: {
				final __self__ = new stdgo.errors_test.Errors_test.T_errorUncomparable_asInterface((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable));
				__self__.error = #if !macro function():GoString return
					(new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable).error() #else null #end;
				__self__.is_ = #if !macro function(__0:stdgo.Error):Bool return
					(new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable).is_(__0) #else null #end;
				__self__;
			},
			_match: true
		} : T__struct_0), ({
			_err: {
				final __self__ = new stdgo.errors_test.Errors_test.T_errorUncomparable_asInterface((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable));
				__self__.error = #if !macro function():GoString return
					(new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable).error() #else null #end;
				__self__.is_ = #if !macro function(__0:stdgo.Error):Bool return
					(new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable).is_(__0) #else null #end;
				__self__;
			},
			_target: {
				final __self__ = new stdgo.errors_test.Errors_test.T_errorUncomparable_asInterface((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable));
				__self__.error = #if !macro function():GoString return
					(new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable).error() #else null #end;
				__self__.is_ = #if !macro function(__0:stdgo.Error):Bool return
					(new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable).is_(__0) #else null #end;
				__self__;
			},
			_match: false
		} : T__struct_0), ({
			_err: {
				final __self__ = new stdgo.errors_test.Errors_test.T_errorUncomparable_asInterface((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable));
				__self__.error = #if !macro function():GoString return
					(new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable).error() #else null #end;
				__self__.is_ = #if !macro function(__0:stdgo.Error):Bool return
					(new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable).is_(__0) #else null #end;
				__self__;
			},
			_target: {
				final __self__ = new stdgo.errors_test.Errors_test.T_errorUncomparable_asInterface((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable));
				__self__.error = #if !macro function():GoString return
					(new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable).error() #else null #end;
				__self__.is_ = #if !macro function(__0:stdgo.Error):Bool return
					(new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable).is_(__0) #else null #end;
				__self__;
			},
			_match: true
		} : T__struct_0), ({
			_err: {
				final __self__ = new stdgo.errors_test.Errors_test.T_errorUncomparable_asInterface((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable));
				__self__.error = #if !macro function():GoString return
					(new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable).error() #else null #end;
				__self__.is_ = #if !macro function(__0:stdgo.Error):Bool return
					(new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable).is_(__0) #else null #end;
				__self__;
			},
			_target: {
				final __self__ = new stdgo.errors_test.Errors_test.T_errorUncomparable_asInterface((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable));
				__self__.error = #if !macro function():GoString return
					(new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable).error() #else null #end;
				__self__.is_ = #if !macro function(__0:stdgo.Error):Bool return
					(new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable).is_(__0) #else null #end;
				__self__;
			},
			_match: false
		} : T__struct_0), ({
			_err: {
				final __self__ = new stdgo.errors_test.Errors_test.T_errorUncomparable_asInterface((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable));
				__self__.error = #if !macro function():GoString return
					(new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable).error() #else null #end;
				__self__.is_ = #if !macro function(__0:stdgo.Error):Bool return
					(new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable).is_(__0) #else null #end;
				__self__;
			},
			_target: _err1,
			_match: false
		} : T__struct_0), ({
			_err: {
				final __self__ = new stdgo.errors_test.Errors_test.T_errorUncomparable_asInterface((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable));
				__self__.error = #if !macro function():GoString return
					(new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable).error() #else null #end;
				__self__.is_ = #if !macro function(__0:stdgo.Error):Bool return
					(new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable).is_(__0) #else null #end;
				__self__;
			},
			_target: _err1,
			_match: false
		} : T__struct_0)) : Slice<T__struct_0>);
	for (_0 => _tc in _testCases) {
		_t.run((Go.str() : GoString), function(_t:stdgo.testing.Testing.T):Void {
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

function testAs(_t:stdgo.testing.Testing.T):Void {
	var _errT:T_errorT = ({} : stdgo.errors_test.Errors_test.T_errorT);
	var _errP:stdgo.io.fs.Fs.PathError = (null : stdgo.io.fs.Fs.PathError);
	var _timeout:T__interface_3 = (null : stdgo.errors_test.Errors_test.T__interface_3);
	var _p:T_poser = (null : stdgo.errors_test.Errors_test.T_poser);
	var __tmp__ = stdgo.os.Os.open((Go.str("non-existing") : GoString)),
		_0:Ref<stdgo.os.Os.File> = __tmp__._0,
		_errF:stdgo.Error = __tmp__._1;
	var _poserErr = (new stdgo.errors_test.Errors_test.T_poser((Go.str("oh no") : GoString), null) : stdgo.errors_test.Errors_test.T_poser);
	var _testCases = (new Slice<T__struct_1>(0, 0, ({
		_err: (null : stdgo.Error),
		_target: Go.toInterface(_errP),
		_match: false,
		_want: (null : AnyInterface)
	} : T__struct_1), ({
		_err: {
			final __self__ = new stdgo.errors_test.Errors_test.T_wrapped_asInterface((new stdgo.errors_test.Errors_test.T_wrapped((Go.str("pitied the fool") : GoString),
				{
				final __self__ = new stdgo.errors_test.Errors_test.T_errorT_asInterface((new stdgo.errors_test.Errors_test.T_errorT((Go.str("T") : GoString)) : stdgo.errors_test.Errors_test.T_errorT));
				__self__.error = #if !macro function():GoString return
						(new stdgo.errors_test.Errors_test.T_errorT((Go.str("T") : GoString)) : stdgo.errors_test.Errors_test.T_errorT)
							.error() #else null #end;
				__self__;
			}) : stdgo.errors_test.Errors_test.T_wrapped));
			__self__.error = #if !macro function():GoString return (new stdgo.errors_test.Errors_test.T_wrapped((Go.str("pitied the fool") : GoString), {
				final __self__ = new stdgo.errors_test.Errors_test.T_errorT_asInterface((new stdgo.errors_test.Errors_test.T_errorT((Go.str("T") : GoString)) : stdgo.errors_test.Errors_test.T_errorT));
				__self__.error = #if !macro function():GoString return
					(new stdgo.errors_test.Errors_test.T_errorT((Go.str("T") : GoString)) : stdgo.errors_test.Errors_test.T_errorT).error() #else null #end;
				__self__;
			}) : stdgo.errors_test.Errors_test.T_wrapped).error() #else null #end;
			__self__.unwrap = #if !macro function():stdgo.Error return (new stdgo.errors_test.Errors_test.T_wrapped((Go.str("pitied the fool") : GoString), {
				final __self__ = new stdgo.errors_test.Errors_test.T_errorT_asInterface((new stdgo.errors_test.Errors_test.T_errorT((Go.str("T") : GoString)) : stdgo.errors_test.Errors_test.T_errorT));
				__self__.error = #if !macro function():GoString return
					(new stdgo.errors_test.Errors_test.T_errorT((Go.str("T") : GoString)) : stdgo.errors_test.Errors_test.T_errorT).error() #else null #end;
				__self__;
			}) : stdgo.errors_test.Errors_test.T_wrapped).unwrap() #else null #end;
			__self__;
		},
		_target: Go.toInterface(_errT),
		_match: true,
		_want: Go.toInterface({
			final __self__ = new stdgo.errors_test.Errors_test.T_errorT_asInterface((new stdgo.errors_test.Errors_test.T_errorT((Go.str("T") : GoString)) : stdgo.errors_test.Errors_test.T_errorT));
			__self__.error = #if !macro function():GoString return
				(new stdgo.errors_test.Errors_test.T_errorT((Go.str("T") : GoString)) : stdgo.errors_test.Errors_test.T_errorT).error() #else null #end;
			__self__;
		})
		} : T__struct_1), ({
		_err: _errF,
		_target: Go.toInterface(_errP),
		_match: true,
		_want: Go.toInterface(_errF)
		} : T__struct_1), ({
		_err: {
			final __self__ = new stdgo.errors_test.Errors_test.T_errorT_asInterface((new stdgo.errors_test.Errors_test.T_errorT() : stdgo.errors_test.Errors_test.T_errorT));
			__self__.error = #if !macro function():GoString return (new stdgo.errors_test.Errors_test.T_errorT() : stdgo.errors_test.Errors_test.T_errorT)
				.error() #else null #end;
			__self__;
		},
		_target: Go.toInterface(_errP),
		_match: false,
		_want: (null : AnyInterface)
		} : T__struct_1), ({
		_err: {
			final __self__ = new stdgo.errors_test.Errors_test.T_wrapped_asInterface((new stdgo.errors_test.Errors_test.T_wrapped((Go.str("wrapped") : GoString),
				(null : stdgo.Error)) : stdgo.errors_test.Errors_test.T_wrapped));
			__self__.error = #if !macro function():GoString return (new stdgo.errors_test.Errors_test.T_wrapped((Go.str("wrapped") : GoString),
				(null : stdgo.Error)) : stdgo.errors_test.Errors_test.T_wrapped).error() #else null #end;
			__self__.unwrap = #if !macro function():stdgo.Error return (new stdgo.errors_test.Errors_test.T_wrapped((Go.str("wrapped") : GoString),
				(null : stdgo.Error)) : stdgo.errors_test.Errors_test.T_wrapped).unwrap() #else null #end;
			__self__;
		},
		_target: Go.toInterface(_errT),
		_match: false,
		_want: (null : AnyInterface)
		} : T__struct_1), ({
		_err: {
			final __self__ = new stdgo.errors_test.Errors_test.T_poser_asInterface((new stdgo.errors_test.Errors_test.T_poser((Go.str("error") : GoString),
				null) : stdgo.errors_test.Errors_test.T_poser));
			__self__.as = #if !macro function(_i:AnyInterface):Bool return (new stdgo.errors_test.Errors_test.T_poser((Go.str("error") : GoString),
				null) : stdgo.errors_test.Errors_test.T_poser).as(_i) #else null #end;
			__self__.error = #if !macro function():GoString return (new stdgo.errors_test.Errors_test.T_poser((Go.str("error") : GoString),
				null) : stdgo.errors_test.Errors_test.T_poser).error() #else null #end;
			__self__.is_ = #if !macro function(__0:stdgo.Error):Bool return (new stdgo.errors_test.Errors_test.T_poser((Go.str("error") : GoString),
				null) : stdgo.errors_test.Errors_test.T_poser).is_(__0) #else null #end;
			__self__;
		},
		_target: Go.toInterface(_errT),
		_match: true,
		_want: Go.toInterface({
			final __self__ = new stdgo.errors_test.Errors_test.T_errorT_asInterface((new stdgo.errors_test.Errors_test.T_errorT((Go.str("poser") : GoString)) : stdgo.errors_test.Errors_test.T_errorT));
			__self__.error = #if !macro function():GoString return
				(new stdgo.errors_test.Errors_test.T_errorT((Go.str("poser") : GoString)) : stdgo.errors_test.Errors_test.T_errorT).error() #else null #end;
			__self__;
		})
		} : T__struct_1), ({
		_err: {
			final __self__ = new stdgo.errors_test.Errors_test.T_poser_asInterface((new stdgo.errors_test.Errors_test.T_poser((Go.str("path") : GoString),
				null) : stdgo.errors_test.Errors_test.T_poser));
			__self__.as = #if !macro function(_i:AnyInterface):Bool return (new stdgo.errors_test.Errors_test.T_poser((Go.str("path") : GoString),
				null) : stdgo.errors_test.Errors_test.T_poser).as(_i) #else null #end;
			__self__.error = #if !macro function():GoString return (new stdgo.errors_test.Errors_test.T_poser((Go.str("path") : GoString),
				null) : stdgo.errors_test.Errors_test.T_poser).error() #else null #end;
			__self__.is_ = #if !macro function(__0:stdgo.Error):Bool return (new stdgo.errors_test.Errors_test.T_poser((Go.str("path") : GoString),
				null) : stdgo.errors_test.Errors_test.T_poser).is_(__0) #else null #end;
			__self__;
		},
		_target: Go.toInterface(_errP),
		_match: true,
		_want: Go.toInterface(_poserPathErr)
		} : T__struct_1), ({
		_err: {
			final __self__ = new stdgo.errors_test.Errors_test.T_poser_asInterface(_poserErr);
			__self__.as = #if !macro function(_i:AnyInterface):Bool return _poserErr.as(_i) #else null #end;
			__self__.error = #if !macro function():GoString return _poserErr.error() #else null #end;
			__self__.is_ = #if !macro function(__0:stdgo.Error):Bool return _poserErr.is_(__0) #else null #end;
			__self__;
		},
		_target: Go.toInterface(_p),
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
		_err: {
			final __self__ = new stdgo.errors_test.Errors_test.T_wrapped_asInterface((new stdgo.errors_test.Errors_test.T_wrapped((Go.str("path error") : GoString),
				_errF) : stdgo.errors_test.Errors_test.T_wrapped));
			__self__.error = #if !macro function():GoString return (new stdgo.errors_test.Errors_test.T_wrapped((Go.str("path error") : GoString),
				_errF) : stdgo.errors_test.Errors_test.T_wrapped).error() #else null #end;
			__self__.unwrap = #if !macro function():stdgo.Error return (new stdgo.errors_test.Errors_test.T_wrapped((Go.str("path error") : GoString),
				_errF) : stdgo.errors_test.Errors_test.T_wrapped).unwrap() #else null #end;
			__self__;
		},
		_target: Go.toInterface(_timeout),
		_match: true,
		_want: Go.toInterface(_errF)
		} : T__struct_1)) : Slice<T__struct_1>);
	for (_i => _tc in _testCases) {
		var _name:GoString = stdgo.fmt.Fmt.sprintf((Go.str("%d:As(Errorf(..., %v), %v)") : GoString), Go.toInterface(_i), Go.toInterface(_tc._err),
			Go.toInterface(_tc._target));
		var _rtarget:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.valueOf(Go.toInterface(_tc._target)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_tc._target))
			.__copy__());
		_rtarget.elem()
			.set((stdgo.reflect.Reflect.zero(stdgo.reflect.Reflect.typeOf(Go.toInterface(_tc._target))
				.elem()) == null ? null : stdgo.reflect.Reflect.zero(stdgo.reflect.Reflect.typeOf(Go.toInterface(_tc._target)).elem()).__copy__()));
		_t.run(_name, function(_t:stdgo.testing.Testing.T):Void {
			var _match:Bool = stdgo.errors.Errors.as(_tc._err, Go.toInterface(_tc._target));
			if (_match != _tc._match) {
				_t.fatalf((Go.str("match: got %v; want %v") : GoString), Go.toInterface(_match), Go.toInterface(_tc._match));
			};
			if (!_match) {
				return;
			};
			{
				var _got:AnyInterface = Go.toInterface(_rtarget.elem().interface_());
				if (_got != _tc._want) {
					_t.fatalf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface(_tc._want));
				};
			};
		});
	};
}

function testAsValidation(_t:stdgo.testing.Testing.T):Void {
	var _s:GoString = ("" : GoString);
	var _testCases = (new Slice<AnyInterface>(0, 0, (null : AnyInterface), Go.toInterface((null : Pointer<GoInt>)),
		Go.toInterface((Go.str("error") : GoString)), Go.toInterface(Go.pointer(_s))) : Slice<AnyInterface>);
	var _err:stdgo.Error = stdgo.errors.Errors.new_((Go.str("error") : GoString));
	for (_0 => _tc in _testCases) {
		_t.run(stdgo.fmt.Fmt.sprintf((Go.str("%T(%v)") : GoString), Go.toInterface(_tc), Go.toInterface(_tc)), function(_t:stdgo.testing.Testing.T):Void {
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
				if (stdgo.errors.Errors.as(_err, Go.toInterface(_tc))) {
					_t.errorf((Go.str("As(err, %T(%v)) = true, want false") : GoString), Go.toInterface(_tc), Go.toInterface(_tc));
					{
						for (defer in __deferstack__) {
							defer();
						};
						return;
					};
				};
				_t.errorf((Go.str("As(err, %T(%v)) did not panic") : GoString), Go.toInterface(_tc), Go.toInterface(_tc));
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

function testUnwrap(_t:stdgo.testing.Testing.T):Void {
	var _err1:stdgo.Error = stdgo.errors.Errors.new_((Go.str("1") : GoString));
	var _erra:stdgo.errors_test.Errors_test.T_wrapped = (new stdgo.errors_test.Errors_test.T_wrapped((Go.str("wrap 2") : GoString),
		_err1) : stdgo.errors_test.Errors_test.T_wrapped);
	var _testCases = (new Slice<T__struct_2>(0, 0, ({_err: (null : stdgo.Error), _want: (null : stdgo.Error)} : T__struct_2), ({
		_err: {
			final __self__ = new stdgo.errors_test.Errors_test.T_wrapped_asInterface((new stdgo.errors_test.Errors_test.T_wrapped((Go.str("wrapped") : GoString),
				(null : stdgo.Error)) : stdgo.errors_test.Errors_test.T_wrapped));
			__self__.error = #if !macro function():GoString return (new stdgo.errors_test.Errors_test.T_wrapped((Go.str("wrapped") : GoString),
				(null : stdgo.Error)) : stdgo.errors_test.Errors_test.T_wrapped).error() #else null #end;
			__self__.unwrap = #if !macro function():stdgo.Error return (new stdgo.errors_test.Errors_test.T_wrapped((Go.str("wrapped") : GoString),
				(null : stdgo.Error)) : stdgo.errors_test.Errors_test.T_wrapped).unwrap() #else null #end;
			__self__;
		},
		_want: (null : stdgo.Error)
	} : T__struct_2), ({_err: _err1, _want: (null : stdgo.Error)} : T__struct_2), ({
		_err: {
			final __self__ = new stdgo.errors_test.Errors_test.T_wrapped_asInterface(_erra);
			__self__.error = #if !macro function():GoString return _erra.error() #else null #end;
			__self__.unwrap = #if !macro function():stdgo.Error return _erra.unwrap() #else null #end;
			__self__;
		},
		_want: _err1
		} : T__struct_2), ({
		_err: {
			final __self__ = new stdgo.errors_test.Errors_test.T_wrapped_asInterface((new stdgo.errors_test.Errors_test.T_wrapped((Go.str("wrap 3") : GoString),
				{
				final __self__ = new stdgo.errors_test.Errors_test.T_wrapped_asInterface(_erra);
				__self__.error = #if !macro function():GoString return _erra.error() #else null #end;
				__self__.unwrap = #if !macro function():stdgo.Error return _erra.unwrap() #else null #end;
				__self__;
			}) : stdgo.errors_test.Errors_test.T_wrapped));
			__self__.error = #if !macro function():GoString return (new stdgo.errors_test.Errors_test.T_wrapped((Go.str("wrap 3") : GoString), {
				final __self__ = new stdgo.errors_test.Errors_test.T_wrapped_asInterface(_erra);
				__self__.error = #if !macro function():GoString return _erra.error() #else null #end;
				__self__.unwrap = #if !macro function():stdgo.Error return _erra.unwrap() #else null #end;
				__self__;
			}) : stdgo.errors_test.Errors_test.T_wrapped).error() #else null #end;
			__self__.unwrap = #if !macro function():stdgo.Error return (new stdgo.errors_test.Errors_test.T_wrapped((Go.str("wrap 3") : GoString), {
				final __self__ = new stdgo.errors_test.Errors_test.T_wrapped_asInterface(_erra);
				__self__.error = #if !macro function():GoString return _erra.error() #else null #end;
				__self__.unwrap = #if !macro function():stdgo.Error return _erra.unwrap() #else null #end;
				__self__;
			}) : stdgo.errors_test.Errors_test.T_wrapped).unwrap() #else null #end;
			__self__;
		},
		_want: {
			final __self__ = new stdgo.errors_test.Errors_test.T_wrapped_asInterface(_erra);
			__self__.error = #if !macro function():GoString return _erra.error() #else null #end;
			__self__.unwrap = #if !macro function():stdgo.Error return _erra.unwrap() #else null #end;
			__self__;
		}
		} : T__struct_2)) : Slice<T__struct_2>);
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
			var _pathError:stdgo.io.fs.Fs.PathError = (null : stdgo.io.fs.Fs.PathError);
			if (stdgo.errors.Errors.as(_err, Go.toInterface(_pathError))) {
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

@:keep private class MyError_static_extension {
	@:keep
	static public function error(_e:MyError):GoString {
		return stdgo.fmt.Fmt.sprintf((Go.str("%v: %v") : GoString), Go.toInterface({
			final __self__ = new stdgo.time.Time.Time_asInterface(_e.when);
			__self__.add = #if !macro function(_d:stdgo.time.Time.Duration):stdgo.time.Time.Time return _e.when.add(_d) #else null #end;
			__self__.addDate = #if !macro function(_years:GoInt, _months:GoInt,
					_days:GoInt):stdgo.time.Time.Time return _e.when.addDate(_years, _months, _days) #else null #end;
			__self__.after = #if !macro function(__0:stdgo.time.Time.Time):Bool return _e.when.after(__0) #else null #end;
			__self__.appendFormat = #if !macro function(_b:Slice<GoUInt8>,
					_layout:GoString):Slice<GoUInt8> return _e.when.appendFormat(_b, _layout) #else null #end;
			__self__.before = #if !macro function(__0:stdgo.time.Time.Time):Bool return _e.when.before(__0) #else null #end;
			__self__.clock = #if !macro function():{var _0:GoInt; var _1:GoInt; var _2:GoInt;}
				return _e.when.clock() #else null #end;
			__self__.date = #if !macro function():{var _0:GoInt; var _1:stdgo.time.Time.Month; var _2:GoInt;}
				return _e.when.date() #else null #end;
			__self__.day = #if !macro function():GoInt return _e.when.day() #else null #end;
			__self__.equal = #if !macro function(__0:stdgo.time.Time.Time):Bool return _e.when.equal(__0) #else null #end;
			__self__.format = #if !macro function(_text:GoString):GoString return _e.when.format(_text) #else null #end;
			__self__.goString = #if !macro function():GoString return _e.when.goString() #else null #end;
			__self__.gobDecode = #if !macro function(__0:Slice<GoUInt8>):stdgo.Error return _e.when.gobDecode(__0) #else null #end;
			__self__.gobEncode = #if !macro function():{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
				return _e.when.gobEncode() #else null #end;
			__self__.hour = #if !macro function():GoInt return _e.when.hour() #else null #end;
			__self__.isoweek = #if !macro function():{var _0:GoInt; var _1:GoInt;}
				return _e.when.isoweek() #else null #end;
			__self__.in_ = #if !macro function(_loc:Ref<stdgo.time.Time.Location>):stdgo.time.Time.Time return _e.when.in_(_loc) #else null #end;
			__self__.isDST = #if !macro function():Bool return _e.when.isDST() #else null #end;
			__self__.isZero = #if !macro function():Bool return _e.when.isZero() #else null #end;
			__self__.local = #if !macro function():stdgo.time.Time.Time return _e.when.local() #else null #end;
			__self__.location = #if !macro function():Ref<stdgo.time.Time.Location> return _e.when.location() #else null #end;
			__self__.marshalBinary = #if !macro function():{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
				return _e.when.marshalBinary() #else null #end;
			__self__.marshalJSON = #if !macro function():{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
				return _e.when.marshalJSON() #else null #end;
			__self__.marshalText = #if !macro function():{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
				return _e.when.marshalText() #else null #end;
			__self__.minute = #if !macro function():GoInt return _e.when.minute() #else null #end;
			__self__.month = #if !macro function():stdgo.time.Time.Month return _e.when.month() #else null #end;
			__self__.nanosecond = #if !macro function():GoInt return _e.when.nanosecond() #else null #end;
			__self__.round = #if !macro function(_d:stdgo.time.Time.Duration):stdgo.time.Time.Time return _e.when.round(_d) #else null #end;
			__self__.second = #if !macro function():GoInt return _e.when.second() #else null #end;
			__self__.string = #if !macro function():GoString return _e.when.string() #else null #end;
			__self__.sub = #if !macro function(__0:stdgo.time.Time.Time):stdgo.time.Time.Duration return _e.when.sub(__0) #else null #end;
			__self__.truncate = #if !macro function(_d:stdgo.time.Time.Duration):stdgo.time.Time.Time return _e.when.truncate(_d) #else null #end;
			__self__.utc = #if !macro function():stdgo.time.Time.Time return _e.when.utc() #else null #end;
			__self__.unix = #if !macro function():GoInt64 return _e.when.unix() #else null #end;
			__self__.unixMicro = #if !macro function():GoInt64 return _e.when.unixMicro() #else null #end;
			__self__.unixMilli = #if !macro function():GoInt64 return _e.when.unixMilli() #else null #end;
			__self__.unixNano = #if !macro function():GoInt64 return _e.when.unixNano() #else null #end;
			__self__.unmarshalBinary = #if !macro function(__0:Slice<GoUInt8>):stdgo.Error return _e.when.unmarshalBinary(__0) #else null #end;
			__self__.unmarshalJSON = #if !macro function(__0:Slice<GoUInt8>):stdgo.Error return _e.when.unmarshalJSON(__0) #else null #end;
			__self__.unmarshalText = #if !macro function(__0:Slice<GoUInt8>):stdgo.Error return _e.when.unmarshalText(__0) #else null #end;
			__self__.weekday = #if !macro function():stdgo.time.Time.Weekday return _e.when.weekday() #else null #end;
			__self__.year = #if !macro function():GoInt return _e.when.year() #else null #end;
			__self__.yearDay = #if !macro function():GoInt return _e.when.yearDay() #else null #end;
			__self__.zone = #if !macro function():{var _0:GoString; var _1:GoInt;}
				return _e.when.zone() #else null #end;
			__self__.zoneBounds = #if !macro function():{var _0:stdgo.time.Time.Time; var _1:stdgo.time.Time.Time;}
				return _e.when.zoneBounds() #else null #end;
			__self__._abs = #if !macro function():GoUInt64 return _e.when._abs() #else null #end;
			__self__._addSec = #if !macro function(__0:GoInt64):Void _e.when._addSec(__0) #else null #end;
			__self__._date = #if !macro function(__0:Bool):{
				var _0:GoInt;
				var _1:stdgo.time.Time.Month;
				var _2:GoInt;
				var _3:GoInt;
			}
				return _e.when._date(__0) #else null #end;
			__self__._locabs = #if !macro function():{var _0:GoString; var _1:GoInt; var _2:GoUInt64;}
				return _e.when._locabs() #else null #end;
			__self__._mono = #if !macro function():GoInt64 return _e.when._mono() #else null #end;
			__self__._nsec = #if !macro function():GoInt32 return _e.when._nsec() #else null #end;
			__self__._sec = #if !macro function():GoInt64 return _e.when._sec() #else null #end;
			__self__._setLoc = #if !macro function(_loc:Ref<stdgo.time.Time.Location>):Void _e.when._setLoc(_loc) #else null #end;
			__self__._setMono = #if !macro function(__0:GoInt64):Void _e.when._setMono(__0) #else null #end;
			__self__._stripMono = #if !macro function():Void _e.when._stripMono() #else null #end;
			__self__._unixSec = #if !macro function():GoInt64 return _e.when._unixSec() #else null #end;
			__self__;
		}), Go.toInterface(_e.what));
	}
}

class MyError_asInterface {
	@:keep
	public var error:() -> GoString = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:MyError;
}

@:keep private class T_poser_static_extension {
	@:keep
	static public function as(_p:T_poser, _err:AnyInterface):Bool {
		if (Go.assertable((_err : T_poser))) {
			var _x:Ref<Ref<stdgo.errors_test.Errors_test.T_poser>> = _err == null ? null : _err.__underlying__() == null ? null : _err == null ? null : _err.__underlying__()
				.value;
			_x = _p;
		} else if (Go.assertable((_err : T_errorT))) {
			var _x:Ref<stdgo.errors_test.Errors_test.T_errorT> = _err == null ? null : _err.__underlying__() == null ? null : _err == null ? null : _err.__underlying__()
				.value;
			{
				var __tmp__ = (new stdgo.errors_test.Errors_test.T_errorT((Go.str("poser") : GoString)) : stdgo.errors_test.Errors_test.T_errorT);
				_x._s = __tmp__._s;
			};
		} else if (Go.assertable((_err : stdgo.io.fs.Fs.PathError))) {
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
	static public function is_(_p:T_poser, _err:Error):Bool {
		return _p._f(_err);
	}

	@:keep
	static public function error(_p:T_poser):GoString {
		return _p._msg;
	}
}

private class T_poser_asInterface {
	@:keep
	public var as:AnyInterface->Bool = null;
	@:keep
	public var is_:Error->Bool = null;
	@:keep
	public var error:() -> GoString = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_poser;
}

@:keep private class T_errorT_static_extension {
	@:keep
	static public function error(_e:T_errorT):GoString {
		return stdgo.fmt.Fmt.sprintf((Go.str("errorT(%s)") : GoString), Go.toInterface(_e._s));
	}
}

private class T_errorT_asInterface {
	@:keep
	public var error:() -> GoString = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_errorT;
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

private class T_wrapped_asInterface {
	@:keep
	public var unwrap:() -> Error = null;
	@:keep
	public var error:() -> GoString = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_wrapped;
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

private class T_errorUncomparable_asInterface {
	@:keep
	public var is_:Error->Bool = null;
	@:keep
	public var error:() -> GoString = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_errorUncomparable;
}
