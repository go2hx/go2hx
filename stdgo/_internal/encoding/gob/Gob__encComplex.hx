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
function _encComplex(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>, _v:stdgo._internal.reflect.Reflect_Value.Value):Void {
        var _c = (_v.complex() : stdgo.GoComplex128);
        if (((_c != ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))) || (@:checkr _state ?? throw "null pointer dereference")._sendZero : Bool)) {
            var _rpart = (stdgo._internal.encoding.gob.Gob__floatBits._floatBits((_c : stdgo.GoComplex128).real) : stdgo.GoUInt64);
            var _ipart = (stdgo._internal.encoding.gob.Gob__floatBits._floatBits((_c : stdgo.GoComplex128).imag) : stdgo.GoUInt64);
            @:check2r _state._update(_i);
            @:check2r _state._encodeUint(_rpart);
            @:check2r _state._encodeUint(_ipart);
        };
    }
