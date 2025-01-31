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
function _encodeReflectValue(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _op:stdgo._internal.encoding.gob.Gob_T_encOp.T_encOp, _indir:stdgo.GoInt):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while (((_i < _indir : Bool) && _v.isValid() : Bool)) {
                _v = stdgo._internal.reflect.Reflect_indirect.indirect(_v.__copy__()).__copy__();
                _i++;
            };
        };
        if (!_v.isValid()) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("encodeReflectValue: nil element" : stdgo.GoString));
        };
        _op(null, _state, _v?.__copy__());
    }
