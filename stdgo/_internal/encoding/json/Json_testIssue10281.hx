package stdgo._internal.encoding.json;
function testIssue10281(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _x = (new stdgo._internal.encoding.json.Json_T_testIssue10281___localname___Foo_15026.T_testIssue10281___localname___Foo_15026((("invalid" : stdgo.GoString) : stdgo._internal.encoding.json.Json_Number.Number)) : stdgo._internal.encoding.json.Json_T_testIssue10281___localname___Foo_15026.T_testIssue10281___localname___Foo_15026);
        var _x__pointer__ = (stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testIssue10281___localname___Foo_15026.T_testIssue10281___localname___Foo_15026>);
        var _x__pointer__ = (stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testIssue10281___localname___Foo_15026.T_testIssue10281___localname___Foo_15026>);
        var _x__pointer__ = (stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testIssue10281___localname___Foo_15026.T_testIssue10281___localname___Foo_15026>);
        var _x__pointer__ = (stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testIssue10281___localname___Foo_15026.T_testIssue10281___localname___Foo_15026>);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(_x__pointer__)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.errorf(("Marshal(&x) = %#q; want error" : stdgo.GoString), stdgo.Go.toInterface(_b));
        };
    }
