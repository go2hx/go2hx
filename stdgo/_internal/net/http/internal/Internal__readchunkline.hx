package stdgo._internal.net.http.internal;
function _readChunkLine(_b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var __tmp__ = _b.readSlice((10 : stdgo.GoUInt8)), _p:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/net/http/internal/chunked.go#L130"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/internal/chunked.go#L133"
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
            } else if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.bufio.Bufio_errbufferfull.errBufferFull))) {
                _err = stdgo._internal.net.http.internal.Internal_errlinetoolong.errLineTooLong;
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/internal/chunked.go#L138"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/internal/chunked.go#L140"
        if (((_p.length) >= (4096 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/internal/chunked.go#L141"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.net.http.internal.Internal_errlinetoolong.errLineTooLong };
        };
        _p = stdgo._internal.net.http.internal.Internal__trimtrailingwhitespace._trimTrailingWhitespace(_p);
        {
            var __tmp__ = stdgo._internal.net.http.internal.Internal__removechunkextension._removeChunkExtension(_p);
            _p = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/internal/chunked.go#L145"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/internal/chunked.go#L146"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/internal/chunked.go#L148"
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
