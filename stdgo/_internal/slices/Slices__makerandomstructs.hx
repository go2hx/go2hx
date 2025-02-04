package stdgo._internal.slices;
function _makeRandomStructs(_n:stdgo.GoInt):stdgo._internal.slices.Slices_t_mystructs.T_myStructs {
        stdgo._internal.math.rand.Rand_seed.seed((42i64 : stdgo.GoInt64));
        var _structs = (new stdgo.Slice<stdgo.Ref<stdgo._internal.slices.Slices_t_mystruct.T_myStruct>>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.slices.Slices_t_mystruct.T_myStruct>>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _structs[(_i : stdgo.GoInt)] = (stdgo.Go.setRef(({ _n : stdgo._internal.math.rand.Rand_intn.intn(_n) } : stdgo._internal.slices.Slices_t_mystruct.T_myStruct)) : stdgo.Ref<stdgo._internal.slices.Slices_t_mystruct.T_myStruct>);
                _i++;
            };
        };
        return _structs;
    }
