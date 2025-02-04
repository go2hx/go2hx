package stdgo._internal.compress.flate;
@:structInit @:using(stdgo._internal.compress.flate.Flate_readerror_static_extension.ReadError_static_extension) class ReadError {
    public var offset : stdgo.GoInt64 = 0;
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?offset:stdgo.GoInt64, ?err:stdgo.Error) {
        if (offset != null) this.offset = offset;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ReadError(offset, err);
    }
}
