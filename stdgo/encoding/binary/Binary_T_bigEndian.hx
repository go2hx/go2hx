package stdgo.encoding.binary;
@:structInit @:using(stdgo.encoding.binary.Binary.T_bigEndian_static_extension) abstract T_bigEndian(stdgo._internal.encoding.binary.Binary_T_bigEndian.T_bigEndian) from stdgo._internal.encoding.binary.Binary_T_bigEndian.T_bigEndian to stdgo._internal.encoding.binary.Binary_T_bigEndian.T_bigEndian {
    public function new() this = new stdgo._internal.encoding.binary.Binary_T_bigEndian.T_bigEndian();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
