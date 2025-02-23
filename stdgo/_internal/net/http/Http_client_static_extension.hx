package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.Client_asInterface) class Client_static_extension {
    @:keep
    @:tdfield
    static public function closeIdleConnections( _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client> = _c;
        {};
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(@:check2r _c._transport()) : stdgo._internal.net.http.Http_t_closeidleconnections___localname___closeidler_31464.T_closeIdleConnections___localname___closeIdler_31464)) : stdgo._internal.net.http.Http_t_closeidleconnections___localname___closeidler_31464.T_closeIdleConnections___localname___closeIdler_31464), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.net.http.Http_t_closeidleconnections___localname___closeidler_31464.T_closeIdleConnections___localname___closeIdler_31464), _1 : false };
            }, _tr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _tr.closeIdleConnections();
            };
        };
    }
    @:keep
    @:tdfield
    static public function head( _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client>, _url:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client> = _c;
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>), _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.net.http.Http_newrequest.newRequest(("HEAD" : stdgo.GoString), _url?.__copy__(), (null : stdgo._internal.io.Io_reader.Reader)), _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                _resp = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__ = @:check2r _c.do_(_req);
            _resp = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _resp, _1 : _err };
        };
    }
    @:keep
    @:tdfield
    static public function postForm( _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client>, _url:stdgo.GoString, _data:stdgo._internal.net.url.Url_values.Values):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client> = _c;
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>), _err = (null : stdgo.Error);
        return {
            final __tmp__ = @:check2r _c.post(_url?.__copy__(), ("application/x-www-form-urlencoded" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__strings._strings.newReader(_data.encode()?.__copy__())));
            _resp = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _resp, _1 : _err };
        };
    }
    @:keep
    @:tdfield
    static public function post( _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client>, _url:stdgo.GoString, _contentType:stdgo.GoString, _body:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client> = _c;
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>), _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.net.http.Http_newrequest.newRequest(("POST" : stdgo.GoString), _url?.__copy__(), _body), _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                _resp = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        (@:checkr _req ?? throw "null pointer dereference").header.set(("Content-Type" : stdgo.GoString), _contentType?.__copy__());
        return {
            final __tmp__ = @:check2r _c.do_(_req);
            _resp = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _resp, _1 : _err };
        };
    }
    @:keep
    @:tdfield
    static public function do_( _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client> = _c;
        return @:check2r _c._do(_req);
    }
    @:keep
    @:tdfield
    static public function get( _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client>, _url:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client> = _c;
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>), _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.net.http.Http_newrequest.newRequest(("GET" : stdgo.GoString), _url?.__copy__(), (null : stdgo._internal.io.Io_reader.Reader)), _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                _resp = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__ = @:check2r _c.do_(_req);
            _resp = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _resp, _1 : _err };
        };
    }
}
