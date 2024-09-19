package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function _newAdversaryTestingData(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _size:stdgo.GoInt, _maxcmp:stdgo.GoInt):stdgo.Ref<_internal.sort_test.Sort_test_T_adversaryTestingData.T_adversaryTestingData> {
        var _gas = (_size - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _data = (new stdgo.Slice<stdgo.GoInt>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _size : Bool), _i++, {
                _data[(_i : stdgo.GoInt)] = _gas;
            });
        };
        return (stdgo.Go.setRef(({ _t : _t, _data : _data, _maxcmp : _maxcmp, _gas : _gas } : _internal.sort_test.Sort_test_T_adversaryTestingData.T_adversaryTestingData)) : stdgo.Ref<_internal.sort_test.Sort_test_T_adversaryTestingData.T_adversaryTestingData>);
    }
