package stdgo._internal.encoding.json;
function testUnmarshalInterface(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _xint:stdgo._internal.encoding.json.Json_Xint.Xint = ({} : stdgo._internal.encoding.json.Json_Xint.Xint);
        var _xint__pointer__ = (stdgo.Go.setRef(_xint) : stdgo.Ref<stdgo._internal.encoding.json.Json_Xint.Xint>);
        var _xint__pointer__ = (stdgo.Go.setRef(_xint) : stdgo.Ref<stdgo._internal.encoding.json.Json_Xint.Xint>);
        var _xint__pointer__ = (stdgo.Go.setRef(_xint) : stdgo.Ref<stdgo._internal.encoding.json.Json_Xint.Xint>);
        var _xint__pointer__ = (stdgo.Go.setRef(_xint) : stdgo.Ref<stdgo._internal.encoding.json.Json_Xint.Xint>);
        var _i:stdgo.AnyInterface = stdgo.Go.toInterface(_xint__pointer__);
        var _i__pointer__ = (stdgo.Go.setRef(_i) : stdgo.Ref<stdgo.AnyInterface>);
        var _i__pointer__ = (stdgo.Go.setRef(_i) : stdgo.Ref<stdgo.AnyInterface>);
        var _i__pointer__ = (stdgo.Go.setRef(_i) : stdgo.Ref<stdgo.AnyInterface>);
        var _i__pointer__ = (stdgo.Go.setRef(_i) : stdgo.Ref<stdgo.AnyInterface>);
        {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal((("{\"X\":1}" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface(_i__pointer__)) : stdgo.Error);
            if (_err != null) {
                _t.fatalf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        if (_xint.x != ((1 : stdgo.GoInt))) {
            _t.fatalf(("Did not write to xint" : stdgo.GoString));
        };
    }
