package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
function _canonicalMIMEHeaderKey(_a:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var _0 = ("" : stdgo.GoString), _ok = false;
        var _noCanon = (false : Bool);
        for (__0 => _c in _a) {
            if (stdgo._internal.net.textproto.Textproto__validHeaderFieldByte._validHeaderFieldByte(_c)) {
                continue;
            };
            if (_c == ((32 : stdgo.GoUInt8))) {
                _noCanon = true;
                continue;
            };
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (_a : stdgo.GoString)?.__copy__(), _1 : false };
                _0 = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        if (_noCanon) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (_a : stdgo.GoString)?.__copy__(), _1 : true };
                _0 = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        var _upper = (true : Bool);
        for (_i => _c in _a) {
            if (((_upper && ((97 : stdgo.GoUInt8) <= _c : Bool) : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                _c = (_c - ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            } else if (((!_upper && ((65 : stdgo.GoUInt8) <= _c : Bool) : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                _c = (_c + ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
            _a[(_i : stdgo.GoInt)] = _c;
            _upper = _c == ((45 : stdgo.GoUInt8));
        };
        @:check2 stdgo._internal.net.textproto.Textproto__commonHeaderOnce._commonHeaderOnce.do_(stdgo._internal.net.textproto.Textproto__initCommonHeader._initCommonHeader);
        {
            var _v = ((stdgo._internal.net.textproto.Textproto__commonHeader._commonHeader[(_a : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_v != (stdgo.Go.str())) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : _v?.__copy__(), _1 : true };
                    _0 = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (_a : stdgo.GoString)?.__copy__(), _1 : true };
            _0 = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
