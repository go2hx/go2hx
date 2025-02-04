package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_et1_static_extension.ET1_static_extension) class ET1 {
    public var a : stdgo.GoInt = 0;
    public var et2 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_et2.ET2> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_et2.ET2>);
    public var next : stdgo.Ref<stdgo._internal.encoding.gob.Gob_et1.ET1> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_et1.ET1>);
    public function new(?a:stdgo.GoInt, ?et2:stdgo.Ref<stdgo._internal.encoding.gob.Gob_et2.ET2>, ?next:stdgo.Ref<stdgo._internal.encoding.gob.Gob_et1.ET1>) {
        if (a != null) this.a = a;
        if (et2 != null) this.et2 = et2;
        if (next != null) this.next = next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ET1(a, et2, next);
    }
}
