package stdgo._internal.net.http.internal;
function _readChunkLine(_b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var __tmp__ = _b.readSlice((10 : stdgo.GoUInt8)), _p:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
            } else if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.bufio.Bufio_errBufferFull.errBufferFull))) {
                _err = stdgo._internal.net.http.internal.Internal_errLineTooLong.errLineTooLong;
            };
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        if (((_p.length) >= (4096 : stdgo.GoInt) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.net.http.internal.Internal_errLineTooLong.errLineTooLong };
        };
        _p = stdgo._internal.net.http.internal.Internal__trimTrailingWhitespace._trimTrailingWhitespace(_p);
        {
            var __tmp__ = stdgo._internal.net.http.internal.Internal__removeChunkExtension._removeChunkExtension(_p);
            _p = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
