package stdgo._internal.io;
@:structInit @:using(stdgo._internal.io.Io_limitedreader_static_extension.LimitedReader_static_extension) class LimitedReader {
    public var r : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public var n : stdgo.GoInt64 = 0;
    public function new(?r:stdgo._internal.io.Io_reader.Reader, ?n:stdgo.GoInt64) {
        if (r != null) this.r = r;
        if (n != null) this.n = n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LimitedReader(r, n);
    }
}
