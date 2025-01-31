package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:structInit @:using(stdgo._internal.io.Io_LimitedReader_static_extension.LimitedReader_static_extension) class LimitedReader {
    public var r : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public var n : stdgo.GoInt64 = 0;
    public function new(?r:stdgo._internal.io.Io_Reader.Reader, ?n:stdgo.GoInt64) {
        if (r != null) this.r = r;
        if (n != null) this.n = n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LimitedReader(r, n);
    }
}
