package stdgo._internal.encoding.gob;
function testGobEncoderValueField(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
        var _err = (_enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_gobtestvalueencdec.GobTestValueEncDec((17 : stdgo.GoInt), (new stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct(("HIJKL" : stdgo.GoString)) : stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct)) : stdgo._internal.encoding.gob.Gob_gobtestvalueencdec.GobTestValueEncDec)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_gobtestvalueencdec.GobTestValueEncDec>)))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L284"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L285"
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_gobtestvalueencdec.GobTestValueEncDec)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_gobtestvalueencdec.GobTestValueEncDec>);
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L290"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L291"
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L293"
        if ((@:checkr _x ?? throw "null pointer dereference").g._s != (("HIJKL" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L294"
            _t.errorf(("expected `HIJKL` got %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference").g._s));
        };
    }
