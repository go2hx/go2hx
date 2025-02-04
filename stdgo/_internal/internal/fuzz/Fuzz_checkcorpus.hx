package stdgo._internal.internal.fuzz;
function checkCorpus(_vals:stdgo.Slice<stdgo.AnyInterface>, _types:stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>):stdgo.Error {
        if ((_vals.length) != ((_types.length))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("wrong number of values in corpus entry: %d, want %d" : stdgo.GoString), stdgo.Go.toInterface((_vals.length)), stdgo.Go.toInterface((_types.length)));
        };
        var _valsT = (new stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>((_vals.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>);
        for (_valsI => _v in _vals) {
            _valsT[(_valsI : stdgo.GoInt)] = stdgo._internal.reflect.Reflect_typeof.typeOf(_v);
        };
        for (_i => _ in _types) {
            if (!((_valsT[(_i : stdgo.GoInt)].string() : String) == (_types[(_i : stdgo.GoInt)].string() : String))) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("mismatched types in corpus entry: %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_valsT), stdgo.Go.toInterface(_types));
            };
        };
        return (null : stdgo.Error);
    }
