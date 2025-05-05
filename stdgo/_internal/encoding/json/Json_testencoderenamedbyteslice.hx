package stdgo._internal.encoding.json;
function testEncodeRenamedByteSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _s = ((("abc" : stdgo.GoString) : stdgo.GoString) : stdgo._internal.encoding.json.Json_t_renamedbyteslice.T_renamedByteSlice);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(_s)), _result:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L153"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L154"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _expect = (("\"YWJj\"" : stdgo.GoString) : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L157"
        if ((_result : stdgo.GoString) != (_expect)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L158"
            _t.errorf((" got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(_expect));
        };
        var _r = ((("abc" : stdgo.GoString) : stdgo.GoString) : stdgo._internal.encoding.json.Json_t_renamedrenamedbyteslice.T_renamedRenamedByteSlice);
        {
            var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(_r));
            _result = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L162"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L163"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L165"
        if ((_result : stdgo.GoString) != (_expect)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L166"
            _t.errorf((" got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(_expect));
        };
    }
