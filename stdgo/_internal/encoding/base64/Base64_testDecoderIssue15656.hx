package stdgo._internal.encoding.base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.strconv.Strconv;
function testDecoderIssue15656(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = @:check2r (@:checkr stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding ?? throw "null pointer dereference").strict().decodeString(("WvLTlMrX9NpYDQlEIFlnDB==" : stdgo.GoString)), __0:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var _want = ((22i64 : stdgo._internal.encoding.base64.Base64_CorruptInputError.CorruptInputError) : stdgo._internal.encoding.base64.Base64_CorruptInputError.CorruptInputError);
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_want)), stdgo.Go.toInterface(_err))) {
            @:check2r _t.errorf(("Error = %v; want CorruptInputError(22)" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = @:check2r (@:checkr stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding ?? throw "null pointer dereference").strict().decodeString(("WvLTlMrX9NpYDQlEIFlnDA==" : stdgo.GoString));
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            @:check2r _t.errorf(("Error = %v; want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = @:check2r stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding.decodeString(("WvLTlMrX9NpYDQlEIFlnDB==" : stdgo.GoString));
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            @:check2r _t.errorf(("Error = %v; want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
