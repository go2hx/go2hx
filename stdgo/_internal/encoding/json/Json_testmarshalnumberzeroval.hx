package stdgo._internal.encoding.json;
function testMarshalNumberZeroVal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _n:stdgo._internal.encoding.json.Json_number.Number = (("" : stdgo.GoString) : stdgo._internal.encoding.json.Json_number.Number);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_n))), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1030"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1031"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _outStr = ((_out : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1034"
        if (_outStr != (("0" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1035"
            _t.fatalf(("Invalid zero val for Number: %q" : stdgo.GoString), stdgo.Go.toInterface(_outStr));
        };
    }
