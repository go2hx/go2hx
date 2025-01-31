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
function setGoroutineLabels(_ctx:stdgo._internal.context.Context_Context.Context):Void {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_ctx.value(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.runtime.pprof.Pprof_T_labelContextKey.T_labelContextKey() : stdgo._internal.runtime.pprof.Pprof_T_labelContextKey.T_labelContextKey)))) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap>)) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap>), _1 : false };
        }, _ctxLabels = __tmp__._0, __0 = __tmp__._1;
        stdgo._internal.runtime.pprof.Pprof__runtime_setProfLabel._runtime_setProfLabel((stdgo.Go.toInterface(_ctxLabels) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
    }
