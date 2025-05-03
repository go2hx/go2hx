package stdgo._internal.encoding.gob;
function testGobEncoderIndirectArrayField(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
        var _a:stdgo._internal.encoding.gob.Gob_gobtestindirectarrayencdec.GobTestIndirectArrayEncDec = ({} : stdgo._internal.encoding.gob.Gob_gobtestindirectarrayencdec.GobTestIndirectArrayEncDec);
        _a.x = (17 : stdgo.GoInt);
        var _array:stdgo._internal.encoding.gob.Gob_arraystruct.ArrayStruct = ({} : stdgo._internal.encoding.gob.Gob_arraystruct.ArrayStruct);
        var _ap = (stdgo.Go.setRef(_array) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_arraystruct.ArrayStruct>);
        var _app = stdgo.Go.pointer(_ap);
        _a.a = stdgo.Go.pointer(_app);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L358"
        for (_i => _ in _array._a.__copy__()) {
            _array._a[(_i : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
        };
        var _err = (_enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_a))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L362"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L363"
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_gobtestindirectarrayencdec.GobTestIndirectArrayEncDec)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_gobtestindirectarrayencdec.GobTestIndirectArrayEncDec>);
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L368"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L369"
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L371"
        for (_i => _v in ((@:checkr _x ?? throw "null pointer dereference").a.value.value : stdgo._internal.encoding.gob.Gob_arraystruct.ArrayStruct)._a.__copy__()) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L372"
            if (_v != ((_i : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L373"
                _t.errorf(("expected %x got %x" : stdgo.GoString), stdgo.Go.toInterface((_i : stdgo.GoUInt8)), stdgo.Go.toInterface(_v));
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L374"
                break;
            };
        };
    }
