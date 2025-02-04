package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_foo_static_extension.Foo_static_extension) class Foo {
    public var a : stdgo.GoInt = 0;
    public var b : stdgo.GoInt32 = 0;
    public var c : stdgo.GoString = "";
    public var d : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var e : stdgo.Pointer<stdgo.GoFloat64> = (null : stdgo.Pointer<stdgo.GoFloat64>);
    public var f : stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.GoFloat64>>>> = (null : stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.GoFloat64>>>>);
    public var g : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bar.Bar> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bar.Bar>);
    public var h : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bar.Bar> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bar.Bar>);
    public var i : stdgo.Ref<stdgo._internal.encoding.gob.Gob_foo.Foo> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_foo.Foo>);
    public function new(?a:stdgo.GoInt, ?b:stdgo.GoInt32, ?c:stdgo.GoString, ?d:stdgo.Slice<stdgo.GoUInt8>, ?e:stdgo.Pointer<stdgo.GoFloat64>, ?f:stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.GoFloat64>>>>, ?g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_bar.Bar>, ?h:stdgo.Ref<stdgo._internal.encoding.gob.Gob_bar.Bar>, ?i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_foo.Foo>) {
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
