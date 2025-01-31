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
@:structInit @:using(stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile_static_extension.T_runtimeProfile_static_extension) class T_runtimeProfile {
    public var _stk : stdgo.Slice<stdgo._internal.runtime.Runtime_StackRecord.StackRecord> = (null : stdgo.Slice<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>);
    public var _labels : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer> = (null : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>);
    public function new(?_stk:stdgo.Slice<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>, ?_labels:stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>) {
        if (_stk != null) this._stk = _stk;
        if (_labels != null) this._labels = _labels;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_runtimeProfile(_stk, _labels);
    }
}
