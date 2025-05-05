package stdgo._internal.encoding.gob;
function testGobEncoderField(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
        var _err = (_enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_gobtest0.GobTest0((17 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_bytestruct.ByteStruct((65 : stdgo.GoUInt8)) : stdgo._internal.encoding.gob.Gob_bytestruct.ByteStruct)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bytestruct.ByteStruct>)) : stdgo._internal.encoding.gob.Gob_gobtest0.GobTest0)))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L246"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L247"
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_gobtest0.GobTest0)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_gobtest0.GobTest0>);
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L252"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L253"
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L255"
        if ((@:checkr (@:checkr _x ?? throw "null pointer dereference").g ?? throw "null pointer dereference")._a != ((65 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L256"
            _t.errorf(("expected \'A\' got %c" : stdgo.GoString), stdgo.Go.toInterface((@:checkr (@:checkr _x ?? throw "null pointer dereference").g ?? throw "null pointer dereference")._a));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L259"
        _b.reset();
        var _gobber = ((23 : stdgo._internal.encoding.gob.Gob_gobber.Gobber) : stdgo._internal.encoding.gob.Gob_gobber.Gobber);
        var _gobber__pointer__ = stdgo.Go.pointer(_gobber);
        var _gobber__pointer__ = stdgo.Go.pointer(_gobber);
        var _gobber__pointer__ = stdgo.Go.pointer(_gobber);
        var _gobber__pointer__ = stdgo.Go.pointer(_gobber);
        var _bgobber = ((24 : stdgo._internal.encoding.gob.Gob_binarygobber.BinaryGobber) : stdgo._internal.encoding.gob.Gob_binarygobber.BinaryGobber);
        var _bgobber__pointer__ = stdgo.Go.pointer(_bgobber);
        var _bgobber__pointer__ = stdgo.Go.pointer(_bgobber);
        var _bgobber__pointer__ = stdgo.Go.pointer(_bgobber);
        var _bgobber__pointer__ = stdgo.Go.pointer(_bgobber);
        var _tgobber = ((25 : stdgo._internal.encoding.gob.Gob_textgobber.TextGobber) : stdgo._internal.encoding.gob.Gob_textgobber.TextGobber);
        var _tgobber__pointer__ = stdgo.Go.pointer(_tgobber);
        var _tgobber__pointer__ = stdgo.Go.pointer(_tgobber);
        var _tgobber__pointer__ = stdgo.Go.pointer(_tgobber);
        var _tgobber__pointer__ = stdgo.Go.pointer(_tgobber);
        _err = _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_gobtest3.GobTest3((17 : stdgo.GoInt), _gobber__pointer__, _bgobber__pointer__, _tgobber__pointer__) : stdgo._internal.encoding.gob.Gob_gobtest3.GobTest3))));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L264"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L265"
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _y = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_gobtest3.GobTest3)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_gobtest3.GobTest3>);
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_y)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L269"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L270"
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L272"
        if ((((@:checkr _y ?? throw "null pointer dereference").g.value != ((23 : stdgo._internal.encoding.gob.Gob_gobber.Gobber)) || (@:checkr _y ?? throw "null pointer dereference").b.value != ((24 : stdgo._internal.encoding.gob.Gob_binarygobber.BinaryGobber)) : Bool) || ((@:checkr _y ?? throw "null pointer dereference").t.value != (25 : stdgo._internal.encoding.gob.Gob_textgobber.TextGobber)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L273"
            _t.errorf(("expected \'23 got %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _y ?? throw "null pointer dereference").g.value)));
        };
    }
