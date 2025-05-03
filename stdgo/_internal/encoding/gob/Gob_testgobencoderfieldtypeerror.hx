package stdgo._internal.encoding.gob;
function testGobEncoderFieldTypeError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
        var _err = (_enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_gobtest1.GobTest1((17 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct(("ABC" : stdgo.GoString)) : stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct>)) : stdgo._internal.encoding.gob.Gob_gobtest1.GobTest1)))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L543"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L544"
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_gobtest2.GobTest2() : stdgo._internal.encoding.gob.Gob_gobtest2.GobTest2)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_gobtest2.GobTest2>);
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L549"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L550"
            _t.fatal(stdgo.Go.toInterface(("expected decode error for mismatched fields (encoder to non-decoder)" : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L552"
        if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("type" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L553"
            _t.fatal(stdgo.Go.toInterface(("expected type error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L556"
        _b.reset();
        _err = _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_gobtest2.GobTest2((17 : stdgo.GoInt), ("ABC" : stdgo.GoString)) : stdgo._internal.encoding.gob.Gob_gobtest2.GobTest2))));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L558"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L559"
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _y = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_gobtest1.GobTest1() : stdgo._internal.encoding.gob.Gob_gobtest1.GobTest1)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_gobtest1.GobTest1>);
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_y)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L563"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L564"
            _t.fatal(stdgo.Go.toInterface(("expected decode error for mismatched fields (non-encoder to decoder)" : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L566"
        if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("type" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L567"
            _t.fatal(stdgo.Go.toInterface(("expected type error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
    }
