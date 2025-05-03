package stdgo._internal.encoding.gob;
function testGobEncoderExtraIndirect(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _gdb = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_gobdecoderbug0.T_gobDecoderBug0(("foo" : stdgo.GoString), ("bar" : stdgo.GoString)) : stdgo._internal.encoding.gob.Gob_t_gobdecoderbug0.T_gobDecoderBug0)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobdecoderbug0.T_gobDecoderBug0>);
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _e = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_buf));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L696"
        {
            var _err = (_e.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_gdb))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L697"
                _t.fatalf(("encode: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var _d = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_buf));
        var _got:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobdecoderbug0.T_gobDecoderBug0> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_gobdecoderbug0.T_gobDecoderBug0>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L701"
        {
            var _err = (_d.decode(stdgo.Go.toInterface(stdgo.Go.pointer(_got))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L702"
                _t.fatalf(("decode: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L704"
        if ((((@:checkr _got ?? throw "null pointer dereference")._foo != (@:checkr _gdb ?? throw "null pointer dereference")._foo) || ((@:checkr _got ?? throw "null pointer dereference")._bar != (@:checkr _gdb ?? throw "null pointer dereference")._bar) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L705"
            _t.errorf(("got = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_gdb)));
        };
    }
