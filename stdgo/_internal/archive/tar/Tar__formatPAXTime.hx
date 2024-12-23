package stdgo._internal.archive.tar;
function _formatPAXTime(_ts:stdgo._internal.time.Time_Time.Time):stdgo.GoString {
        var _s = ("" : stdgo.GoString);
        var __0 = (_ts.unix() : stdgo.GoInt64), __1 = (_ts.nanosecond() : stdgo.GoInt);
var _nsecs = __1, _secs = __0;
        if (_nsecs == ((0 : stdgo.GoInt))) {
            return _s = stdgo._internal.strconv.Strconv_formatInt.formatInt(_secs, (10 : stdgo.GoInt))?.__copy__();
        };
        var _sign = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        if ((_secs < (0i64 : stdgo.GoInt64) : Bool)) {
            _sign = ("-" : stdgo.GoString);
            _secs = -((_secs + (1i64 : stdgo.GoInt64) : stdgo.GoInt64));
            _nsecs = -((_nsecs - (1000000000 : stdgo.GoInt) : stdgo.GoInt));
        };
        return _s = stdgo._internal.strings.Strings_trimRight.trimRight(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s%d.%09d" : stdgo.GoString), stdgo.Go.toInterface(_sign), stdgo.Go.toInterface(_secs), stdgo.Go.toInterface(_nsecs))?.__copy__(), ("0" : stdgo.GoString))?.__copy__();
    }
