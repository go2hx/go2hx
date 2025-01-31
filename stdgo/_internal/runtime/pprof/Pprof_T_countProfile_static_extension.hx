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
@:keep class T_countProfile_static_extension {
    @:interfacetypeffun
    static public function label(t:stdgo._internal.runtime.pprof.Pprof_T_countProfile.T_countProfile, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap> return t.label(_i);
    @:interfacetypeffun
    static public function stack(t:stdgo._internal.runtime.pprof.Pprof_T_countProfile.T_countProfile, _i:stdgo.GoInt):stdgo.Slice<stdgo.GoUIntptr> return t.stack(_i);
    @:interfacetypeffun
    static public function len(t:stdgo._internal.runtime.pprof.Pprof_T_countProfile.T_countProfile):stdgo.GoInt return t.len();
}
