package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function example_sortMultiKeys():Void {
        var _user = function(_c1:stdgo.Ref<_internal.sort_test.Sort_test_Change.Change>, _c2:stdgo.Ref<_internal.sort_test.Sort_test_Change.Change>):Bool {
            return (_c1._user < _c2._user : Bool);
        };
        var _language = function(_c1:stdgo.Ref<_internal.sort_test.Sort_test_Change.Change>, _c2:stdgo.Ref<_internal.sort_test.Sort_test_Change.Change>):Bool {
            return (_c1._language < _c2._language : Bool);
        };
        var _increasingLines = function(_c1:stdgo.Ref<_internal.sort_test.Sort_test_Change.Change>, _c2:stdgo.Ref<_internal.sort_test.Sort_test_Change.Change>):Bool {
            return (_c1._lines < _c2._lines : Bool);
        };
        var _decreasingLines = function(_c1:stdgo.Ref<_internal.sort_test.Sort_test_Change.Change>, _c2:stdgo.Ref<_internal.sort_test.Sort_test_Change.Change>):Bool {
            return (_c1._lines > _c2._lines : Bool);
        };
        _internal.sort_test.Sort_test_orderedBy.orderedBy(_user).sort(_internal.sort_test.Sort_test__changes._changes);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("By user:" : stdgo.GoString)), stdgo.Go.toInterface(_internal.sort_test.Sort_test__changes._changes));
        _internal.sort_test.Sort_test_orderedBy.orderedBy(_user, _increasingLines).sort(_internal.sort_test.Sort_test__changes._changes);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("By user,<lines:" : stdgo.GoString)), stdgo.Go.toInterface(_internal.sort_test.Sort_test__changes._changes));
        _internal.sort_test.Sort_test_orderedBy.orderedBy(_user, _decreasingLines).sort(_internal.sort_test.Sort_test__changes._changes);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("By user,>lines:" : stdgo.GoString)), stdgo.Go.toInterface(_internal.sort_test.Sort_test__changes._changes));
        _internal.sort_test.Sort_test_orderedBy.orderedBy(_language, _increasingLines).sort(_internal.sort_test.Sort_test__changes._changes);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("By language,<lines:" : stdgo.GoString)), stdgo.Go.toInterface(_internal.sort_test.Sort_test__changes._changes));
        _internal.sort_test.Sort_test_orderedBy.orderedBy(_language, _increasingLines, _user).sort(_internal.sort_test.Sort_test__changes._changes);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("By language,<lines,user:" : stdgo.GoString)), stdgo.Go.toInterface(_internal.sort_test.Sort_test__changes._changes));
    }
