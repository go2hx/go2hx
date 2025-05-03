package stdgo._internal.encoding.gob;
function testGobEncoderNonStructSingleton(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
        var _g:stdgo._internal.encoding.gob.Gob_gobber.Gobber = (1234 : stdgo._internal.encoding.gob.Gob_gobber.Gobber), _g__pointer__ = stdgo.Go.pointer(_g);
        var _err = (_enc.encode(stdgo.Go.toInterface(_g__pointer__)) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L595"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L596"
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x:stdgo._internal.encoding.gob.Gob_gobber.Gobber = ((0 : stdgo.GoInt) : stdgo._internal.encoding.gob.Gob_gobber.Gobber), _x__pointer__ = stdgo.Go.pointer(_x);
        _err = _dec.decode(stdgo.Go.toInterface(_x__pointer__));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L601"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L602"
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L604"
        if (_x != ((1234 : stdgo._internal.encoding.gob.Gob_gobber.Gobber))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L605"
            _t.errorf(("expected 1234 got %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        };
    }
