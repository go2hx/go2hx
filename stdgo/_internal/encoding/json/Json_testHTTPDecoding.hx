package stdgo._internal.encoding.json;
function testHTTPDecoding(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            var _ts = stdgo._internal.net.http.httptest.Httptest_newServer.newServer(stdgo.Go.asInterface((function(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
                _w.write((("{ \"foo\": \"bar\" }" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
            } : stdgo._internal.net.http.Http_HandlerFunc.HandlerFunc)));
            __deferstack__.unshift(() -> _ts.close());
            var __tmp__ = stdgo._internal.net.http.Http_get.get(_ts.url?.__copy__()), _res:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log_fatalf.fatalf(("GET failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _res.body.close());
            var _foo = ({ foo : ("" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_44.T__struct_44);
            var _foo__pointer__ = (stdgo.Go.setRef(_foo) : stdgo.Ref<stdgo._internal.encoding.json.Json_T__struct_44.T__struct_44>);
            var _foo__pointer__ = (stdgo.Go.setRef(_foo) : stdgo.Ref<stdgo._internal.encoding.json.Json_T__struct_44.T__struct_44>);
            var _foo__pointer__ = (stdgo.Go.setRef(_foo) : stdgo.Ref<stdgo._internal.encoding.json.Json_T__struct_44.T__struct_44>);
            var _foo__pointer__ = (stdgo.Go.setRef(_foo) : stdgo.Ref<stdgo._internal.encoding.json.Json_T__struct_44.T__struct_44>);
            var _d = stdgo._internal.encoding.json.Json_newDecoder.newDecoder(_res.body);
            _err = _d.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_foo__pointer__)));
            if (_err != null) {
                _t.fatalf(("Decode: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            if (_foo.foo != (("bar" : stdgo.GoString))) {
                _t.errorf(("decoded %q; want \"bar\"" : stdgo.GoString), stdgo.Go.toInterface(_foo.foo));
            };
            _err = _d.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_foo__pointer__)));
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                _t.errorf(("err = %v; want io.EOF" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
