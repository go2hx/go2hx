package stdgo.encoding.binary;
@:structInit @:using(stdgo.encoding.binary.Binary.T_littleEndian_static_extension) abstract T_littleEndian(stdgo._internal.encoding.binary.Binary_T_littleEndian.T_littleEndian) from stdgo._internal.encoding.binary.Binary_T_littleEndian.T_littleEndian to stdgo._internal.encoding.binary.Binary_T_littleEndian.T_littleEndian {
    public function new() this = new stdgo._internal.encoding.binary.Binary_T_littleEndian.T_littleEndian();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
