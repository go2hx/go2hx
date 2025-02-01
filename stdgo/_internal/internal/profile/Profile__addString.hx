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
function _addString(_strings:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, _s:stdgo.GoString):stdgo.GoInt64 {
        var __tmp__ = (_strings != null && _strings.exists(_s?.__copy__()) ? { _0 : _strings[_s?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _i:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _i = (_strings.length);
            _strings[_s] = _i;
        };
        return (_i : stdgo.GoInt64);
    }
