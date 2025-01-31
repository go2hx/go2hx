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
function withLabels(_ctx:stdgo._internal.context.Context_Context.Context, _labels:stdgo._internal.runtime.pprof.Pprof_LabelSet.LabelSet):stdgo._internal.context.Context_Context.Context {
        var _parentLabels = (stdgo._internal.runtime.pprof.Pprof__labelValue._labelValue(_ctx) : stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap);
        var _childLabels = ((({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap) : stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap);
        for (_k => _v in _parentLabels) {
            _childLabels[_k] = _v?.__copy__();
        };
        for (__0 => _label in _labels._list) {
            _childLabels[_label._key] = _label._value?.__copy__();
        };
        return stdgo._internal.context.Context_withValue.withValue(_ctx, stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.runtime.pprof.Pprof_T_labelContextKey.T_labelContextKey() : stdgo._internal.runtime.pprof.Pprof_T_labelContextKey.T_labelContextKey))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_childLabels) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap>))));
    }
