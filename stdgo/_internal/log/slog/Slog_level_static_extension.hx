package stdgo._internal.log.slog;
@:keep @:allow(stdgo._internal.log.slog.Slog.Level_asInterface) class Level_static_extension {
    @:keep
    @:tdfield
    static public function level( _l:stdgo._internal.log.slog.Slog_level.Level):stdgo._internal.log.slog.Slog_level.Level {
        @:recv var _l:stdgo._internal.log.slog.Slog_level.Level = _l;
        return _l;
    }
    @:keep
    @:pointer
    @:tdfield
    static public function _parse( _l:stdgo.Pointer<stdgo._internal.log.slog.Slog_level.Level>, _s:stdgo.GoString):stdgo.Error {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _err = (null : stdgo.Error);
        try {
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        if (_err != null) {
                            _err = stdgo._internal.fmt.Fmt_errorf.errorf(("slog: level string %q: %w" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
                        };
                    };
                    a();
                }) });
            };
            var _name = (_s?.__copy__() : stdgo.GoString);
            var _offset = (0 : stdgo.GoInt);
            {
                var _i = (stdgo._internal.strings.Strings_indexany.indexAny(_s?.__copy__(), ("+-" : stdgo.GoString)) : stdgo.GoInt);
                if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    _name = (_s.__slice__(0, _i) : stdgo.GoString)?.__copy__();
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi((_s.__slice__(_i) : stdgo.GoString)?.__copy__());
                        _offset = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return _err;
                        };
                    };
                };
            };
            {
                final __value__ = stdgo._internal.strings.Strings_toupper.toUpper(_name?.__copy__());
                if (__value__ == (("DEBUG" : stdgo.GoString))) {
                    _l.value = (-4 : stdgo._internal.log.slog.Slog_level.Level);
                } else if (__value__ == (("INFO" : stdgo.GoString))) {
                    _l.value = (0 : stdgo._internal.log.slog.Slog_level.Level);
                } else if (__value__ == (("WARN" : stdgo.GoString))) {
                    _l.value = (4 : stdgo._internal.log.slog.Slog_level.Level);
                } else if (__value__ == (("ERROR" : stdgo.GoString))) {
                    _l.value = (8 : stdgo._internal.log.slog.Slog_level.Level);
                } else {
                    {
                        final __ret__:stdgo.Error = _err = stdgo._internal.errors.Errors_new_.new_(("unknown name" : stdgo.GoString));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            _l.value = (_l.value + ((_offset : stdgo._internal.log.slog.Slog_level.Level)) : stdgo._internal.log.slog.Slog_level.Level);
            {
                final __ret__:stdgo.Error = _err = (null : stdgo.Error);
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
                return _err;
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
                return _err;
            };
        };
    }
    @:keep
    @:pointer
    @:tdfield
    static public function unmarshalText( _l:stdgo.Pointer<stdgo._internal.log.slog.Slog_level.Level>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        return @:isptr (_l : stdgo._internal.log.slog.Slog_levelpointer.LevelPointer)._parse((_data : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function marshalText( _l:stdgo._internal.log.slog.Slog_level.Level):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _l:stdgo._internal.log.slog.Slog_level.Level = _l;
        return { _0 : ((_l.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:pointer
    @:tdfield
    static public function unmarshalJSON( _l:stdgo.Pointer<stdgo._internal.log.slog.Slog_level.Level>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote((_data : stdgo.GoString)?.__copy__()), _s:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        return @:isptr (_l : stdgo._internal.log.slog.Slog_levelpointer.LevelPointer)._parse(_s?.__copy__());
    }
    @:keep
    @:tdfield
    static public function marshalJSON( _l:stdgo._internal.log.slog.Slog_level.Level):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _l:stdgo._internal.log.slog.Slog_level.Level = _l;
        return { _0 : stdgo._internal.strconv.Strconv_appendquote.appendQuote((null : stdgo.Slice<stdgo.GoUInt8>), (_l.string() : stdgo.GoString)?.__copy__()), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function string( _l:stdgo._internal.log.slog.Slog_level.Level):stdgo.GoString {
        @:recv var _l:stdgo._internal.log.slog.Slog_level.Level = _l;
        var _str = (function(_base:stdgo.GoString, _val:stdgo._internal.log.slog.Slog_level.Level):stdgo.GoString {
            if (_val == ((0 : stdgo._internal.log.slog.Slog_level.Level))) {
                return _base?.__copy__();
            };
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s%+d" : stdgo.GoString), stdgo.Go.toInterface(_base), stdgo.Go.toInterface(stdgo.Go.asInterface(_val)))?.__copy__();
        } : (stdgo.GoString, stdgo._internal.log.slog.Slog_level.Level) -> stdgo.GoString);
        if ((_l < (0 : stdgo._internal.log.slog.Slog_level.Level) : Bool)) {
            return _str(("DEBUG" : stdgo.GoString), (_l - (-4 : stdgo._internal.log.slog.Slog_level.Level) : stdgo._internal.log.slog.Slog_level.Level))?.__copy__();
        } else if ((_l < (4 : stdgo._internal.log.slog.Slog_level.Level) : Bool)) {
            return _str(("INFO" : stdgo.GoString), (_l - (0 : stdgo._internal.log.slog.Slog_level.Level) : stdgo._internal.log.slog.Slog_level.Level))?.__copy__();
        } else if ((_l < (8 : stdgo._internal.log.slog.Slog_level.Level) : Bool)) {
            return _str(("WARN" : stdgo.GoString), (_l - (4 : stdgo._internal.log.slog.Slog_level.Level) : stdgo._internal.log.slog.Slog_level.Level))?.__copy__();
        } else {
            return _str(("ERROR" : stdgo.GoString), (_l - (8 : stdgo._internal.log.slog.Slog_level.Level) : stdgo._internal.log.slog.Slog_level.Level))?.__copy__();
        };
    }
}
