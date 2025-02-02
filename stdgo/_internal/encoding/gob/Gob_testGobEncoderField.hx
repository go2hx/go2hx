package stdgo._internal.encoding.gob;
function testGobEncoderField(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
        var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_GobTest0.GobTest0((17 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_ByteStruct.ByteStruct((65 : stdgo.GoUInt8)) : stdgo._internal.encoding.gob.Gob_ByteStruct.ByteStruct)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ByteStruct.ByteStruct>)) : stdgo._internal.encoding.gob.Gob_GobTest0.GobTest0)))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_GobTest0.GobTest0)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_GobTest0.GobTest0>);
        _err = @:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if ((@:checkr (@:checkr _x ?? throw "null pointer dereference").g ?? throw "null pointer dereference")._a != ((65 : stdgo.GoUInt8))) {
            @:check2r _t.errorf(("expected \'A\' got %c" : stdgo.GoString), stdgo.Go.toInterface((@:checkr (@:checkr _x ?? throw "null pointer dereference").g ?? throw "null pointer dereference")._a));
        };
        @:check2r _b.reset();
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
        _err = @:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_GobTest3.GobTest3((17 : stdgo.GoInt), _gobber__pointer__, _bgobber__pointer__, _tgobber__pointer__) : stdgo._internal.encoding.gob.Gob_GobTest3.GobTest3))));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _y = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_GobTest3.GobTest3)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_GobTest3.GobTest3>);
        _err = @:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_y)));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if ((((@:checkr _y ?? throw "null pointer dereference").g.value != ((23 : stdgo._internal.encoding.gob.Gob_Gobber.Gobber)) || (@:checkr _y ?? throw "null pointer dereference").b.value != ((24 : stdgo._internal.encoding.gob.Gob_BinaryGobber.BinaryGobber)) : Bool) || ((@:checkr _y ?? throw "null pointer dereference").t.value != (25 : stdgo._internal.encoding.gob.Gob_TextGobber.TextGobber)) : Bool)) {
            @:check2r _t.errorf(("expected \'23 got %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _y ?? throw "null pointer dereference").g.value)));
        };
    }
