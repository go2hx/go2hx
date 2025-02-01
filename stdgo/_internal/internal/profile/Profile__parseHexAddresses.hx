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
function _parseHexAddresses(_s:stdgo.GoString):stdgo.Slice<stdgo.GoUInt64> {
        var __tmp__ = stdgo._internal.internal.profile.Profile__extractHexAddresses._extractHexAddresses(_s?.__copy__()), __0:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ids:stdgo.Slice<stdgo.GoUInt64> = __tmp__._1;
        return _ids;
    }
