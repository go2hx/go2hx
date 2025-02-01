package stdgo._internal.internal.profile;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.lazyregexp.Lazyregexp;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.sort.Sort;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.regexp.Regexp;
function _decodeMessage(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        {
            var _err = (stdgo._internal.internal.profile.Profile__checkType._checkType(_b, (2 : stdgo.GoInt)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _dec = _m._decoder();
        var _data = (@:checkr _b ?? throw "null pointer dereference")._data;
        while (((_data.length) > (0 : stdgo.GoInt) : Bool)) {
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = stdgo._internal.internal.profile.Profile__decodeField._decodeField(_b, _data);
                _data = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
            if ((((@:checkr _b ?? throw "null pointer dereference")._field >= (_dec.length) : Bool) || (_dec[((@:checkr _b ?? throw "null pointer dereference")._field : stdgo.GoInt)] == null) : Bool)) {
                continue;
            };
            {
                var _err = (_dec[((@:checkr _b ?? throw "null pointer dereference")._field : stdgo.GoInt)](_b, _m) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
