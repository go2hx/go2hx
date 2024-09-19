package stdgo._internal.flag;
@:keep @:allow(stdgo._internal.flag.Flag.FlagSet_asInterface) class FlagSet_static_extension {
    @:keep
    static public function init( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _name:stdgo.GoString, _errorHandling:stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        _f._name = _name?.__copy__();
        _f._errorHandling = _errorHandling;
    }
    @:keep
    static public function parsed( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        return _f._parsed;
    }
    @:keep
    static public function parse( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _arguments:stdgo.Slice<stdgo.GoString>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        _f._parsed = true;
        _f._args = _arguments;
        while (true) {
            var __tmp__ = _f._parseOne(), _seen:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_seen) {
                continue;
            };
            if (_err == null) {
                break;
            };
            {
                final __value__ = _f._errorHandling;
                if (__value__ == ((0 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling))) {
                    return _err;
                } else if (__value__ == ((1 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling))) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.flag.Flag_errHelp.errHelp))) {
                        Sys.exit((0 : stdgo.GoInt));
                    };
                    Sys.exit((2 : stdgo.GoInt));
                } else if (__value__ == ((2 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling))) {
                    throw stdgo.Go.toInterface(_err);
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _parseOne( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        if ((_f._args.length) == ((0 : stdgo.GoInt))) {
            return { _0 : false, _1 : (null : stdgo.Error) };
        };
        var _s = (_f._args[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
        if ((((_s.length) < (2 : stdgo.GoInt) : Bool) || (_s[(0 : stdgo.GoInt)] != (45 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : false, _1 : (null : stdgo.Error) };
        };
        var _numMinuses = (1 : stdgo.GoInt);
        if (_s[(1 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
            _numMinuses++;
            if ((_s.length) == ((2 : stdgo.GoInt))) {
                _f._args = (_f._args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                return { _0 : false, _1 : (null : stdgo.Error) };
            };
        };
        var _name = ((_s.__slice__(_numMinuses) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if ((((_name.length) == ((0 : stdgo.GoInt)) || _name[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8)) : Bool) || (_name[(0 : stdgo.GoInt)] == (61 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : false, _1 : _f._failf(("bad flag syntax: %s" : stdgo.GoString), stdgo.Go.toInterface(_s)) };
        };
        _f._args = (_f._args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
        var _hasValue = (false : Bool);
        var _value = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_name.length) : Bool), _i++, {
                if (_name[(_i : stdgo.GoInt)] == ((61 : stdgo.GoUInt8))) {
                    _value = (_name.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _hasValue = true;
                    _name = (_name.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__();
                    break;
                };
            });
        };
        var __tmp__ = (_f._formal != null && _f._formal.exists(_name?.__copy__()) ? { _0 : _f._formal[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>), _1 : false }), _flag:stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            if (((_name == ("help" : stdgo.GoString)) || (_name == ("h" : stdgo.GoString)) : Bool)) {
                _f._usage();
                return { _0 : false, _1 : stdgo._internal.flag.Flag_errHelp.errHelp };
            };
            return { _0 : false, _1 : _f._failf(("flag provided but not defined: -%s" : stdgo.GoString), stdgo.Go.toInterface(_name)) };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_flag.value) : stdgo._internal.flag.Flag_T_boolFlag.T_boolFlag)) : stdgo._internal.flag.Flag_T_boolFlag.T_boolFlag), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.flag.Flag_T_boolFlag.T_boolFlag), _1 : false };
            }, _fv = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && _fv.isBoolFlag() : Bool)) {
                if (_hasValue) {
                    {
                        var _err = (_fv.set(_value?.__copy__()) : stdgo.Error);
                        if (_err != null) {
                            return { _0 : false, _1 : _f._failf(("invalid boolean value %q for -%s: %v" : stdgo.GoString), stdgo.Go.toInterface(_value), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err)) };
                        };
                    };
                } else {
                    {
                        var _err = (_fv.set(("true" : stdgo.GoString)) : stdgo.Error);
                        if (_err != null) {
                            return { _0 : false, _1 : _f._failf(("invalid boolean flag %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err)) };
                        };
                    };
                };
            } else {
                if ((!_hasValue && ((_f._args.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _hasValue = true;
                    {
                        final __tmp__0 = _f._args[(0 : stdgo.GoInt)]?.__copy__();
                        final __tmp__1 = (_f._args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                        _value = __tmp__0;
                        _f._args = __tmp__1;
                    };
                };
                if (!_hasValue) {
                    return { _0 : false, _1 : _f._failf(("flag needs an argument: -%s" : stdgo.GoString), stdgo.Go.toInterface(_name)) };
                };
                {
                    var _err = (_flag.value.set(_value?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        return { _0 : false, _1 : _f._failf(("invalid value %q for flag -%s: %v" : stdgo.GoString), stdgo.Go.toInterface(_value), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err)) };
                    };
                };
            };
        };
        if (_f._actual == null) {
            _f._actual = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>>);
        };
        _f._actual[_name] = _flag;
        return { _0 : true, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _usage( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        if (_f.usage == null) {
            _f._defaultUsage();
        } else {
            _f.usage();
        };
    }
    @:keep
    static public function _failf( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        var _msg = (_f._sprintf(_format?.__copy__(), ...(_a : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString);
        _f._usage();
        return stdgo._internal.errors.Errors_new_.new_(_msg?.__copy__());
    }
    @:keep
    static public function _sprintf( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        var _msg = (stdgo._internal.fmt.Fmt_sprintf.sprintf(_format?.__copy__(), ...(_a : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString);
        stdgo._internal.fmt.Fmt_fprintln.fprintln(_f.output(), stdgo.Go.toInterface(_msg));
        return _msg?.__copy__();
    }
    @:keep
    static public function var_( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _value:stdgo._internal.flag.Flag_Value.Value, _name:stdgo.GoString, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_name?.__copy__(), ("-" : stdgo.GoString))) {
            throw stdgo.Go.toInterface(_f._sprintf(("flag %q begins with -" : stdgo.GoString), stdgo.Go.toInterface(_name)));
        } else if (stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ("=" : stdgo.GoString))) {
            throw stdgo.Go.toInterface(_f._sprintf(("flag %q contains =" : stdgo.GoString), stdgo.Go.toInterface(_name)));
        };
        var _flag = (stdgo.Go.setRef((new stdgo._internal.flag.Flag_Flag.Flag(_name?.__copy__(), _usage?.__copy__(), _value, (_value.string() : stdgo.GoString)?.__copy__()) : stdgo._internal.flag.Flag_Flag.Flag)) : stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>);
        var __tmp__ = (_f._formal != null && _f._formal.exists(_name?.__copy__()) ? { _0 : _f._formal[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>), _1 : false }), __0:stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag> = __tmp__._0, _alreadythere:Bool = __tmp__._1;
        if (_alreadythere) {
            var _msg:stdgo.GoString = ("" : stdgo.GoString);
            if (_f._name == (stdgo.Go.str())) {
                _msg = _f._sprintf(("flag redefined: %s" : stdgo.GoString), stdgo.Go.toInterface(_name))?.__copy__();
            } else {
                _msg = _f._sprintf(("%s flag redefined: %s" : stdgo.GoString), stdgo.Go.toInterface(_f._name), stdgo.Go.toInterface(_name))?.__copy__();
            };
            throw stdgo.Go.toInterface(_msg);
        };
        {
            var _pos = ((_f._undef[_name] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_pos != (stdgo.Go.str())) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("flag %s set at %s before being defined" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_pos)));
            };
        };
        if (_f._formal == null) {
            _f._formal = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>>);
        };
        _f._formal[_name] = _flag;
    }
    @:keep
    static public function boolFunc( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _name:stdgo.GoString, _usage:stdgo.GoString, _fn:stdgo.GoString -> stdgo.Error):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        _f.var_(stdgo.Go.asInterface((_fn : stdgo._internal.flag.Flag_T_boolFuncValue.T_boolFuncValue)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    static public function func( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _name:stdgo.GoString, _usage:stdgo.GoString, _fn:stdgo.GoString -> stdgo.Error):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        _f.var_(stdgo.Go.asInterface((_fn : stdgo._internal.flag.Flag_T_funcValue.T_funcValue)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    static public function textVar( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _p:stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler, _name:stdgo.GoString, _value:stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        _f.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newTextValue._newTextValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    static public function duration( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _name:stdgo.GoString, _value:stdgo._internal.time.Time_Duration.Duration, _usage:stdgo.GoString):stdgo.Pointer<stdgo._internal.time.Time_Duration.Duration> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        var _p = stdgo.Go.pointer(((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration));
        _f.durationVar(_p, _name?.__copy__(), _value, _usage?.__copy__());
        return _p;
    }
    @:keep
    static public function durationVar( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _p:stdgo.Pointer<stdgo._internal.time.Time_Duration.Duration>, _name:stdgo.GoString, _value:stdgo._internal.time.Time_Duration.Duration, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        _f.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newDurationValue._newDurationValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    static public function float64( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _name:stdgo.GoString, _value:stdgo.GoFloat64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoFloat64> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        var _p = stdgo.Go.pointer((0 : stdgo.GoFloat64));
        _f.float64Var(_p, _name?.__copy__(), _value, _usage?.__copy__());
        return _p;
    }
    @:keep
    static public function float64Var( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _p:stdgo.Pointer<stdgo.GoFloat64>, _name:stdgo.GoString, _value:stdgo.GoFloat64, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        _f.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newFloat64Value._newFloat64Value(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    static public function string( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoString> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        var _p = stdgo.Go.pointer(("" : stdgo.GoString));
        _f.stringVar(_p, _name?.__copy__(), _value?.__copy__(), _usage?.__copy__());
        return _p;
    }
    @:keep
    static public function stringVar( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _p:stdgo.Pointer<stdgo.GoString>, _name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        _f.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newStringValue._newStringValue(_value?.__copy__(), _p)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    static public function uint64( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _name:stdgo.GoString, _value:stdgo.GoUInt64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoUInt64> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        var _p = stdgo.Go.pointer((0 : stdgo.GoUInt64));
        _f.uint64Var(_p, _name?.__copy__(), _value, _usage?.__copy__());
        return _p;
    }
    @:keep
    static public function uint64Var( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _p:stdgo.Pointer<stdgo.GoUInt64>, _name:stdgo.GoString, _value:stdgo.GoUInt64, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        _f.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newUint64Value._newUint64Value(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    static public function uint( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _name:stdgo.GoString, _value:stdgo.GoUInt, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoUInt> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        var _p = stdgo.Go.pointer((0 : stdgo.GoUInt));
        _f.uintVar(_p, _name?.__copy__(), _value, _usage?.__copy__());
        return _p;
    }
    @:keep
    static public function uintVar( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _p:stdgo.Pointer<stdgo.GoUInt>, _name:stdgo.GoString, _value:stdgo.GoUInt, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        _f.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newUintValue._newUintValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    static public function int64( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _name:stdgo.GoString, _value:stdgo.GoInt64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoInt64> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        var _p = stdgo.Go.pointer((0 : stdgo.GoInt64));
        _f.int64Var(_p, _name?.__copy__(), _value, _usage?.__copy__());
        return _p;
    }
    @:keep
    static public function int64Var( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _p:stdgo.Pointer<stdgo.GoInt64>, _name:stdgo.GoString, _value:stdgo.GoInt64, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        _f.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newInt64Value._newInt64Value(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    static public function int_( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _name:stdgo.GoString, _value:stdgo.GoInt, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoInt> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        var _p = stdgo.Go.pointer((0 : stdgo.GoInt));
        _f.intVar(_p, _name?.__copy__(), _value, _usage?.__copy__());
        return _p;
    }
    @:keep
    static public function intVar( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _p:stdgo.Pointer<stdgo.GoInt>, _name:stdgo.GoString, _value:stdgo.GoInt, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        _f.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newIntValue._newIntValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    static public function bool_( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):stdgo.Pointer<Bool> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        var _p = stdgo.Go.pointer(false);
        _f.boolVar(_p, _name?.__copy__(), _value, _usage?.__copy__());
        return _p;
    }
    @:keep
    static public function boolVar( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _p:stdgo.Pointer<Bool>, _name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        _f.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newBoolValue._newBoolValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    static public function args( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>):stdgo.Slice<stdgo.GoString> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        return _f._args;
    }
    @:keep
    static public function narg( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        return (_f._args.length);
    }
    @:keep
    static public function arg( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _i:stdgo.GoInt):stdgo.GoString {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        if (((_i < (0 : stdgo.GoInt) : Bool) || (_i >= (_f._args.length) : Bool) : Bool)) {
            return stdgo.Go.str()?.__copy__();
        };
        return _f._args[(_i : stdgo.GoInt)]?.__copy__();
    }
    @:keep
    static public function nflag( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        return (_f._actual.length);
    }
    @:keep
    static public function _defaultUsage( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        if (_f._name == (stdgo.Go.str())) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(_f.output(), ("Usage:\n" : stdgo.GoString));
        } else {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(_f.output(), ("Usage of %s:\n" : stdgo.GoString), stdgo.Go.toInterface(_f._name));
        };
        _f.printDefaults();
    }
    @:keep
    static public function printDefaults( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        var _isZeroValueErrs:stdgo.Slice<stdgo.Error> = (null : stdgo.Slice<stdgo.Error>);
        _f.visitAll(function(_flag:stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>):Void {
            var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), ("  -%s" : stdgo.GoString), stdgo.Go.toInterface(_flag.name));
            var __tmp__ = stdgo._internal.flag.Flag_unquoteUsage.unquoteUsage(_flag), _name:stdgo.GoString = __tmp__._0, _usage:stdgo.GoString = __tmp__._1;
            if (((_name.length) > (0 : stdgo.GoInt) : Bool)) {
                _b.writeString((" " : stdgo.GoString));
                _b.writeString(_name?.__copy__());
            };
            if ((_b.len() <= (4 : stdgo.GoInt) : Bool)) {
                _b.writeString(("\t" : stdgo.GoString));
            } else {
                _b.writeString(("\n    \t" : stdgo.GoString));
            };
            _b.writeString(stdgo._internal.strings.Strings_replaceAll.replaceAll(_usage?.__copy__(), ("\n" : stdgo.GoString), ("\n    \t" : stdgo.GoString))?.__copy__());
            {
                var __tmp__ = stdgo._internal.flag.Flag__isZeroValue._isZeroValue(_flag, _flag.defValue?.__copy__()), _isZero:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _isZeroValueErrs = (_isZeroValueErrs.__append__(_err));
                } else if (!_isZero) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_flag.value) : stdgo.Pointer<stdgo._internal.flag.Flag_T_stringValue.T_stringValue>)) : stdgo.Pointer<stdgo._internal.flag.Flag_T_stringValue.T_stringValue>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Pointer<stdgo._internal.flag.Flag_T_stringValue.T_stringValue>), _1 : false };
                        }, __0 = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), (" (default %q)" : stdgo.GoString), stdgo.Go.toInterface(_flag.defValue));
                        } else {
                            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), (" (default %v)" : stdgo.GoString), stdgo.Go.toInterface(_flag.defValue));
                        };
                    };
                };
            };
            stdgo._internal.fmt.Fmt_fprint.fprint(_f.output(), stdgo.Go.toInterface((_b.string() : stdgo.GoString)), stdgo.Go.toInterface(("\n" : stdgo.GoString)));
        });
        {
            var _errs = _isZeroValueErrs;
            if (((_errs.length) > (0 : stdgo.GoInt) : Bool)) {
                stdgo._internal.fmt.Fmt_fprintln.fprintln(_f.output());
                for (__0 => _err in _errs) {
                    stdgo._internal.fmt.Fmt_fprintln.fprintln(_f.output(), stdgo.Go.toInterface(_err));
                };
            };
        };
    }
    @:keep
    static public function _set( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _name:stdgo.GoString, _value:stdgo.GoString):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        var __tmp__ = (_f._formal != null && _f._formal.exists(_name?.__copy__()) ? { _0 : _f._formal[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>), _1 : false }), _flag:stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            var __tmp__ = stdgo._internal.runtime.Runtime_caller.caller((2 : stdgo.GoInt)), __0:stdgo.GoUIntptr = __tmp__._0, _file:stdgo.GoString = __tmp__._1, _line:stdgo.GoInt = __tmp__._2, _ok:Bool = __tmp__._3;
            if (!_ok) {
                _file = ("?" : stdgo.GoString);
                _line = (0 : stdgo.GoInt);
            };
            if (_f._undef == null) {
                _f._undef = ({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                    x.__defaultValue__ = () -> ("" : stdgo.GoString);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
            };
            _f._undef[_name] = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s:%d" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_line))?.__copy__();
            return stdgo._internal.fmt.Fmt_errorf.errorf(("no such flag -%v" : stdgo.GoString), stdgo.Go.toInterface(_name));
        };
        var _err = (_flag.value.set(_value?.__copy__()) : stdgo.Error);
        if (_err != null) {
            return _err;
        };
        if (_f._actual == null) {
            _f._actual = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>>);
        };
        _f._actual[_name] = _flag;
        return (null : stdgo.Error);
    }
    @:keep
    static public function set( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _name:stdgo.GoString, _value:stdgo.GoString):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        return _f._set(_name?.__copy__(), _value?.__copy__());
    }
    @:keep
    static public function lookup( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        return (_f._formal[_name] ?? (null : stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>));
    }
    @:keep
    static public function visit( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _fn:stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag> -> Void):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        for (__0 => _flag in stdgo._internal.flag.Flag__sortFlags._sortFlags(_f._actual)) {
            _fn(_flag);
        };
    }
    @:keep
    static public function visitAll( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _fn:stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag> -> Void):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        for (__0 => _flag in stdgo._internal.flag.Flag__sortFlags._sortFlags(_f._formal)) {
            _fn(_flag);
        };
    }
    @:keep
    static public function setOutput( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>, _output:stdgo._internal.io.Io_Writer.Writer):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        _f._output = _output;
    }
    @:keep
    static public function errorHandling( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>):stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        return _f._errorHandling;
    }
    @:keep
    static public function name( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>):stdgo.GoString {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        return _f._name?.__copy__();
    }
    @:keep
    static public function output( _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>):stdgo._internal.io.Io_Writer.Writer {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet> = _f;
        if (_f._output == null) {
            return stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr);
        };
        return _f._output;
    }
}
