package stdgo._internal.net.http.httputil;
function dumpRequestOut(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _body:Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _save = (_req.body : stdgo._internal.io.Io_ReadCloser.ReadCloser);
            var _dummyBody = (false : Bool);
            if (!_body) {
                var _contentLength = (stdgo._internal.net.http.httputil.Httputil__outgoingLength._outgoingLength(_req) : stdgo.GoInt64);
                if (_contentLength != ((0i64 : stdgo.GoInt64))) {
                    _req.body = stdgo._internal.io.Io_nopCloser.nopCloser(stdgo._internal.io.Io_limitReader.limitReader(stdgo.Go.asInterface((120 : stdgo._internal.net.http.httputil.Httputil_T_neverEnding.T_neverEnding)), _contentLength));
                    _dummyBody = true;
                };
            } else {
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = stdgo._internal.net.http.httputil.Httputil__drainBody._drainBody(_req.body);
                    _save = __tmp__._0;
                    _req.body = __tmp__._1;
                    _err = __tmp__._2;
                };
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
            };
            var _reqSend = _req;
            if (_req.url.scheme == (("https" : stdgo.GoString))) {
                _reqSend = (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_Request.Request)) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
                {
                    var __tmp__ = (_req : stdgo._internal.net.http.Http_Request.Request)?.__copy__();
                    (_reqSend : stdgo._internal.net.http.Http_Request.Request).method = __tmp__.method;
                    (_reqSend : stdgo._internal.net.http.Http_Request.Request).url = __tmp__.url;
                    (_reqSend : stdgo._internal.net.http.Http_Request.Request).proto = __tmp__.proto;
                    (_reqSend : stdgo._internal.net.http.Http_Request.Request).protoMajor = __tmp__.protoMajor;
                    (_reqSend : stdgo._internal.net.http.Http_Request.Request).protoMinor = __tmp__.protoMinor;
                    (_reqSend : stdgo._internal.net.http.Http_Request.Request).header = __tmp__.header;
                    (_reqSend : stdgo._internal.net.http.Http_Request.Request).body = __tmp__.body;
                    (_reqSend : stdgo._internal.net.http.Http_Request.Request).getBody = __tmp__.getBody;
                    (_reqSend : stdgo._internal.net.http.Http_Request.Request).contentLength = __tmp__.contentLength;
                    (_reqSend : stdgo._internal.net.http.Http_Request.Request).transferEncoding = __tmp__.transferEncoding;
                    (_reqSend : stdgo._internal.net.http.Http_Request.Request).close = __tmp__.close;
                    (_reqSend : stdgo._internal.net.http.Http_Request.Request).host = __tmp__.host;
                    (_reqSend : stdgo._internal.net.http.Http_Request.Request).form = __tmp__.form;
                    (_reqSend : stdgo._internal.net.http.Http_Request.Request).postForm = __tmp__.postForm;
                    (_reqSend : stdgo._internal.net.http.Http_Request.Request).multipartForm = __tmp__.multipartForm;
                    (_reqSend : stdgo._internal.net.http.Http_Request.Request).trailer = __tmp__.trailer;
                    (_reqSend : stdgo._internal.net.http.Http_Request.Request).remoteAddr = __tmp__.remoteAddr;
                    (_reqSend : stdgo._internal.net.http.Http_Request.Request).requestURI = __tmp__.requestURI;
                    (_reqSend : stdgo._internal.net.http.Http_Request.Request).tls = __tmp__.tls;
                    (_reqSend : stdgo._internal.net.http.Http_Request.Request).cancel = __tmp__.cancel;
                    (_reqSend : stdgo._internal.net.http.Http_Request.Request).response = __tmp__.response;
                    (_reqSend : stdgo._internal.net.http.Http_Request.Request)._ctx = __tmp__._ctx;
                };
                _reqSend.url = (stdgo.Go.setRef(({} : stdgo._internal.net.url.Url_URL.URL)) : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
                {
                    var __tmp__ = (_req.url : stdgo._internal.net.url.Url_URL.URL)?.__copy__();
                    (_reqSend.url : stdgo._internal.net.url.Url_URL.URL).scheme = __tmp__.scheme;
                    (_reqSend.url : stdgo._internal.net.url.Url_URL.URL).opaque = __tmp__.opaque;
                    (_reqSend.url : stdgo._internal.net.url.Url_URL.URL).user = __tmp__.user;
                    (_reqSend.url : stdgo._internal.net.url.Url_URL.URL).host = __tmp__.host;
                    (_reqSend.url : stdgo._internal.net.url.Url_URL.URL).path = __tmp__.path;
                    (_reqSend.url : stdgo._internal.net.url.Url_URL.URL).rawPath = __tmp__.rawPath;
                    (_reqSend.url : stdgo._internal.net.url.Url_URL.URL).omitHost = __tmp__.omitHost;
                    (_reqSend.url : stdgo._internal.net.url.Url_URL.URL).forceQuery = __tmp__.forceQuery;
                    (_reqSend.url : stdgo._internal.net.url.Url_URL.URL).rawQuery = __tmp__.rawQuery;
                    (_reqSend.url : stdgo._internal.net.url.Url_URL.URL).fragment = __tmp__.fragment;
                    (_reqSend.url : stdgo._internal.net.url.Url_URL.URL).rawFragment = __tmp__.rawFragment;
                };
                _reqSend.url.scheme = ("http" : stdgo.GoString);
            };
            var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
            var __tmp__ = stdgo._internal.io.Io_pipe.pipe(), _pr:stdgo.Ref<stdgo._internal.io.Io_PipeReader.PipeReader> = __tmp__._0, _pw:stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter> = __tmp__._1;
            __deferstack__.unshift(() -> _pr.close());
            __deferstack__.unshift(() -> _pw.close());
            var _dr = (stdgo.Go.setRef(({ _c : (new stdgo.Chan<stdgo._internal.io.Io_Reader.Reader>(0, () -> (null : stdgo._internal.io.Io_Reader.Reader)) : stdgo.Chan<stdgo._internal.io.Io_Reader.Reader>) } : stdgo._internal.net.http.httputil.Httputil_T_delegateReader.T_delegateReader)) : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_delegateReader.T_delegateReader>);
            var _t = (stdgo.Go.setRef(({ dial : function(_net:stdgo.GoString, _addr:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } {
                return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn(stdgo._internal.io.Io_multiWriter.multiWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), stdgo.Go.asInterface(_pw)), stdgo.Go.asInterface(_dr)) : stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn)) : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn>)), _1 : (null : stdgo.Error) };
            } } : stdgo._internal.net.http.Http_Transport.Transport)) : stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>);
            __deferstack__.unshift(() -> _t.closeIdleConnections());
            var _quitReadCh = (new stdgo.Chan<stdgo._internal.net.http.httputil.Httputil_T_failureToReadBody.T_failureToReadBody>(0, () -> ({} : stdgo._internal.net.http.httputil.Httputil_T_failureToReadBody.T_failureToReadBody)) : stdgo.Chan<stdgo._internal.net.http.httputil.Httputil_T_failureToReadBody.T_failureToReadBody>);
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    var __tmp__ = stdgo._internal.net.http.Http_readRequest.readRequest(stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_pr))), _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        stdgo._internal.io.Io_copy.copy(stdgo._internal.io.Io_discard.discard, _req.body);
                        _req.body.close();
                    };
                    {
                        var __select__ = true;
                        while (__select__) {
                            if (_dr._c != null && _dr._c.__isSend__()) {
                                __select__ = false;
                                {
                                    _dr._c.__send__(stdgo._internal.strings.Strings_newReader.newReader(("HTTP/1.1 204 No Content\r\nConnection: close\r\n\r\n" : stdgo.GoString)));
                                    {};
                                };
                            } else if (_quitReadCh != null && _quitReadCh.__isGet__()) {
                                __select__ = false;
                                {
                                    _quitReadCh.__get__();
                                    {
                                        if (_dr._c != null) _dr._c.__close__();
                                    };
                                };
                            };
                            #if !js Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                    };
                };
                a();
            });
            var __tmp__ = _t.roundTrip(_reqSend), __8:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _req.body = _save;
            if (_err != null) {
                _pw.close();
                _dr._err = _err;
                if (_quitReadCh != null) _quitReadCh.__close__();
                {
                    final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var _dump = _buf.bytes();
            if (_dummyBody) {
                {
                    var _i = (stdgo._internal.bytes.Bytes_index.index(_dump, (("\r\n\r\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                    if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                        _dump = (_dump.__slice__(0, (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                };
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : _dump, _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
