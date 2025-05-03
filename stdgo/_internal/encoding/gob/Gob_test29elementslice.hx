package stdgo._internal.encoding.gob;
function test29ElementSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1051"
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_z.Z() : stdgo._internal.encoding.gob.Gob_z.Z))));
        var _src = (new stdgo.Slice<stdgo.AnyInterface>((100 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.AnyInterface>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1053"
        for (_i => _ in _src) {
            _src[(_i : stdgo.GoInt)] = stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_z.Z() : stdgo._internal.encoding.gob.Gob_z.Z)));
        };
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _err = (stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_buf)).encode(stdgo.Go.toInterface(_src)) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1058"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1059"
            _t.fatalf(("encode: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1060"
            return;
        };
        var _dst:stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
        _err = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_buf)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_dst) : stdgo.Ref<stdgo.Slice<stdgo.AnyInterface>>)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1065"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1066"
            _t.errorf(("decode: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1067"
            return;
        };
    }
