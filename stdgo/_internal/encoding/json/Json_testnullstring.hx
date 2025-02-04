package stdgo._internal.encoding.json;
function testNullString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _data = ((("{\"A\": \"1\", \"B\": null, \"C\": null}" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _s:stdgo._internal.encoding.json.Json_t_testnullstring___localname___t_41259.T_testNullString___localname___T_41259 = ({} : stdgo._internal.encoding.json.Json_t_testnullstring___localname___t_41259.T_testNullString___localname___T_41259);
        _s.b = (1 : stdgo.GoInt);
        _s.c = stdgo.Go.pointer((0 : stdgo.GoInt));
        _s.c.value = (2 : stdgo.GoInt);
        var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_data, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testnullstring___localname___t_41259.T_testNullString___localname___T_41259>)))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatalf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (((_s.b != (1 : stdgo.GoInt)) || (_s.c != null) : Bool)) {
            @:check2r _t.fatalf(("after Unmarshal, s.B=%d, s.C=%p, want 1, nil" : stdgo.GoString), stdgo.Go.toInterface(_s.b), stdgo.Go.toInterface(_s.c));
        };
    }
