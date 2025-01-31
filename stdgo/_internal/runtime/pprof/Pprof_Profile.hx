package stdgo._internal.runtime.pprof;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.context.Context;
import stdgo._internal.sort.Sort;
import stdgo._internal.text.tabwriter.Tabwriter;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.strings.Strings;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.internal.abi.Abi;
@:structInit @:using(stdgo._internal.runtime.pprof.Pprof_Profile_static_extension.Profile_static_extension) class Profile {
    public var _name : stdgo.GoString = "";
    public var _mu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _m : stdgo.GoMap<stdgo.AnyInterface, stdgo.Slice<stdgo.GoUIntptr>> = (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.Slice<stdgo.GoUIntptr>>);
    public var _count : () -> stdgo.GoInt = null;
    public var _write : (stdgo._internal.io.Io_Writer.Writer, stdgo.GoInt) -> stdgo.Error = null;
    public function new(?_name:stdgo.GoString, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_m:stdgo.GoMap<stdgo.AnyInterface, stdgo.Slice<stdgo.GoUIntptr>>, ?_count:() -> stdgo.GoInt, ?_write:(stdgo._internal.io.Io_Writer.Writer, stdgo.GoInt) -> stdgo.Error) {
        if (_name != null) this._name = _name;
        if (_mu != null) this._mu = _mu;
        if (_m != null) this._m = _m;
        if (_count != null) this._count = _count;
        if (_write != null) this._write = _write;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Profile(_name, _mu, _m, _count, _write);
    }
}
