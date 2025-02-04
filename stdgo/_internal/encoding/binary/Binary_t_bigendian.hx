package stdgo._internal.encoding.binary;
@:structInit @:using(stdgo._internal.encoding.binary.Binary_t_bigendian_static_extension.T_bigEndian_static_extension) class T_bigEndian {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_bigEndian();
    }
}
