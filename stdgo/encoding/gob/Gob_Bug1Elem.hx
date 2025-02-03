package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.Bug1Elem_static_extension) abstract Bug1Elem(stdgo._internal.encoding.gob.Gob_Bug1Elem.Bug1Elem) from stdgo._internal.encoding.gob.Gob_Bug1Elem.Bug1Elem to stdgo._internal.encoding.gob.Gob_Bug1Elem.Bug1Elem {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var id(get, set) : StdTypes.Int;
    function get_id():StdTypes.Int return this.id;
    function set_id(v:StdTypes.Int):StdTypes.Int {
        this.id = (v : stdgo.GoInt);
        return v;
    }
    public function new(?name:String, ?id:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_Bug1Elem.Bug1Elem((name : stdgo.GoString), (id : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
