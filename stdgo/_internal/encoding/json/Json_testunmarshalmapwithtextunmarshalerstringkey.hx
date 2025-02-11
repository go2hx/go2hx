package stdgo._internal.encoding.json;
function testUnmarshalMapWithTextUnmarshalerStringKey(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _p:stdgo.GoMap<stdgo._internal.encoding.json.Json_t_textunmarshalerstring.T_textUnmarshalerString, stdgo.GoString> = (null : stdgo.GoMap<stdgo._internal.encoding.json.Json_t_textunmarshalerstring.T_textUnmarshalerString, stdgo.GoString>);
        {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(((("{\"FOO\": \"1\"}" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface((stdgo.Go.setRef(_p) : stdgo.Ref<stdgo.GoMap<stdgo._internal.encoding.json.Json_t_textunmarshalerstring.T_textUnmarshalerString, stdgo.GoString>>))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatalf(("Unmarshal unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (_p != null && _p.__exists__((("foo" : stdgo.GoString) : stdgo._internal.encoding.json.Json_t_textunmarshalerstring.T_textUnmarshalerString)) ? { _0 : _p[(("foo" : stdgo.GoString) : stdgo._internal.encoding.json.Json_t_textunmarshalerstring.T_textUnmarshalerString)], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), __4:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                @:check2r _t.errorf(("Key \"foo\" does not exist in map: %v" : stdgo.GoString), stdgo.Go.toInterface(_p));
            };
        };
    }
