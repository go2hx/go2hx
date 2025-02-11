package stdgo._internal.flag;
@:keep @:allow(stdgo._internal.flag.Flag.FlagSet_asInterface) class FlagSet_static_extension {
    @:keep
    @:tdfield
    static public function init( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _name:stdgo.GoString, _errorHandling:stdgo._internal.flag.Flag_errorhandling.ErrorHandling):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        (@:checkr _f ?? throw "null pointer dereference")._name = _name?.__copy__();
        (@:checkr _f ?? throw "null pointer dereference")._errorHandling = _errorHandling;
    }
    @:keep
    @:tdfield
    static public function parsed( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        return (@:checkr _f ?? throw "null pointer dereference")._parsed;
    }
    @:keep
    @:tdfield
    static public function parse( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _arguments:stdgo.Slice<stdgo.GoString>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        (@:checkr _f ?? throw "null pointer dereference")._parsed = true;
        (@:checkr _f ?? throw "null pointer dereference")._args = _arguments;
        while (true) {
            var __tmp__ = @:check2r _f._parseOne(), _seen:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_seen) {
                continue;
            };
            if (_err == null) {
                break;
            };
            {
                final __value__ = (@:checkr _f ?? throw "null pointer dereference")._errorHandling;
                if (__value__ == ((0 : stdgo._internal.flag.Flag_errorhandling.ErrorHandling))) {
                    return _err;
                } else if (__value__ == ((1 : stdgo._internal.flag.Flag_errorhandling.ErrorHandling))) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.flag.Flag_errhelp.errHelp))) {
                        #if (sys || hxnodejs) Sys.exit((0 : stdgo.GoInt)) #else null #end;
                    };
                    #if (sys || hxnodejs) Sys.exit((2 : stdgo.GoInt)) #else null #end;
                } else if (__value__ == ((2 : stdgo._internal.flag.Flag_errorhandling.ErrorHandling))) {
                    throw stdgo.Go.toInterface(_err);
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _parseOne( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        if (((@:checkr _f ?? throw "null pointer dereference")._args.length) == ((0 : stdgo.GoInt))) {
            return { _0 : false, _1 : (null : stdgo.Error) };
        };
        var _s = ((@:checkr _f ?? throw "null pointer dereference")._args[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
        if ((((_s.length) < (2 : stdgo.GoInt) : Bool) || (_s[(0 : stdgo.GoInt)] != (45 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : false, _1 : (null : stdgo.Error) };
        };
        var _numMinuses = (1 : stdgo.GoInt);
        if (_s[(1 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
            _numMinuses++;
            if ((_s.length) == ((2 : stdgo.GoInt))) {
                (@:checkr _f ?? throw "null pointer dereference")._args = ((@:checkr _f ?? throw "null pointer dereference")._args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                return { _0 : false, _1 : (null : stdgo.Error) };
            };
        };
        var _name = ((_s.__slice__(_numMinuses) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if ((((_name.length) == ((0 : stdgo.GoInt)) || _name[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8)) : Bool) || (_name[(0 : stdgo.GoInt)] == (61 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : false, _1 : @:check2r _f._failf(("bad flag syntax: %s" : stdgo.GoString), stdgo.Go.toInterface(_s)) };
        };
        (@:checkr _f ?? throw "null pointer dereference")._args = ((@:checkr _f ?? throw "null pointer dereference")._args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
        var _hasValue = (false : Bool);
        var _value = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (_name.length) : Bool)) {
                if (_name[(_i : stdgo.GoInt)] == ((61 : stdgo.GoUInt8))) {
                    _value = (_name.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__();
                    _hasValue = true;
                    _name = (_name.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__();
                    break;
                };
                _i++;
            };
        };
        var __tmp__ = ((@:checkr _f ?? throw "null pointer dereference")._formal != null && (@:checkr _f ?? throw "null pointer dereference")._formal.__exists__(_name?.__copy__()) ? { _0 : (@:checkr _f ?? throw "null pointer dereference")._formal[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>), _1 : false }), _flag:stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            if (((_name == ("help" : stdgo.GoString)) || (_name == ("h" : stdgo.GoString)) : Bool)) {
                @:check2r _f._usage();
                return { _0 : false, _1 : stdgo._internal.flag.Flag_errhelp.errHelp };
            };
            return { _0 : false, _1 : @:check2r _f._failf(("flag provided but not defined: -%s" : stdgo.GoString), stdgo.Go.toInterface(_name)) };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _flag ?? throw "null pointer dereference").value) : stdgo._internal.flag.Flag_t_boolflag.T_boolFlag)) : stdgo._internal.flag.Flag_t_boolflag.T_boolFlag), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.flag.Flag_t_boolflag.T_boolFlag), _1 : false };
            }, _fv = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && _fv.isBoolFlag() : Bool)) {
                if (_hasValue) {
                    {
                        var _err = (_fv.set(_value?.__copy__()) : stdgo.Error);
                        if (_err != null) {
                            return { _0 : false, _1 : @:check2r _f._failf(("invalid boolean value %q for -%s: %v" : stdgo.GoString), stdgo.Go.toInterface(_value), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err)) };
                        };
                    };
                } else {
                    {
                        var _err = (_fv.set(("true" : stdgo.GoString)) : stdgo.Error);
                        if (_err != null) {
                            return { _0 : false, _1 : @:check2r _f._failf(("invalid boolean flag %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err)) };
                        };
                    };
                };
            } else {
                if ((!_hasValue && (((@:checkr _f ?? throw "null pointer dereference")._args.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _hasValue = true;
                    {
                        final __tmp__0 = (@:checkr _f ?? throw "null pointer dereference")._args[(0 : stdgo.GoInt)]?.__copy__();
                        final __tmp__1 = ((@:checkr _f ?? throw "null pointer dereference")._args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                        _value = __tmp__0;
                        (@:checkr _f ?? throw "null pointer dereference")._args = __tmp__1;
                    };
                };
                if (!_hasValue) {
                    return { _0 : false, _1 : @:check2r _f._failf(("flag needs an argument: -%s" : stdgo.GoString), stdgo.Go.toInterface(_name)) };
                };
                {
                    var _err = ((@:checkr _flag ?? throw "null pointer dereference").value.set(_value?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        return { _0 : false, _1 : @:check2r _f._failf(("invalid value %q for flag -%s: %v" : stdgo.GoString), stdgo.Go.toInterface(_value), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err)) };
                    };
                };
            };
        };
        if ((@:checkr _f ?? throw "null pointer dereference")._actual == null) {
            (@:checkr _f ?? throw "null pointer dereference")._actual = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>);
        };
        (@:checkr _f ?? throw "null pointer dereference")._actual[_name] = _flag;
        return { _0 : true, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _usage( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        if ((@:checkr _f ?? throw "null pointer dereference").usage == null) {
            @:check2r _f._defaultUsage();
        } else {
            (@:checkr _f ?? throw "null pointer dereference").usage();
        };
    }
    @:keep
    @:tdfield
    static public function _failf( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        var _msg = (@:check2r _f._sprintf(_format?.__copy__(), ...(_a : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString);
        @:check2r _f._usage();
        return stdgo._internal.errors.Errors_new_.new_(_msg?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _sprintf( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        var _msg = (stdgo._internal.fmt.Fmt_sprintf.sprintf(_format?.__copy__(), ...(_a : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString);
        stdgo._internal.fmt.Fmt_fprintln.fprintln(@:check2r _f.output(), stdgo.Go.toInterface(_msg));
        return _msg?.__copy__();
    }
    @:keep
    @:tdfield
    static public function var_( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _value:stdgo._internal.flag.Flag_value.Value, _name:stdgo.GoString, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name?.__copy__(), ("-" : stdgo.GoString))) {
            throw stdgo.Go.toInterface(@:check2r _f._sprintf(("flag %q begins with -" : stdgo.GoString), stdgo.Go.toInterface(_name)));
        } else if (stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ("=" : stdgo.GoString))) {
            throw stdgo.Go.toInterface(@:check2r _f._sprintf(("flag %q contains =" : stdgo.GoString), stdgo.Go.toInterface(_name)));
        };
        var _flag = (stdgo.Go.setRef((new stdgo._internal.flag.Flag_flag.Flag(_name?.__copy__(), _usage?.__copy__(), _value, (_value.string() : stdgo.GoString)?.__copy__()) : stdgo._internal.flag.Flag_flag.Flag)) : stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>);
        var __tmp__ = ((@:checkr _f ?? throw "null pointer dereference")._formal != null && (@:checkr _f ?? throw "null pointer dereference")._formal.__exists__(_name?.__copy__()) ? { _0 : (@:checkr _f ?? throw "null pointer dereference")._formal[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>), _1 : false }), __0:stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag> = __tmp__._0, _alreadythere:Bool = __tmp__._1;
        if (_alreadythere) {
            var _msg:stdgo.GoString = ("" : stdgo.GoString);
            if ((@:checkr _f ?? throw "null pointer dereference")._name == ((stdgo.Go.str() : stdgo.GoString))) {
                _msg = @:check2r _f._sprintf(("flag redefined: %s" : stdgo.GoString), stdgo.Go.toInterface(_name))?.__copy__();
            } else {
                _msg = @:check2r _f._sprintf(("%s flag redefined: %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(_name))?.__copy__();
            };
            throw stdgo.Go.toInterface(_msg);
        };
        {
            var _pos = (((@:checkr _f ?? throw "null pointer dereference")._undef[_name] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_pos != ((stdgo.Go.str() : stdgo.GoString))) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("flag %s set at %s before being defined" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_pos)));
            };
        };
        if ((@:checkr _f ?? throw "null pointer dereference")._formal == null) {
            (@:checkr _f ?? throw "null pointer dereference")._formal = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>);
        };
        (@:checkr _f ?? throw "null pointer dereference")._formal[_name] = _flag;
    }
    @:keep
    @:tdfield
    static public function boolFunc( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _name:stdgo.GoString, _usage:stdgo.GoString, _fn:stdgo.GoString -> stdgo.Error):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        @:check2r _f.var_(stdgo.Go.asInterface((_fn : stdgo._internal.flag.Flag_t_boolfuncvalue.T_boolFuncValue)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    @:tdfield
    static public function func( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _name:stdgo.GoString, _usage:stdgo.GoString, _fn:stdgo.GoString -> stdgo.Error):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        @:check2r _f.var_(stdgo.Go.asInterface((_fn : stdgo._internal.flag.Flag_t_funcvalue.T_funcValue)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    @:tdfield
    static public function textVar( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _p:stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler, _name:stdgo.GoString, _value:stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        @:check2r _f.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newtextvalue._newTextValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    @:tdfield
    static public function duration( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _name:stdgo.GoString, _value:stdgo._internal.time.Time_duration.Duration, _usage:stdgo.GoString):stdgo.Pointer<stdgo._internal.time.Time_duration.Duration> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        var _p = stdgo.Go.pointer(((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration));
        @:check2r _f.durationVar(_p, _name?.__copy__(), _value, _usage?.__copy__());
        return _p;
    }
    @:keep
    @:tdfield
    static public function durationVar( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _p:stdgo.Pointer<stdgo._internal.time.Time_duration.Duration>, _name:stdgo.GoString, _value:stdgo._internal.time.Time_duration.Duration, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        @:check2r _f.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newdurationvalue._newDurationValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    @:tdfield
    static public function float64( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _name:stdgo.GoString, _value:stdgo.GoFloat64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoFloat64> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        var _p = stdgo.Go.pointer((0 : stdgo.GoFloat64));
        @:check2r _f.float64Var(_p, _name?.__copy__(), _value, _usage?.__copy__());
        return _p;
    }
    @:keep
    @:tdfield
    static public function float64Var( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _p:stdgo.Pointer<stdgo.GoFloat64>, _name:stdgo.GoString, _value:stdgo.GoFloat64, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        @:check2r _f.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newfloat64value._newFloat64Value(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    @:tdfield
    static public function string( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoString> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        var _p = stdgo.Go.pointer(("" : stdgo.GoString));
        @:check2r _f.stringVar(_p, _name?.__copy__(), _value?.__copy__(), _usage?.__copy__());
        return _p;
    }
    @:keep
    @:tdfield
    static public function stringVar( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _p:stdgo.Pointer<stdgo.GoString>, _name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        @:check2r _f.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newstringvalue._newStringValue(_value?.__copy__(), _p)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    @:tdfield
    static public function uint64( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _name:stdgo.GoString, _value:stdgo.GoUInt64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoUInt64> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        var _p = stdgo.Go.pointer((0 : stdgo.GoUInt64));
        @:check2r _f.uint64Var(_p, _name?.__copy__(), _value, _usage?.__copy__());
        return _p;
    }
    @:keep
    @:tdfield
    static public function uint64Var( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _p:stdgo.Pointer<stdgo.GoUInt64>, _name:stdgo.GoString, _value:stdgo.GoUInt64, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        @:check2r _f.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newuint64value._newUint64Value(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    @:tdfield
    static public function uint( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _name:stdgo.GoString, _value:stdgo.GoUInt, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoUInt> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        var _p = stdgo.Go.pointer((0 : stdgo.GoUInt));
        @:check2r _f.uintVar(_p, _name?.__copy__(), _value, _usage?.__copy__());
        return _p;
    }
    @:keep
    @:tdfield
    static public function uintVar( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _p:stdgo.Pointer<stdgo.GoUInt>, _name:stdgo.GoString, _value:stdgo.GoUInt, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        @:check2r _f.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newuintvalue._newUintValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    @:tdfield
    static public function int64( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _name:stdgo.GoString, _value:stdgo.GoInt64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoInt64> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        var _p = stdgo.Go.pointer((0 : stdgo.GoInt64));
        @:check2r _f.int64Var(_p, _name?.__copy__(), _value, _usage?.__copy__());
        return _p;
    }
    @:keep
    @:tdfield
    static public function int64Var( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _p:stdgo.Pointer<stdgo.GoInt64>, _name:stdgo.GoString, _value:stdgo.GoInt64, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        @:check2r _f.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newint64value._newInt64Value(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    @:tdfield
    static public function int_( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _name:stdgo.GoString, _value:stdgo.GoInt, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoInt> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        var _p = stdgo.Go.pointer((0 : stdgo.GoInt));
        @:check2r _f.intVar(_p, _name?.__copy__(), _value, _usage?.__copy__());
        return _p;
    }
    @:keep
    @:tdfield
    static public function intVar( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _p:stdgo.Pointer<stdgo.GoInt>, _name:stdgo.GoString, _value:stdgo.GoInt, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        @:check2r _f.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newintvalue._newIntValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    @:tdfield
    static public function bool_( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):stdgo.Pointer<Bool> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        var _p = stdgo.Go.pointer(false);
        @:check2r _f.boolVar(_p, _name?.__copy__(), _value, _usage?.__copy__());
        return _p;
    }
    @:keep
    @:tdfield
    static public function boolVar( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _p:stdgo.Pointer<Bool>, _name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        @:check2r _f.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newboolvalue._newBoolValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    @:tdfield
    static public function args( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>):stdgo.Slice<stdgo.GoString> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        return (@:checkr _f ?? throw "null pointer dereference")._args;
    }
    @:keep
    @:tdfield
    static public function nArg( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        return ((@:checkr _f ?? throw "null pointer dereference")._args.length);
    }
    @:keep
    @:tdfield
    static public function arg( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _i:stdgo.GoInt):stdgo.GoString {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        if (((_i < (0 : stdgo.GoInt) : Bool) || (_i >= ((@:checkr _f ?? throw "null pointer dereference")._args.length) : Bool) : Bool)) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        return (@:checkr _f ?? throw "null pointer dereference")._args[(_i : stdgo.GoInt)]?.__copy__();
    }
    @:keep
    @:tdfield
    static public function nFlag( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        return ((@:checkr _f ?? throw "null pointer dereference")._actual.length);
    }
    @:keep
    @:tdfield
    static public function _defaultUsage( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        if ((@:checkr _f ?? throw "null pointer dereference")._name == ((stdgo.Go.str() : stdgo.GoString))) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(@:check2r _f.output(), ("Usage:\n" : stdgo.GoString));
        } else {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(@:check2r _f.output(), ("Usage of %s:\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference")._name));
        };
        @:check2r _f.printDefaults();
    }
    @:keep
    @:tdfield
    static public function printDefaults( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        var _isZeroValueErrs:stdgo.Slice<stdgo.Error> = (null : stdgo.Slice<stdgo.Error>);
        @:check2r _f.visitAll(function(_flag:stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>):Void {
            var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), ("  -%s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _flag ?? throw "null pointer dereference").name));
            var __tmp__ = stdgo._internal.flag.Flag_unquoteusage.unquoteUsage(_flag), _name:stdgo.GoString = __tmp__._0, _usage:stdgo.GoString = __tmp__._1;
            if (((_name.length) > (0 : stdgo.GoInt) : Bool)) {
                @:check2 _b.writeString((" " : stdgo.GoString));
                @:check2 _b.writeString(_name?.__copy__());
            };
            if ((@:check2 _b.len() <= (4 : stdgo.GoInt) : Bool)) {
                @:check2 _b.writeString(("\t" : stdgo.GoString));
            } else {
                @:check2 _b.writeString(("\n    \t" : stdgo.GoString));
            };
            @:check2 _b.writeString(stdgo._internal.strings.Strings_replaceall.replaceAll(_usage?.__copy__(), ("\n" : stdgo.GoString), ("\n    \t" : stdgo.GoString))?.__copy__());
            {
                var __tmp__ = stdgo._internal.flag.Flag__iszerovalue._isZeroValue(_flag, (@:checkr _flag ?? throw "null pointer dereference").defValue?.__copy__()), _isZero:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _isZeroValueErrs = (_isZeroValueErrs.__append__(_err));
                } else if (!_isZero) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _flag ?? throw "null pointer dereference").value) : stdgo.Pointer<stdgo._internal.flag.Flag_t_stringvalue.T_stringValue>)) : stdgo.Pointer<stdgo._internal.flag.Flag_t_stringvalue.T_stringValue>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Pointer<stdgo._internal.flag.Flag_t_stringvalue.T_stringValue>), _1 : false };
                        }, __0 = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), (" (default %q)" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _flag ?? throw "null pointer dereference").defValue));
                        } else {
                            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), (" (default %v)" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _flag ?? throw "null pointer dereference").defValue));
                        };
                    };
                };
            };
            stdgo._internal.fmt.Fmt_fprint.fprint(@:check2r _f.output(), stdgo.Go.toInterface((@:check2 _b.string() : stdgo.GoString)), stdgo.Go.toInterface(("\n" : stdgo.GoString)));
        });
        {
            var _errs = _isZeroValueErrs;
            if (((_errs.length) > (0 : stdgo.GoInt) : Bool)) {
                stdgo._internal.fmt.Fmt_fprintln.fprintln(@:check2r _f.output());
                for (__0 => _err in _errs) {
                    stdgo._internal.fmt.Fmt_fprintln.fprintln(@:check2r _f.output(), stdgo.Go.toInterface(_err));
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _set( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _name:stdgo.GoString, _value:stdgo.GoString):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        var __tmp__ = ((@:checkr _f ?? throw "null pointer dereference")._formal != null && (@:checkr _f ?? throw "null pointer dereference")._formal.__exists__(_name?.__copy__()) ? { _0 : (@:checkr _f ?? throw "null pointer dereference")._formal[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>), _1 : false }), _flag:stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            var __tmp__ = stdgo._internal.runtime.Runtime_caller.caller((2 : stdgo.GoInt)), __0:stdgo.GoUIntptr = __tmp__._0, _file:stdgo.GoString = __tmp__._1, _line:stdgo.GoInt = __tmp__._2, _ok:Bool = __tmp__._3;
            if (!_ok) {
                _file = ("?" : stdgo.GoString);
                _line = (0 : stdgo.GoInt);
            };
            if ((@:checkr _f ?? throw "null pointer dereference")._undef == null) {
                (@:checkr _f ?? throw "null pointer dereference")._undef = ({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                    x.__defaultValue__ = () -> ("" : stdgo.GoString);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
            };
            (@:checkr _f ?? throw "null pointer dereference")._undef[_name] = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s:%d" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_line))?.__copy__();
            return stdgo._internal.fmt.Fmt_errorf.errorf(("no such flag -%v" : stdgo.GoString), stdgo.Go.toInterface(_name));
        };
        var _err = ((@:checkr _flag ?? throw "null pointer dereference").value.set(_value?.__copy__()) : stdgo.Error);
        if (_err != null) {
            return _err;
        };
        if ((@:checkr _f ?? throw "null pointer dereference")._actual == null) {
            (@:checkr _f ?? throw "null pointer dereference")._actual = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>);
        };
        (@:checkr _f ?? throw "null pointer dereference")._actual[_name] = _flag;
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function set( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _name:stdgo.GoString, _value:stdgo.GoString):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        return @:check2r _f._set(_name?.__copy__(), _value?.__copy__());
    }
    @:keep
    @:tdfield
    static public function lookup( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        return ((@:checkr _f ?? throw "null pointer dereference")._formal[_name] ?? (null : stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>));
    }
    @:keep
    @:tdfield
    static public function visit( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _fn:stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag> -> Void):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        for (__0 => _flag in stdgo._internal.flag.Flag__sortflags._sortFlags((@:checkr _f ?? throw "null pointer dereference")._actual)) {
            _fn(_flag);
        };
    }
    @:keep
    @:tdfield
    static public function visitAll( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _fn:stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag> -> Void):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        for (__0 => _flag in stdgo._internal.flag.Flag__sortflags._sortFlags((@:checkr _f ?? throw "null pointer dereference")._formal)) {
            _fn(_flag);
        };
    }
    @:keep
    @:tdfield
    static public function setOutput( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _output:stdgo._internal.io.Io_writer.Writer):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        (@:checkr _f ?? throw "null pointer dereference")._output = _output;
    }
    @:keep
    @:tdfield
    static public function errorHandling( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>):stdgo._internal.flag.Flag_errorhandling.ErrorHandling {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        return (@:checkr _f ?? throw "null pointer dereference")._errorHandling;
    }
    @:keep
    @:tdfield
    static public function name( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>):stdgo.GoString {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        return (@:checkr _f ?? throw "null pointer dereference")._name?.__copy__();
    }
    @:keep
    @:tdfield
    static public function output( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>):stdgo._internal.io.Io_writer.Writer {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        if ((@:checkr _f ?? throw "null pointer dereference")._output == null) {
            return stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr);
        };
        return (@:checkr _f ?? throw "null pointer dereference")._output;
    }
}
