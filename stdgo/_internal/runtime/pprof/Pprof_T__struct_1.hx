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
@:local @:using(stdgo._internal.runtime.pprof.Pprof_T__struct_1_static_extension.T__struct_1_static_extension) @:using(stdgo._internal.runtime.pprof.Pprof_T__struct_1_static_extension.T__struct_1_static_extension) typedef T__struct_1 = {
    @:embedded
    public var mutex : stdgo._internal.sync.Sync_Mutex.Mutex;
    public var _profiling : Bool;
    public var _done : stdgo.Chan<Bool>;
};
