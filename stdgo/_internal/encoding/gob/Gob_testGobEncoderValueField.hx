package stdgo._internal.encoding.gob;
function testGobEncoderValueField(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
        var _err = (_enc.encode(stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_GobTestValueEncDec.GobTestValueEncDec((17 : stdgo.GoInt), (new stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct(("HIJKL" : stdgo.GoString)) : stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct)) : stdgo._internal.encoding.gob.Gob_GobTestValueEncDec.GobTestValueEncDec)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_GobTestValueEncDec.GobTestValueEncDec>))) : stdgo.Error);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_GobTestValueEncDec.GobTestValueEncDec)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_GobTestValueEncDec.GobTestValueEncDec>);
        _err = _dec.decode(stdgo.Go.toInterface(_x));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_x.g._s != (("HIJKL" : stdgo.GoString))) {
            _t.errorf(("expected `HIJKL` got %s" : stdgo.GoString), stdgo.Go.toInterface(_x.g._s));
        };
    }
