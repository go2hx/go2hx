package stdgo.errors;
/**
    // Package errors implements functions to manipulate errors.
    //
    // The [New] function creates errors whose only content is a text message.
    //
    // An error e wraps another error if e's type has one of the methods
    //
    //	Unwrap() error
    //	Unwrap() []error
    //
    // If e.Unwrap() returns a non-nil error w or a slice containing w,
    // then we say that e wraps w. A nil error returned from e.Unwrap()
    // indicates that e does not wrap any error. It is invalid for an
    // Unwrap method to return an []error containing a nil error value.
    //
    // An easy way to create wrapped errors is to call [fmt.Errorf] and apply
    // the %w verb to the error argument:
    //
    //	wrapsErr := fmt.Errorf("... %w ...", ..., err, ...)
    //
    // Successive unwrapping of an error creates a tree. The [Is] and [As]
    // functions inspect an error's tree by examining first the error
    // itself followed by the tree of each of its children in turn
    // (pre-order, depth-first traversal).
    //
    // Is examines the tree of its first argument looking for an error that
    // matches the second. It reports whether it finds a match. It should be
    // used in preference to simple equality checks:
    //
    //	if errors.Is(err, fs.ErrExist)
    //
    // is preferable to
    //
    //	if err == fs.ErrExist
    //
    // because the former will succeed if err wraps [io/fs.ErrExist].
    //
    // As examines the tree of its first argument looking for an error that can be
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
    // because the former will succeed if err wraps an [*io/fs.PathError].
**/
private var __go2hxdoc__package : Bool;
/**
    // ErrUnsupported indicates that a requested operation cannot be performed,
    // because it is unsupported. For example, a call to [os.Link] when using a
    // file system that does not support hard links.
    //
    // Functions and methods should not return this error but should instead
    // return an error including appropriate context that satisfies
    //
    //	errors.Is(err, errors.ErrUnsupported)
    //
    // either by directly wrapping ErrUnsupported or by implementing an Is method.
    //
    // Functions and methods should document the cases in which an error
    // wrapping this will be returned.
    
    
**/
var errUnsupported : stdgo.Error = new_(("unsupported operation" : stdgo.GoString)?.__copy__());
/**
    
    
    
**/
var _errorType : stdgo.internal.reflectlite.Reflectlite.Type = stdgo.internal.reflectlite.Reflectlite.typeOf(stdgo.Go.toInterface((null : stdgo.StdGoTypes.Ref<stdgo.Error>))).elem();
/**
    
    
    
**/
typedef T__interface_0 = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function unwrap():stdgo.Error;
};
/**
    
    
    
**/
typedef T__interface_1 = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function is_(_0:stdgo.Error):Bool;
};
/**
    
    
    
**/
typedef T__interface_2 = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function unwrap():stdgo.Slice<stdgo.Error>;
};
/**
    
    
    
**/
typedef T__interface_3 = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function as(_0:stdgo.StdGoTypes.AnyInterface):Bool;
};
/**
    // errorString is a trivial implementation of error.
    
    
**/
@:structInit @:private @:using(stdgo.errors.Errors.T_errorString_static_extension) class T_errorString {
    public var _s : stdgo.GoString = "";
    public function new(?_s:stdgo.GoString) {
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errorString(_s);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.errors.Errors.T_joinError_static_extension) class T_joinError {
    public var _errs : stdgo.Slice<stdgo.Error> = (null : stdgo.Slice<stdgo.Error>);
    public function new(?_errs:stdgo.Slice<stdgo.Error>) {
        if (_errs != null) this._errs = _errs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_joinError(_errs);
    }
}
/**
    // New returns an error that formats as the given text.
    // Each call to New returns a distinct error value even if the text is identical.
**/
function new_(_text:stdgo.GoString):stdgo.Error {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new T_errorString(_text?.__copy__()) : T_errorString)) : stdgo.StdGoTypes.Ref<stdgo.errors.Errors.T_errorString>));
    }
