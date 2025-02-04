package stdgo._internal.encoding.json;
function testUnmarshalPtrPtr(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _xint:stdgo._internal.encoding.json.Json_xint.Xint = ({} : stdgo._internal.encoding.json.Json_xint.Xint);
        var _pxint = (stdgo.Go.setRef(_xint) : stdgo.Ref<stdgo._internal.encoding.json.Json_xint.Xint>);
        {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(((("{\"X\":1}" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface((stdgo.Go.setRef(_pxint) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.json.Json_xint.Xint>>))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatalf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        if (_xint.x != ((1 : stdgo.GoInt))) {
            @:check2r _t.fatalf(("Did not write to xint" : stdgo.GoString));
        };
    }
