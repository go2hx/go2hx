package stdgo._internal.encoding.base64;
function testDecoderIssue7733(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = @:check2r stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding.decodeString(("YWJjZA=====" : stdgo.GoString)), _s:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var _want = ((8i64 : stdgo._internal.encoding.base64.Base64_CorruptInputError.CorruptInputError) : stdgo._internal.encoding.base64.Base64_CorruptInputError.CorruptInputError);
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_want)), stdgo.Go.toInterface(_err))) {
            @:check2r _t.errorf(("Error = %v; want CorruptInputError(8)" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_s : stdgo.GoString) != (("abcd" : stdgo.GoString))) {
            @:check2r _t.errorf(("DecodeString = %q; want abcd" : stdgo.GoString), stdgo.Go.toInterface(_s));
        };
    }