/**
    // Join returns an error that wraps the given errors.
    // Any nil error values are discarded.
    // Join returns nil if every value in errs is nil.
    // The error formats as the concatenation of the strings obtained
    // by calling the Error method of each element of errs, with a newline
    // between each string.
    //
    // A non-nil error returned by Join implements the Unwrap() []error method.
**/
function join(_errs:haxe.Rest<stdgo.Error>):stdgo.Error {
        var _errs = new stdgo.Slice<stdgo.Error>(_errs.length, 0, ..._errs);
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        for (__0 => _err in _errs) {
            if (_err != null) {
                _n++;
            };
        };
        if (_n == ((0 : stdgo.StdGoTypes.GoInt))) {
            return (null : stdgo.Error);
        };
        var _e = (stdgo.Go.setRef(({ _errs : new stdgo.Slice<stdgo.Error>((0 : stdgo.StdGoTypes.GoInt).toBasic(), _n) } : T_joinError)) : stdgo.StdGoTypes.Ref<stdgo.errors.Errors.T_joinError>);
        for (__1 => _err in _errs) {
            if (_err != null) {
                _e._errs = (_e._errs.__append__(_err));
            };
        };
        return stdgo.Go.asInterface(_e);
    }
/**
    // Unwrap returns the result of calling the Unwrap method on err, if err's
    // type contains an Unwrap method returning error.
    // Otherwise, Unwrap returns nil.
    //
    // Unwrap only calls a method of the form "Unwrap() error".
    // In particular Unwrap does not unwrap errors returned by [Join].
**/
function unwrap(_err:stdgo.Error):stdgo.Error {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : T__interface_0)) : T__interface_0), ok : true };
        } catch(_) {
            { value : (null : stdgo.errors.Errors.T__interface_0), ok : false };
        }, _u = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return (null : stdgo.Error);
        };
        return _u.unwrap();
    }
/**
    // Is reports whether any error in err's tree matches target.
    //
    // The tree consists of err itself, followed by the errors obtained by repeatedly
    // calling Unwrap. When err wraps multiple errors, Is examines err followed by a
    // depth-first traversal of its children.
    //
    // An error is considered to match a target if it is equal to that target or if
    // it implements a method Is(error) bool such that Is(target) returns true.
    //
    // An error type might provide an Is method so it can be treated as equivalent
    // to an existing error. For example, if MyError defines
    //
    //	func (m MyError) Is(target error) bool { return target == fs.ErrExist }
    //
    // then Is(MyError{}, fs.ErrExist) returns true. See [syscall.Errno.Is] for
    // an example in the standard library. An Is method should only shallowly
    // compare err and the target and not call Unwrap on either.
**/
function is_(_err:stdgo.Error, _target:stdgo.Error):Bool {
        if (_target == null) {
            return stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(_target));
        };
        var _isComparable:Bool = stdgo.internal.reflectlite.Reflectlite.typeOf(stdgo.Go.toInterface(_target)).comparable();
        while (true) {
            if (_isComparable && (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(_target))) {
                return true;
            };
            {
                var __tmp__ = try {
                    { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : T__interface_1)) : T__interface_1), ok : true };
                } catch(_) {
                    { value : (null : stdgo.errors.Errors.T__interface_1), ok : false };
                }, _x = __tmp__.value, _ok = __tmp__.ok;
                if (_ok && _x.is_(_target)) {
                    return true;
                };
            };
            {
                final __type__ = _err;
                if (stdgo.Go.typeEquals((__type__ : T__interface_0))) {
                    var _x:stdgo.errors.Errors.T__interface_0 = __type__ == null ? (null : stdgo.errors.Errors.T__interface_0) : cast __type__;
                    _err = _x.unwrap();
                    if (_err == null) {
                        return false;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : T__interface_2))) {
                    var _x:stdgo.errors.Errors.T__interface_2 = __type__ == null ? (null : stdgo.errors.Errors.T__interface_2) : cast __type__;
                    for (__0 => _err in _x.unwrap()) {
                        if (is_(_err, _target)) {
                            return true;
                        };
                    };
                    return false;
                } else {
                    var _x:stdgo.Error = __type__ == null ? (null : stdgo.Error) : cast __type__;
                    return false;
                };
            };
        };
    }
