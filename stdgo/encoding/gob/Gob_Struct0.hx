package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.Struct0_static_extension) abstract Struct0(stdgo._internal.encoding.gob.Gob_Struct0.Struct0) from stdgo._internal.encoding.gob.Gob_Struct0.Struct0 to stdgo._internal.encoding.gob.Gob_Struct0.Struct0 {
    public var i(get, set) : stdgo.AnyInterface;
    function get_i():stdgo.AnyInterface return this.i;
    function set_i(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.i = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?i:stdgo.AnyInterface) this = new stdgo._internal.encoding.gob.Gob_Struct0.Struct0((i : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
