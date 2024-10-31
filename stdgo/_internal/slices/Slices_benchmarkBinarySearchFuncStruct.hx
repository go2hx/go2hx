package stdgo._internal.slices;
function benchmarkBinarySearchFuncStruct(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        for (__0 => _size in (new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(16 : stdgo.GoInt), (32 : stdgo.GoInt), (64 : stdgo.GoInt), (128 : stdgo.GoInt), (512 : stdgo.GoInt), (1024 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("Size%d" : stdgo.GoString), stdgo.Go.toInterface(_size))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _structs = (new stdgo.Slice<stdgo.Ref<stdgo._internal.slices.Slices_T_myStruct.T_myStruct>>((_size : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.slices.Slices_T_myStruct.T_myStruct>>);
                for (_i => _ in _structs) {
                    _structs[(_i : stdgo.GoInt)] = (stdgo.Go.setRef(({ _n : _i } : stdgo._internal.slices.Slices_T_myStruct.T_myStruct)) : stdgo.Ref<stdgo._internal.slices.Slices_T_myStruct.T_myStruct>);
                };
                var _midpoint = ((_structs.length) / (2 : stdgo.GoInt) : stdgo.GoInt);
                var _needle = (stdgo.Go.setRef(({ _n : (((_structs[(_midpoint : stdgo.GoInt)]._n + _structs[(_midpoint + (1 : stdgo.GoInt) : stdgo.GoInt)]._n : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) } : stdgo._internal.slices.Slices_T_myStruct.T_myStruct)) : stdgo.Ref<stdgo._internal.slices.Slices_T_myStruct.T_myStruct>);
                var _lessFunc = function(_a:stdgo.Ref<stdgo._internal.slices.Slices_T_myStruct.T_myStruct>, _b:stdgo.Ref<stdgo._internal.slices.Slices_T_myStruct.T_myStruct>):stdgo.GoInt {
                    return (_a._n - _b._n : stdgo.GoInt);
                };
                _b.resetTimer();
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _b.n : Bool)) {
                        stdgo._internal.slices.Slices_binarySearchFunc.binarySearchFunc(_structs, _needle, _lessFunc);
                        _i++;
                    };
                };
            });
        };
    }
