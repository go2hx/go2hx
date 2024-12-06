package stdgo._internal.encoding.json;
function testUnmarshalJSONLiteralError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _t3:stdgo._internal.encoding.json.Json_Time3339.Time3339 = ({} : stdgo._internal.encoding.json.Json_Time3339.Time3339);
        var _t3__pointer__ = (stdgo.Go.setRef(_t3) : stdgo.Ref<stdgo._internal.encoding.json.Json_Time3339.Time3339>);
        var _t3__pointer__ = (stdgo.Go.setRef(_t3) : stdgo.Ref<stdgo._internal.encoding.json.Json_Time3339.Time3339>);
        var _t3__pointer__ = (stdgo.Go.setRef(_t3) : stdgo.Ref<stdgo._internal.encoding.json.Json_Time3339.Time3339>);
        var _t3__pointer__ = (stdgo.Go.setRef(_t3) : stdgo.Ref<stdgo._internal.encoding.json.Json_Time3339.Time3339>);
        var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal((("\"0000-00-00T00:00:00Z\"" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface(stdgo.Go.asInterface(_t3__pointer__))) : stdgo.Error);
        if (_err == null) {
            _t.fatalf(("expected error; got time %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((({
                final e = _t3;
                ({ _wall : e._wall, _ext : e._ext, _loc : e._loc } : stdgo._internal.time.Time_Time.Time);
            })))));
        };
        if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("range" : stdgo.GoString))) {
            _t.errorf(("got err = %v; want out of range error" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
