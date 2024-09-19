package _internal.slices_test;
function exampleSortFunc_multiField():Void {
        {};
        var _people = (new stdgo.Slice<_internal.slices_test.Slices_test_T_exampleSortFunc_multiField___localname___Person_5996.T_exampleSortFunc_multiField___localname___Person_5996>(4, 4, ...[(new _internal.slices_test.Slices_test_T_exampleSortFunc_multiField___localname___Person_5996.T_exampleSortFunc_multiField___localname___Person_5996(("Gopher" : stdgo.GoString), (13 : stdgo.GoInt)) : _internal.slices_test.Slices_test_T_exampleSortFunc_multiField___localname___Person_5996.T_exampleSortFunc_multiField___localname___Person_5996), (new _internal.slices_test.Slices_test_T_exampleSortFunc_multiField___localname___Person_5996.T_exampleSortFunc_multiField___localname___Person_5996(("Alice" : stdgo.GoString), (55 : stdgo.GoInt)) : _internal.slices_test.Slices_test_T_exampleSortFunc_multiField___localname___Person_5996.T_exampleSortFunc_multiField___localname___Person_5996), (new _internal.slices_test.Slices_test_T_exampleSortFunc_multiField___localname___Person_5996.T_exampleSortFunc_multiField___localname___Person_5996(("Bob" : stdgo.GoString), (24 : stdgo.GoInt)) : _internal.slices_test.Slices_test_T_exampleSortFunc_multiField___localname___Person_5996.T_exampleSortFunc_multiField___localname___Person_5996), (new _internal.slices_test.Slices_test_T_exampleSortFunc_multiField___localname___Person_5996.T_exampleSortFunc_multiField___localname___Person_5996(("Alice" : stdgo.GoString), (20 : stdgo.GoInt)) : _internal.slices_test.Slices_test_T_exampleSortFunc_multiField___localname___Person_5996.T_exampleSortFunc_multiField___localname___Person_5996)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : _internal.slices_test.Slices_test_T_exampleSortFunc_multiField___localname___Person_5996.T_exampleSortFunc_multiField___localname___Person_5996)])) : stdgo.Slice<_internal.slices_test.Slices_test_T_exampleSortFunc_multiField___localname___Person_5996.T_exampleSortFunc_multiField___localname___Person_5996>);
        stdgo._internal.slices.Slices_sortFunc.sortFunc(_people, function(_a:_internal.slices_test.Slices_test_T_exampleSortFunc_multiField___localname___Person_5996.T_exampleSortFunc_multiField___localname___Person_5996, _b:_internal.slices_test.Slices_test_T_exampleSortFunc_multiField___localname___Person_5996.T_exampleSortFunc_multiField___localname___Person_5996):stdgo.GoInt {
            {
                var _n = (stdgo._internal.cmp.Cmp_compare.compare(_a.name?.__copy__(), _b.name?.__copy__()) : stdgo.GoInt);
                if (_n != ((0 : stdgo.GoInt))) {
                    return _n;
                };
            };
            return stdgo._internal.cmp.Cmp_compare.compare(_a.age, _b.age);
        });
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_people));
    }
