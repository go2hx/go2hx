package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.Bug3_static_extension) abstract Bug3(stdgo._internal.encoding.gob.Gob_Bug3.Bug3) from stdgo._internal.encoding.gob.Gob_Bug3.Bug3 to stdgo._internal.encoding.gob.Gob_Bug3.Bug3 {
    public var num(get, set) : StdTypes.Int;
    function get_num():StdTypes.Int return this.num;
    function set_num(v:StdTypes.Int):StdTypes.Int {
        this.num = (v : stdgo.GoInt);
        return v;
    }
    public var children(get, set) : Array<Bug3>;
    function get_children():Array<Bug3> return [for (i in this.children) i];
    function set_children(v:Array<Bug3>):Array<Bug3> {
        this.children = ([for (i in v) (i : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug3.Bug3>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug3.Bug3>>);
        return v;
    }
    public function new(?num:StdTypes.Int, ?children:Array<Bug3>) this = new stdgo._internal.encoding.gob.Gob_Bug3.Bug3((num : stdgo.GoInt), ([for (i in children) (i : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug3.Bug3>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug3.Bug3>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
