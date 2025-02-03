package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.NoInterfaceItem_static_extension) abstract NoInterfaceItem(stdgo._internal.encoding.gob.Gob_NoInterfaceItem.NoInterfaceItem) from stdgo._internal.encoding.gob.Gob_NoInterfaceItem.NoInterfaceItem to stdgo._internal.encoding.gob.Gob_NoInterfaceItem.NoInterfaceItem {
    public var i(get, set) : StdTypes.Int;
    function get_i():StdTypes.Int return this.i;
    function set_i(v:StdTypes.Int):StdTypes.Int {
        this.i = (v : stdgo.GoInt);
        return v;
    }
    public var f(get, set) : StdTypes.Float;
    function get_f():StdTypes.Float return this.f;
    function set_f(v:StdTypes.Float):StdTypes.Float {
        this.f = (v : stdgo.GoFloat64);
        return v;
    }
    public function new(?i:StdTypes.Int, ?f:StdTypes.Float) this = new stdgo._internal.encoding.gob.Gob_NoInterfaceItem.NoInterfaceItem((i : stdgo.GoInt), (f : stdgo.GoFloat64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
