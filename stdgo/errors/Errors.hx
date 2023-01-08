package stdgo.errors;

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
	// Package errors implements functions to manipulate errors.
	//
	// The New function creates errors whose only content is a text message.
	//
	// The Unwrap, Is and As functions work on errors that may wrap other errors.
	// An error wraps another error if its type has the method
	//
	//	Unwrap() error
	//
	// If e.Unwrap() returns a non-nil error w, then we say that e wraps w.
	//
	// Unwrap unpacks wrapped errors. If its argument's type has an
	// Unwrap method, it calls the method once. Otherwise, it returns nil.
	//
	// A simple way to create wrapped errors is to call fmt.Errorf and apply the %w verb
	// to the error argument:
	//
	//	errors.Unwrap(fmt.Errorf("... %w ...", ..., err, ...))
	//
	// returns err.
	//
	// Is unwraps its first argument sequentially looking for an error that matches the
	// second. It reports whether it finds a match. It should be used in preference to
	// simple equality checks:
	//
	//	if errors.Is(err, fs.ErrExist)
	//
	// is preferable to
	//
	//	if err == fs.ErrExist
	//
	// because the former will succeed if err wraps fs.ErrExist.
	//
	// As unwraps its first argument sequentially looking for an error that can be
	// assigned to its second argument, which must be a pointer. If it succeeds, it
	// performs the assignment and returns true. Otherwise, it returns false. The form
	//
	//	var perr *fs.PathError
	//	if errors.As(err, &perr) {
	//		fmt.Println(perr.Path)
	//	}
	//
	// is preferable to
	//
	//	if perr, ok := err.(*fs.PathError); ok {
	//		fmt.Println(perr.Path)
	//	}
	//
	// because the former will succeed if err wraps an *fs.PathError.
**/
private var __go2hxdoc__package:Bool;

private var _errorType:stdgo.internal.reflectlite.Reflectlite.Type = #if !macro stdgo.internal.reflectlite.Reflectlite.typeOf(Go.toInterface((null : Ref<Error>)))
	.elem() #else null #end;

private typedef T__interface_0 = StructType & {
	public function unwrap():Error;
};

private typedef T__interface_1 = StructType & {
	public function is_(_0:Error):Bool;
};

private typedef T__interface_2 = StructType & {
	public function as(_0:AnyInterface):Bool;
};

/**
	// errorString is a trivial implementation of error.
**/
@:structInit @:using(stdgo.errors.Errors.T_errorString_static_extension) private class T_errorString {
	public var _s:GoString = "";

	public function new(?_s:GoString) {
		if (_s != null)
			this._s = _s;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_errorString(_s);
	}
}

/**
	// New returns an error that formats as the given text.
	// Each call to New returns a distinct error value even if the text is identical.
**/
function new_(_text:GoString):Error {
	return Go.asInterface(((new T_errorString(_text) : T_errorString) : Ref<T_errorString>));
}

/**
	// Unwrap returns the result of calling the Unwrap method on err, if err's
	// type contains an Unwrap method returning error.
	// Otherwise, Unwrap returns nil.
**/
function unwrap(_err:Error):Error {
	var __tmp__ = try {
		{value: (Go.typeAssert((Go.toInterface(_err) : T__interface_0)) : T__interface_0), ok: true};
	} catch (_) {
		{value: (null : T__interface_0), ok: false};
	}, _u = __tmp__.value, _ok = __tmp__.ok;
	if (!_ok) {
		return (null : Error);
	};
	return _u.unwrap();
}

