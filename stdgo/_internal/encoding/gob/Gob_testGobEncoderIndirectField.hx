package stdgo._internal.encoding.gob;
function testGobEncoderIndirectField(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
        var _s = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct(("HIJKL" : stdgo.GoString)) : stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct>);
        var _s__pointer__ = (stdgo.Go.setRef(_s) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct>>);
        var _s__pointer__ = (stdgo.Go.setRef(_s) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct>>);
        var _s__pointer__ = (stdgo.Go.setRef(_s) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct>>);
        var _s__pointer__ = (stdgo.Go.setRef(_s) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct>>);
        var _sp = _s__pointer__;
        var _sp__pointer__ = stdgo.Go.pointer(_sp);
        var _sp__pointer__ = stdgo.Go.pointer(_sp);
        var _sp__pointer__ = stdgo.Go.pointer(_sp);
        var _sp__pointer__ = stdgo.Go.pointer(_sp);
        var _err = (_enc.encode(stdgo.Go.toInterface((new stdgo._internal.encoding.gob.Gob_GobTestIndirectEncDec.GobTestIndirectEncDec((17 : stdgo.GoInt), _sp__pointer__) : stdgo._internal.encoding.gob.Gob_GobTestIndirectEncDec.GobTestIndirectEncDec))) : stdgo.Error);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_GobTestIndirectEncDec.GobTestIndirectEncDec)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_GobTestIndirectEncDec.GobTestIndirectEncDec>);
        _err = _dec.decode(stdgo.Go.toInterface(_x));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (((_x.g.value : stdgo.Ref<stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct>) : stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct)._s != (("HIJKL" : stdgo.GoString))) {
            _t.errorf(("expected `HIJKL` got %s" : stdgo.GoString), stdgo.Go.toInterface(((_x.g.value : stdgo.Ref<stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct>) : stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct)._s));
        };
    }
