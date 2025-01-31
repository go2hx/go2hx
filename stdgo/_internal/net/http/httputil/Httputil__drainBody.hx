package stdgo._internal.net.http.httputil;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.http.internal.Internal;
import stdgo._internal.net.http.Http;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.textproto.Textproto;
import _internal.golang_dot_org.x.net.http.httpguts.Httpguts;
import stdgo._internal.net.url.Url;
import stdgo._internal.net.Net;
import stdgo._internal.context.Context;
import stdgo._internal.net.http.internal.ascii.Ascii;
import stdgo._internal.net.http.httptrace.Httptrace;
import stdgo._internal.mime.Mime;
import stdgo._internal.time.Time;
import stdgo._internal.log.Log;
function _drainBody(_b:stdgo._internal.io.Io_ReadCloser.ReadCloser):{ var _0 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _1 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _2 : stdgo.Error; } {
        var _r1 = (null : stdgo._internal.io.Io_ReadCloser.ReadCloser), _r2 = (null : stdgo._internal.io.Io_ReadCloser.ReadCloser), _err = (null : stdgo.Error);
        if (((_b == null) || (stdgo.Go.toInterface(_b) == stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_noBody.noBody))) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _1 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _2 : stdgo.Error; } = { _0 : stdgo.Go.asInterface(stdgo._internal.net.http.Http_noBody.noBody), _1 : stdgo.Go.asInterface(stdgo._internal.net.http.Http_noBody.noBody), _2 : (null : stdgo.Error) };
                _r1 = __tmp__._0;
                _r2 = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        {
            {
                var __tmp__ = @:check2 _buf.readFrom(_b);
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _1 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _2 : stdgo.Error; } = { _0 : (null : stdgo._internal.io.Io_ReadCloser.ReadCloser), _1 : _b, _2 : _err };
                    _r1 = __tmp__._0;
                    _r2 = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        {
            _err = _b.close();
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _1 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _2 : stdgo.Error; } = { _0 : (null : stdgo._internal.io.Io_ReadCloser.ReadCloser), _1 : _b, _2 : _err };
                    _r1 = __tmp__._0;
                    _r2 = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _1 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _2 : stdgo.Error; } = { _0 : stdgo._internal.io.Io_nopCloser.nopCloser(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>))), _1 : stdgo._internal.io.Io_nopCloser.nopCloser(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader(@:check2 _buf.bytes()))), _2 : (null : stdgo.Error) };
            _r1 = __tmp__._0;
            _r2 = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
