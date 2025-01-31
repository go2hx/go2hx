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
@:structInit @:using(stdgo._internal.encoding.gob.Gob_T_isZeroBug_static_extension.T_isZeroBug_static_extension) class T_isZeroBug {
    public var t : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public var s : stdgo.GoString = "";
    public var i : stdgo.GoInt = 0;
    public var a : stdgo._internal.encoding.gob.Gob_T_isZeroBugArray.T_isZeroBugArray = new stdgo._internal.encoding.gob.Gob_T_isZeroBugArray.T_isZeroBugArray(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoUInt8)]);
    public var f : stdgo._internal.encoding.gob.Gob_T_isZeroBugInterface.T_isZeroBugInterface = ({} : stdgo._internal.encoding.gob.Gob_T_isZeroBugInterface.T_isZeroBugInterface);
    public function new(?t:stdgo._internal.time.Time_Time.Time, ?s:stdgo.GoString, ?i:stdgo.GoInt, ?a:stdgo._internal.encoding.gob.Gob_T_isZeroBugArray.T_isZeroBugArray, ?f:stdgo._internal.encoding.gob.Gob_T_isZeroBugInterface.T_isZeroBugInterface) {
        if (t != null) this.t = t;
        if (s != null) this.s = s;
        if (i != null) this.i = i;
        if (a != null) this.a = a;
        if (f != null) this.f = f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_isZeroBug(t, s, i, a, f);
    }
}
