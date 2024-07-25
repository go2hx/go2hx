package stdgo._internal.errors;
private var __go2hxdoc__package : Bool;
var errUnsupported : stdgo.Error = new_(("unsupported operation" : stdgo.GoString));
var _errorType : stdgo._internal.internal.reflectlite.Reflectlite.Type_ = stdgo._internal.internal.reflectlite.Reflectlite.typeOf(stdgo.Go.toInterface((null : stdgo.Ref<stdgo.Error>))).elem();
@:keep class T__interface_0_static_extension {
    static public function unwrap(t:T__interface_0):stdgo.Error return t.unwrap();
}
typedef T__interface_0 = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function unwrap():stdgo.Error;
};
@:keep class T__interface_1_static_extension {
    static public function is_(t:T__interface_1, _0:stdgo.Error):Bool return t.is_(_0);
}
typedef T__interface_1 = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function is_(_0:stdgo.Error):Bool;
};
@:keep class T__interface_2_static_extension {
    static public function unwrap(t:T__interface_2):stdgo.Slice<stdgo.Error> return t.unwrap();
}
typedef T__interface_2 = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function unwrap():stdgo.Slice<stdgo.Error>;
};
@:keep class T__interface_3_static_extension {
    static public function as(t:T__interface_3, _0:stdgo.AnyInterface):Bool return t.as(_0);
}
typedef T__interface_3 = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function as(_0:stdgo.AnyInterface):Bool;
};
@:structInit @:private @:using(stdgo._internal.errors.Errors.T_errorString_static_extension) class T_errorString {
    public var _s : stdgo.GoString = "";
    public function new(?_s:stdgo.GoString) {
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errorString(_s);
    }
}
@:structInit @:private @:using(stdgo._internal.errors.Errors.T_joinError_static_extension) class T_joinError {
    public var _errs : stdgo.Slice<stdgo.Error> = (null : stdgo.Slice<stdgo.Error>);
    public function new(?_errs:stdgo.Slice<stdgo.Error>) {
        if (_errs != null) this._errs = _errs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_joinError(_errs);
    }
}
function new_(_text:stdgo.GoString):stdgo.Error {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.errors.Errors.T_errorString(_text?.__copy__()) : stdgo._internal.errors.Errors.T_errorString)) : stdgo.Ref<stdgo._internal.errors.Errors.T_errorString>));
    }
function join(_errs:haxe.Rest<stdgo.Error>):stdgo.Error {
        var _errs = new stdgo.Slice<stdgo.Error>(_errs.length, 0, ..._errs);
        var _n = (0 : stdgo.GoInt);
        for (__0 => _err in _errs) {
            if (_err != null) {
                _n++;
            };
        };
        if (_n == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Error);
        };
        var _e = (stdgo.Go.setRef(({ _errs : (new stdgo.Slice<stdgo.Error>((0 : stdgo.GoInt).toBasic(), _n) : stdgo.Slice<stdgo.Error>) } : stdgo._internal.errors.Errors.T_joinError)) : stdgo.Ref<stdgo._internal.errors.Errors.T_joinError>);
        for (__1 => _err in _errs) {
            if (_err != null) {
                _e._errs = (_e._errs.__append__(_err));
            };
        };
        return stdgo.Go.asInterface(_e);
    }
function unwrap(_err:stdgo.Error):stdgo.Error {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : T__interface_0)) : T__interface_0), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.errors.Errors.T__interface_0), _1 : false };
        }, _u = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return (null : stdgo.Error);
        };
        return _u.unwrap();
    }
