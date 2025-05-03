package stdgo._internal.encoding.gob;
function testGobEncoderIgnoreNilEncoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
        var _err = (_enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(({ x : (18 : stdgo.GoInt) } : stdgo._internal.encoding.gob.Gob_gobtest0.GobTest0)))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L655"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L656"
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_gobtest0.GobTest0)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_gobtest0.GobTest0>);
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L661"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L662"
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L664"
        if ((@:checkr _x ?? throw "null pointer dereference").x != ((18 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L665"
            _t.errorf(("expected x.X = 18, got %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference").x));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L667"
        if (({
            final value = (@:checkr _x ?? throw "null pointer dereference").g;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L668"
            _t.errorf(("expected x.G = nil, got %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _x ?? throw "null pointer dereference").g)));
        };
    }
