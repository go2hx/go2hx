package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_bug3_static_extension.Bug3_static_extension) class Bug3 {
    public var num : stdgo.GoInt = 0;
    public var children : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug3.Bug3>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug3.Bug3>>);
    public function new(?num:stdgo.GoInt, ?children:stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug3.Bug3>>) {
        if (num != null) this.num = num;
        if (children != null) this.children = children;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Bug3(num, children);
    }
}
