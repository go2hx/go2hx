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
function _encodeUint64(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _tag:stdgo.GoInt, _x:stdgo.GoUInt64):Void {
        stdgo._internal.internal.profile.Profile__encodeVarint._encodeVarint(_b, (((_tag : stdgo.GoUInt64) << (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (0i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        stdgo._internal.internal.profile.Profile__encodeVarint._encodeVarint(_b, _x);
    }
