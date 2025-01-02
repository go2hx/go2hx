package stdgo._internal.encoding.json;
function testMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__allValue._allValue)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("Marshal allValue: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_b : stdgo.GoString) != (stdgo._internal.encoding.json.Json__allValueCompact._allValueCompact)) {
            @:check2r _t.errorf(("Marshal allValueCompact" : stdgo.GoString));
            stdgo._internal.encoding.json.Json__diff._diff(_t, _b, (stdgo._internal.encoding.json.Json__allValueCompact._allValueCompact : stdgo.Slice<stdgo.GoUInt8>));
            return;
        };
        {
            var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__pallValue._pallValue));
            _b = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            @:check2r _t.fatalf(("Marshal pallValue: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_b : stdgo.GoString) != (stdgo._internal.encoding.json.Json__pallValueCompact._pallValueCompact)) {
            @:check2r _t.errorf(("Marshal pallValueCompact" : stdgo.GoString));
            stdgo._internal.encoding.json.Json__diff._diff(_t, _b, (stdgo._internal.encoding.json.Json__pallValueCompact._pallValueCompact : stdgo.Slice<stdgo.GoUInt8>));
            return;
        };
    }
