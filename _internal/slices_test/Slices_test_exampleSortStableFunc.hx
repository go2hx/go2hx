package _internal.slices_test;
function exampleSortStableFunc():Void {
        {};
        var _people = (new stdgo.Slice<_internal.slices_test.Slices_test_T_exampleSortStableFunc___localname___Person_6443.T_exampleSortStableFunc___localname___Person_6443>(4, 4, ...[(new _internal.slices_test.Slices_test_T_exampleSortStableFunc___localname___Person_6443.T_exampleSortStableFunc___localname___Person_6443(("Gopher" : stdgo.GoString), (13 : stdgo.GoInt)) : _internal.slices_test.Slices_test_T_exampleSortStableFunc___localname___Person_6443.T_exampleSortStableFunc___localname___Person_6443), (new _internal.slices_test.Slices_test_T_exampleSortStableFunc___localname___Person_6443.T_exampleSortStableFunc___localname___Person_6443(("Alice" : stdgo.GoString), (20 : stdgo.GoInt)) : _internal.slices_test.Slices_test_T_exampleSortStableFunc___localname___Person_6443.T_exampleSortStableFunc___localname___Person_6443), (new _internal.slices_test.Slices_test_T_exampleSortStableFunc___localname___Person_6443.T_exampleSortStableFunc___localname___Person_6443(("Bob" : stdgo.GoString), (24 : stdgo.GoInt)) : _internal.slices_test.Slices_test_T_exampleSortStableFunc___localname___Person_6443.T_exampleSortStableFunc___localname___Person_6443), (new _internal.slices_test.Slices_test_T_exampleSortStableFunc___localname___Person_6443.T_exampleSortStableFunc___localname___Person_6443(("Alice" : stdgo.GoString), (55 : stdgo.GoInt)) : _internal.slices_test.Slices_test_T_exampleSortStableFunc___localname___Person_6443.T_exampleSortStableFunc___localname___Person_6443)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : _internal.slices_test.Slices_test_T_exampleSortStableFunc___localname___Person_6443.T_exampleSortStableFunc___localname___Person_6443)])) : stdgo.Slice<_internal.slices_test.Slices_test_T_exampleSortStableFunc___localname___Person_6443.T_exampleSortStableFunc___localname___Person_6443>);
        stdgo._internal.slices.Slices_sortStableFunc.sortStableFunc(_people, function(_a:_internal.slices_test.Slices_test_T_exampleSortStableFunc___localname___Person_6443.T_exampleSortStableFunc___localname___Person_6443, _b:_internal.slices_test.Slices_test_T_exampleSortStableFunc___localname___Person_6443.T_exampleSortStableFunc___localname___Person_6443):stdgo.GoInt {
            return stdgo._internal.cmp.Cmp_compare.compare(_a.name?.__copy__(), _b.name?.__copy__());
        });
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_people));
    }