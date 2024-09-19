package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function _countOps(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _algo:stdgo._internal.sort.Sort_Interface.Interface -> Void, _name:stdgo.GoString):Void {
        var _sizes = _internal.sort_test.Sort_test__countOpsSizes._countOpsSizes;
        if (stdgo._internal.testing.Testing_short.short()) {
            _sizes = (_sizes.__slice__(0, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        };
        if (!stdgo._internal.testing.Testing_verbose.verbose()) {
            _t.skip(stdgo.Go.toInterface(("Counting skipped as non-verbose mode." : stdgo.GoString)));
        };
        for (__0 => _n in _sizes) {
            var _td = ({ _desc : _name?.__copy__(), _t : _t, _data : (new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _maxswap : (2147483647 : stdgo.GoInt) } : _internal.sort_test.Sort_test_T_testingData.T_testingData);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                    _td._data[(_i : stdgo.GoInt)] = stdgo._internal.math.rand.Rand_intn.intn((_n / (5 : stdgo.GoInt) : stdgo.GoInt));
                });
            };
            _algo(stdgo.Go.asInterface((stdgo.Go.setRef(_td) : stdgo.Ref<_internal.sort_test.Sort_test_T_testingData.T_testingData>)));
            _t.logf(("%s %8d elements: %11d Swap, %10d Less" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_td._nswap), stdgo.Go.toInterface(_td._ncmp));
        };
    }
