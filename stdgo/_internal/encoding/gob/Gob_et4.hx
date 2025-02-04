package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_et4_static_extension.ET4_static_extension) class ET4 {
    public var a : stdgo.GoInt = 0;
    public var et2 : stdgo.GoFloat64 = 0;
    public var next : stdgo.GoInt = 0;
    public function new(?a:stdgo.GoInt, ?et2:stdgo.GoFloat64, ?next:stdgo.GoInt) {
        if (a != null) this.a = a;
        if (et2 != null) this.et2 = et2;
        if (next != null) this.next = next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ET4(a, et2, next);
    }
}
