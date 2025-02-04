package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_indirect_static_extension.Indirect_static_extension) class Indirect {
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
