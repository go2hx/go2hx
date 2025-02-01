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
function _scaleHeapSample(_count:stdgo.GoInt64, _size:stdgo.GoInt64, _rate:stdgo.GoInt64):{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; } {
        if (((_count == (0i64 : stdgo.GoInt64)) || (_size == (0i64 : stdgo.GoInt64)) : Bool)) {
            return { _0 : (0i64 : stdgo.GoInt64), _1 : (0i64 : stdgo.GoInt64) };
        };
        if ((_rate <= (1i64 : stdgo.GoInt64) : Bool)) {
            return { _0 : _count, _1 : _size };
        };
        var _avgSize = ((_size : stdgo.GoFloat64) / (_count : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _scale = ((1 : stdgo.GoFloat64) / (((1 : stdgo.GoFloat64) - stdgo._internal.math.Math_exp.exp((-_avgSize / (_rate : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        return { _0 : (((_count : stdgo.GoFloat64) * _scale : stdgo.GoFloat64) : stdgo.GoInt64), _1 : (((_size : stdgo.GoFloat64) * _scale : stdgo.GoFloat64) : stdgo.GoInt64) };
    }
