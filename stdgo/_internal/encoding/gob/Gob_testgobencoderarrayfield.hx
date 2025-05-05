package stdgo._internal.encoding.gob;
function testGobEncoderArrayField(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
        var _a:stdgo._internal.encoding.gob.Gob_gobtestarrayencdec.GobTestArrayEncDec = ({} : stdgo._internal.encoding.gob.Gob_gobtestarrayencdec.GobTestArrayEncDec);
        _a.x = (17 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L327"
        for (_i => _ in _a.a._a.__copy__()) {
            _a.a._a[(_i : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
        };
        var _err = (_enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_a) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_gobtestarrayencdec.GobTestArrayEncDec>)))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L331"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L332"
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_gobtestarrayencdec.GobTestArrayEncDec)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_gobtestarrayencdec.GobTestArrayEncDec>);
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L337"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L338"
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L340"
        for (_i => _v in (@:checkr _x ?? throw "null pointer dereference").a._a.__copy__()) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L341"
            if (_v != ((_i : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L342"
                _t.errorf(("expected %x got %x" : stdgo.GoString), stdgo.Go.toInterface((_i : stdgo.GoUInt8)), stdgo.Go.toInterface(_v));
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L343"
                break;
            };
        };
    }
