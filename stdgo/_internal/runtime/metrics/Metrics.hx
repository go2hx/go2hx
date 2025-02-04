package stdgo._internal.runtime.metrics;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.runtime.metrics.Metrics__alldesc._allDesc;
            var _i = (0 : stdgo.GoInt);
            while (((_i < (stdgo._internal.runtime.metrics.Metrics__alldesc._allDesc.length) : Bool) && (stdgo._internal.runtime.metrics.Metrics__alldesc._allDesc[(_i : stdgo.GoInt)].name < ("/godebug/" : stdgo.GoString) : Bool) : Bool)) {
                _i++;
            };
            var _more = (new stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_description.Description>((_i : stdgo.GoInt).toBasic(), ((stdgo._internal.runtime.metrics.Metrics__alldesc._allDesc.length) + (stdgo._internal.internal.godebugs.Godebugs_all.all.length) : stdgo.GoInt), ...[for (i in 0 ... ((_i : stdgo.GoInt).toBasic() > ((stdgo._internal.runtime.metrics.Metrics__alldesc._allDesc.length) + (stdgo._internal.internal.godebugs.Godebugs_all.all.length) : stdgo.GoInt) ? (_i : stdgo.GoInt).toBasic() : ((stdgo._internal.runtime.metrics.Metrics__alldesc._allDesc.length) + (stdgo._internal.internal.godebugs.Godebugs_all.all.length) : stdgo.GoInt) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.metrics.Metrics_description.Description)]) : stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_description.Description>);
            _more.__copyTo__(stdgo._internal.runtime.metrics.Metrics__alldesc._allDesc);
            for (__0 => _info in stdgo._internal.internal.godebugs.Godebugs_all.all) {
                if (!_info.opaque) {
                    _more = (_more.__append__(({ name : ((("/godebug/non-default-behavior/" : stdgo.GoString) + _info.name?.__copy__() : stdgo.GoString) + (":events" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), description : ((((((("The number of non-default behaviors executed by the " : stdgo.GoString) + _info.package_?.__copy__() : stdgo.GoString) + (" package " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("due to a non-default " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("GODEBUG=" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _info.name?.__copy__() : stdgo.GoString) + ("=... setting." : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), kind : (1 : stdgo._internal.runtime.metrics.Metrics_valuekind.ValueKind), cumulative : true } : stdgo._internal.runtime.metrics.Metrics_description.Description)));
                };
            };
            stdgo._internal.runtime.metrics.Metrics__alldesc._allDesc = (_more.__append__(...((stdgo._internal.runtime.metrics.Metrics__alldesc._allDesc.__slice__(_i) : stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_description.Description>) : Array<stdgo._internal.runtime.metrics.Metrics_description.Description>)));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
