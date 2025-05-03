package stdgo._internal.encoding.gob;
function testErrorForHugeSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _slice = (new stdgo.Slice<stdgo.GoInt>(10, 10, ...[(1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _err = (stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_buf)).encode(stdgo.Go.toInterface(_slice)) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1078"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1079"
            _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _buf.bytes()[((_buf.len() - (_slice.length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (250 : stdgo.GoUInt8);
        _err = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_buf)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_slice) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1085"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1086"
            _t.fatal(stdgo.Go.toInterface(("decode: no error" : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1088"
        if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("slice too big" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1089"
            _t.fatalf(("decode: expected slice too big error, got %s" : stdgo.GoString), stdgo.Go.toInterface(_err.error()));
        };
    }
