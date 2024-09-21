package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function testAdversary(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _maxcmp = (((10000 : stdgo.GoInt) * _internal.sort_test.Sort_test__lg._lg((10000 : stdgo.GoInt)) : stdgo.GoInt) * (4 : stdgo.GoInt) : stdgo.GoInt);
        var _d = _internal.sort_test.Sort_test__newAdversaryTestingData._newAdversaryTestingData(_t, (10000 : stdgo.GoInt), _maxcmp);
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_d));
        for (_i => _v in _d._data) {
            if (_v != (_i)) {
                _t.fatalf(("adversary data not fully sorted" : stdgo.GoString));
            };
        };
    }
