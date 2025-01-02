package stdgo._internal.encoding.gob;
function testDecodeErrorMultipleTypes(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _b:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        @:check2r stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>))).encode(stdgo.Go.toInterface((new stdgo._internal.encoding.gob.Gob_T_testDecodeErrorMultipleTypes___localname___Test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917(("one" : stdgo.GoString), (1 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_T_testDecodeErrorMultipleTypes___localname___Test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917)));
        var __0:stdgo._internal.encoding.gob.Gob_T_testDecodeErrorMultipleTypes___localname___Test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917 = ({} : stdgo._internal.encoding.gob.Gob_T_testDecodeErrorMultipleTypes___localname___Test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917), __1:stdgo._internal.encoding.gob.Gob_T_testDecodeErrorMultipleTypes___localname___Test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917 = ({} : stdgo._internal.encoding.gob.Gob_T_testDecodeErrorMultipleTypes___localname___Test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917);
var _result2 = __1, _result = __0;
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        var _err = (@:check2r _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_result) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testDecodeErrorMultipleTypes___localname___Test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917>))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.errorf(("decode: unexpected error %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        @:check2 _b.reset();
        @:check2r stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>))).encode(stdgo.Go.toInterface((new stdgo._internal.encoding.gob.Gob_T_testDecodeErrorMultipleTypes___localname___Test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917(("two" : stdgo.GoString), (2 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_T_testDecodeErrorMultipleTypes___localname___Test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917)));
        _err = @:check2r _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_result2) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testDecodeErrorMultipleTypes___localname___Test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917>)));
        if (_err == null) {
            @:check2r _t.errorf(("decode: expected duplicate type error, got nil" : stdgo.GoString));
        } else if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("duplicate type" : stdgo.GoString))) {
            @:check2r _t.errorf(("decode: expected duplicate type error, got %s" : stdgo.GoString), stdgo.Go.toInterface(_err.error()));
        };
    }
