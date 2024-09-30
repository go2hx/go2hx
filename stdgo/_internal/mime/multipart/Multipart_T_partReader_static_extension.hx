package stdgo._internal.mime.multipart;
@:keep @:allow(stdgo._internal.mime.multipart.Multipart.T_partReader_asInterface) class T_partReader_static_extension {
    @:keep
    static public function read( _pr:stdgo._internal.mime.multipart.Multipart_T_partReader.T_partReader, _d:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _pr:stdgo._internal.mime.multipart.Multipart_T_partReader.T_partReader = _pr?.__copy__();
        var _p = _pr._p;
        var _br = _p._mr._bufReader;
        while (((_p._n == (0 : stdgo.GoInt)) && (_p._err == null) : Bool)) {
            var __tmp__ = _br.peek(_br.buffered()), _peek:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            {
                var __tmp__ = stdgo._internal.mime.multipart.Multipart__scanUntilBoundary._scanUntilBoundary(_peek, _p._mr._dashBoundary, _p._mr._nlDashBoundary, _p._total, _p._readErr);
                _p._n = __tmp__._0;
                _p._err = __tmp__._1;
            };
            if (((_p._n == (0 : stdgo.GoInt)) && (_p._err == null) : Bool)) {
                {
                    var __tmp__ = _br.peek(((_peek.length) + (1 : stdgo.GoInt) : stdgo.GoInt));
                    _p._readErr = __tmp__._1;
                };
                if (stdgo.Go.toInterface(_p._readErr) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                    _p._readErr = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
                };
            };
        };
        if (_p._n == ((0 : stdgo.GoInt))) {
            return { _0 : (0 : stdgo.GoInt), _1 : _p._err };
        };
        var _n = (_d.length : stdgo.GoInt);
        if ((_n > _p._n : Bool)) {
            _n = _p._n;
        };
        {
            var __tmp__ = _br.read((_d.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
            _n = __tmp__._0;
        };
        _p._total = (_p._total + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        _p._n = (_p._n - (_n) : stdgo.GoInt);
        if (_p._n == ((0 : stdgo.GoInt))) {
            return { _0 : _n, _1 : _p._err };
        };
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
}
