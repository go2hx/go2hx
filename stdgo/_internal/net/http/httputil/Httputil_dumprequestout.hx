package stdgo._internal.net.http.httputil;
function dumpRequestOut(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _body:Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _save = ((@:checkr _req ?? throw "null pointer dereference").body : stdgo._internal.io.Io_readcloser.ReadCloser);
            var _dummyBody = (false : Bool);
            if (!_body) {
                var _contentLength = (stdgo._internal.net.http.httputil.Httputil__outgoinglength._outgoingLength(_req) : stdgo.GoInt64);
                if (_contentLength != ((0i64 : stdgo.GoInt64))) {
                    (@:checkr _req ?? throw "null pointer dereference").body = stdgo._internal.io.Io_nopcloser.nopCloser(stdgo._internal.io.Io_limitreader.limitReader(stdgo.Go.asInterface((120 : stdgo._internal.net.http.httputil.Httputil_t_neverending.T_neverEnding)), _contentLength));
                    _dummyBody = true;
                };
            } else {
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = stdgo._internal.net.http.httputil.Httputil__drainbody._drainBody((@:checkr _req ?? throw "null pointer dereference").body);
                    _save = @:tmpset0 __tmp__._0;
                    (@:checkr _req ?? throw "null pointer dereference").body = @:tmpset0 __tmp__._1;
                    _err = @:tmpset0 __tmp__._2;
                };
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
            };
            var _reqSend = _req;
            if ((@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").scheme == (("https" : stdgo.GoString))) {
                _reqSend = (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_request.Request)) : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
                {
                    var __tmp__ = (_req : stdgo._internal.net.http.Http_request.Request)?.__copy__();
                    var x = (_reqSend : stdgo._internal.net.http.Http_request.Request);
                    x.method = __tmp__?.method;
                    x.uRL = __tmp__?.uRL;
                    x.proto = __tmp__?.proto;
                    x.protoMajor = __tmp__?.protoMajor;
                    x.protoMinor = __tmp__?.protoMinor;
                    x.header = __tmp__?.header;
                    x.body = __tmp__?.body;
                    x.getBody = __tmp__?.getBody;
                    x.contentLength = __tmp__?.contentLength;
                    x.transferEncoding = __tmp__?.transferEncoding;
                    x.close = __tmp__?.close;
                    x.host = __tmp__?.host;
                    x.form = __tmp__?.form;
                    x.postForm = __tmp__?.postForm;
                    x.multipartForm = __tmp__?.multipartForm;
                    x.trailer = __tmp__?.trailer;
                    x.remoteAddr = __tmp__?.remoteAddr;
                    x.requestURI = __tmp__?.requestURI;
                    x.tLS = __tmp__?.tLS;
                    x.cancel = __tmp__?.cancel;
                    x.response = __tmp__?.response;
                    x._ctx = __tmp__?._ctx;
                };
                (@:checkr _reqSend ?? throw "null pointer dereference").uRL = (stdgo.Go.setRef(({} : stdgo._internal.net.url.Url_url.URL)) : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
                {
                    var __tmp__ = ((@:checkr _req ?? throw "null pointer dereference").uRL : stdgo._internal.net.url.Url_url.URL)?.__copy__();
                    var x = ((@:checkr _reqSend ?? throw "null pointer dereference").uRL : stdgo._internal.net.url.Url_url.URL);
                    x.scheme = __tmp__?.scheme;
                    x.opaque = __tmp__?.opaque;
                    x.user = __tmp__?.user;
                    x.host = __tmp__?.host;
                    x.path = __tmp__?.path;
                    x.rawPath = __tmp__?.rawPath;
                    x.omitHost = __tmp__?.omitHost;
                    x.forceQuery = __tmp__?.forceQuery;
                    x.rawQuery = __tmp__?.rawQuery;
                    x.fragment = __tmp__?.fragment;
                    x.rawFragment = __tmp__?.rawFragment;
                };
                (@:checkr (@:checkr _reqSend ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").scheme = ("http" : stdgo.GoString);
            };
            var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
            var __tmp__ = stdgo._internal.io.Io_pipe.pipe(), _pr:stdgo.Ref<stdgo._internal.io.Io_pipereader.PipeReader> = __tmp__._0, _pw:stdgo.Ref<stdgo._internal.io.Io_pipewriter.PipeWriter> = __tmp__._1;
            {
                final __f__ = @:check2r _pr.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __f__ = @:check2r _pw.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _dr = (stdgo.Go.setRef(({ _c : (new stdgo.Chan<stdgo._internal.io.Io_reader.Reader>(0, () -> (null : stdgo._internal.io.Io_reader.Reader)) : stdgo.Chan<stdgo._internal.io.Io_reader.Reader>) } : stdgo._internal.net.http.httputil.Httputil_t_delegatereader.T_delegateReader)) : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_t_delegatereader.T_delegateReader>);
            var _t = (stdgo.Go.setRef(({ dial : function(_net:stdgo.GoString, _addr:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } {
                return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.httputil.Httputil_t_dumpconn.T_dumpConn(stdgo._internal.io.Io_multiwriter.multiWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo.Go.asInterface(_pw)), stdgo.Go.asInterface(_dr)) : stdgo._internal.net.http.httputil.Httputil_t_dumpconn.T_dumpConn)) : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_t_dumpconn.T_dumpConn>)), _1 : (null : stdgo.Error) };
            } } : stdgo._internal.net.http.Http_transport.Transport)) : stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>);
            {
                final __f__ = @:check2r _t.closeIdleConnections;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _quitReadCh = (new stdgo.Chan<stdgo._internal.net.http.httputil.Httputil_t_failuretoreadbody.T_failureToReadBody>(0, () -> ({} : stdgo._internal.net.http.httputil.Httputil_t_failuretoreadbody.T_failureToReadBody)) : stdgo.Chan<stdgo._internal.net.http.httputil.Httputil_t_failuretoreadbody.T_failureToReadBody>);
            stdgo.Go.routine(() -> ({
                var a = function():Void {
                    var __tmp__ = stdgo._internal.net.http.Http_readrequest.readRequest(stdgo._internal.bufio.Bufio_newreader.newReader(stdgo.Go.asInterface(_pr))), _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        stdgo._internal.io.Io_copy.copy(stdgo._internal.io.Io_discard.discard, (@:checkr _req ?? throw "null pointer dereference").body);
                        (@:checkr _req ?? throw "null pointer dereference").body.close();
                    };
                    {
                        var __select__ = true;
                        while (__select__) {
                            if ((@:checkr _dr ?? throw "null pointer dereference")._c != null && (@:checkr _dr ?? throw "null pointer dereference")._c.__isSend__()) {
                                __select__ = false;
                                {
                                    (@:checkr _dr ?? throw "null pointer dereference")._c.__send__(stdgo._internal.strings.Strings_newreader.newReader(("HTTP/1.1 204 No Content\r\nConnection: close\r\n\r\n" : stdgo.GoString)));
                                    {};
                                };
                            } else if (_quitReadCh != null && _quitReadCh.__isGet__()) {
                                __select__ = false;
                                {
                                    _quitReadCh.__get__();
                                    {
                                        if ((@:checkr _dr ?? throw "null pointer dereference")._c != null) (@:checkr _dr ?? throw "null pointer dereference")._c.__close__();
                                    };
                                };
                            };
                            #if !js Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                    };
                };
                a();
            }));
            var __tmp__ = @:check2r _t.roundTrip(_reqSend), __8:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            (@:checkr _req ?? throw "null pointer dereference").body = _save;
            if (_err != null) {
                @:check2r _pw.close();
                (@:checkr _dr ?? throw "null pointer dereference")._err = _err;
                if (_quitReadCh != null) _quitReadCh.__close__();
                {
                    final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _dump = @:check2 _buf.bytes();
            if (_dummyBody) {
                {
                    var _i = (stdgo._internal.bytes.Bytes_index.index(_dump, ((("\r\n\r\n" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                    if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                        _dump = (_dump.__slice__(0, (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                };
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : _dump, _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
            };
        };
    }
