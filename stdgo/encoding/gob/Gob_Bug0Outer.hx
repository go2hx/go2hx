package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.Bug0Outer_static_extension) abstract Bug0Outer(stdgo._internal.encoding.gob.Gob_Bug0Outer.Bug0Outer) from stdgo._internal.encoding.gob.Gob_Bug0Outer.Bug0Outer to stdgo._internal.encoding.gob.Gob_Bug0Outer.Bug0Outer {
    public var bug0Field(get, set) : stdgo.AnyInterface;
    function get_bug0Field():stdgo.AnyInterface return this.bug0Field;
    function set_bug0Field(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.bug0Field = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?bug0Field:stdgo.AnyInterface) this = new stdgo._internal.encoding.gob.Gob_Bug0Outer.Bug0Outer((bug0Field : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
