package stdgo._internal.encoding.gob;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.io.Io;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.sort.Sort;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.encoding.binary.Binary;
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
