package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function example():Void {
        var _people = (new stdgo.Slice<_internal.sort_test.Sort_test_Person.Person>(4, 4, ...[(new _internal.sort_test.Sort_test_Person.Person(("Bob" : stdgo.GoString), (31 : stdgo.GoInt)) : _internal.sort_test.Sort_test_Person.Person), (new _internal.sort_test.Sort_test_Person.Person(("John" : stdgo.GoString), (42 : stdgo.GoInt)) : _internal.sort_test.Sort_test_Person.Person), (new _internal.sort_test.Sort_test_Person.Person(("Michael" : stdgo.GoString), (17 : stdgo.GoInt)) : _internal.sort_test.Sort_test_Person.Person), (new _internal.sort_test.Sort_test_Person.Person(("Jenny" : stdgo.GoString), (26 : stdgo.GoInt)) : _internal.sort_test.Sort_test_Person.Person)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : _internal.sort_test.Sort_test_Person.Person)])) : stdgo.Slice<_internal.sort_test.Sort_test_Person.Person>);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_people));
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface((_people : _internal.sort_test.Sort_test_ByAge.ByAge)));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_people));
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_people), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_people[(_i : stdgo.GoInt)].age > _people[(_j : stdgo.GoInt)].age : Bool);
        });
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_people));
    }
