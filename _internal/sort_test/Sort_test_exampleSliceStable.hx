package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function exampleSliceStable():Void {
        var _people = (new stdgo.Slice<_internal.sort_test.Sort_test_Person.Person>(8, 8, ...[(new _internal.sort_test.Sort_test_Person.Person(("Alice" : stdgo.GoString), (25 : stdgo.GoInt)) : _internal.sort_test.Sort_test_Person.Person), (new _internal.sort_test.Sort_test_Person.Person(("Elizabeth" : stdgo.GoString), (75 : stdgo.GoInt)) : _internal.sort_test.Sort_test_Person.Person), (new _internal.sort_test.Sort_test_Person.Person(("Alice" : stdgo.GoString), (75 : stdgo.GoInt)) : _internal.sort_test.Sort_test_Person.Person), (new _internal.sort_test.Sort_test_Person.Person(("Bob" : stdgo.GoString), (75 : stdgo.GoInt)) : _internal.sort_test.Sort_test_Person.Person), (new _internal.sort_test.Sort_test_Person.Person(("Alice" : stdgo.GoString), (75 : stdgo.GoInt)) : _internal.sort_test.Sort_test_Person.Person), (new _internal.sort_test.Sort_test_Person.Person(("Bob" : stdgo.GoString), (25 : stdgo.GoInt)) : _internal.sort_test.Sort_test_Person.Person), (new _internal.sort_test.Sort_test_Person.Person(("Colin" : stdgo.GoString), (25 : stdgo.GoInt)) : _internal.sort_test.Sort_test_Person.Person), (new _internal.sort_test.Sort_test_Person.Person(("Elizabeth" : stdgo.GoString), (25 : stdgo.GoInt)) : _internal.sort_test.Sort_test_Person.Person)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({} : _internal.sort_test.Sort_test_Person.Person)])) : stdgo.Slice<_internal.sort_test.Sort_test_Person.Person>);
        stdgo._internal.sort.Sort_sliceStable.sliceStable(stdgo.Go.toInterface(_people), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_people[(_i : stdgo.GoInt)].name < _people[(_j : stdgo.GoInt)].name : Bool);
        });
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("By name:" : stdgo.GoString)), stdgo.Go.toInterface(_people));
        stdgo._internal.sort.Sort_sliceStable.sliceStable(stdgo.Go.toInterface(_people), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_people[(_i : stdgo.GoInt)].age < _people[(_j : stdgo.GoInt)].age : Bool);
        });
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("By age,name:" : stdgo.GoString)), stdgo.Go.toInterface(_people));
    }
