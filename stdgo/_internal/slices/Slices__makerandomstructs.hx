package stdgo._internal.slices;
function _makeRandomStructs(_n:stdgo.GoInt):stdgo._internal.slices.Slices_t_mystructs.T_myStructs {
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L207"
        stdgo._internal.math.rand.Rand_seed.seed((42i64 : stdgo.GoInt64));
        var _structs = (new stdgo.Slice<stdgo.Ref<stdgo._internal.slices.Slices_t_mystruct.T_myStruct>>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.slices.Slices_t_mystruct.T_myStruct>>);
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L209"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _structs[(_i : stdgo.GoInt)] = (stdgo.Go.setRef(({ _n : stdgo._internal.math.rand.Rand_intn.intn(_n) } : stdgo._internal.slices.Slices_t_mystruct.T_myStruct)) : stdgo.Ref<stdgo._internal.slices.Slices_t_mystruct.T_myStruct>);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L212"
        return _structs;
    }
