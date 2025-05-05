package stdgo._internal.encoding.gob;
function _testEncodeDecode(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _in:stdgo.AnyInterface, _out:stdgo.AnyInterface):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1552"
        _t.helper();
        var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _err = (stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>))).encode(_in) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1555"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1556"
            _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _err = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>))).decode(_out);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1559"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1560"
            _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1562"
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(_in, _out)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1563"
            _t.errorf(("output mismatch" : stdgo.GoString));
        };
    }
