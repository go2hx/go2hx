package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_interfaceitem_static_extension.InterfaceItem_static_extension) class InterfaceItem {
    public var i : stdgo.GoInt = 0;
    public var sq1 : stdgo._internal.encoding.gob.Gob_squarer.Squarer = (null : stdgo._internal.encoding.gob.Gob_squarer.Squarer);
    public var sq2 : stdgo._internal.encoding.gob.Gob_squarer.Squarer = (null : stdgo._internal.encoding.gob.Gob_squarer.Squarer);
    public var sq3 : stdgo._internal.encoding.gob.Gob_squarer.Squarer = (null : stdgo._internal.encoding.gob.Gob_squarer.Squarer);
    public var f : stdgo.GoFloat64 = 0;
    public var sq : stdgo.Slice<stdgo._internal.encoding.gob.Gob_squarer.Squarer> = (null : stdgo.Slice<stdgo._internal.encoding.gob.Gob_squarer.Squarer>);
    public function new(?i:stdgo.GoInt, ?sq1:stdgo._internal.encoding.gob.Gob_squarer.Squarer, ?sq2:stdgo._internal.encoding.gob.Gob_squarer.Squarer, ?sq3:stdgo._internal.encoding.gob.Gob_squarer.Squarer, ?f:stdgo.GoFloat64, ?sq:stdgo.Slice<stdgo._internal.encoding.gob.Gob_squarer.Squarer>) {
        if (i != null) this.i = i;
        if (sq1 != null) this.sq1 = sq1;
        if (sq2 != null) this.sq2 = sq2;
        if (sq3 != null) this.sq3 = sq3;
        if (f != null) this.f = f;
        if (sq != null) this.sq = sq;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new InterfaceItem(i, sq1, sq2, sq3, f, sq);
    }
}
