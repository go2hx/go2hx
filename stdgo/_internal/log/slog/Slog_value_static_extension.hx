package stdgo._internal.log.slog;
@:keep @:allow(stdgo._internal.log.slog.Slog.Value_asInterface) class Value_static_extension {
    @:keep
    @:tdfield
    static public function resolve( _v:stdgo._internal.log.slog.Slog_value.Value):stdgo._internal.log.slog.Slog_value.Value {
        @:recv var _v:stdgo._internal.log.slog.Slog_value.Value = _v?.__copy__();
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _rv = ({} : stdgo._internal.log.slog.Slog_value.Value);
        try {
            var _orig = (_v?.__copy__() : stdgo._internal.log.slog.Slog_value.Value);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        {
                            var _r = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            if (_r != null) {
                                _rv = stdgo._internal.log.slog.Slog_anyvalue.anyValue(stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_errorf.errorf(("LogValue panicked\n%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.log.slog.Slog__stack._stack((3 : stdgo.GoInt), (5 : stdgo.GoInt))))))?.__copy__();
                            };
                        };
                    };
                    a();
                }) });
            };
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (100 : stdgo.GoInt) : Bool)) {
                    if (_v.kind() != ((9 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                        {
                            final __ret__:stdgo._internal.log.slog.Slog_value.Value = _rv = _v.__copy__();
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
_v = _v.logValuer().logValue().__copy__();
                    _i++;
                };
            };
            var _err = (stdgo._internal.fmt.Fmt_errorf.errorf(("LogValue called too many times on Value of type %T" : stdgo.GoString), _orig.any()) : stdgo.Error);
            {
                final __ret__:stdgo._internal.log.slog.Slog_value.Value = _rv = stdgo._internal.log.slog.Slog_anyvalue.anyValue(stdgo.Go.toInterface(_err))?.__copy__();
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return _rv;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return _rv;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _append( _v:stdgo._internal.log.slog.Slog_value.Value, _dst:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _v:stdgo._internal.log.slog.Slog_value.Value = _v?.__copy__();
        {
            final __value__ = _v.kind();
            if (__value__ == ((5 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                return (_dst.__append__(...(_v._str() : Array<stdgo.GoUInt8>)));
            } else if (__value__ == ((4 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                return stdgo._internal.strconv.Strconv_appendint.appendInt(_dst, (_v._num : stdgo.GoInt64), (10 : stdgo.GoInt));
            } else if (__value__ == ((7 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                return stdgo._internal.strconv.Strconv_appenduint.appendUint(_dst, _v._num, (10 : stdgo.GoInt));
            } else if (__value__ == ((3 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                return stdgo._internal.strconv.Strconv_appendfloat.appendFloat(_dst, _v._float(), (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt));
            } else if (__value__ == ((1 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                return stdgo._internal.strconv.Strconv_appendbool.appendBool(_dst, _v._bool());
            } else if (__value__ == ((2 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                return (_dst.__append__(...((_v._duration().string() : stdgo.GoString) : Array<stdgo.GoUInt8>)));
            } else if (__value__ == ((6 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                return (_dst.__append__(...((_v._time().string() : stdgo.GoString) : Array<stdgo.GoUInt8>)));
            } else if (__value__ == ((8 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                return stdgo._internal.fmt.Fmt_append.append(_dst, stdgo.Go.toInterface(_v._group()));
            } else if (__value__ == ((0 : stdgo._internal.log.slog.Slog_kind.Kind)) || __value__ == ((9 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                return stdgo._internal.fmt.Fmt_append.append(_dst, _v._any);
            } else {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("bad kind: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_v.kind()))));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _isEmptyGroup( _v:stdgo._internal.log.slog.Slog_value.Value):Bool {
        @:recv var _v:stdgo._internal.log.slog.Slog_value.Value = _v?.__copy__();
        if (_v.kind() != ((8 : stdgo._internal.log.slog.Slog_kind.Kind))) {
            return false;
        };
        return (_v._group().length) == ((0 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function equal( _v:stdgo._internal.log.slog.Slog_value.Value, _w:stdgo._internal.log.slog.Slog_value.Value):Bool {
        @:recv var _v:stdgo._internal.log.slog.Slog_value.Value = _v?.__copy__();
        var _k1 = (_v.kind() : stdgo._internal.log.slog.Slog_kind.Kind);
        var _k2 = (_w.kind() : stdgo._internal.log.slog.Slog_kind.Kind);
        if (_k1 != (_k2)) {
            return false;
        };
        {
            final __value__ = _k1;
            if (__value__ == ((4 : stdgo._internal.log.slog.Slog_kind.Kind)) || __value__ == ((7 : stdgo._internal.log.slog.Slog_kind.Kind)) || __value__ == ((1 : stdgo._internal.log.slog.Slog_kind.Kind)) || __value__ == ((2 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                return _v._num == (_w._num);
            } else if (__value__ == ((5 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                return _v._str() == (_w._str());
            } else if (__value__ == ((3 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                return _v._float() == (_w._float());
            } else if (__value__ == ((6 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                return _v._time().equal(_w._time()?.__copy__());
            } else if (__value__ == ((0 : stdgo._internal.log.slog.Slog_kind.Kind)) || __value__ == ((9 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                return _v._any == (_w._any);
            } else if (__value__ == ((8 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                return stdgo._internal.slices.Slices_equalfunc.equalFunc(_v._group(), _w._group(), stdgo._internal.log.slog.Slog_attr_static_extension.Attr_static_extension.equal);
            } else {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("bad kind: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_k1))));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _group( _v:stdgo._internal.log.slog.Slog_value.Value):stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr> {
        @:recv var _v:stdgo._internal.log.slog.Slog_value.Value = _v?.__copy__();
        return stdgo._internal.unsafe.Unsafe_slice.slice((({
            final e = (stdgo.Go.typeAssert((_v._any : stdgo._internal.log.slog.Slog_t_groupptr.T_groupptr)) : stdgo._internal.log.slog.Slog_t_groupptr.T_groupptr);
            ({ key : e.key, value : e.value } : stdgo._internal.log.slog.Slog_attr.Attr);
        })), _v._num);
    }
    @:keep
    @:tdfield
    static public function group( _v:stdgo._internal.log.slog.Slog_value.Value):stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr> {
        @:recv var _v:stdgo._internal.log.slog.Slog_value.Value = _v?.__copy__();
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_v._any : stdgo._internal.log.slog.Slog_t_groupptr.T_groupptr)) : stdgo._internal.log.slog.Slog_t_groupptr.T_groupptr), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.log.slog.Slog_t_groupptr.T_groupptr), _1 : false };
            }, _sp = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return stdgo._internal.unsafe.Unsafe_slice.slice((({
                    final e = _sp;
                    ({ key : e.key, value : e.value } : stdgo._internal.log.slog.Slog_attr.Attr);
                })), _v._num);
            };
        };
        throw stdgo.Go.toInterface(("Group: bad kind" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function logValuer( _v:stdgo._internal.log.slog.Slog_value.Value):stdgo._internal.log.slog.Slog_logvaluer.LogValuer {
        @:recv var _v:stdgo._internal.log.slog.Slog_value.Value = _v?.__copy__();
        return (stdgo.Go.typeAssert((_v._any : stdgo._internal.log.slog.Slog_logvaluer.LogValuer)) : stdgo._internal.log.slog.Slog_logvaluer.LogValuer);
    }
    @:keep
    @:tdfield
    static public function _time( _v:stdgo._internal.log.slog.Slog_value.Value):stdgo._internal.time.Time_time.Time {
        @:recv var _v:stdgo._internal.log.slog.Slog_value.Value = _v?.__copy__();
        var _loc = (stdgo.Go.typeAssert((_v._any : stdgo._internal.log.slog.Slog_t_timelocation.T_timeLocation)) : stdgo._internal.log.slog.Slog_t_timelocation.T_timeLocation);
        if ((_loc == null || (_loc : Dynamic).__nil__)) {
            return (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time);
        };
        return stdgo._internal.time.Time_unix.unix((0i64 : stdgo.GoInt64), (_v._num : stdgo.GoInt64)).in_((({
            final e = _loc;
            ({ _name : e._name, _zone : e._zone, _tx : e._tx, _extend : e._extend, _cacheStart : e._cacheStart, _cacheEnd : e._cacheEnd, _cacheZone : e._cacheZone } : stdgo._internal.time.Time_location.Location);
        })))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function time( _v:stdgo._internal.log.slog.Slog_value.Value):stdgo._internal.time.Time_time.Time {
        @:recv var _v:stdgo._internal.log.slog.Slog_value.Value = _v?.__copy__();
        {
            var __0 = (_v.kind() : stdgo._internal.log.slog.Slog_kind.Kind), __1 = (6 : stdgo._internal.log.slog.Slog_kind.Kind);
var _w = __1, _g = __0;
            if (_g != (_w)) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("Value kind is %s, not %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_g)), stdgo.Go.toInterface(stdgo.Go.asInterface(_w))));
            };
        };
        return _v._time()?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _float( _a:stdgo._internal.log.slog.Slog_value.Value):stdgo.GoFloat64 {
        @:recv var _a:stdgo._internal.log.slog.Slog_value.Value = _a?.__copy__();
        return stdgo._internal.math.Math_float64frombits.float64frombits(_a._num);
    }
    @:keep
    @:tdfield
    static public function float64( _v:stdgo._internal.log.slog.Slog_value.Value):stdgo.GoFloat64 {
        @:recv var _v:stdgo._internal.log.slog.Slog_value.Value = _v?.__copy__();
        {
            var __0 = (_v.kind() : stdgo._internal.log.slog.Slog_kind.Kind), __1 = (3 : stdgo._internal.log.slog.Slog_kind.Kind);
var _w = __1, _g = __0;
            if (_g != (_w)) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("Value kind is %s, not %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_g)), stdgo.Go.toInterface(stdgo.Go.asInterface(_w))));
            };
        };
        return _v._float();
    }
    @:keep
    @:tdfield
    static public function _duration( _a:stdgo._internal.log.slog.Slog_value.Value):stdgo._internal.time.Time_duration.Duration {
        @:recv var _a:stdgo._internal.log.slog.Slog_value.Value = _a?.__copy__();
        return ((_a._num : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    }
    @:keep
    @:tdfield
    static public function duration( _a:stdgo._internal.log.slog.Slog_value.Value):stdgo._internal.time.Time_duration.Duration {
        @:recv var _a:stdgo._internal.log.slog.Slog_value.Value = _a?.__copy__();
        {
            var __0 = (_a.kind() : stdgo._internal.log.slog.Slog_kind.Kind), __1 = (2 : stdgo._internal.log.slog.Slog_kind.Kind);
var _w = __1, _g = __0;
            if (_g != (_w)) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("Value kind is %s, not %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_g)), stdgo.Go.toInterface(stdgo.Go.asInterface(_w))));
            };
        };
        return _a._duration();
    }
    @:keep
    @:tdfield
    static public function _bool( _a:stdgo._internal.log.slog.Slog_value.Value):Bool {
        @:recv var _a:stdgo._internal.log.slog.Slog_value.Value = _a?.__copy__();
        return _a._num == ((1i64 : stdgo.GoUInt64));
    }
    @:keep
    @:tdfield
    static public function bool_( _v:stdgo._internal.log.slog.Slog_value.Value):Bool {
        @:recv var _v:stdgo._internal.log.slog.Slog_value.Value = _v?.__copy__();
        {
            var __0 = (_v.kind() : stdgo._internal.log.slog.Slog_kind.Kind), __1 = (1 : stdgo._internal.log.slog.Slog_kind.Kind);
var _w = __1, _g = __0;
            if (_g != (_w)) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("Value kind is %s, not %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_g)), stdgo.Go.toInterface(stdgo.Go.asInterface(_w))));
            };
        };
        return _v._bool();
    }
    @:keep
    @:tdfield
    static public function uint64( _v:stdgo._internal.log.slog.Slog_value.Value):stdgo.GoUInt64 {
        @:recv var _v:stdgo._internal.log.slog.Slog_value.Value = _v?.__copy__();
        {
            var __0 = (_v.kind() : stdgo._internal.log.slog.Slog_kind.Kind), __1 = (7 : stdgo._internal.log.slog.Slog_kind.Kind);
var _w = __1, _g = __0;
            if (_g != (_w)) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("Value kind is %s, not %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_g)), stdgo.Go.toInterface(stdgo.Go.asInterface(_w))));
            };
        };
        return _v._num;
    }
    @:keep
    @:tdfield
    static public function int64( _v:stdgo._internal.log.slog.Slog_value.Value):stdgo.GoInt64 {
        @:recv var _v:stdgo._internal.log.slog.Slog_value.Value = _v?.__copy__();
        {
            var __0 = (_v.kind() : stdgo._internal.log.slog.Slog_kind.Kind), __1 = (4 : stdgo._internal.log.slog.Slog_kind.Kind);
var _w = __1, _g = __0;
            if (_g != (_w)) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("Value kind is %s, not %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_g)), stdgo.Go.toInterface(stdgo.Go.asInterface(_w))));
            };
        };
        return (_v._num : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function _str( _v:stdgo._internal.log.slog.Slog_value.Value):stdgo.GoString {
        @:recv var _v:stdgo._internal.log.slog.Slog_value.Value = _v?.__copy__();
        return (stdgo._internal.unsafe.Unsafe_string.string((stdgo.Go.typeAssert((_v._any : stdgo._internal.log.slog.Slog_t_stringptr.T_stringptr)) : stdgo._internal.log.slog.Slog_t_stringptr.T_stringptr), _v._num) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _v:stdgo._internal.log.slog.Slog_value.Value):stdgo.GoString {
        @:recv var _v:stdgo._internal.log.slog.Slog_value.Value = _v?.__copy__();
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_v._any : stdgo._internal.log.slog.Slog_t_stringptr.T_stringptr)) : stdgo._internal.log.slog.Slog_t_stringptr.T_stringptr), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.log.slog.Slog_t_stringptr.T_stringptr), _1 : false };
            }, _sp = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return (stdgo._internal.unsafe.Unsafe_string.string(_sp, _v._num) : stdgo.GoString)?.__copy__();
            };
        };
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        return (_v._append(_buf) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function any( _v:stdgo._internal.log.slog.Slog_value.Value):stdgo.AnyInterface {
        @:recv var _v:stdgo._internal.log.slog.Slog_value.Value = _v?.__copy__();
        {
            final __value__ = _v.kind();
            if (__value__ == ((0 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_v._any : stdgo._internal.log.slog.Slog_t_kind.T_kind)) : stdgo._internal.log.slog.Slog_t_kind.T_kind), _1 : true };
                    } catch(_) {
                        { _0 : ((0 : stdgo.GoInt) : stdgo._internal.log.slog.Slog_t_kind.T_kind), _1 : false };
                    }, _k = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        return stdgo.Go.toInterface(stdgo.Go.asInterface((_k : stdgo._internal.log.slog.Slog_kind.Kind)));
                    };
                };
                return _v._any;
            } else if (__value__ == ((9 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                return _v._any;
            } else if (__value__ == ((8 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                return stdgo.Go.toInterface(_v._group());
            } else if (__value__ == ((4 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                return stdgo.Go.toInterface((_v._num : stdgo.GoInt64));
            } else if (__value__ == ((7 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                return stdgo.Go.toInterface(_v._num);
            } else if (__value__ == ((3 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                return stdgo.Go.toInterface(_v._float());
            } else if (__value__ == ((5 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                return stdgo.Go.toInterface(_v._str());
            } else if (__value__ == ((1 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                return stdgo.Go.toInterface(_v._bool());
            } else if (__value__ == ((2 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                return stdgo.Go.toInterface(stdgo.Go.asInterface(_v._duration()));
            } else if (__value__ == ((6 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                return stdgo.Go.toInterface(stdgo.Go.asInterface(_v._time()));
            } else {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("bad kind: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_v.kind()))));
            };
        };
    }
    @:keep
    @:tdfield
    static public function kind( _v:stdgo._internal.log.slog.Slog_value.Value):stdgo._internal.log.slog.Slog_kind.Kind {
        @:recv var _v:stdgo._internal.log.slog.Slog_value.Value = _v?.__copy__();
        {
            final __type__ = _v._any;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.log.slog.Slog_kind.Kind))) {
                var _x:stdgo._internal.log.slog.Slog_kind.Kind = __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.log.slog.Slog_kind.Kind) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt) : stdgo._internal.log.slog.Slog_kind.Kind) : __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.log.slog.Slog_kind.Kind) : __type__.__underlying__().value;
                return _x;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.log.slog.Slog_t_stringptr.T_stringptr))) {
                var _x:stdgo._internal.log.slog.Slog_t_stringptr.T_stringptr = __type__ == null ? (null : stdgo._internal.log.slog.Slog_t_stringptr.T_stringptr) : __type__.__underlying__() == null ? (null : stdgo._internal.log.slog.Slog_t_stringptr.T_stringptr) : __type__ == null ? (null : stdgo._internal.log.slog.Slog_t_stringptr.T_stringptr) : __type__.__underlying__().value;
                return (5 : stdgo._internal.log.slog.Slog_kind.Kind);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.log.slog.Slog_t_timelocation.T_timeLocation))) {
                var _x:stdgo._internal.log.slog.Slog_t_timelocation.T_timeLocation = __type__ == null ? (null : stdgo._internal.log.slog.Slog_t_timelocation.T_timeLocation) : __type__.__underlying__() == null ? (null : stdgo._internal.log.slog.Slog_t_timelocation.T_timeLocation) : __type__ == null ? (null : stdgo._internal.log.slog.Slog_t_timelocation.T_timeLocation) : __type__.__underlying__().value;
                return (6 : stdgo._internal.log.slog.Slog_kind.Kind);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.log.slog.Slog_t_groupptr.T_groupptr))) {
                var _x:stdgo._internal.log.slog.Slog_t_groupptr.T_groupptr = __type__ == null ? (null : stdgo._internal.log.slog.Slog_t_groupptr.T_groupptr) : __type__.__underlying__() == null ? (null : stdgo._internal.log.slog.Slog_t_groupptr.T_groupptr) : __type__ == null ? (null : stdgo._internal.log.slog.Slog_t_groupptr.T_groupptr) : __type__.__underlying__().value;
                return (8 : stdgo._internal.log.slog.Slog_kind.Kind);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.log.slog.Slog_logvaluer.LogValuer))) {
                var _x:stdgo._internal.log.slog.Slog_logvaluer.LogValuer = __type__ == null ? (null : stdgo._internal.log.slog.Slog_logvaluer.LogValuer) : __type__.__underlying__() == null ? (null : stdgo._internal.log.slog.Slog_logvaluer.LogValuer) : __type__ == null ? (null : stdgo._internal.log.slog.Slog_logvaluer.LogValuer) : __type__.__underlying__().value;
                return (9 : stdgo._internal.log.slog.Slog_kind.Kind);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.log.slog.Slog_t_kind.T_kind))) {
                var _x:stdgo._internal.log.slog.Slog_t_kind.T_kind = __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.log.slog.Slog_t_kind.T_kind) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt) : stdgo._internal.log.slog.Slog_t_kind.T_kind) : __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.log.slog.Slog_t_kind.T_kind) : __type__.__underlying__().value;
                return (0 : stdgo._internal.log.slog.Slog_kind.Kind);
            } else {
                var _x:stdgo.AnyInterface = __type__?.__underlying__();
                return (0 : stdgo._internal.log.slog.Slog_kind.Kind);
            };
        };
    }
}
