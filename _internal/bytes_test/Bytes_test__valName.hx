package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function _valName(_x:stdgo.GoInt):stdgo.GoString {
        {
            var _s = (_x >> (20i64 : stdgo.GoUInt64) : stdgo.GoInt);
            if ((_s << (20i64 : stdgo.GoUInt64) : stdgo.GoInt) == (_x)) {
                return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%dM" : stdgo.GoString), stdgo.Go.toInterface(_s))?.__copy__();
            };
        };
        {
            var _s = (_x >> (10i64 : stdgo.GoUInt64) : stdgo.GoInt);
            if ((_s << (10i64 : stdgo.GoUInt64) : stdgo.GoInt) == (_x)) {
                return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%dK" : stdgo.GoString), stdgo.Go.toInterface(_s))?.__copy__();
            };
        };
        return stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_x))?.__copy__();
    }
