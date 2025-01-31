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
@:structInit @:using(stdgo._internal.encoding.gob.Gob_IT0_static_extension.IT0_static_extension) class IT0 {
    public var a : stdgo.GoInt64 = 0;
    public var b : stdgo.GoString = "";
    public var ignore_d : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var ignore_e : stdgo.GoArray<stdgo.GoFloat64> = new stdgo.GoArray<stdgo.GoFloat64>(3, 3).__setNumber32__();
    public var ignore_f : Bool = false;
    public var ignore_g : stdgo.GoString = "";
    public var ignore_h : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var ignore_i : stdgo.Ref<stdgo._internal.encoding.gob.Gob_RT1.RT1> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_RT1.RT1>);
    public var ignore_m : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    public var c : stdgo.GoFloat64 = 0;
    public function new(?a:stdgo.GoInt64, ?b:stdgo.GoString, ?ignore_d:stdgo.Slice<stdgo.GoInt>, ?ignore_e:stdgo.GoArray<stdgo.GoFloat64>, ?ignore_f:Bool, ?ignore_g:stdgo.GoString, ?ignore_h:stdgo.Slice<stdgo.GoUInt8>, ?ignore_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_RT1.RT1>, ?ignore_m:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?c:stdgo.GoFloat64) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (ignore_d != null) this.ignore_d = ignore_d;
        if (ignore_e != null) this.ignore_e = ignore_e;
        if (ignore_f != null) this.ignore_f = ignore_f;
        if (ignore_g != null) this.ignore_g = ignore_g;
        if (ignore_h != null) this.ignore_h = ignore_h;
        if (ignore_i != null) this.ignore_i = ignore_i;
        if (ignore_m != null) this.ignore_m = ignore_m;
        if (c != null) this.c = c;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new IT0(a, b, ignore_d, ignore_e, ignore_f, ignore_g, ignore_h, ignore_i, ignore_m, c);
    }
}
