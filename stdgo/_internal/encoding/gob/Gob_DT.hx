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
@:structInit @:using(stdgo._internal.encoding.gob.Gob_DT_static_extension.DT_static_extension) class DT {
    public var a : stdgo.GoInt = 0;
    public var b : stdgo.GoString = "";
    public var c : stdgo.GoFloat64 = 0;
    public var i : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var j : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var i_nil : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var m : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    public var t : stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(3, 3).__setNumber32__();
    public var s : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?a:stdgo.GoInt, ?b:stdgo.GoString, ?c:stdgo.GoFloat64, ?i:stdgo.AnyInterface, ?j:stdgo.AnyInterface, ?i_nil:stdgo.AnyInterface, ?m:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?t:stdgo.GoArray<stdgo.GoInt>, ?s:stdgo.Slice<stdgo.GoString>) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
        if (i != null) this.i = i;
        if (j != null) this.j = j;
        if (i_nil != null) this.i_nil = i_nil;
        if (m != null) this.m = m;
        if (t != null) this.t = t;
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DT(a, b, c, i, j, i_nil, m, t, s);
    }
}
