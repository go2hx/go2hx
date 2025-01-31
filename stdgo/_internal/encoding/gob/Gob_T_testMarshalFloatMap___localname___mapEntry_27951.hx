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
@:structInit @:using(stdgo._internal.encoding.gob.Gob_T_testMarshalFloatMap___localname___mapEntry_27951_static_extension.T_testMarshalFloatMap___localname___mapEntry_27951_static_extension) class T_testMarshalFloatMap___localname___mapEntry_27951 {
    public var _keyBits : stdgo.GoUInt64 = 0;
    public var _value : stdgo.GoString = "";
    public function new(?_keyBits:stdgo.GoUInt64, ?_value:stdgo.GoString) {
        if (_keyBits != null) this._keyBits = _keyBits;
        if (_value != null) this._value = _value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testMarshalFloatMap___localname___mapEntry_27951(_keyBits, _value);
    }
}
