package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_atleastreader_static_extension.T_atLeastReader_static_extension) class T_atLeastReader {
    public var r : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public var n : stdgo.GoInt64 = 0;
    public function new(?r:stdgo._internal.io.Io_reader.Reader, ?n:stdgo.GoInt64) {
        if (r != null) this.r = r;
        if (n != null) this.n = n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_atLeastReader(r, n);
    }
}
