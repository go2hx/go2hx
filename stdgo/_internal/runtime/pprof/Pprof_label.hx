package stdgo._internal.runtime.pprof;
function label(_ctx:stdgo._internal.context.Context_context.Context, _key:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var _ctxLabels = (stdgo._internal.runtime.pprof.Pprof__labelvalue._labelValue(_ctx) : stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap);
        var __tmp__ = (_ctxLabels != null && _ctxLabels.__exists__(_key?.__copy__()) ? { _0 : _ctxLabels[_key?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _v:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
        return { _0 : _v?.__copy__(), _1 : _ok };
    }