/**
    // As finds the first error in err's tree that matches target, and if one is found, sets
    // target to that error value and returns true. Otherwise, it returns false.
    //
    // The tree consists of err itself, followed by the errors obtained by repeatedly
    // calling Unwrap. When err wraps multiple errors, As examines err followed by a
    // depth-first traversal of its children.
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
function as(_err:stdgo.Error, _target:stdgo.StdGoTypes.AnyInterface):Bool {
        if (_err == null) {
            return false;
        };
        if (_target == null) {
            throw stdgo.Go.toInterface(("errors: target cannot be nil" : stdgo.GoString));
        };
        var _val:stdgo.internal.reflectlite.Reflectlite.Value = stdgo.internal.reflectlite.Reflectlite.valueOf(_target)?.__copy__();
        var _typ:stdgo.internal.reflectlite.Reflectlite.Type = _val.type();
        if ((_typ.kind() != (22u32 : stdgo.internal.abi.Abi.Kind)) || _val.isNil()) {
            throw stdgo.Go.toInterface(("errors: target must be a non-nil pointer" : stdgo.GoString));
        };
        var _targetType:stdgo.internal.reflectlite.Reflectlite.Type = _typ.elem();
        if ((_targetType.kind() != (20u32 : stdgo.internal.abi.Abi.Kind)) && !_targetType.implements_(_errorType)) {
            throw stdgo.Go.toInterface(("errors: *target must be interface or implement error" : stdgo.GoString));
        };
        while (true) {
            if (stdgo.internal.reflectlite.Reflectlite.typeOf(stdgo.Go.toInterface(_err)).assignableTo(_targetType)) {
                _val.elem().set(stdgo.internal.reflectlite.Reflectlite.valueOf(stdgo.Go.toInterface(_err))?.__copy__());
                return true;
            };
            {
                var __tmp__ = try {
                    { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : T__interface_3)) : T__interface_3), ok : true };
                } catch(_) {
                    { value : (null : stdgo.errors.Errors.T__interface_3), ok : false };
                }, _x = __tmp__.value, _ok = __tmp__.ok;
                if (_ok && _x.as(_target)) {
                    return true;
                };
            };
            {
                final __type__ = _err;
                if (stdgo.Go.typeEquals((__type__ : T__interface_0))) {
                    var _x:stdgo.errors.Errors.T__interface_0 = __type__ == null ? (null : stdgo.errors.Errors.T__interface_0) : cast __type__;
                    _err = _x.unwrap();
                    if (_err == null) {
                        return false;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : T__interface_2))) {
                    var _x:stdgo.errors.Errors.T__interface_2 = __type__ == null ? (null : stdgo.errors.Errors.T__interface_2) : cast __type__;
                    for (__0 => _err in _x.unwrap()) {
                        if (as(_err, _target)) {
                            return true;
                        };
                    };
                    return false;
                } else {
                    var _x:stdgo.Error = __type__ == null ? (null : stdgo.Error) : cast __type__;
                    return false;
                };
            };
        };
    }
class T_errorString_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_errorString>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.errors.Errors.T_errorString_asInterface) class T_errorString_static_extension {
    @:keep
    static public function error( _e:stdgo.StdGoTypes.Ref<T_errorString>):stdgo.GoString {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_errorString> = _e;
        return _e._s?.__copy__();
    }
}
class T_joinError_asInterface {
    @:keep
    public dynamic function unwrap():stdgo.Slice<stdgo.Error> return __self__.value.unwrap();
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_joinError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.errors.Errors.T_joinError_asInterface) class T_joinError_static_extension {
    @:keep
    static public function unwrap( _e:stdgo.StdGoTypes.Ref<T_joinError>):stdgo.Slice<stdgo.Error> {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_joinError> = _e;
        return _e._errs;
    }
    @:keep
    static public function error( _e:stdgo.StdGoTypes.Ref<T_joinError>):stdgo.GoString {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_joinError> = _e;
        var _b:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        for (_i => _err in _e._errs) {
            if (_i > (0 : stdgo.StdGoTypes.GoInt)) {
                _b = (_b.__append__((10 : stdgo.StdGoTypes.GoUInt8)));
            };
            _b = (_b.__append__(..._err.error().__toArray__()));
        };
        return (_b : stdgo.GoString)?.__copy__();
    }
}
