package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function _prepareAllMetricsSamples():{ var _0 : stdgo.GoMap<stdgo.GoString, stdgo._internal.runtime.metrics.Metrics_Description.Description>; var _1 : stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Sample.Sample>; } {
        var _all = stdgo._internal.runtime.metrics.Metrics_all.all();
        var _samples = (new stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Sample.Sample>((_all.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_all.length : stdgo.GoInt).toBasic() > 0 ? (_all.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.metrics.Metrics_Sample.Sample)]) : stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Sample.Sample>);
        var _descs = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo._internal.runtime.metrics.Metrics_Description.Description>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.runtime.metrics.Metrics_Description.Description);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo._internal.runtime.metrics.Metrics_Description.Description>);
        for (_i => _ in _all) {
            _samples[(_i : stdgo.GoInt)].name = _all[(_i : stdgo.GoInt)].name?.__copy__();
            _descs[_all[(_i : stdgo.GoInt)].name] = _all[(_i : stdgo.GoInt)];
        };
        return { _0 : _descs, _1 : _samples };
    }
