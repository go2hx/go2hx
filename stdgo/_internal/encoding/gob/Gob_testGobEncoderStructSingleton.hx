package stdgo._internal.encoding.gob;
function testGobEncoderStructSingleton(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
        var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_ByteStruct.ByteStruct((65 : stdgo.GoUInt8)) : stdgo._internal.encoding.gob.Gob_ByteStruct.ByteStruct)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ByteStruct.ByteStruct>)))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_ByteStruct.ByteStruct)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ByteStruct.ByteStruct>);
        _err = @:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if ((@:checkr _x ?? throw "null pointer dereference")._a != ((65 : stdgo.GoUInt8))) {
            @:check2r _t.errorf(("expected \'A\' got %c" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference")._a));
        };
    }
