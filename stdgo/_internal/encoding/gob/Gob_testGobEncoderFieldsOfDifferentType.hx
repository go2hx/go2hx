package stdgo._internal.encoding.gob;
function testGobEncoderFieldsOfDifferentType(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
        var _err = (@:check2r _enc.encode(stdgo.Go.toInterface((new stdgo._internal.encoding.gob.Gob_GobTest1.GobTest1((17 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct(("ABC" : stdgo.GoString)) : stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct>)) : stdgo._internal.encoding.gob.Gob_GobTest1.GobTest1))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_GobTest0.GobTest0)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_GobTest0.GobTest0>);
        _err = @:check2r _dec.decode(stdgo.Go.toInterface(_x));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if ((@:checkr (@:checkr _x ?? throw "null pointer dereference").g ?? throw "null pointer dereference")._a != ((65 : stdgo.GoUInt8))) {
            @:check2r _t.errorf(("expected \'A\' got %c" : stdgo.GoString), stdgo.Go.toInterface((@:checkr (@:checkr _x ?? throw "null pointer dereference").g ?? throw "null pointer dereference")._a));
        };
        @:check2r _b.reset();
        _err = @:check2r _enc.encode(stdgo.Go.toInterface((new stdgo._internal.encoding.gob.Gob_GobTest0.GobTest0((17 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_ByteStruct.ByteStruct((88 : stdgo.GoUInt8)) : stdgo._internal.encoding.gob.Gob_ByteStruct.ByteStruct)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ByteStruct.ByteStruct>)) : stdgo._internal.encoding.gob.Gob_GobTest0.GobTest0)));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _y = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_GobTest1.GobTest1)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_GobTest1.GobTest1>);
        _err = @:check2r _dec.decode(stdgo.Go.toInterface(_y));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if ((@:checkr (@:checkr _y ?? throw "null pointer dereference").g ?? throw "null pointer dereference")._s != (("XYZ" : stdgo.GoString))) {
            @:check2r _t.fatalf(("expected `XYZ` got %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr (@:checkr _y ?? throw "null pointer dereference").g ?? throw "null pointer dereference")._s));
        };
    }
