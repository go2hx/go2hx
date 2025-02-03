package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_isZeroBugInterface_static_extension) abstract T_isZeroBugInterface(stdgo._internal.encoding.gob.Gob_T_isZeroBugInterface.T_isZeroBugInterface) from stdgo._internal.encoding.gob.Gob_T_isZeroBugInterface.T_isZeroBugInterface to stdgo._internal.encoding.gob.Gob_T_isZeroBugInterface.T_isZeroBugInterface {
    public var i(get, set) : stdgo.AnyInterface;
    function get_i():stdgo.AnyInterface return this.i;
    function set_i(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.i = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?i:stdgo.AnyInterface) this = new stdgo._internal.encoding.gob.Gob_T_isZeroBugInterface.T_isZeroBugInterface((i : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
