package stdgo._internal.encoding.gob;
function testGobEncoderIgnoreNonStructField(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
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
        var _err = (_enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_gobtest3.GobTest3((17 : stdgo.GoInt), _gobber__pointer__, _bgobber__pointer__, _tgobber__pointer__) : stdgo._internal.encoding.gob.Gob_gobtest3.GobTest3)))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L636"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L637"
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_gobtestignoreencoder.GobTestIgnoreEncoder)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_gobtestignoreencoder.GobTestIgnoreEncoder>);
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L642"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L643"
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L645"
        if ((@:checkr _x ?? throw "null pointer dereference").x != ((17 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L646"
            _t.errorf(("expected 17 got %c" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference").x));
        };
    }
