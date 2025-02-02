package stdgo._internal.encoding.json;
function testCompactBig(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.encoding.json.Json__initBig._initBig();
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        {
            var _err = (stdgo._internal.encoding.json.Json_compact.compact((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), stdgo._internal.encoding.json.Json__jsonBig._jsonBig) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatalf(("Compact: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var _b = @:check2 _buf.bytes();
        if (!stdgo._internal.bytes.Bytes_equal.equal(_b, stdgo._internal.encoding.json.Json__jsonBig._jsonBig)) {
            @:check2r _t.error(stdgo.Go.toInterface(("Compact(jsonBig) != jsonBig" : stdgo.GoString)));
            stdgo._internal.encoding.json.Json__diff._diff(_t, _b, stdgo._internal.encoding.json.Json__jsonBig._jsonBig);
            return;
        };
    }
