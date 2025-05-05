package stdgo._internal.encoding.gob;
function testGobEncoderValueEncoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
        var _err = (_enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_gobtest4.GobTest4((17 : stdgo.GoInt), (("hello" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_valuegobber.ValueGobber), (("Καλημέρα" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber), (("こんにちは" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_textvaluegobber.TextValueGobber)) : stdgo._internal.encoding.gob.Gob_gobtest4.GobTest4)))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L423"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L424"
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_gobtest5.GobTest5)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_gobtest5.GobTest5>);
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L429"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L430"
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L432"
        if ((((@:checkr _x ?? throw "null pointer dereference").v.value != ((("hello" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_valuegobber.ValueGobber)) || (@:checkr _x ?? throw "null pointer dereference").bV.value != ((("Καλημέρα" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber)) : Bool) || ((@:checkr _x ?? throw "null pointer dereference").tV.value != (("こんにちは" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_textvaluegobber.TextValueGobber)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L433"
            _t.errorf(("expected `hello` got %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _x ?? throw "null pointer dereference").v.value)));
        };
    }
