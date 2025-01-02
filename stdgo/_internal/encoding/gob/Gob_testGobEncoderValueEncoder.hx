package stdgo._internal.encoding.gob;
function testGobEncoderValueEncoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
        var _err = (@:check2r _enc.encode(stdgo.Go.toInterface((new stdgo._internal.encoding.gob.Gob_GobTest4.GobTest4((17 : stdgo.GoInt), (("hello" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber), (("Καλημέρα" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber), (("こんにちは" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber)) : stdgo._internal.encoding.gob.Gob_GobTest4.GobTest4))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_GobTest5.GobTest5)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_GobTest5.GobTest5>);
        _err = @:check2r _dec.decode(stdgo.Go.toInterface(_x));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if ((((@:checkr _x ?? throw "null pointer dereference").v.value != ((("hello" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber)) || (@:checkr _x ?? throw "null pointer dereference").bV.value != ((("Καλημέρα" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber)) : Bool) || ((@:checkr _x ?? throw "null pointer dereference").tV.value != (("こんにちは" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber)) : Bool)) {
            @:check2r _t.errorf(("expected `hello` got %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _x ?? throw "null pointer dereference").v.value)));
        };
    }
