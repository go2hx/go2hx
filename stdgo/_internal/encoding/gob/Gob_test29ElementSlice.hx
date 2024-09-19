package stdgo._internal.encoding.gob;
function test29ElementSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface((new stdgo._internal.encoding.gob.Gob_Z.Z() : stdgo._internal.encoding.gob.Gob_Z.Z)));
        var _src = (new stdgo.Slice<stdgo.AnyInterface>((100 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.AnyInterface>);
        for (_i => _ in _src) {
            _src[(_i : stdgo.GoInt)] = stdgo.Go.toInterface((new stdgo._internal.encoding.gob.Gob_Z.Z() : stdgo._internal.encoding.gob.Gob_Z.Z));
        };
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _err = (stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_buf)).encode(stdgo.Go.toInterface(_src)) : stdgo.Error);
        if (_err != null) {
            _t.fatalf(("encode: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            return;
        };
        var _dst:stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
        _err = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_buf)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_dst) : stdgo.Ref<stdgo.Slice<stdgo.AnyInterface>>)));
        if (_err != null) {
            _t.errorf(("decode: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            return;
        };
    }