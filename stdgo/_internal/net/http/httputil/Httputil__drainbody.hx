package stdgo._internal.net.http.httputil;
function _drainBody(_b:stdgo._internal.io.Io_readcloser.ReadCloser):{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo._internal.io.Io_readcloser.ReadCloser; var _2 : stdgo.Error; } {
        var _r1 = (null : stdgo._internal.io.Io_readcloser.ReadCloser), _r2 = (null : stdgo._internal.io.Io_readcloser.ReadCloser), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L26"
        if (((_b == null) || (stdgo.Go.toInterface(_b) == stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_nobody.noBody))) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L28"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo._internal.io.Io_readcloser.ReadCloser; var _2 : stdgo.Error; } = { _0 : stdgo.Go.asInterface(stdgo._internal.net.http.Http_nobody.noBody), _1 : stdgo.Go.asInterface(stdgo._internal.net.http.Http_nobody.noBody), _2 : (null : stdgo.Error) };
                _r1 = __tmp__._0;
                _r2 = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L31"
        {
            {
                var __tmp__ = _buf.readFrom(_b);
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L32"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo._internal.io.Io_readcloser.ReadCloser; var _2 : stdgo.Error; } = { _0 : (null : stdgo._internal.io.Io_readcloser.ReadCloser), _1 : _b, _2 : _err };
                    _r1 = __tmp__._0;
                    _r2 = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L34"
        {
            _err = _b.close();
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L35"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo._internal.io.Io_readcloser.ReadCloser; var _2 : stdgo.Error; } = { _0 : (null : stdgo._internal.io.Io_readcloser.ReadCloser), _1 : _b, _2 : _err };
                    _r1 = __tmp__._0;
                    _r2 = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L37"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo._internal.io.Io_readcloser.ReadCloser; var _2 : stdgo.Error; } = { _0 : stdgo._internal.io.Io_nopcloser.nopCloser(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>))), _1 : stdgo._internal.io.Io_nopcloser.nopCloser(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_buf.bytes()))), _2 : (null : stdgo.Error) };
            _r1 = __tmp__._0;
            _r2 = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
