package stdgo._internal.encoding.json;
function _codeInit():Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os_open.open(("testdata/code.json.gz" : stdgo.GoString)), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L48"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L49"
                throw stdgo.Go.toInterface(_err);
            };
            {
                final __f__ = _f.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var __tmp__ = stdgo._internal.compress.gzip.Gzip_newreader.newReader(stdgo.Go.asInterface(_f)), _gz:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_reader.Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L53"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L54"
                throw stdgo.Go.toInterface(_err);
            };
            var __tmp__ = stdgo._internal.io.Io_readall.readAll(stdgo.Go.asInterface(_gz)), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L57"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L58"
                throw stdgo.Go.toInterface(_err);
            };
            stdgo._internal.encoding.json.Json__codejson._codeJSON = _data;
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L63"
            {
                var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(stdgo._internal.encoding.json.Json__codejson._codeJSON, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(stdgo._internal.encoding.json.Json__codestruct._codeStruct) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_coderesponse.T_codeResponse>)))) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L64"
                    throw stdgo.Go.toInterface((("unmarshal code.json: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L67"
            {
                {
                    var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(stdgo._internal.encoding.json.Json__codestruct._codeStruct) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_coderesponse.T_codeResponse>))));
                    _data = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L68"
                    throw stdgo.Go.toInterface((("marshal code.json: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L71"
            if (!stdgo._internal.bytes.Bytes_equal.equal(_data, stdgo._internal.encoding.json.Json__codejson._codeJSON)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L72"
                stdgo.Go.println(("different lengths" : stdgo.GoString), (_data.length), (stdgo._internal.encoding.json.Json__codejson._codeJSON.length));
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L73"
                {
                    var _i = (0 : stdgo.GoInt);
                    while (((_i < (_data.length) : Bool) && (_i < (stdgo._internal.encoding.json.Json__codejson._codeJSON.length) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L74"
                        if (_data[(_i : stdgo.GoInt)] != (stdgo._internal.encoding.json.Json__codejson._codeJSON[(_i : stdgo.GoInt)])) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L75"
                            stdgo.Go.println(("re-marshal: changed at byte" : stdgo.GoString), _i);
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L76"
                            stdgo.Go.println(("orig: " : stdgo.GoString), ((stdgo._internal.encoding.json.Json__codejson._codeJSON.__slice__((_i - (10 : stdgo.GoInt) : stdgo.GoInt), (_i + (10 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString));
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L77"
                            stdgo.Go.println(("new: " : stdgo.GoString), ((_data.__slice__((_i - (10 : stdgo.GoInt) : stdgo.GoInt), (_i + (10 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString));
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L78"
                            break;
                        };
                        _i++;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/bench_test.go#L81"
                throw stdgo.Go.toInterface(("re-marshal code.json: different result" : stdgo.GoString));
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
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
