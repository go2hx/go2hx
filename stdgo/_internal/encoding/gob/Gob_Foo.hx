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
@:structInit @:using(stdgo._internal.encoding.gob.Gob_Foo_static_extension.Foo_static_extension) class Foo {
    public var a : stdgo.GoInt = 0;
    public var b : stdgo.GoInt32 = 0;
    public var c : stdgo.GoString = "";
    public var d : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var e : stdgo.Pointer<stdgo.GoFloat64> = (null : stdgo.Pointer<stdgo.GoFloat64>);
    public var f : stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.GoFloat64>>>> = (null : stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.GoFloat64>>>>);
    public var g : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bar.Bar> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bar.Bar>);
    public var h : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bar.Bar> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bar.Bar>);
    public var i : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Foo.Foo> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Foo.Foo>);
    public function new(?a:stdgo.GoInt, ?b:stdgo.GoInt32, ?c:stdgo.GoString, ?d:stdgo.Slice<stdgo.GoUInt8>, ?e:stdgo.Pointer<stdgo.GoFloat64>, ?f:stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.GoFloat64>>>>, ?g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bar.Bar>, ?h:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bar.Bar>, ?i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Foo.Foo>) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
        if (d != null) this.d = d;
        if (e != null) this.e = e;
        if (f != null) this.f = f;
        if (g != null) this.g = g;
        if (h != null) this.h = h;
        if (i != null) this.i = i;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Foo(a, b, c, d, e, f, g, h, i);
    }
}
