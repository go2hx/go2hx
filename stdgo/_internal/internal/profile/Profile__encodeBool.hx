package stdgo._internal.internal.profile;
import stdgo._internal.errors.Errors;
import _internal.internal.lazyregexp.Lazyregexp;
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
function _encodeBool(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _tag:stdgo.GoInt, _x:Bool):Void {
        if (_x) {
            stdgo._internal.internal.profile.Profile__encodeUint64._encodeUint64(_b, _tag, (1i64 : stdgo.GoUInt64));
        } else {
            stdgo._internal.internal.profile.Profile__encodeUint64._encodeUint64(_b, _tag, (0i64 : stdgo.GoUInt64));
        };
    }
