package stdgo._internal.runtime.pprof;
function labels(_args:haxe.Rest<stdgo.GoString>):stdgo._internal.runtime.pprof.Pprof_LabelSet.LabelSet {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        if (((_args.length) % (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("uneven number of arguments to pprof.Labels" : stdgo.GoString));
        };
        var _list = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_label.T_label>((0 : stdgo.GoInt).toBasic(), ((_args.length) / (2 : stdgo.GoInt) : stdgo.GoInt), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > ((_args.length) / (2 : stdgo.GoInt) : stdgo.GoInt) ? (0 : stdgo.GoInt).toBasic() : ((_args.length) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_label.T_label)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_label.T_label>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor(((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_args.length) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                _list = (_list.__append__(({ _key : _args[(_i : stdgo.GoInt)]?.__copy__(), _value : _args[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__() } : stdgo._internal.runtime.pprof.Pprof_T_label.T_label)));
            });
        };
        return ({ _list : _list } : stdgo._internal.runtime.pprof.Pprof_LabelSet.LabelSet);
    }