function is_(_err:stdgo.Error, _target:stdgo.Error):Bool {
        if (_target == null) {
            return stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(_target));
        };
        var _isComparable = (stdgo._internal.internal.reflectlite.Reflectlite.typeOf(stdgo.Go.toInterface(_target)).comparable_() : Bool);
        while (true) {
            if ((_isComparable && (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(_target)) : Bool)) {
                return true;
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : T__interface_1)) : T__interface_1), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.errors.Errors.T__interface_1), _1 : false };
                }, _x = __tmp__._0, _ok = __tmp__._1;
                if ((_ok && _x.is_(_target) : Bool)) {
                    return true;
                };
            };
            {
                final __type__ = _err;
                if (stdgo.Go.typeEquals((__type__ : T__interface_0))) {
                    var _x:stdgo._internal.errors.Errors.T__interface_0 = __type__ == null ? (null : stdgo._internal.errors.Errors.T__interface_0) : cast __type__;
                    _err = _x.unwrap();
                    if (_err == null) {
                        return false;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : T__interface_2))) {
                    var _x:stdgo._internal.errors.Errors.T__interface_2 = __type__ == null ? (null : stdgo._internal.errors.Errors.T__interface_2) : cast __type__;
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
function as(_err:stdgo.Error, _target:stdgo.AnyInterface):Bool {
        if (_err == null) {
            return false;
        };
        if (_target == null) {
            throw stdgo.Go.toInterface(("errors: target cannot be nil" : stdgo.GoString));
        };
        var _val = (stdgo._internal.internal.reflectlite.Reflectlite.valueOf(_target)?.__copy__() : stdgo._internal.internal.reflectlite.Reflectlite.Value);
        var _typ = (_val.type() : stdgo._internal.internal.reflectlite.Reflectlite.Type_);
        if (((_typ.kind() != (22u32 : stdgo._internal.internal.abi.Abi.Kind)) || _val.isNil() : Bool)) {
            throw stdgo.Go.toInterface(("errors: target must be a non-nil pointer" : stdgo.GoString));
        };
        var _targetType = (_typ.elem() : stdgo._internal.internal.reflectlite.Reflectlite.Type_);
        if (((_targetType.kind() != (20u32 : stdgo._internal.internal.abi.Abi.Kind)) && !_targetType.implements_(_errorType) : Bool)) {
            throw stdgo.Go.toInterface(("errors: *target must be interface or implement error" : stdgo.GoString));
        };
        while (true) {
            if (stdgo._internal.internal.reflectlite.Reflectlite.typeOf(stdgo.Go.toInterface(_err)).assignableTo(_targetType)) {
                _val.elem().set(stdgo._internal.internal.reflectlite.Reflectlite.valueOf(stdgo.Go.toInterface(_err))?.__copy__());
                return true;
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : T__interface_3)) : T__interface_3), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.errors.Errors.T__interface_3), _1 : false };
                }, _x = __tmp__._0, _ok = __tmp__._1;
                if ((_ok && _x.as(_target) : Bool)) {
                    return true;
                };
            };
            {
                final __type__ = _err;
                if (stdgo.Go.typeEquals((__type__ : T__interface_0))) {
                    var _x:stdgo._internal.errors.Errors.T__interface_0 = __type__ == null ? (null : stdgo._internal.errors.Errors.T__interface_0) : cast __type__;
                    _err = _x.unwrap();
                    if (_err == null) {
                        return false;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : T__interface_2))) {
                    var _x:stdgo._internal.errors.Errors.T__interface_2 = __type__ == null ? (null : stdgo._internal.errors.Errors.T__interface_2) : cast __type__;
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
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_errorString>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.errors.Errors.T_errorString_asInterface) class T_errorString_static_extension {
    @:keep
    static public function error( _e:stdgo.Ref<T_errorString>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<T_errorString> = _e;
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
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_joinError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.errors.Errors.T_joinError_asInterface) class T_joinError_static_extension {
    @:keep
    static public function unwrap( _e:stdgo.Ref<T_joinError>):stdgo.Slice<stdgo.Error> {
        @:recv var _e:stdgo.Ref<T_joinError> = _e;
        return _e._errs;
    }
    @:keep
    static public function error( _e:stdgo.Ref<T_joinError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<T_joinError> = _e;
        var _b:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _err in _e._errs) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                _b = (_b.__append__((10 : stdgo.GoUInt8)));
            };
            _b = (_b.__append__(...(_err.error() : Array<stdgo.GoUInt8>)));
        };
        return (_b : stdgo.GoString)?.__copy__();
    }
}
