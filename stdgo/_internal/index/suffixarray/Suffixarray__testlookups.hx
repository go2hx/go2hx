package stdgo._internal.index.suffixarray;
function _testLookups(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _tc:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_testcase.T_testCase>, _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>, _n:stdgo.GoInt):Void {
        for (__0 => _pat in (@:checkr _tc ?? throw "null pointer dereference")._patterns) {
            stdgo._internal.index.suffixarray.Suffixarray__testlookup._testLookup(_t, _tc, _x, _pat?.__copy__(), _n);
            {
                var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(_pat?.__copy__()), _rx:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    stdgo._internal.index.suffixarray.Suffixarray__testfindallindex._testFindAllIndex(_t, _tc, _x, _rx, _n);
                };
            };
        };
    }
