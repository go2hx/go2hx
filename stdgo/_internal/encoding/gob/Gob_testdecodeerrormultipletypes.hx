package stdgo._internal.encoding.gob;
function testDecodeErrorMultipleTypes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1139"
        stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>))).encode(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_t_testdecodeerrormultipletypes___localname___test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917(("one" : stdgo.GoString), (1 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_testdecodeerrormultipletypes___localname___test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917))));
        var _result:stdgo._internal.encoding.gob.Gob_t_testdecodeerrormultipletypes___localname___test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917 = ({} : stdgo._internal.encoding.gob.Gob_t_testdecodeerrormultipletypes___localname___test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917), _result2:stdgo._internal.encoding.gob.Gob_t_testdecodeerrormultipletypes___localname___test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917 = ({} : stdgo._internal.encoding.gob.Gob_t_testdecodeerrormultipletypes___localname___test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917);
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        var _err = (_dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_result) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testdecodeerrormultipletypes___localname___test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917>)))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1144"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1145"
            _t.errorf(("decode: unexpected error %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1148"
        _b.reset();
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1149"
        stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>))).encode(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_t_testdecodeerrormultipletypes___localname___test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917(("two" : stdgo.GoString), (2 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_testdecodeerrormultipletypes___localname___test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917))));
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_result2) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testdecodeerrormultipletypes___localname___test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917>))));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1151"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1152"
            _t.errorf(("decode: expected duplicate type error, got nil" : stdgo.GoString));
        } else if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("duplicate type" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1154"
            _t.errorf(("decode: expected duplicate type error, got %s" : stdgo.GoString), stdgo.Go.toInterface(_err.error()));
        };
    }
