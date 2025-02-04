package stdgo._internal.net.http.internal;
function _readChunkLine(_b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var __tmp__ = @:check2r _b.readSlice((10 : stdgo.GoUInt8)), _p:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
            } else if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.bufio.Bufio_errbufferfull.errBufferFull))) {
                _err = stdgo._internal.net.http.internal.Internal_errlinetoolong.errLineTooLong;
            };
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        if (((_p.length) >= (4096 : stdgo.GoInt) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.net.http.internal.Internal_errlinetoolong.errLineTooLong };
        };
        _p = stdgo._internal.net.http.internal.Internal__trimtrailingwhitespace._trimTrailingWhitespace(_p);
        {
            var __tmp__ = stdgo._internal.net.http.internal.Internal__removechunkextension._removeChunkExtension(_p);
            _p = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
