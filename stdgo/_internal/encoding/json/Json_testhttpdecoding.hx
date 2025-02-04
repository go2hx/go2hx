package stdgo._internal.encoding.json;
function testHTTPDecoding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {};
            var _ts = stdgo._internal.net.http.httptest.Httptest_newserver.newServer(stdgo.Go.asInterface((function(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
                _w.write(((("{ \"foo\": \"bar\" }" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
            } : stdgo._internal.net.http.Http_handlerfunc.HandlerFunc)));
            {
                final __f__ = @:check2r _ts.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var __tmp__ = stdgo._internal.net.http.Http_get.get((@:checkr _ts ?? throw "null pointer dereference").uRL?.__copy__()), _res:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log_fatalf.fatalf(("GET failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            {
                final __f__ = (@:checkr _res ?? throw "null pointer dereference").body.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _foo = ({ foo : ("" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_44.T__struct_44);
            var _d = stdgo._internal.encoding.json.Json_newdecoder.newDecoder((@:checkr _res ?? throw "null pointer dereference").body);
            _err = @:check2r _d.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_foo) : stdgo.Ref<stdgo._internal.encoding.json.Json_t__struct_44.T__struct_44>))));
            if (_err != null) {
                @:check2r _t.fatalf(("Decode: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            if (_foo.foo != (("bar" : stdgo.GoString))) {
                @:check2r _t.errorf(("decoded %q; want \"bar\"" : stdgo.GoString), stdgo.Go.toInterface(_foo.foo));
            };
            _err = @:check2r _d.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_foo) : stdgo.Ref<stdgo._internal.encoding.json.Json_t__struct_44.T__struct_44>))));
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                @:check2r _t.errorf(("err = %v; want io.EOF" : stdgo.GoString), stdgo.Go.toInterface(_err));
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
                return;
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
                return;
            };
        };
    }
