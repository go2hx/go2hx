package stdgo._internal.net.http.httputil;
function _drainBody(_b:stdgo._internal.io.Io_ReadCloser.ReadCloser):{ var _0 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _1 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _2 : stdgo.Error; } {
        var _r1 = (null : stdgo._internal.io.Io_ReadCloser.ReadCloser), _r2 = (null : stdgo._internal.io.Io_ReadCloser.ReadCloser), _err = (null : stdgo.Error);
        if (((_b == null) || (stdgo.Go.toInterface(_b) == stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_noBody.noBody))) : Bool)) {
            return { _0 : stdgo.Go.asInterface(stdgo._internal.net.http.Http_noBody.noBody), _1 : stdgo.Go.asInterface(stdgo._internal.net.http.Http_noBody.noBody), _2 : (null : stdgo.Error) };
        };
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        {
            {
                var __tmp__ = _buf.readFrom(_b);
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : (null : stdgo._internal.io.Io_ReadCloser.ReadCloser), _1 : _b, _2 : _err };
            };
        };
        {
            _err = _b.close();
            if (_err != null) {
                return { _0 : (null : stdgo._internal.io.Io_ReadCloser.ReadCloser), _1 : _b, _2 : _err };
            };
        };
        return { _0 : stdgo._internal.io.Io_nopCloser.nopCloser(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>))), _1 : stdgo._internal.io.Io_nopCloser.nopCloser(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader(_buf.bytes()))), _2 : (null : stdgo.Error) };
    }
