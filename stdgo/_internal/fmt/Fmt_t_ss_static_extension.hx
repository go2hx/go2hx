package stdgo._internal.fmt;
@:keep @:allow(stdgo._internal.fmt.Fmt.T_ss_asInterface) class T_ss_static_extension {
    @:keep
    @:tdfield
    static public function _doScanf( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>, _format:stdgo.GoString, _a:stdgo.Slice<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _numProcessed = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            {
                var _a0 = (stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>);
                final __f__ = stdgo._internal.fmt.Fmt__errorhandler._errorHandler;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            var _end = ((_format.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1185"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i <= _end : Bool)) {
                    var _w = (_s._advance((_format.__slice__(_i) : stdgo.GoString)?.__copy__()) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1187"
                    if ((_w > (0 : stdgo.GoInt) : Bool)) {
                        _i = (_i + (_w) : stdgo.GoInt);
                        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1189"
                        continue;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1192"
                    if (_format[(_i : stdgo.GoInt)] != ((37 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1194"
                        if ((_w < (0 : stdgo.GoInt) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1195"
                            _s._errorString(("input does not match format" : stdgo.GoString));
                        };
                        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1198"
                        break;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1200"
                    _i++;
                    var _widPresent:Bool = false;
                    {
                        var __tmp__ = stdgo._internal.fmt.Fmt__parsenum._parsenum(_format?.__copy__(), _i, _end);
                        (@:checkr _s ?? throw "null pointer dereference")._ssave._maxWid = @:tmpset0 __tmp__._0;
                        _widPresent = @:tmpset0 __tmp__._1;
                        _i = @:tmpset0 __tmp__._2;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1205"
                    if (!_widPresent) {
                        (@:checkr _s ?? throw "null pointer dereference")._ssave._maxWid = (1073741824 : stdgo.GoInt);
                    };
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_format.__slice__(_i) : stdgo.GoString)?.__copy__()), _c:stdgo.GoInt32 = __tmp__._0, _w:stdgo.GoInt = __tmp__._1;
                    _i = (_i + (_w) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1212"
                    if (_c != ((99 : stdgo.GoInt32))) {
                        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1213"
                        _s.skipSpace();
                    };
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1215"
                    if (_c == ((37 : stdgo.GoInt32))) {
                        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1216"
                        _s._scanPercent();
                        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1217"
                        continue;
                    };
                    (@:checkr _s ?? throw "null pointer dereference")._ssave._argLimit = (@:checkr _s ?? throw "null pointer dereference")._ssave._limit;
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1220"
                    {
                        var _f = ((@:checkr _s ?? throw "null pointer dereference")._count + (@:checkr _s ?? throw "null pointer dereference")._ssave._maxWid : stdgo.GoInt);
                        if ((_f < (@:checkr _s ?? throw "null pointer dereference")._ssave._argLimit : Bool)) {
                            (@:checkr _s ?? throw "null pointer dereference")._ssave._argLimit = _f;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1224"
                    if ((_numProcessed >= (_a.length) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1225"
                        _s._errorString(((("too few operands for format \'%" : stdgo.GoString) + (_format.__slice__((_i - _w : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("\'" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1226"
                        break;
                    };
                    var _arg = (_a[(_numProcessed : stdgo.GoInt)] : stdgo.AnyInterface);
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1230"
                    _s._scanOne(_c, _arg);
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1231"
                    _numProcessed++;
                    (@:checkr _s ?? throw "null pointer dereference")._ssave._argLimit = (@:checkr _s ?? throw "null pointer dereference")._ssave._limit;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1234"
            if ((_numProcessed < (_a.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1235"
                _s._errorString(("too many operands" : stdgo.GoString));
            };
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1237"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return { _0 : _numProcessed, _1 : _err };
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
                return { _0 : _numProcessed, _1 : _err };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
                return { _0 : _numProcessed, _1 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _advance( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>, _format:stdgo.GoString):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        var _i = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1101"
        while ((_i < (_format.length) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_format.__slice__(_i) : stdgo.GoString)?.__copy__()), _fmtc:stdgo.GoInt32 = __tmp__._0, _w:stdgo.GoInt = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1110"
            if (stdgo._internal.fmt.Fmt__isspace._isSpace(_fmtc)) {
                var _newlines = (0 : stdgo.GoInt);
                var _trailingSpace = (false : Bool);
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1113"
                while ((stdgo._internal.fmt.Fmt__isspace._isSpace(_fmtc) && (_i < (_format.length) : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1114"
                    if (_fmtc == ((10 : stdgo.GoInt32))) {
                        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1115"
                        _newlines++;
                        _trailingSpace = false;
                    } else {
                        _trailingSpace = true;
                    };
                    _i = (_i + (_w) : stdgo.GoInt);
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_format.__slice__(_i) : stdgo.GoString)?.__copy__());
                        _fmtc = @:tmpset0 __tmp__._0;
                        _w = @:tmpset0 __tmp__._1;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1123"
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < _newlines : Bool)) {
                        var _inputc = (_s._getRune() : stdgo.GoInt32);
//"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1125"
                        while ((stdgo._internal.fmt.Fmt__isspace._isSpace(_inputc) && (_inputc != (10 : stdgo.GoInt32)) : Bool)) {
                            _inputc = _s._getRune();
                        };
//"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1128"
                        if (((_inputc != (10 : stdgo.GoInt32)) && (_inputc != (-1 : stdgo.GoInt32)) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1129"
                            _s._errorString(("newline in format does not match input" : stdgo.GoString));
                        };
                        _j++;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1132"
                if (_trailingSpace) {
                    var _inputc = (_s._getRune() : stdgo.GoInt32);
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1134"
                    if (_newlines == ((0 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1137"
                        if ((!stdgo._internal.fmt.Fmt__isspace._isSpace(_inputc) && (_inputc != (-1 : stdgo.GoInt32)) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1138"
                            _s._errorString(("expected space in input to match format" : stdgo.GoString));
                        };
                        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1140"
                        if (_inputc == ((10 : stdgo.GoInt32))) {
                            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1141"
                            _s._errorString(("newline in input does not match format" : stdgo.GoString));
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1144"
                    while ((stdgo._internal.fmt.Fmt__isspace._isSpace(_inputc) && (_inputc != (10 : stdgo.GoInt32)) : Bool)) {
                        _inputc = _s._getRune();
                    };
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1147"
                    if (_inputc != ((-1 : stdgo.GoInt32))) {
                        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1148"
                        _s.unreadRune();
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1151"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1155"
            if (_fmtc == ((37 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1157"
                if ((_i + _w : stdgo.GoInt) == ((_format.length))) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1158"
                    _s._errorString(("missing verb: % at end of format string" : stdgo.GoString));
                };
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_format.__slice__((_i + _w : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), _nextc:stdgo.GoInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1162"
                if (_nextc != ((37 : stdgo.GoInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1163"
                    return _i;
                };
                _i = (_i + (_w) : stdgo.GoInt);
            };
            var _inputc = (_s._mustReadRune() : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1170"
            if (_fmtc != (_inputc)) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1171"
                _s.unreadRune();
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1172"
                return _i = (-1 : stdgo.GoInt);
            };
            _i = (_i + (_w) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1176"
        return _i;
    }
    @:keep
    @:tdfield
    static public function _doScan( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>, _a:stdgo.Slice<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _numProcessed = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            {
                var _a0 = (stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>);
                final __f__ = stdgo._internal.fmt.Fmt__errorhandler._errorHandler;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1072"
            for (__0 => _arg in _a) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1073"
                _s._scanOne((118 : stdgo.GoInt32), _arg);
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1074"
                _numProcessed++;
            };
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1077"
            if ((@:checkr _s ?? throw "null pointer dereference")._ssave._nlIsEnd) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1078"
                while (true) {
                    var _r = (_s._getRune() : stdgo.GoInt32);
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1080"
                    if (((_r == (10 : stdgo.GoInt32)) || (_r == (-1 : stdgo.GoInt32)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1081"
                        break;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1083"
                    if (!stdgo._internal.fmt.Fmt__isspace._isSpace(_r)) {
                        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1084"
                        _s._errorString(("expected newline" : stdgo.GoString));
                        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1085"
                        break;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1089"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return { _0 : _numProcessed, _1 : _err };
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
                return { _0 : _numProcessed, _1 : _err };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
                return { _0 : _numProcessed, _1 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _scanOne( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>, _verb:stdgo.GoInt32, _arg:stdgo.AnyInterface):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        (@:checkr _s ?? throw "null pointer dereference")._buf = ((@:checkr _s ?? throw "null pointer dereference")._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.fmt.Fmt_t_buffer.T_buffer);
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L957"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_arg : stdgo._internal.fmt.Fmt_scanner.Scanner)) : stdgo._internal.fmt.Fmt_scanner.Scanner), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.fmt.Fmt_scanner.Scanner), _1 : false };
            }, _v = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _err = _v.scan(stdgo.Go.asInterface(_s), _verb);
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L959"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L960"
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L963"
                    _s._error(_err);
                };
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L965"
                return;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L968"
        {
            final __type__ = _arg;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<Bool>))) {
                var _v:stdgo.Pointer<Bool> = __type__ == null ? (null : stdgo.Pointer<Bool>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<Bool>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<Bool>) : __type__.__underlying__().value);
                _v.value = _s._scanBool(_verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoComplex64>))) {
                var _v:stdgo.Pointer<stdgo.GoComplex64> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoComplex64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoComplex64>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoComplex64>) : __type__.__underlying__().value);
                _v.value = (_s._scanComplex(_verb, (64 : stdgo.GoInt)) : stdgo.GoComplex64);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoComplex128>))) {
                var _v:stdgo.Pointer<stdgo.GoComplex128> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoComplex128>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoComplex128>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoComplex128>) : __type__.__underlying__().value);
                _v.value = _s._scanComplex(_verb, (128 : stdgo.GoInt));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt>))) {
                var _v:stdgo.Pointer<stdgo.GoInt> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoInt>) : __type__.__underlying__().value);
                _v.value = (_s._scanInt(_verb, (32 : stdgo.GoInt)) : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt8>))) {
                var _v:stdgo.Pointer<stdgo.GoInt8> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt8>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt8>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoInt8>) : __type__.__underlying__().value);
                _v.value = (_s._scanInt(_verb, (8 : stdgo.GoInt)) : stdgo.GoInt8);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt16>))) {
                var _v:stdgo.Pointer<stdgo.GoInt16> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt16>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt16>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoInt16>) : __type__.__underlying__().value);
                _v.value = (_s._scanInt(_verb, (16 : stdgo.GoInt)) : stdgo.GoInt16);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt32>))) {
                var _v:stdgo.Pointer<stdgo.GoInt32> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt32>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoInt32>) : __type__.__underlying__().value);
                _v.value = (_s._scanInt(_verb, (32 : stdgo.GoInt)) : stdgo.GoInt32);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt64>))) {
                var _v:stdgo.Pointer<stdgo.GoInt64> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt64>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoInt64>) : __type__.__underlying__().value);
                _v.value = _s._scanInt(_verb, (64 : stdgo.GoInt));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt>))) {
                var _v:stdgo.Pointer<stdgo.GoUInt> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt>) : __type__.__underlying__().value);
                _v.value = (_s._scanUint(_verb, (32 : stdgo.GoInt)) : stdgo.GoUInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt8>))) {
                var _v:stdgo.Pointer<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt8>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt8>) : __type__.__underlying__().value);
                _v.value = (_s._scanUint(_verb, (8 : stdgo.GoInt)) : stdgo.GoUInt8);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt16>))) {
                var _v:stdgo.Pointer<stdgo.GoUInt16> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt16>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt16>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt16>) : __type__.__underlying__().value);
                _v.value = (_s._scanUint(_verb, (16 : stdgo.GoInt)) : stdgo.GoUInt16);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt32>))) {
                var _v:stdgo.Pointer<stdgo.GoUInt32> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt32>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt32>) : __type__.__underlying__().value);
                _v.value = (_s._scanUint(_verb, (32 : stdgo.GoInt)) : stdgo.GoUInt32);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt64>))) {
                var _v:stdgo.Pointer<stdgo.GoUInt64> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt64>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt64>) : __type__.__underlying__().value);
                _v.value = _s._scanUint(_verb, (64 : stdgo.GoInt));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUIntptr>))) {
                var _v:stdgo.Pointer<stdgo.GoUIntptr> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUIntptr>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUIntptr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoUIntptr>) : __type__.__underlying__().value);
                _v.value = (new stdgo.GoUIntptr(_s._scanUint(_verb, (32 : stdgo.GoInt))) : stdgo.GoUIntptr);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoFloat32>))) {
                var _v:stdgo.Pointer<stdgo.GoFloat32> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoFloat32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoFloat32>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoFloat32>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1000"
                if (_s._okVerb(_verb, ("beEfFgGv" : stdgo.GoString), ("float32" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1001"
                    _s.skipSpace();
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1002"
                    _s._notEOF();
                    _v.value = (_s._convertFloat(_s._floatToken()?.__copy__(), (32 : stdgo.GoInt)) : stdgo.GoFloat32);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoFloat64>))) {
                var _v:stdgo.Pointer<stdgo.GoFloat64> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoFloat64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoFloat64>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoFloat64>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1006"
                if (_s._okVerb(_verb, ("beEfFgGv" : stdgo.GoString), ("float64" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1007"
                    _s.skipSpace();
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1008"
                    _s._notEOF();
                    _v.value = _s._convertFloat(_s._floatToken()?.__copy__(), (64 : stdgo.GoInt));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoString>))) {
                var _v:stdgo.Pointer<stdgo.GoString> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoString>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__.__underlying__().value);
                _v.value = _s._convertString(_verb)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                var _v:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>> = __type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__().value);
                (_v : stdgo.Slice<stdgo.GoUInt8>).__setData__((_s._convertString(_verb) : stdgo.Slice<stdgo.GoUInt8>));
            } else {
                var _v:stdgo.AnyInterface = __type__?.__underlying__();
                var _val = (stdgo._internal.reflect.Reflect_valueof.valueOf(_v)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                var _ptr = (_val?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1020"
                if (_ptr.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1021"
                    _s._errorString((("type not a pointer: " : stdgo.GoString) + (_val.type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1022"
                    return;
                };
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1024"
                {
                    var _v = (_ptr.elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                    {
                        final __value__ = _v.kind();
                        if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1026"
                            _v.setBool(_s._scanBool(_verb));
                        } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1028"
                            _v.setInt(_s._scanInt(_verb, _v.type().bits()));
                        } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1030"
                            _v.setUint(_s._scanUint(_verb, _v.type().bits()));
                        } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1032"
                            _v.setString(_s._convertString(_verb)?.__copy__());
                        } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            var _typ = (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
                            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1036"
                            if (_typ.elem().kind() != ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1037"
                                _s._errorString((("can\'t scan type: " : stdgo.GoString) + (_val.type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                            };
                            var _str = (_s._convertString(_verb)?.__copy__() : stdgo.GoString);
                            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1040"
                            _v.set(stdgo._internal.reflect.Reflect_makeslice.makeSlice(_typ, (_str.length), (_str.length))?.__copy__());
                            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1041"
                            {
                                var _i = (0 : stdgo.GoInt);
                                while ((_i < (_str.length) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1042"
                                    _v.index(_i).setUint((_str[(_i : stdgo.GoInt)] : stdgo.GoUInt64));
                                    _i++;
                                };
                            };
                        } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1045"
                            _s.skipSpace();
                            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1046"
                            _s._notEOF();
                            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1047"
                            _v.setFloat(_s._convertFloat(_s._floatToken()?.__copy__(), _v.type().bits()));
                        } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((16u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1049"
                            _v.setComplex(_s._scanComplex(_verb, _v.type().bits()));
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L1051"
                            _s._errorString((("can\'t scan type: " : stdgo.GoString) + (_val.type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                        };
                    };
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _scanPercent( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L945"
        _s.skipSpace();
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L946"
        _s._notEOF();
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L947"
        if (!_s._accept(("%" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L948"
            _s._errorString(("missing literal %" : stdgo.GoString));
        };
    }
    @:keep
    @:tdfield
    static public function _hexString( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L919"
        _s._notEOF();
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L920"
        while (true) {
            var __tmp__ = _s._hexByte(), _b:stdgo.GoUInt8 = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L922"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L923"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L925"
            (@:checkr _s ?? throw "null pointer dereference")._buf._writeByte(_b);
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L927"
        if (((@:checkr _s ?? throw "null pointer dereference")._buf.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L928"
            _s._errorString(("no hex data for %x string" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L929"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L931"
        return ((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _hexByte( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>):{ var _0 : stdgo.GoUInt8; var _1 : Bool; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        var _b = (0 : stdgo.GoUInt8), _ok = false;
        var _rune1 = (_s._getRune() : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L901"
        if (_rune1 == ((-1 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L902"
            return { _0 : _b, _1 : _ok };
        };
        var __tmp__ = stdgo._internal.fmt.Fmt__hexdigit._hexDigit(_rune1), _value1:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L905"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L906"
            _s.unreadRune();
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L907"
            return { _0 : _b, _1 : _ok };
        };
        var __tmp__ = stdgo._internal.fmt.Fmt__hexdigit._hexDigit(_s._mustReadRune()), _value2:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L910"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L911"
            _s._errorString(("illegal hex digit" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L912"
            return { _0 : _b, _1 : _ok };
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L914"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : Bool; } = { _0 : (((_value1 << (4i64 : stdgo.GoUInt64) : stdgo.GoInt) | _value2 : stdgo.GoInt) : stdgo.GoUInt8), _1 : true };
            _b = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _quotedString( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L843"
        _s._notEOF();
        var _quote = (_s._getRune() : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L845"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _quote;
                    if (__value__ == ((96 : stdgo.GoInt32))) {
                        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L848"
                        while (true) {
                            var _r = (_s._mustReadRune() : stdgo.GoInt32);
                            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L850"
                            if (_r == (_quote)) {
                                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L851"
                                break;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L853"
                            (@:checkr _s ?? throw "null pointer dereference")._buf._writeRune(_r);
                        };
                        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L855"
                        return ((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo.GoString)?.__copy__();
                        break;
                    } else if (__value__ == ((34 : stdgo.GoInt32))) {
                        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L858"
                        (@:checkr _s ?? throw "null pointer dereference")._buf._writeByte((34 : stdgo.GoUInt8));
                        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L859"
                        while (true) {
                            var _r = (_s._mustReadRune() : stdgo.GoInt32);
                            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L861"
                            (@:checkr _s ?? throw "null pointer dereference")._buf._writeRune(_r);
                            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L862"
                            if (_r == ((92 : stdgo.GoInt32))) {
                                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L866"
                                (@:checkr _s ?? throw "null pointer dereference")._buf._writeRune(_s._mustReadRune());
                            } else if (_r == ((34 : stdgo.GoInt32))) {
                                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L868"
                                break;
                            };
                        };
                        var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo.GoString)?.__copy__()), _result:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L872"
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L873"
                            _s._error(_err);
                        };
                        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L875"
                        return _result?.__copy__();
                        break;
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L877"
                        _s._errorString(("expected quoted string" : stdgo.GoString));
                    };
                };
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L879"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _convertString( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>, _verb:stdgo.GoInt32):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        var _str = ("" : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L825"
        if (!_s._okVerb(_verb, ("svqxX" : stdgo.GoString), ("string" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L826"
            return _str = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L828"
        _s.skipSpace();
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L829"
        _s._notEOF();
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L830"
        {
            final __value__ = _verb;
            if (__value__ == ((113 : stdgo.GoInt32))) {
                _str = _s._quotedString()?.__copy__();
            } else if (__value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32))) {
                _str = _s._hexString()?.__copy__();
            } else {
                _str = (_s._token(true, stdgo._internal.fmt.Fmt__notspace._notSpace) : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L838"
        return _str;
    }
    @:keep
    @:tdfield
    static public function _scanComplex( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>, _verb:stdgo.GoInt32, _n:stdgo.GoInt):stdgo.GoComplex128 {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L811"
        if (!_s._okVerb(_verb, ("beEfFgGv" : stdgo.GoString), ("complex" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L812"
            return ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64));
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L814"
        _s.skipSpace();
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L815"
        _s._notEOF();
        var __tmp__ = _s._complexTokens(), _sreal:stdgo.GoString = __tmp__._0, _simag:stdgo.GoString = __tmp__._1;
        var _real = (_s._convertFloat(_sreal?.__copy__(), (_n / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoFloat64);
        var _imag = (_s._convertFloat(_simag?.__copy__(), (_n / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoFloat64);
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L819"
        return new stdgo.GoComplex128(_real, _imag);
    }
    @:keep
    @:tdfield
    static public function _convertFloat( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>, _str:stdgo.GoString, _n:stdgo.GoInt):stdgo.GoFloat64 {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L778"
        {
            var _p = (stdgo._internal.fmt.Fmt__indexrune._indexRune(_str?.__copy__(), (112 : stdgo.GoInt32)) : stdgo.GoInt);
            if (((_p >= (0 : stdgo.GoInt) : Bool) && !stdgo._internal.fmt.Fmt__hasx._hasX(_str?.__copy__()) : Bool)) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parsefloat.parseFloat((_str.__slice__(0, _p) : stdgo.GoString)?.__copy__(), _n), _f:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L782"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L784"
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>)) : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>), _1 : false };
                        }, _e = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            (@:checkr _e ?? throw "null pointer dereference").num = _str?.__copy__();
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L787"
                    _s._error(_err);
                };
                var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi((_str.__slice__((_p + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), _m:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L790"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L792"
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>)) : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>), _1 : false };
                        }, _e = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            (@:checkr _e ?? throw "null pointer dereference").num = _str?.__copy__();
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L795"
                    _s._error(_err);
                };
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L797"
                return stdgo._internal.math.Math_ldexp.ldexp(_f, _m);
            };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parsefloat.parseFloat(_str?.__copy__(), _n), _f:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L800"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L801"
            _s._error(_err);
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L803"
        return _f;
    }
    @:keep
    @:tdfield
    static public function _complexTokens( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        var _real = ("" : stdgo.GoString), _imag = ("" : stdgo.GoString);
        var _parens = (_s._accept(("(" : stdgo.GoString)) : Bool);
        _real = _s._floatToken()?.__copy__();
        (@:checkr _s ?? throw "null pointer dereference")._buf = ((@:checkr _s ?? throw "null pointer dereference")._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.fmt.Fmt_t_buffer.T_buffer);
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L749"
        if (!_s._accept(("+-" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L750"
            _s._error(stdgo._internal.fmt.Fmt__errcomplex._errComplex);
        };
        var _imagSign = (((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo.GoString)?.__copy__() : stdgo.GoString);
        _imag = _s._floatToken()?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L755"
        if (!_s._accept(("i" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L756"
            _s._error(stdgo._internal.fmt.Fmt__errcomplex._errComplex);
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L758"
        if ((_parens && !_s._accept((")" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L759"
            _s._error(stdgo._internal.fmt.Fmt__errcomplex._errComplex);
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L761"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : _real?.__copy__(), _1 : (_imagSign + _imag?.__copy__() : stdgo.GoString)?.__copy__() };
            _real = __tmp__._0;
            _imag = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _floatToken( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        (@:checkr _s ?? throw "null pointer dereference")._buf = ((@:checkr _s ?? throw "null pointer dereference")._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.fmt.Fmt_t_buffer.T_buffer);
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L705"
        if (((_s._accept(("nN" : stdgo.GoString)) && _s._accept(("aA" : stdgo.GoString)) : Bool) && _s._accept(("nN" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L706"
            return ((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L709"
        _s._accept(("+-" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L711"
        if (((_s._accept(("iI" : stdgo.GoString)) && _s._accept(("nN" : stdgo.GoString)) : Bool) && _s._accept(("fF" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L712"
            return ((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo.GoString)?.__copy__();
        };
        var _digits = (("0123456789_" : stdgo.GoString) : stdgo.GoString);
        var _exp = (("eEpP" : stdgo.GoString) : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L716"
        if ((_s._accept(("0" : stdgo.GoString)) && _s._accept(("xX" : stdgo.GoString)) : Bool)) {
            _digits = ("0123456789aAbBcCdDeEfF_" : stdgo.GoString);
            _exp = ("pP" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L721"
        while (_s._accept(_digits?.__copy__())) {};
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L724"
        if (_s._accept(("." : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L726"
            while (_s._accept(_digits?.__copy__())) {};
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L730"
        if (_s._accept(_exp?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L732"
            _s._accept(("+-" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L734"
            while (_s._accept(("0123456789_" : stdgo.GoString))) {};
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L737"
        return ((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _scanUint( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>, _verb:stdgo.GoInt32, _bitSize:stdgo.GoInt):stdgo.GoUInt64 {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L672"
        if (_verb == ((99 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L673"
            return (_s._scanRune(_bitSize) : stdgo.GoUInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L675"
        _s.skipSpace();
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L676"
        _s._notEOF();
        var __tmp__ = _s._getBase(_verb), _base:stdgo.GoInt = __tmp__._0, _digits:stdgo.GoString = __tmp__._1;
        var _haveDigits = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L679"
        if (_verb == ((85 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L680"
            if ((!_s._consume(("U" : stdgo.GoString), false) || !_s._consume(("+" : stdgo.GoString), false) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L681"
                _s._errorString(("bad unicode format " : stdgo.GoString));
            };
        } else if (_verb == ((118 : stdgo.GoInt32))) {
            {
                var __tmp__ = _s._scanBasePrefix();
                _base = @:tmpset0 __tmp__._0;
                _digits = @:tmpset0 __tmp__._1?.__copy__();
                _haveDigits = @:tmpset0 __tmp__._2;
            };
        };
        var _tok = (_s._scanNumber(_digits?.__copy__(), _haveDigits)?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_tok?.__copy__(), _base, (64 : stdgo.GoInt)), _i:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L688"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L689"
            _s._error(_err);
        };
        var _n = (_bitSize : stdgo.GoUInt);
        var _x = (((_i << (((64u32 : stdgo.GoUInt) - _n : stdgo.GoUInt)) : stdgo.GoUInt64)) >> (((64u32 : stdgo.GoUInt) - _n : stdgo.GoUInt)) : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L693"
        if (_x != (_i)) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L694"
            _s._errorString((("unsigned integer overflow on token " : stdgo.GoString) + _tok?.__copy__() : stdgo.GoString)?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L696"
        return _i;
    }
    @:keep
    @:tdfield
    static public function _scanInt( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>, _verb:stdgo.GoInt32, _bitSize:stdgo.GoInt):stdgo.GoInt64 {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L639"
        if (_verb == ((99 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L640"
            return _s._scanRune(_bitSize);
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L642"
        _s.skipSpace();
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L643"
        _s._notEOF();
        var __tmp__ = _s._getBase(_verb), _base:stdgo.GoInt = __tmp__._0, _digits:stdgo.GoString = __tmp__._1;
        var _haveDigits = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L646"
        if (_verb == ((85 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L647"
            if ((!_s._consume(("U" : stdgo.GoString), false) || !_s._consume(("+" : stdgo.GoString), false) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L648"
                _s._errorString(("bad unicode format " : stdgo.GoString));
            };
        } else {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L651"
            _s._accept(("+-" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L652"
            if (_verb == ((118 : stdgo.GoInt32))) {
                {
                    var __tmp__ = _s._scanBasePrefix();
                    _base = @:tmpset0 __tmp__._0;
                    _digits = @:tmpset0 __tmp__._1?.__copy__();
                    _haveDigits = @:tmpset0 __tmp__._2;
                };
            };
        };
        var _tok = (_s._scanNumber(_digits?.__copy__(), _haveDigits)?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_tok?.__copy__(), _base, (64 : stdgo.GoInt)), _i:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L658"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L659"
            _s._error(_err);
        };
        var _n = (_bitSize : stdgo.GoUInt);
        var _x = (((_i << (((64u32 : stdgo.GoUInt) - _n : stdgo.GoUInt)) : stdgo.GoInt64)) >> (((64u32 : stdgo.GoUInt) - _n : stdgo.GoUInt)) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L663"
        if (_x != (_i)) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L664"
            _s._errorString((("integer overflow on token " : stdgo.GoString) + _tok?.__copy__() : stdgo.GoString)?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L666"
        return _i;
    }
    @:keep
    @:tdfield
    static public function _scanBasePrefix( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        var _base = (0 : stdgo.GoInt), _digits = ("" : stdgo.GoString), _zeroFound = false;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L616"
        if (!_s._peek(("0" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L617"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : ("0123456789_" : stdgo.GoString), _2 : false };
                _base = __tmp__._0;
                _digits = __tmp__._1;
                _zeroFound = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L619"
        _s._accept(("0" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L621"
        if (_s._peek(("bB" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L623"
            _s._consume(("bB" : stdgo.GoString), true);
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L624"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : ("01_" : stdgo.GoString), _2 : true };
                _base = __tmp__._0;
                _digits = __tmp__._1;
                _zeroFound = __tmp__._2;
                __tmp__;
            };
        } else if (_s._peek(("oO" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L626"
            _s._consume(("oO" : stdgo.GoString), true);
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L627"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : ("01234567_" : stdgo.GoString), _2 : true };
                _base = __tmp__._0;
                _digits = __tmp__._1;
                _zeroFound = __tmp__._2;
                __tmp__;
            };
        } else if (_s._peek(("xX" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L629"
            _s._consume(("xX" : stdgo.GoString), true);
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L630"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : ("0123456789aAbBcCdDeEfF_" : stdgo.GoString), _2 : true };
                _base = __tmp__._0;
                _digits = __tmp__._1;
                _zeroFound = __tmp__._2;
                __tmp__;
            };
        } else {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L632"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : ("01234567_" : stdgo.GoString), _2 : true };
                _base = __tmp__._0;
                _digits = __tmp__._1;
                _zeroFound = __tmp__._2;
                __tmp__;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _scanRune( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>, _bitSize:stdgo.GoInt):stdgo.GoInt64 {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L602"
        _s._notEOF();
        var _r = (_s._getRune() : stdgo.GoInt32);
        var _n = (_bitSize : stdgo.GoUInt);
        var _x = ((((_r : stdgo.GoInt64) << (((64u32 : stdgo.GoUInt) - _n : stdgo.GoUInt)) : stdgo.GoInt64)) >> (((64u32 : stdgo.GoUInt) - _n : stdgo.GoUInt)) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L606"
        if (_x != ((_r : stdgo.GoInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L607"
            _s._errorString((("overflow on character value " : stdgo.GoString) + (_r : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L609"
        return (_r : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function _scanNumber( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>, _digits:stdgo.GoString, _haveDigits:Bool):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L589"
        if (!_haveDigits) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L590"
            _s._notEOF();
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L591"
            if (!_s._accept(_digits?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L592"
                _s._errorString(("expected integer" : stdgo.GoString));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L595"
        while (_s._accept(_digits?.__copy__())) {};
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L597"
        return ((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _getBase( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>, _verb:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        var _base = (0 : stdgo.GoInt), _digits = ("" : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L570"
        _s._okVerb(_verb, ("bdoUxXv" : stdgo.GoString), ("integer" : stdgo.GoString));
        _base = (10 : stdgo.GoInt);
        _digits = ("0123456789" : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L573"
        {
            final __value__ = _verb;
            if (__value__ == ((98 : stdgo.GoInt32))) {
                _base = (2 : stdgo.GoInt);
                _digits = ("01" : stdgo.GoString);
            } else if (__value__ == ((111 : stdgo.GoInt32))) {
                _base = (8 : stdgo.GoInt);
                _digits = ("01234567" : stdgo.GoString);
            } else if (__value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32)) || __value__ == ((85 : stdgo.GoInt32))) {
                _base = (16 : stdgo.GoInt);
                _digits = ("0123456789aAbBcCdDeEfF" : stdgo.GoString);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L584"
        return { _0 : _base, _1 : _digits };
    }
    @:keep
    @:tdfield
    static public function _scanBool( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>, _verb:stdgo.GoInt32):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L532"
        _s.skipSpace();
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L533"
        _s._notEOF();
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L534"
        if (!_s._okVerb(_verb, ("tv" : stdgo.GoString), ("boolean" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L535"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L538"
        {
            final __value__ = _s._getRune();
            if (__value__ == ((48 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L540"
                return false;
            } else if (__value__ == ((49 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L542"
                return true;
            } else if (__value__ == ((116 : stdgo.GoInt32)) || __value__ == ((84 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L544"
                if ((_s._accept(("rR" : stdgo.GoString)) && ((!_s._accept(("uU" : stdgo.GoString)) || !_s._accept(("eE" : stdgo.GoString)) : Bool)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L545"
                    _s._error(stdgo._internal.fmt.Fmt__errbool._errBool);
                };
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L547"
                return true;
            } else if (__value__ == ((102 : stdgo.GoInt32)) || __value__ == ((70 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L549"
                if ((_s._accept(("aA" : stdgo.GoString)) && (((!_s._accept(("lL" : stdgo.GoString)) || !_s._accept(("sS" : stdgo.GoString)) : Bool) || !_s._accept(("eE" : stdgo.GoString)) : Bool)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L550"
                    _s._error(stdgo._internal.fmt.Fmt__errbool._errBool);
                };
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L552"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L554"
        return false;
    }
    @:keep
    @:tdfield
    static public function _okVerb( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>, _verb:stdgo.GoInt32, _okVerbs:stdgo.GoString, _typ:stdgo.GoString):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L521"
        for (__0 => _v in _okVerbs) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L522"
            if (_v == (_verb)) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L523"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L526"
        _s._errorString((((("bad verb \'%" : stdgo.GoString) + (_verb : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("\' for " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _typ?.__copy__() : stdgo.GoString)?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L527"
        return false;
    }
    @:keep
    @:tdfield
    static public function _accept( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>, _ok:stdgo.GoString):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L516"
        return _s._consume(_ok?.__copy__(), true);
    }
    @:keep
    @:tdfield
    static public function _notEOF( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L507"
        {
            var _r = (_s._getRune() : stdgo.GoInt32);
            if (_r == ((-1 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L508"
                throw stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L510"
        _s.unreadRune();
    }
    @:keep
    @:tdfield
    static public function _peek( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>, _ok:stdgo.GoString):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        var _r = (_s._getRune() : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L499"
        if (_r != ((-1 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L500"
            _s.unreadRune();
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L502"
        return (stdgo._internal.fmt.Fmt__indexrune._indexRune(_ok?.__copy__(), _r) >= (0 : stdgo.GoInt) : Bool);
    }
    @:keep
    @:tdfield
    static public function _consume( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>, _ok:stdgo.GoString, _accept:Bool):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        var _r = (_s._getRune() : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L481"
        if (_r == ((-1 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L482"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L484"
        if ((stdgo._internal.fmt.Fmt__indexrune._indexRune(_ok?.__copy__(), _r) >= (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L485"
            if (_accept) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L486"
                (@:checkr _s ?? throw "null pointer dereference")._buf._writeRune(_r);
            };
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L488"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L490"
        if (((_r != (-1 : stdgo.GoInt32)) && _accept : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L491"
            _s.unreadRune();
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L493"
        return false;
    }
    @:keep
    @:tdfield
    static public function _token( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>, _skipSpace:Bool, _f:stdgo.GoInt32 -> Bool):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L447"
        if (_skipSpace) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L448"
            _s.skipSpace();
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L451"
        while (true) {
            var _r = (_s._getRune() : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L453"
            if (_r == ((-1 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L454"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L456"
            if (!_f(_r)) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L457"
                _s.unreadRune();
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L458"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L460"
            (@:checkr _s ?? throw "null pointer dereference")._buf._writeRune(_r);
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L462"
        return (@:checkr _s ?? throw "null pointer dereference")._buf;
    }
    @:keep
    @:tdfield
    static public function skipSpace( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L421"
        while (true) {
            var _r = (_s._getRune() : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L423"
            if (_r == ((-1 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L424"
                return;
            };
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L426"
            if (((_r == (13 : stdgo.GoInt32)) && _s._peek(("\n" : stdgo.GoString)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L427"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L429"
            if (_r == ((10 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L430"
                if ((@:checkr _s ?? throw "null pointer dereference")._ssave._nlIsSpace) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L431"
                    continue;
                };
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L433"
                _s._errorString(("unexpected newline" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L434"
                return;
            };
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L436"
            if (!stdgo._internal.fmt.Fmt__isspace._isSpace(_r)) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L437"
                _s.unreadRune();
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L438"
                break;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _free( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>, _old:stdgo._internal.fmt.Fmt_t_ssave.T_ssave):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L404"
        if (_old._validSave) {
            (@:checkr _s ?? throw "null pointer dereference")._ssave = _old?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L406"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L409"
        if (((@:checkr _s ?? throw "null pointer dereference")._buf.capacity > (1024 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L410"
            return;
        };
        (@:checkr _s ?? throw "null pointer dereference")._buf = ((@:checkr _s ?? throw "null pointer dereference")._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.fmt.Fmt_t_buffer.T_buffer);
        (@:checkr _s ?? throw "null pointer dereference")._rs = (null : stdgo._internal.io.Io_runescanner.RuneScanner);
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L414"
        stdgo._internal.fmt.Fmt__ssfree._ssFree.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_s)));
    }
    @:keep
    @:tdfield
    static public function token( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>, _skipSpace:Bool, _f:stdgo.GoInt32 -> Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _tok = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        try {
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L249"
                        {
                            var _e = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            if (_e != null) {
                                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L250"
                                {
                                    var __tmp__ = try {
                                        { _0 : (stdgo.Go.typeAssert((_e : stdgo._internal.fmt.Fmt_t_scanerror.T_scanError)) : stdgo._internal.fmt.Fmt_t_scanerror.T_scanError), _1 : true };
                                    } catch(_) {
                                        { _0 : ({} : stdgo._internal.fmt.Fmt_t_scanerror.T_scanError), _1 : false };
                                    }, _se = __tmp__._0, _ok = __tmp__._1;
                                    if (_ok) {
                                        _err = _se._err;
                                    } else {
                                        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L253"
                                        throw stdgo.Go.toInterface(_e);
                                    };
                                };
                            };
                        };
                    };
                    a();
                }) });
            };
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L257"
            if (_f == null) {
                _f = stdgo._internal.fmt.Fmt__notspace._notSpace;
            };
            (@:checkr _s ?? throw "null pointer dereference")._buf = ((@:checkr _s ?? throw "null pointer dereference")._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.fmt.Fmt_t_buffer.T_buffer);
            _tok = _s._token(_skipSpace, _f);
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L262"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return { _0 : _tok, _1 : _err };
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
                return { _0 : _tok, _1 : _err };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
                return { _0 : _tok, _1 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _errorString( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>, _err:stdgo.GoString):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L244"
        throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt.Fmt_t_scanerror.T_scanError(stdgo._internal.errors.Errors_new_.new_(_err?.__copy__())) : stdgo._internal.fmt.Fmt_t_scanerror.T_scanError)));
    }
    @:keep
    @:tdfield
    static public function _error( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>, _err:stdgo.Error):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L240"
        throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt.Fmt_t_scanerror.T_scanError(_err) : stdgo._internal.fmt.Fmt_t_scanerror.T_scanError)));
    }
    @:keep
    @:tdfield
    static public function unreadRune( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L233"
        (@:checkr _s ?? throw "null pointer dereference")._rs.unreadRune();
        (@:checkr _s ?? throw "null pointer dereference")._atEOF = false;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L235"
        (@:checkr _s ?? throw "null pointer dereference")._count--;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L236"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _mustReadRune( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>):stdgo.GoInt32 {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        var _r = (0 : stdgo.GoInt32);
        _r = _s._getRune();
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L226"
        if (_r == ((-1 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L227"
            _s._error(stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF);
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L229"
        return _r;
    }
    @:keep
    @:tdfield
    static public function _getRune( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>):stdgo.GoInt32 {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        var _r = (0 : stdgo.GoInt32);
        var __tmp__ = _s.readRune(), _r:stdgo.GoInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L212"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L213"
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L214"
                return _r = (-1 : stdgo.GoInt32);
            };
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L216"
            _s._error(_err);
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L218"
        return _r;
    }
    @:keep
    @:tdfield
    static public function width( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        var _wid = (0 : stdgo.GoInt), _ok = false;
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L202"
        if ((@:checkr _s ?? throw "null pointer dereference")._ssave._maxWid == ((1073741824 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L203"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : false };
                _wid = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L205"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (@:checkr _s ?? throw "null pointer dereference")._ssave._maxWid, _1 : true };
            _wid = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function readRune( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        var _r = (0 : stdgo.GoInt32), _size = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L184"
        if (((@:checkr _s ?? throw "null pointer dereference")._atEOF || ((@:checkr _s ?? throw "null pointer dereference")._count >= (@:checkr _s ?? throw "null pointer dereference")._ssave._argLimit : Bool) : Bool)) {
            _err = stdgo._internal.io.Io_eof.eOF;
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L186"
            return { _0 : _r, _1 : _size, _2 : _err };
        };
        {
            var __tmp__ = (@:checkr _s ?? throw "null pointer dereference")._rs.readRune();
            _r = @:tmpset0 __tmp__._0;
            _size = @:tmpset0 __tmp__._1;
            _err = @:tmpset0 __tmp__._2;
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L190"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L191"
            (@:checkr _s ?? throw "null pointer dereference")._count++;
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L192"
            if (((@:checkr _s ?? throw "null pointer dereference")._ssave._nlIsEnd && (_r == (10 : stdgo.GoInt32)) : Bool)) {
                (@:checkr _s ?? throw "null pointer dereference")._atEOF = true;
            };
        } else if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            (@:checkr _s ?? throw "null pointer dereference")._atEOF = true;
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L198"
        return { _0 : _r, _1 : _size, _2 : _err };
    }
    @:keep
    @:tdfield
    static public function read( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = _s;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L180"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("ScanState\'s Read should not be called. Use ReadRune" : stdgo.GoString)) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
