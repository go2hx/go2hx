package stdgo._internal.net.mail;
import stdgo._internal.errors.Errors;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.log.Log;
function _readHeader(_r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>):{ var _0 : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>; var _1 : stdgo.Error; } {
        var _m = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>);
        {
            var __tmp__ = @:check2r (@:checkr _r ?? throw "null pointer dereference").r.peek((1 : stdgo.GoInt)), _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err == null) && (((_buf[(0 : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) || (_buf[(0 : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                var __tmp__ = @:check2r _r.readLine(), _line:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : _m, _1 : _err };
                };
                return { _0 : _m, _1 : stdgo._internal.errors.Errors_new_.new_((("malformed initial line: " : stdgo.GoString) + _line?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
        };
        while (true) {
            var __tmp__ = @:check2r _r.readContinuedLine(), _kv:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_kv == (stdgo.Go.str())) {
                return { _0 : _m, _1 : _err };
            };
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_kv?.__copy__(), (":" : stdgo.GoString)), _k:stdgo.GoString = __tmp__._0, _v:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (!_ok) {
                return { _0 : _m, _1 : stdgo._internal.errors.Errors_new_.new_((("malformed header line: " : stdgo.GoString) + _kv?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
            var _key = (stdgo._internal.net.textproto.Textproto_canonicalMIMEHeaderKey.canonicalMIMEHeaderKey(_k?.__copy__())?.__copy__() : stdgo.GoString);
            if (_key == (stdgo.Go.str())) {
                continue;
            };
            var _value = (stdgo._internal.strings.Strings_trimLeft.trimLeft(_v?.__copy__(), (" \t" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            _m[_key] = ((_m[_key] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(_value?.__copy__()));
            if (_err != null) {
                return { _0 : _m, _1 : _err };
            };
        };
    }
