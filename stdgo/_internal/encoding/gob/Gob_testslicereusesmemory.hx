package stdgo._internal.encoding.gob;
function testSliceReusesMemory(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L727"
        {
            var _x = ((("abcd" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
            var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_buf));
            var _err = (_enc.encode(stdgo.Go.toInterface(_x)) : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L731"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L732"
                _t.errorf(("bytes: encode: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var _y = ((("ABCDE" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
            var _addr = stdgo.Go.pointer(_y[(0 : stdgo.GoInt)]);
            var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_buf));
            _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)));
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L739"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L740"
                _t.fatal(stdgo.Go.toInterface(("bytes: decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L742"
            if (!stdgo._internal.bytes.Bytes_equal.equal(_x, _y)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L743"
                _t.errorf(("bytes: expected %q got %q\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L745"
            if (_addr != (stdgo.Go.pointer(_y[(0 : stdgo.GoInt)]))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L746"
                _t.errorf(("bytes: unnecessary reallocation" : stdgo.GoString));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L750"
        {
            var _x = ((("abcd" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoInt32>);
            var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_buf));
            var _err = (_enc.encode(stdgo.Go.toInterface(_x)) : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L754"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L755"
                _t.errorf(("ints: encode: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var _y = ((("ABCDE" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoInt32>);
            var _addr = stdgo.Go.pointer(_y[(0 : stdgo.GoInt)]);
            var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_buf));
            _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>)));
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L762"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L763"
                _t.fatal(stdgo.Go.toInterface(("ints: decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L765"
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L766"
                _t.errorf(("ints: expected %q got %q\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L768"
            if (_addr != (stdgo.Go.pointer(_y[(0 : stdgo.GoInt)]))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L769"
                _t.errorf(("ints: unnecessary reallocation" : stdgo.GoString));
            };
        };
    }
