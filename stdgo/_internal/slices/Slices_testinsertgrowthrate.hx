package stdgo._internal.slices;
function testInsertGrowthRate(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((1 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _maxCap = (_b.capacity : stdgo.GoInt);
        var _nGrow = (0 : stdgo.GoInt);
        {};
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L1026"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (1000000 : stdgo.GoInt) : Bool)) {
                _b = stdgo._internal.slices.Slices_insert.insert(_b, ((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt), (0 : stdgo.GoUInt8));
//"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L1028"
                if ((_b.capacity > _maxCap : Bool)) {
                    _maxCap = _b.capacity;
                    //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L1030"
                    _nGrow++;
                };
                _i++;
            };
        };
        var _want = ((stdgo._internal.math.Math_log.log((1e+06 : stdgo.GoFloat64)) / stdgo._internal.math.Math_log.log((1.25 : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L1034"
        if ((_nGrow > _want : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L1035"
            _t.errorf(("too many grows. got:%d want:%d" : stdgo.GoString), stdgo.Go.toInterface(_nGrow), stdgo.Go.toInterface(_want));
        };
    }
