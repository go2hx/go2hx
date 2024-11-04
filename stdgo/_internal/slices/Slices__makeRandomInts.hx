package stdgo._internal.slices;
function _makeRandomInts(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoInt> {
        stdgo._internal.math.rand.Rand_seed.seed((42i64 : stdgo.GoInt64));
        var _ints = (new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _ints[(_i : stdgo.GoInt)] = stdgo._internal.math.rand.Rand_intn.intn(_n);
                _i++;
            };
        };
        return _ints;
    }
