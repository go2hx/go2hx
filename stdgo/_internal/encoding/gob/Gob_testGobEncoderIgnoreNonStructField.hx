package stdgo._internal.encoding.gob;
function testGobEncoderIgnoreNonStructField(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
        var _gobber = ((23 : stdgo._internal.encoding.gob.Gob_Gobber.Gobber) : stdgo._internal.encoding.gob.Gob_Gobber.Gobber);
        var _gobber__pointer__ = stdgo.Go.pointer(_gobber);
        var _gobber__pointer__ = stdgo.Go.pointer(_gobber);
        var _gobber__pointer__ = stdgo.Go.pointer(_gobber);
        var _gobber__pointer__ = stdgo.Go.pointer(_gobber);
        var _bgobber = ((24 : stdgo._internal.encoding.gob.Gob_BinaryGobber.BinaryGobber) : stdgo._internal.encoding.gob.Gob_BinaryGobber.BinaryGobber);
        var _bgobber__pointer__ = stdgo.Go.pointer(_bgobber);
        var _bgobber__pointer__ = stdgo.Go.pointer(_bgobber);
        var _bgobber__pointer__ = stdgo.Go.pointer(_bgobber);
        var _bgobber__pointer__ = stdgo.Go.pointer(_bgobber);
        var _tgobber = ((25 : stdgo._internal.encoding.gob.Gob_TextGobber.TextGobber) : stdgo._internal.encoding.gob.Gob_TextGobber.TextGobber);
        var _tgobber__pointer__ = stdgo.Go.pointer(_tgobber);
        var _tgobber__pointer__ = stdgo.Go.pointer(_tgobber);
        var _tgobber__pointer__ = stdgo.Go.pointer(_tgobber);
        var _tgobber__pointer__ = stdgo.Go.pointer(_tgobber);
        var _err = (_enc.encode(stdgo.Go.toInterface((new stdgo._internal.encoding.gob.Gob_GobTest3.GobTest3((17 : stdgo.GoInt), _gobber__pointer__, _bgobber__pointer__, _tgobber__pointer__) : stdgo._internal.encoding.gob.Gob_GobTest3.GobTest3))) : stdgo.Error);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_GobTestIgnoreEncoder.GobTestIgnoreEncoder)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_GobTestIgnoreEncoder.GobTestIgnoreEncoder>);
        _err = _dec.decode(stdgo.Go.toInterface(_x));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_x.x != ((17 : stdgo.GoInt))) {
            _t.errorf(("expected 17 got %c" : stdgo.GoString), stdgo.Go.toInterface(_x.x));
        };
    }
