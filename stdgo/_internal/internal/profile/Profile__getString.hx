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
function _getString(_strings:stdgo.Slice<stdgo.GoString>, _strng:stdgo.Pointer<stdgo.GoInt64>, _err:stdgo.Error):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        if (_err != null) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
        };
        var _s = (_strng.value : stdgo.GoInt);
        if (((_s < (0 : stdgo.GoInt) : Bool) || (_s >= (_strings.length) : Bool) : Bool)) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.internal.profile.Profile__errMalformed._errMalformed };
        };
        _strng.value = (0i64 : stdgo.GoInt64);
        return { _0 : _strings[(_s : stdgo.GoInt)]?.__copy__(), _1 : (null : stdgo.Error) };
    }
