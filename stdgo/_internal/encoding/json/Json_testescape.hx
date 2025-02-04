package stdgo._internal.encoding.json;
function testEscape(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        {};
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(("\"foobar\"<html> [\u2028 \u2029]" : stdgo.GoString))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("Marshal error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var _s = ((_b : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_s != (("\"\\\"foobar\\\"\\u003chtml\\u003e [\\u2028 \\u2029]\"" : stdgo.GoString))) {
                @:check2r _t.errorf(("Encoding of [%s]:\n got [%s]\nwant [%s]" : stdgo.GoString), stdgo.Go.toInterface(("\"foobar\"<html> [\u2028 \u2029]" : stdgo.GoString)), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("\"\\\"foobar\\\"\\u003chtml\\u003e [\\u2028 \\u2029]\"" : stdgo.GoString)));
            };
        };
    }
