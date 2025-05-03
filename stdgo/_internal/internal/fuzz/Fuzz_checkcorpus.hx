package stdgo._internal.internal.fuzz;
function checkCorpus(_vals:stdgo.Slice<stdgo.AnyInterface>, _types:stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1028"
        if ((_vals.length) != ((_types.length))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1029"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("wrong number of values in corpus entry: %d, want %d" : stdgo.GoString), stdgo.Go.toInterface((_vals.length)), stdgo.Go.toInterface((_types.length)));
        };
        var _valsT = (new stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>((_vals.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1032"
        for (_valsI => _v in _vals) {
            _valsT[(_valsI : stdgo.GoInt)] = stdgo._internal.reflect.Reflect_typeof.typeOf(_v);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1035"
        for (_i => _ in _types) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1036"
            if (!((_valsT[(_i : stdgo.GoInt)].string() : String) == (_types[(_i : stdgo.GoInt)].string() : String))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1037"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("mismatched types in corpus entry: %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_valsT), stdgo.Go.toInterface(_types));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1040"
        return (null : stdgo.Error);
    }
