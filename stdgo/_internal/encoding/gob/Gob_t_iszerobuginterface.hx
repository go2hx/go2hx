package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_iszerobuginterface_static_extension.T_isZeroBugInterface_static_extension) class T_isZeroBugInterface {
    public var i : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?i:stdgo.AnyInterface) {
        if (i != null) this.i = i;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_isZeroBugInterface(i);
    }
}
