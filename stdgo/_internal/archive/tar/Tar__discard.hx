package stdgo._internal.archive.tar;
function _discard(_r:stdgo._internal.io.Io_reader.Reader, _n:stdgo.GoInt64):stdgo.Error {
        var _seekSkipped:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.io.Io_seeker.Seeker)) : stdgo._internal.io.Io_seeker.Seeker), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_seeker.Seeker), _1 : false };
            }, _sr = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && (_n > (1i64 : stdgo.GoInt64) : Bool) : Bool)) {
                var __tmp__ = _sr.seek((0i64 : stdgo.GoInt64), (1 : stdgo.GoInt)), _pos1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_pos1 >= (0i64 : stdgo.GoInt64) : Bool) && (_err == null) : Bool)) {
                    var __tmp__ = _sr.seek((_n - (1i64 : stdgo.GoInt64) : stdgo.GoInt64), (1 : stdgo.GoInt)), _pos2:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_pos2 < (0i64 : stdgo.GoInt64) : Bool) || (_err != null) : Bool)) {
                        return _err;
                    };
                    _seekSkipped = (_pos2 - _pos1 : stdgo.GoInt64);
                };
            };
        };
        var __tmp__ = stdgo._internal.io.Io_copyn.copyN(stdgo._internal.io.Io_discard.discard, _r, (_n - _seekSkipped : stdgo.GoInt64)), _copySkipped:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) && ((_seekSkipped + _copySkipped : stdgo.GoInt64) < _n : Bool) : Bool)) {
            _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
        };
        return _err;
    }
