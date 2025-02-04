package stdgo._internal.slices;
function testMinMax(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _intCmp = (function(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt {
            return (_a - _b : stdgo.GoInt);
        } : (stdgo.GoInt, stdgo.GoInt) -> stdgo.GoInt);
        var _tests = (new stdgo.Slice<stdgo._internal.slices.Slices_t__struct_13.T__struct_13>(9, 9, ...[({ _data : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(7 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _wantMin : (7 : stdgo.GoInt), _wantMax : (7 : stdgo.GoInt) } : stdgo._internal.slices.Slices_t__struct_13.T__struct_13), ({ _data : (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _wantMin : (1 : stdgo.GoInt), _wantMax : (2 : stdgo.GoInt) } : stdgo._internal.slices.Slices_t__struct_13.T__struct_13), ({ _data : (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(2 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _wantMin : (1 : stdgo.GoInt), _wantMax : (2 : stdgo.GoInt) } : stdgo._internal.slices.Slices_t__struct_13.T__struct_13), ({ _data : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _wantMin : (1 : stdgo.GoInt), _wantMax : (3 : stdgo.GoInt) } : stdgo._internal.slices.Slices_t__struct_13.T__struct_13), ({ _data : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(3 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _wantMin : (1 : stdgo.GoInt), _wantMax : (3 : stdgo.GoInt) } : stdgo._internal.slices.Slices_t__struct_13.T__struct_13), ({ _data : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(2 : stdgo.GoInt), (1 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _wantMin : (1 : stdgo.GoInt), _wantMax : (3 : stdgo.GoInt) } : stdgo._internal.slices.Slices_t__struct_13.T__struct_13), ({ _data : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(2 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _wantMin : (2 : stdgo.GoInt), _wantMax : (3 : stdgo.GoInt) } : stdgo._internal.slices.Slices_t__struct_13.T__struct_13), ({ _data : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(3 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _wantMin : (2 : stdgo.GoInt), _wantMax : (3 : stdgo.GoInt) } : stdgo._internal.slices.Slices_t__struct_13.T__struct_13), ({ _data : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(0 : stdgo.GoInt), (2 : stdgo.GoInt), (-9 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _wantMin : (-9 : stdgo.GoInt), _wantMax : (2 : stdgo.GoInt) } : stdgo._internal.slices.Slices_t__struct_13.T__struct_13)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _data : (null : stdgo.Slice<stdgo.GoInt>), _wantMin : (0 : stdgo.GoInt), _wantMax : (0 : stdgo.GoInt) } : stdgo._internal.slices.Slices_t__struct_13.T__struct_13)])) : stdgo.Slice<stdgo._internal.slices.Slices_t__struct_13.T__struct_13>);
        for (__0 => _tt in _tests) {
            @:check2r _t.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_tt._data))?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                var _gotMin = (stdgo._internal.slices.Slices_min.min(_tt._data) : stdgo.GoInt);
                if (_gotMin != (_tt._wantMin)) {
                    @:check2r _t.errorf(("Min got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_gotMin), stdgo.Go.toInterface(_tt._wantMin));
                };
                var _gotMinFunc = (stdgo._internal.slices.Slices_minfunc.minFunc(_tt._data, _intCmp) : stdgo.GoInt);
                if (_gotMinFunc != (_tt._wantMin)) {
                    @:check2r _t.errorf(("MinFunc got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_gotMinFunc), stdgo.Go.toInterface(_tt._wantMin));
                };
                var _gotMax = (stdgo._internal.slices.Slices_max.max(_tt._data) : stdgo.GoInt);
                if (_gotMax != (_tt._wantMax)) {
                    @:check2r _t.errorf(("Max got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_gotMax), stdgo.Go.toInterface(_tt._wantMax));
                };
                var _gotMaxFunc = (stdgo._internal.slices.Slices_maxfunc.maxFunc(_tt._data, _intCmp) : stdgo.GoInt);
                if (_gotMaxFunc != (_tt._wantMax)) {
                    @:check2r _t.errorf(("MaxFunc got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_gotMaxFunc), stdgo.Go.toInterface(_tt._wantMax));
                };
            });
        };
        var _svals = (new stdgo.Slice<stdgo._internal.slices.Slices_s.S>(4, 4, ...[(new stdgo._internal.slices.Slices_s.S((1 : stdgo.GoInt), ("a" : stdgo.GoString)) : stdgo._internal.slices.Slices_s.S), (new stdgo._internal.slices.Slices_s.S((2 : stdgo.GoInt), ("a" : stdgo.GoString)) : stdgo._internal.slices.Slices_s.S), (new stdgo._internal.slices.Slices_s.S((1 : stdgo.GoInt), ("b" : stdgo.GoString)) : stdgo._internal.slices.Slices_s.S), (new stdgo._internal.slices.Slices_s.S((2 : stdgo.GoInt), ("b" : stdgo.GoString)) : stdgo._internal.slices.Slices_s.S)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.slices.Slices_s.S)])) : stdgo.Slice<stdgo._internal.slices.Slices_s.S>);
        var _gotMin = (stdgo._internal.slices.Slices_minfunc.minFunc(_svals, stdgo._internal.slices.Slices__cmps._cmpS)?.__copy__() : stdgo._internal.slices.Slices_s.S);
        var _wantMin = (new stdgo._internal.slices.Slices_s.S((1 : stdgo.GoInt), ("a" : stdgo.GoString)) : stdgo._internal.slices.Slices_s.S);
        if (stdgo.Go.toInterface(_gotMin) != stdgo.Go.toInterface(_wantMin)) {
            @:check2r _t.errorf(("MinFunc(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_svals), stdgo.Go.toInterface(stdgo.Go.asInterface(_gotMin)), stdgo.Go.toInterface(stdgo.Go.asInterface(_wantMin)));
        };
        var _gotMax = (stdgo._internal.slices.Slices_maxfunc.maxFunc(_svals, stdgo._internal.slices.Slices__cmps._cmpS)?.__copy__() : stdgo._internal.slices.Slices_s.S);
        var _wantMax = (new stdgo._internal.slices.Slices_s.S((2 : stdgo.GoInt), ("a" : stdgo.GoString)) : stdgo._internal.slices.Slices_s.S);
        if (stdgo.Go.toInterface(_gotMax) != stdgo.Go.toInterface(_wantMax)) {
            @:check2r _t.errorf(("MaxFunc(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_svals), stdgo.Go.toInterface(stdgo.Go.asInterface(_gotMax)), stdgo.Go.toInterface(stdgo.Go.asInterface(_wantMax)));
        };
    }
