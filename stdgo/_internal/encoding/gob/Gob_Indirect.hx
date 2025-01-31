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
@:structInit @:using(stdgo._internal.encoding.gob.Gob_Indirect_static_extension.Indirect_static_extension) class Indirect {
    public var a : stdgo.Pointer<stdgo.Ref<stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>>> = (null : stdgo.Pointer<stdgo.Ref<stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>>>);
    public var s : stdgo.Pointer<stdgo.Ref<stdgo.Ref<stdgo.Slice<stdgo.GoInt>>>> = (null : stdgo.Pointer<stdgo.Ref<stdgo.Ref<stdgo.Slice<stdgo.GoInt>>>>);
    public var m : stdgo.Pointer<stdgo.Pointer<stdgo.Ref<stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>>>> = (null : stdgo.Pointer<stdgo.Pointer<stdgo.Ref<stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>>>>);
    public function new(?a:stdgo.Pointer<stdgo.Ref<stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>>>, ?s:stdgo.Pointer<stdgo.Ref<stdgo.Ref<stdgo.Slice<stdgo.GoInt>>>>, ?m:stdgo.Pointer<stdgo.Pointer<stdgo.Ref<stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>>>>) {
        if (a != null) this.a = a;
        if (s != null) this.s = s;
        if (m != null) this.m = m;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Indirect(a, s, m);
    }
}
