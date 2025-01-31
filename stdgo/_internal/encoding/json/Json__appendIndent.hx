package stdgo._internal.encoding.json;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.Math;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.os.Os;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.math.big.Big;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.testing.Testing;
import stdgo._internal.log.Log;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.net.Net;
import stdgo._internal.net.http.httptest.Httptest;
import stdgo._internal.net.http.Http;
function _appendIndent(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _prefix:stdgo.GoString, _indent:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _origLen = (_dst.length : stdgo.GoInt);
            var _scan = stdgo._internal.encoding.json.Json__newScanner._newScanner();
            {
                var _a0 = _scan;
                final __f__ = stdgo._internal.encoding.json.Json__freeScanner._freeScanner;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            var _needIndent = (false : Bool);
            var _depth = (0 : stdgo.GoInt);
            for (__4 => _c in _src) {
                (@:checkr _scan ?? throw "null pointer dereference")._bytes++;
                var _v = ((@:checkr _scan ?? throw "null pointer dereference")._step(_scan, _c) : stdgo.GoInt);
                if (_v == ((9 : stdgo.GoInt))) {
                    continue;
                };
                if (_v == ((11 : stdgo.GoInt))) {
                    break;
                };
                if (((_needIndent && _v != ((5 : stdgo.GoInt)) : Bool) && (_v != (8 : stdgo.GoInt)) : Bool)) {
                    _needIndent = false;
                    _depth++;
                    _dst = stdgo._internal.encoding.json.Json__appendNewline._appendNewline(_dst, _prefix?.__copy__(), _indent?.__copy__(), _depth);
                };
                if (_v == ((0 : stdgo.GoInt))) {
                    _dst = (_dst.__append__(_c));
                    continue;
                };
                {
                    final __value__ = _c;
                    if (__value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((91 : stdgo.GoUInt8))) {
                        _needIndent = true;
                        _dst = (_dst.__append__(_c));
                    } else if (__value__ == ((44 : stdgo.GoUInt8))) {
                        _dst = (_dst.__append__(_c));
                        _dst = stdgo._internal.encoding.json.Json__appendNewline._appendNewline(_dst, _prefix?.__copy__(), _indent?.__copy__(), _depth);
                    } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                        _dst = (_dst.__append__(_c, (32 : stdgo.GoUInt8)));
                    } else if (__value__ == ((125 : stdgo.GoUInt8)) || __value__ == ((93 : stdgo.GoUInt8))) {
                        if (_needIndent) {
                            _needIndent = false;
                        } else {
                            _depth--;
                            _dst = stdgo._internal.encoding.json.Json__appendNewline._appendNewline(_dst, _prefix?.__copy__(), _indent?.__copy__(), _depth);
                        };
                        _dst = (_dst.__append__(_c));
                    } else {
                        _dst = (_dst.__append__(_c));
                    };
                };
            };
            if (@:check2r _scan._eof() == ((11 : stdgo.GoInt))) {
                {
                    final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (_dst.__slice__(0, _origLen) : stdgo.Slice<stdgo.GoUInt8>), _1 : (@:checkr _scan ?? throw "null pointer dereference")._err };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : _dst, _1 : (null : stdgo.Error) };
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
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
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
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
            };
        };
    }
