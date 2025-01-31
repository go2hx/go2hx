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
@:keep @:allow(stdgo._internal.encoding.gob.Gob.Vector_asInterface) class Vector_static_extension {
    @:keep
    @:tdfield
    static public function square( _v:stdgo._internal.encoding.gob.Gob_Vector.Vector):stdgo.GoInt {
        @:recv var _v:stdgo._internal.encoding.gob.Gob_Vector.Vector = _v;
        var _sum = (0 : stdgo.GoInt);
        for (__8 => _x in _v) {
            _sum = (_sum + ((_x * _x : stdgo.GoInt)) : stdgo.GoInt);
        };
        return _sum;
    }
}
