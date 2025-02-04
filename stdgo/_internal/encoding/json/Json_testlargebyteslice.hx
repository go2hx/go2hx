package stdgo._internal.encoding.json;
function testLargeByteSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _s0 = (new stdgo.Slice<stdgo.GoUInt8>((2000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _s0) {
            _s0[(_i : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
        };
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(_s0)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("Marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _s1:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_b, stdgo.Go.toInterface((stdgo.Go.setRef(_s1) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatalf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        if (!stdgo._internal.bytes.Bytes_equal.equal(_s0, _s1)) {
            @:check2r _t.errorf(("Marshal large byte slice" : stdgo.GoString));
            stdgo._internal.encoding.json.Json__diff._diff(_t, _s0, _s1);
        };
    }
