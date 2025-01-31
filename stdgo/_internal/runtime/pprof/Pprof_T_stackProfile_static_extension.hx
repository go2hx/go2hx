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
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_stackProfile_asInterface) class T_stackProfile_static_extension {
    @:keep
    @:tdfield
    static public function label( _x:stdgo._internal.runtime.pprof.Pprof_T_stackProfile.T_stackProfile, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap> {
        @:recv var _x:stdgo._internal.runtime.pprof.Pprof_T_stackProfile.T_stackProfile = _x;
        return null;
    }
    @:keep
    @:tdfield
    static public function stack( _x:stdgo._internal.runtime.pprof.Pprof_T_stackProfile.T_stackProfile, _i:stdgo.GoInt):stdgo.Slice<stdgo.GoUIntptr> {
        @:recv var _x:stdgo._internal.runtime.pprof.Pprof_T_stackProfile.T_stackProfile = _x;
        return _x[(_i : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function len( _x:stdgo._internal.runtime.pprof.Pprof_T_stackProfile.T_stackProfile):stdgo.GoInt {
        @:recv var _x:stdgo._internal.runtime.pprof.Pprof_T_stackProfile.T_stackProfile = _x;
        return (_x.length);
    }
}
