package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.compress.flate.Flate_ReadError_static_extension.ReadError_static_extension) class ReadError {
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