/**
	// Is reports whether any error in err's chain matches target.
	//
	// The chain consists of err itself followed by the sequence of errors obtained by
	// repeatedly calling Unwrap.
	//
	// An error is considered to match a target if it is equal to that target or if
	// it implements a method Is(error) bool such that Is(target) returns true.
	//
	// An error type might provide an Is method so it can be treated as equivalent
	// to an existing error. For example, if MyError defines
	//
	//	func (m MyError) Is(target error) bool { return target == fs.ErrExist }
	//
	// then Is(MyError{}, fs.ErrExist) returns true. See syscall.Errno.Is for
	// an example in the standard library. An Is method should only shallowly
	// compare err and the target and not call Unwrap on either.
**/
function is_(_err:Error, _target:Error):Bool {
	if (_target == null) {
		return Go.toInterface(_err) == (Go.toInterface(_target));
	};
	var _isComparable:Bool = stdgo.internal.reflectlite.Reflectlite.typeOf(Go.toInterface(_target)).comparable();
	while (true) {
		if (_isComparable && (Go.toInterface(_err) == Go.toInterface(_target))) {
			return true;
		};
		{
			var __tmp__ = try {
				{value: (Go.typeAssert((Go.toInterface(_err) : T__interface_1)) : T__interface_1), ok: true};
			} catch (_) {
				{value: (null : T__interface_1), ok: false};
			}, _x = __tmp__.value, _ok = __tmp__.ok;
			if (_ok && _x.is_(_target)) {
				return true;
			};
		};
		{
			_err = unwrap(_err);
			if (_err == null) {
				return false;
			};
		};
	};
}

/**
	// As finds the first error in err's chain that matches target, and if one is found, sets
	// target to that error value and returns true. Otherwise, it returns false.
	//
	// The chain consists of err itself followed by the sequence of errors obtained by
	// repeatedly calling Unwrap.
	//
	// An error matches target if the error's concrete value is assignable to the value
	// pointed to by target, or if the error has a method As(interface{}) bool such that
	// As(target) returns true. In the latter case, the As method is responsible for
	// setting target.
	//
	// An error type might provide an As method so it can be treated as if it were a
	// different error type.
	//
	// As panics if target is not a non-nil pointer to either a type that implements
	// error, or to any interface type.
**/
function as(_err:Error, _target:AnyInterface):Bool {
	if (_target == null) {
		throw Go.toInterface(Go.str("errors: target cannot be nil"));
	};
	var _val:stdgo.internal.reflectlite.Reflectlite.Value = (stdgo.internal.reflectlite.Reflectlite.valueOf(_target) == null ? null : stdgo.internal.reflectlite.Reflectlite.valueOf(_target)
		.__copy__());
	var _typ:stdgo.internal.reflectlite.Reflectlite.Type = _val.type();
	if ((_typ.kind() != (("22" : GoUInt) : stdgo.internal.reflectlite.Reflectlite.Kind)) || _val.isNil()) {
		throw Go.toInterface(Go.str("errors: target must be a non-nil pointer"));
	};
	var _targetType:stdgo.internal.reflectlite.Reflectlite.Type = _typ.elem();
	if ((_targetType.kind() != (("20" : GoUInt) : stdgo.internal.reflectlite.Reflectlite.Kind)) && !_targetType.implements_(_errorType)) {
		throw Go.toInterface(Go.str("errors: *target must be interface or implement error"));
	};
	while (_err != null) {
		if (stdgo.internal.reflectlite.Reflectlite.typeOf(Go.toInterface(_err)).assignableTo(_targetType)) {
			_val.elem()
				.set((stdgo.internal.reflectlite.Reflectlite.valueOf(Go.toInterface(_err)) == null ? null : stdgo.internal.reflectlite.Reflectlite.valueOf(Go.toInterface(_err))
					.__copy__()));
			return true;
		};
		{
			var __tmp__ = try {
				{value: (Go.typeAssert((Go.toInterface(_err) : T__interface_2)) : T__interface_2), ok: true};
			} catch (_) {
				{value: (null : T__interface_2), ok: false};
			}, _x = __tmp__.value, _ok = __tmp__.ok;
			if (_ok && _x.as(_target)) {
				return true;
			};
		};
		_err = unwrap(_err);
	};
	return false;
}

class T_errorString_asInterface {
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

	var __self__:Pointer<T_errorString>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.errors.Errors.T_errorString_asInterface) class T_errorString_static_extension {
	@:keep
	static public function error(_e:Ref<T_errorString>):GoString {
		return _e._s;
	}
}
