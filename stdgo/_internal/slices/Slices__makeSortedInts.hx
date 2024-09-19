package stdgo._internal.slices;
function _makeSortedInts(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoInt> {
        var _ints = (new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                _ints[(_i : stdgo.GoInt)] = _i;
            });
        };
        return _ints;
    }
