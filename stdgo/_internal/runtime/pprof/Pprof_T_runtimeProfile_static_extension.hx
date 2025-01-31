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
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_runtimeProfile_asInterface) class T_runtimeProfile_static_extension {
    @:keep
    @:tdfield
    static public function label( _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile.T_runtimeProfile>, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap> {
        @:recv var _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile.T_runtimeProfile> = _p;
        return ((@:checkr _p ?? throw "null pointer dereference")._labels[(_i : stdgo.GoInt)].__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap", [], stdgo._internal.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap>);
    }
    @:keep
    @:tdfield
    static public function stack( _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile.T_runtimeProfile>, _i:stdgo.GoInt):stdgo.Slice<stdgo.GoUIntptr> {
        @:recv var _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile.T_runtimeProfile> = _p;
        return @:check2 (@:checkr _p ?? throw "null pointer dereference")._stk[(_i : stdgo.GoInt)].stack();
    }
    @:keep
    @:tdfield
    static public function len( _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile.T_runtimeProfile>):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile.T_runtimeProfile> = _p;
        return ((@:checkr _p ?? throw "null pointer dereference")._stk.length);
    }
}
