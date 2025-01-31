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
function _encComplex64Slice(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>, _v:stdgo._internal.reflect.Reflect_Value.Value):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.GoComplex64>)) : stdgo.Slice<stdgo.GoComplex64>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Slice<stdgo.GoComplex64>), _1 : false };
        }, _slice = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return false;
        };
        for (__8 => _x in _slice) {
            if (((_x != ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))) || (@:checkr _state ?? throw "null pointer dereference")._sendZero : Bool)) {
                var _rpart = (stdgo._internal.encoding.gob.Gob__floatBits._floatBits(((_x : stdgo.GoComplex128).real : stdgo.GoFloat64)) : stdgo.GoUInt64);
                var _ipart = (stdgo._internal.encoding.gob.Gob__floatBits._floatBits(((_x : stdgo.GoComplex128).imag : stdgo.GoFloat64)) : stdgo.GoUInt64);
                @:check2r _state._encodeUint(_rpart);
                @:check2r _state._encodeUint(_ipart);
            };
        };
        return true;
    }
