package stdgo._internal.encoding.gob;
function testGobEncoderExtraIndirect(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _gdb = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0(("foo" : stdgo.GoString), ("bar" : stdgo.GoString)) : stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0>);
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _e = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_buf));
        {
            var _err = (_e.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_gdb))) : stdgo.Error);
            if (_err != null) {
                _t.fatalf(("encode: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var _d = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_buf));
        var _got:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0>);
        var _got__pointer__ = (stdgo.Go.setRef(_got) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0>>);
        var _got__pointer__ = (stdgo.Go.setRef(_got) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0>>);
        var _got__pointer__ = (stdgo.Go.setRef(_got) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0>>);
        var _got__pointer__ = (stdgo.Go.setRef(_got) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0>>);
        {
            var _err = (_d.decode(stdgo.Go.toInterface(_got__pointer__)) : stdgo.Error);
            if (_err != null) {
                _t.fatalf(("decode: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        if (((_got._foo != _gdb._foo) || (_got._bar != _gdb._bar) : Bool)) {
            _t.errorf(("got = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_gdb)));
        };
    }
