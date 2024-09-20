package stdgo._internal.net.http;
function _parseRange(_s:stdgo.GoString, _size:stdgo.GoInt64):{ var _0 : stdgo.Slice<stdgo._internal.net.http.Http_T_httpRange.T_httpRange>; var _1 : stdgo.Error; } {
        if (_s == (stdgo.Go.str())) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.net.http.Http_T_httpRange.T_httpRange>), _1 : (null : stdgo.Error) };
        };
        {};
        if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_s?.__copy__(), ("bytes=" : stdgo.GoString))) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.net.http.Http_T_httpRange.T_httpRange>), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid range" : stdgo.GoString)) };
        };
        var _ranges:stdgo.Slice<stdgo._internal.net.http.Http_T_httpRange.T_httpRange> = (null : stdgo.Slice<stdgo._internal.net.http.Http_T_httpRange.T_httpRange>);
        var _noOverlap = (false : Bool);
        for (__132 => _ra in stdgo._internal.strings.Strings_split.split((_s.__slice__((("bytes=" : stdgo.GoString).length)) : stdgo.GoString)?.__copy__(), ("," : stdgo.GoString))) {
            _ra = stdgo._internal.net.textproto.Textproto_trimString.trimString(_ra?.__copy__())?.__copy__();
            if (_ra == (stdgo.Go.str())) {
                continue;
            };
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_ra?.__copy__(), ("-" : stdgo.GoString)), _start:stdgo.GoString = __tmp__._0, _end:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (!_ok) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.net.http.Http_T_httpRange.T_httpRange>), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid range" : stdgo.GoString)) };
            };
            {
                final __tmp__0 = stdgo._internal.net.textproto.Textproto_trimString.trimString(_start?.__copy__())?.__copy__();
                final __tmp__1 = stdgo._internal.net.textproto.Textproto_trimString.trimString(_end?.__copy__())?.__copy__();
                _start = __tmp__0;
                _end = __tmp__1;
            };
            var _r:stdgo._internal.net.http.Http_T_httpRange.T_httpRange = ({} : stdgo._internal.net.http.Http_T_httpRange.T_httpRange);
            if (_start == (stdgo.Go.str())) {
                if (((_end == stdgo.Go.str()) || (_end[(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) : Bool)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.net.http.Http_T_httpRange.T_httpRange>), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid range" : stdgo.GoString)) };
                };
                var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_end?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _i:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_i < (0i64 : stdgo.GoInt64) : Bool) || (_err != null) : Bool)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.net.http.Http_T_httpRange.T_httpRange>), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid range" : stdgo.GoString)) };
                };
                if ((_i > _size : Bool)) {
                    _i = _size;
                };
                _r._start = (_size - _i : stdgo.GoInt64);
                _r._length = (_size - _r._start : stdgo.GoInt64);
            } else {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_start?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _i:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err != null) || (_i < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.net.http.Http_T_httpRange.T_httpRange>), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid range" : stdgo.GoString)) };
                };
                if ((_i >= _size : Bool)) {
                    _noOverlap = true;
                    continue;
                };
                _r._start = _i;
                if (_end == (stdgo.Go.str())) {
                    _r._length = (_size - _r._start : stdgo.GoInt64);
                } else {
                    var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_end?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _i:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_err != null) || (_r._start > _i : Bool) : Bool)) {
                        return { _0 : (null : stdgo.Slice<stdgo._internal.net.http.Http_T_httpRange.T_httpRange>), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid range" : stdgo.GoString)) };
                    };
                    if ((_i >= _size : Bool)) {
                        _i = (_size - (1i64 : stdgo.GoInt64) : stdgo.GoInt64);
                    };
                    _r._length = ((_i - _r._start : stdgo.GoInt64) + (1i64 : stdgo.GoInt64) : stdgo.GoInt64);
                };
            };
            _ranges = (_ranges.__append__(_r?.__copy__()));
        };
        if ((_noOverlap && (_ranges.length == (0 : stdgo.GoInt)) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.net.http.Http_T_httpRange.T_httpRange>), _1 : stdgo._internal.net.http.Http__errNoOverlap._errNoOverlap };
        };
        return { _0 : _ranges, _1 : (null : stdgo.Error) };
    }
