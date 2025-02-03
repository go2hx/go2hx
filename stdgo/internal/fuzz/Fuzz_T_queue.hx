package stdgo.internal.fuzz;
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_queue_static_extension) abstract T_queue(stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue) from stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue to stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue {
    public var _elems(get, set) : Array<stdgo.AnyInterface>;
    function get__elems():Array<stdgo.AnyInterface> return [for (i in this._elems) i];
    function set__elems(v:Array<stdgo.AnyInterface>):Array<stdgo.AnyInterface> {
        this._elems = ([for (i in v) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return v;
    }
    public var _head(get, set) : StdTypes.Int;
    function get__head():StdTypes.Int return this._head;
    function set__head(v:StdTypes.Int):StdTypes.Int {
        this._head = (v : stdgo.GoInt);
        return v;
    }
    public var _len(get, set) : StdTypes.Int;
    function get__len():StdTypes.Int return this._len;
    function set__len(v:StdTypes.Int):StdTypes.Int {
        this._len = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_elems:Array<stdgo.AnyInterface>, ?_head:StdTypes.Int, ?_len:StdTypes.Int) this = new stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue(([for (i in _elems) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>), (_head : stdgo.GoInt), (_len : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
