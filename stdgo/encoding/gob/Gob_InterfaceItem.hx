package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.InterfaceItem_static_extension) abstract InterfaceItem(stdgo._internal.encoding.gob.Gob_InterfaceItem.InterfaceItem) from stdgo._internal.encoding.gob.Gob_InterfaceItem.InterfaceItem to stdgo._internal.encoding.gob.Gob_InterfaceItem.InterfaceItem {
    public var i(get, set) : StdTypes.Int;
    function get_i():StdTypes.Int return this.i;
    function set_i(v:StdTypes.Int):StdTypes.Int {
        this.i = (v : stdgo.GoInt);
        return v;
    }
    public var sq1(get, set) : Squarer;
    function get_sq1():Squarer return this.sq1;
    function set_sq1(v:Squarer):Squarer {
        this.sq1 = v;
        return v;
    }
    public var sq2(get, set) : Squarer;
    function get_sq2():Squarer return this.sq2;
    function set_sq2(v:Squarer):Squarer {
        this.sq2 = v;
        return v;
    }
    public var sq3(get, set) : Squarer;
    function get_sq3():Squarer return this.sq3;
    function set_sq3(v:Squarer):Squarer {
        this.sq3 = v;
        return v;
    }
    public var f(get, set) : StdTypes.Float;
    function get_f():StdTypes.Float return this.f;
    function set_f(v:StdTypes.Float):StdTypes.Float {
        this.f = (v : stdgo.GoFloat64);
        return v;
    }
    public var sq(get, set) : Array<Squarer>;
    function get_sq():Array<Squarer> return [for (i in this.sq) i];
    function set_sq(v:Array<Squarer>):Array<Squarer> {
        this.sq = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob_Squarer.Squarer>);
        return v;
    }
    public function new(?i:StdTypes.Int, ?sq1:Squarer, ?sq2:Squarer, ?sq3:Squarer, ?f:StdTypes.Float, ?sq:Array<Squarer>) this = new stdgo._internal.encoding.gob.Gob_InterfaceItem.InterfaceItem((i : stdgo.GoInt), sq1, sq2, sq3, (f : stdgo.GoFloat64), ([for (i in sq) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob_Squarer.Squarer>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
