package stdgo._internal.runtime.metrics;
import stdgo._internal.runtime.Runtime;
@:keep var __init_go2hx__ = {
        try {
            var _i = (0 : stdgo.GoInt);
            while (((_i < (stdgo._internal.runtime.metrics.Metrics__allDesc._allDesc.length) : Bool) && (stdgo._internal.runtime.metrics.Metrics__allDesc._allDesc[(_i : stdgo.GoInt)].name < ("/godebug/" : stdgo.GoString) : Bool) : Bool)) {
                _i++;
            };
            var _more = (new stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Description.Description>((_i : stdgo.GoInt).toBasic(), ((stdgo._internal.runtime.metrics.Metrics__allDesc._allDesc.length) + (stdgo._internal.internal.godebugs.Godebugs_all.all.length) : stdgo.GoInt), ...[for (i in 0 ... ((_i : stdgo.GoInt).toBasic() > ((stdgo._internal.runtime.metrics.Metrics__allDesc._allDesc.length) + (stdgo._internal.internal.godebugs.Godebugs_all.all.length) : stdgo.GoInt) ? (_i : stdgo.GoInt).toBasic() : ((stdgo._internal.runtime.metrics.Metrics__allDesc._allDesc.length) + (stdgo._internal.internal.godebugs.Godebugs_all.all.length) : stdgo.GoInt) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.metrics.Metrics_Description.Description)]) : stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Description.Description>);
            stdgo.Go.copySlice(_more, stdgo._internal.runtime.metrics.Metrics__allDesc._allDesc);
            for (__0 => _info in stdgo._internal.internal.godebugs.Godebugs_all.all) {
                if (!_info.opaque) {
                    _more = (_more.__append__(({ name : ((("/godebug/non-default-behavior/" : stdgo.GoString) + _info.name?.__copy__() : stdgo.GoString) + (":events" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), description : ((((((("The number of non-default behaviors executed by the " : stdgo.GoString) + _info.package_?.__copy__() : stdgo.GoString) + (" package " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("due to a non-default " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("GODEBUG=" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _info.name?.__copy__() : stdgo.GoString) + ("=... setting." : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), kind : (1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind), cumulative : true } : stdgo._internal.runtime.metrics.Metrics_Description.Description)));
                };
            };
            stdgo._internal.runtime.metrics.Metrics__allDesc._allDesc = (_more.__append__(...((stdgo._internal.runtime.metrics.Metrics__allDesc._allDesc.__slice__(_i) : stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Description.Description>) : Array<stdgo._internal.runtime.metrics.Metrics_Description.Description>)));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };