package stdgo._internal.encoding.gob;
function _encFuzzDec(_rng:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>, _in:stdgo.AnyInterface):stdgo.Error {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_buf));
        {
            var _err = (@:check2r _enc.encode(stdgo.Go.toInterface((stdgo.Go.setRef(_in) : stdgo.Ref<stdgo.AnyInterface>))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _b = @:check2r _buf.bytes();
        for (_i => _bi in _b) {
            if ((@:check2r _rng.intn((10 : stdgo.GoInt)) < (3 : stdgo.GoInt) : Bool)) {
                _b[(_i : stdgo.GoInt)] = (_bi + (@:check2r _rng.intn((256 : stdgo.GoInt)) : stdgo.GoUInt8) : stdgo.GoUInt8);
            };
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_buf));
        var _e:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        {
            var _err = (@:check2r _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_e) : stdgo.Ref<stdgo.AnyInterface>))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        return (null : stdgo.Error);
    }
