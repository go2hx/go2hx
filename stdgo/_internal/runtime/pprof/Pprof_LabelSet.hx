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
@:structInit @:using(stdgo._internal.runtime.pprof.Pprof_LabelSet_static_extension.LabelSet_static_extension) class LabelSet {
    public var _list : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_label.T_label> = (null : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_label.T_label>);
    public function new(?_list:stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_label.T_label>) {
        if (_list != null) this._list = _list;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LabelSet(_list);
    }
}
