package stdgo.encoding.binary;
@:structInit @:using(stdgo.encoding.binary.Binary.T_nativeEndian_static_extension) abstract T_nativeEndian(stdgo._internal.encoding.binary.Binary_T_nativeEndian.T_nativeEndian) from stdgo._internal.encoding.binary.Binary_T_nativeEndian.T_nativeEndian to stdgo._internal.encoding.binary.Binary_T_nativeEndian.T_nativeEndian {
    public var _littleEndian(get, set) : T_littleEndian;
    function get__littleEndian():T_littleEndian return this._littleEndian;
    function set__littleEndian(v:T_littleEndian):T_littleEndian {
        this._littleEndian = v;
        return v;
    }
    public function new(?_littleEndian:T_littleEndian) this = new stdgo._internal.encoding.binary.Binary_T_nativeEndian.T_nativeEndian(_littleEndian);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
