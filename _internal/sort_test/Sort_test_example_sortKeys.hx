package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function example_sortKeys():Void {
        var _name = function(_p1:stdgo.Ref<_internal.sort_test.Sort_test_Planet.Planet>, _p2:stdgo.Ref<_internal.sort_test.Sort_test_Planet.Planet>):Bool {
            return (_p1._name < _p2._name : Bool);
        };
        var _mass = function(_p1:stdgo.Ref<_internal.sort_test.Sort_test_Planet.Planet>, _p2:stdgo.Ref<_internal.sort_test.Sort_test_Planet.Planet>):Bool {
            return (_p1._mass < _p2._mass : Bool);
        };
        var _distance = function(_p1:stdgo.Ref<_internal.sort_test.Sort_test_Planet.Planet>, _p2:stdgo.Ref<_internal.sort_test.Sort_test_Planet.Planet>):Bool {
            return (_p1._distance < _p2._distance : Bool);
        };
        var _decreasingDistance = function(_p1:stdgo.Ref<_internal.sort_test.Sort_test_Planet.Planet>, _p2:stdgo.Ref<_internal.sort_test.Sort_test_Planet.Planet>):Bool {
            return _distance(_p2, _p1);
        };
        (_name : _internal.sort_test.Sort_test_By.By).sort(_internal.sort_test.Sort_test__planets._planets);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("By name:" : stdgo.GoString)), stdgo.Go.toInterface(_internal.sort_test.Sort_test__planets._planets));
        (_mass : _internal.sort_test.Sort_test_By.By).sort(_internal.sort_test.Sort_test__planets._planets);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("By mass:" : stdgo.GoString)), stdgo.Go.toInterface(_internal.sort_test.Sort_test__planets._planets));
        (_distance : _internal.sort_test.Sort_test_By.By).sort(_internal.sort_test.Sort_test__planets._planets);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("By distance:" : stdgo.GoString)), stdgo.Go.toInterface(_internal.sort_test.Sort_test__planets._planets));
        (_decreasingDistance : _internal.sort_test.Sort_test_By.By).sort(_internal.sort_test.Sort_test__planets._planets);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("By decreasing distance:" : stdgo.GoString)), stdgo.Go.toInterface(_internal.sort_test.Sort_test__planets._planets));
    }
