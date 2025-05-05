package stdgo._internal.encoding.base64;
function testDecoderIssue15656(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = (@:checkr stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding ?? throw "null pointer dereference").strict().decodeString(("WvLTlMrX9NpYDQlEIFlnDB==" : stdgo.GoString)), __0:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var _want = ((22i64 : stdgo._internal.encoding.base64.Base64_corruptinputerror.CorruptInputError) : stdgo._internal.encoding.base64.Base64_corruptinputerror.CorruptInputError);
        //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L469"
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_want)), stdgo.Go.toInterface(_err))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L470"
            _t.errorf(("Error = %v; want CorruptInputError(22)" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = (@:checkr stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding ?? throw "null pointer dereference").strict().decodeString(("WvLTlMrX9NpYDQlEIFlnDA==" : stdgo.GoString));
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L473"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L474"
            _t.errorf(("Error = %v; want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding.decodeString(("WvLTlMrX9NpYDQlEIFlnDB==" : stdgo.GoString));
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L477"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L478"
            _t.errorf(("Error = %v; want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
