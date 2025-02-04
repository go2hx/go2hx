package stdgo._internal.encoding.gob;
function testGobEncoderExtraIndirect(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _gdb = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_gobdecoderbug0.T_gobDecoderBug0(("foo" : stdgo.GoString), ("bar" : stdgo.GoString)) : stdgo._internal.encoding.gob.Gob_t_gobdecoderbug0.T_gobDecoderBug0)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobdecoderbug0.T_gobDecoderBug0>);
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _e = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_buf));
        {
            var _err = (@:check2r _e.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_gdb))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatalf(("encode: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var _d = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_buf));
        var _got:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobdecoderbug0.T_gobDecoderBug0> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobdecoderbug0.T_gobDecoderBug0>);
        {
            var _err = (@:check2r _d.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_got) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobdecoderbug0.T_gobDecoderBug0>>))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatalf(("decode: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        if ((((@:checkr _got ?? throw "null pointer dereference")._foo != (@:checkr _gdb ?? throw "null pointer dereference")._foo) || ((@:checkr _got ?? throw "null pointer dereference")._bar != (@:checkr _gdb ?? throw "null pointer dereference")._bar) : Bool)) {
            @:check2r _t.errorf(("got = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_gdb)));
        };
    }
