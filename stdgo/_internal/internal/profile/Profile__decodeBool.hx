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
function _decodeBool(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _x:stdgo.Pointer<Bool>):stdgo.Error {
        {
            var _err = (stdgo._internal.internal.profile.Profile__checkType._checkType(_b, (0 : stdgo.GoInt)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if (((@:checkr _b ?? throw "null pointer dereference")._u64 : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
            _x.value = false;
        } else {
            _x.value = true;
        };
        return (null : stdgo.Error);
    }
