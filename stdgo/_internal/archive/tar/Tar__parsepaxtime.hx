package stdgo._internal.archive.tar;
function _parsePAXTime(_s:stdgo.GoString):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : stdgo.Error; } {
        {};
        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_s?.__copy__(), ("." : stdgo.GoString)), _ss:stdgo.GoString = __tmp__._0, _sn:stdgo.GoString = __tmp__._1, __1:Bool = __tmp__._2;
        var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_ss?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _secs:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time), _1 : stdgo._internal.archive.tar.Tar_errheader.errHeader };
        };
        if ((_sn.length) == ((0 : stdgo.GoInt))) {
            return { _0 : stdgo._internal.time.Time_unix.unix(_secs, (0i64 : stdgo.GoInt64))?.__copy__(), _1 : (null : stdgo.Error) };
        };
        if (stdgo._internal.strings.Strings_trim.trim(_sn?.__copy__(), ("0123456789" : stdgo.GoString)) != ((stdgo.Go.str() : stdgo.GoString))) {
            return { _0 : (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time), _1 : stdgo._internal.archive.tar.Tar_errheader.errHeader };
        };
        if (((_sn.length) < (9 : stdgo.GoInt) : Bool)) {
            _sn = (_sn + (stdgo._internal.strings.Strings_repeat.repeat((("0" : stdgo.GoString) : stdgo.GoString), ((9 : stdgo.GoInt) - (_sn.length) : stdgo.GoInt)))?.__copy__() : stdgo.GoString);
        } else {
            _sn = (_sn.__slice__(0, (9 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_sn?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _nsecs:stdgo.GoInt64 = __tmp__._0, __2:stdgo.Error = __tmp__._1;
        if ((((_ss.length) > (0 : stdgo.GoInt) : Bool) && (_ss[(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : stdgo._internal.time.Time_unix.unix(_secs, ((-1i64 : stdgo.GoInt64) * _nsecs : stdgo.GoInt64))?.__copy__(), _1 : (null : stdgo.Error) };
        };
        return { _0 : stdgo._internal.time.Time_unix.unix(_secs, _nsecs)?.__copy__(), _1 : (null : stdgo.Error) };
    }
