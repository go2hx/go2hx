package stdgo._internal.slices;
import stdgo._internal.math.Math;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.strings.Strings;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.testing.Testing;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
function _makeRandomStructs(_n:stdgo.GoInt):stdgo._internal.slices.Slices_T_myStructs.T_myStructs {
        stdgo._internal.math.rand.Rand_seed.seed((42i64 : stdgo.GoInt64));
        var _structs = (new stdgo.Slice<stdgo.Ref<stdgo._internal.slices.Slices_T_myStruct.T_myStruct>>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.slices.Slices_T_myStruct.T_myStruct>>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _structs[(_i : stdgo.GoInt)] = (stdgo.Go.setRef(({ _n : stdgo._internal.math.rand.Rand_intn.intn(_n) } : stdgo._internal.slices.Slices_T_myStruct.T_myStruct)) : stdgo.Ref<stdgo._internal.slices.Slices_T_myStruct.T_myStruct>);
                _i++;
            };
        };
        return _structs;
    }
