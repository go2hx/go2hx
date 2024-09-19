package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function exampleSlice():Void {
        var _people = (new stdgo.Slice<_internal.sort_test.Sort_test_Person.Person>(4, 4, ...[(new _internal.sort_test.Sort_test_Person.Person(("Gopher" : stdgo.GoString), (7 : stdgo.GoInt)) : _internal.sort_test.Sort_test_Person.Person), (new _internal.sort_test.Sort_test_Person.Person(("Alice" : stdgo.GoString), (55 : stdgo.GoInt)) : _internal.sort_test.Sort_test_Person.Person), (new _internal.sort_test.Sort_test_Person.Person(("Vera" : stdgo.GoString), (24 : stdgo.GoInt)) : _internal.sort_test.Sort_test_Person.Person), (new _internal.sort_test.Sort_test_Person.Person(("Bob" : stdgo.GoString), (75 : stdgo.GoInt)) : _internal.sort_test.Sort_test_Person.Person)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : _internal.sort_test.Sort_test_Person.Person)])) : stdgo.Slice<_internal.sort_test.Sort_test_Person.Person>);
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_people), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_people[(_i : stdgo.GoInt)].name < _people[(_j : stdgo.GoInt)].name : Bool);
        });
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("By name:" : stdgo.GoString)), stdgo.Go.toInterface(_people));
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_people), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_people[(_i : stdgo.GoInt)].age < _people[(_j : stdgo.GoInt)].age : Bool);
        });
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("By age:" : stdgo.GoString)), stdgo.Go.toInterface(_people));
    }
