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
function _decString(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        var __tmp__ = @:check2r _state._getLength(), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("bad %s slice length: %d" : stdgo.GoString), stdgo.Go.toInterface(_value.type()), stdgo.Go.toInterface(_n));
        };
        var _data = @:check2r (@:checkr _state ?? throw "null pointer dereference")._b.bytes();
        if (((_data.length) < _n : Bool)) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("invalid string length %d: exceeds input size %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_data.length)));
        };
        var _s = (((_data.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        @:check2r (@:checkr _state ?? throw "null pointer dereference")._b.drop(_n);
        _value.setString(_s?.__copy__());
    }
