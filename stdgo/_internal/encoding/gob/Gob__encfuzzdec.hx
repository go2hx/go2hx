package stdgo._internal.encoding.gob;
function _encFuzzDec(_rng:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _in:stdgo.AnyInterface):stdgo.Error {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_buf));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1402"
        {
            var _err = (_enc.encode(stdgo.Go.toInterface((stdgo.Go.setRef(_in) : stdgo.Ref<stdgo.AnyInterface>))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1403"
                return _err;
            };
        };
        var _b = _buf.bytes();
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1407"
        for (_i => _bi in _b) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1408"
            if ((_rng.intn((10 : stdgo.GoInt)) < (3 : stdgo.GoInt) : Bool)) {
                _b[(_i : stdgo.GoInt)] = (_bi + (_rng.intn((256 : stdgo.GoInt)) : stdgo.GoUInt8) : stdgo.GoUInt8);
            };
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_buf));
        var _e:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1415"
        {
            var _err = (_dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_e) : stdgo.Ref<stdgo.AnyInterface>))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1416"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1418"
        return (null : stdgo.Error);
    }
