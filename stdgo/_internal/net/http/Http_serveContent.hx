package stdgo._internal.net.http;
function serveContent(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _name:stdgo.GoString, _modtime:stdgo._internal.time.Time_Time.Time, _content:stdgo._internal.io.Io_ReadSeeker.ReadSeeker):Void {
        var _sizeFunc = (function():{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
            var __tmp__ = _content.seek((0i64 : stdgo.GoInt64), (2 : stdgo.GoInt)), _size:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.net.http.Http__errSeeker._errSeeker };
            };
            {
                var __tmp__ = _content.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.net.http.Http__errSeeker._errSeeker };
            };
            return { _0 : _size, _1 : (null : stdgo.Error) };
        } : () -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; });
        stdgo._internal.net.http.Http__serveContent._serveContent(_w, _req, _name?.__copy__(), _modtime?.__copy__(), _sizeFunc, _content);
    }
