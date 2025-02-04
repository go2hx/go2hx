package stdgo._internal.encoding.json;
function testMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.encoding.json.Json__allvalue._allValue))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("Marshal allValue: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_b : stdgo.GoString) != (stdgo._internal.encoding.json.Json__allvaluecompact._allValueCompact)) {
            @:check2r _t.errorf(("Marshal allValueCompact" : stdgo.GoString));
            stdgo._internal.encoding.json.Json__diff._diff(_t, _b, (stdgo._internal.encoding.json.Json__allvaluecompact._allValueCompact : stdgo.Slice<stdgo.GoUInt8>));
            return;
        };
        {
            var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.encoding.json.Json__pallvalue._pallValue)));
            _b = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            @:check2r _t.fatalf(("Marshal pallValue: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_b : stdgo.GoString) != (stdgo._internal.encoding.json.Json__pallvaluecompact._pallValueCompact)) {
            @:check2r _t.errorf(("Marshal pallValueCompact" : stdgo.GoString));
            stdgo._internal.encoding.json.Json__diff._diff(_t, _b, (stdgo._internal.encoding.json.Json__pallvaluecompact._pallValueCompact : stdgo.Slice<stdgo.GoUInt8>));
            return;
        };
    }
