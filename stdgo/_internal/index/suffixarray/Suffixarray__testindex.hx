package stdgo._internal.index.suffixarray;
function _testIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__0 => _tc in stdgo._internal.index.suffixarray.Suffixarray__testcases._testCases) {
            var _x = stdgo._internal.index.suffixarray.Suffixarray_new_.new_((_tc._source : stdgo.Slice<stdgo.GoUInt8>));
            stdgo._internal.index.suffixarray.Suffixarray__testconstruction._testConstruction(_t, (stdgo.Go.setRef(_tc) : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_testcase.T_testCase>), _x);
            stdgo._internal.index.suffixarray.Suffixarray__testsaverestore._testSaveRestore(_t, (stdgo.Go.setRef(_tc) : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_testcase.T_testCase>), _x);
            stdgo._internal.index.suffixarray.Suffixarray__testlookups._testLookups(_t, (stdgo.Go.setRef(_tc) : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_testcase.T_testCase>), _x, (0 : stdgo.GoInt));
            stdgo._internal.index.suffixarray.Suffixarray__testlookups._testLookups(_t, (stdgo.Go.setRef(_tc) : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_testcase.T_testCase>), _x, (1 : stdgo.GoInt));
            stdgo._internal.index.suffixarray.Suffixarray__testlookups._testLookups(_t, (stdgo.Go.setRef(_tc) : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_testcase.T_testCase>), _x, (10 : stdgo.GoInt));
            stdgo._internal.index.suffixarray.Suffixarray__testlookups._testLookups(_t, (stdgo.Go.setRef(_tc) : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_testcase.T_testCase>), _x, (2000000000 : stdgo.GoInt));
            stdgo._internal.index.suffixarray.Suffixarray__testlookups._testLookups(_t, (stdgo.Go.setRef(_tc) : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_testcase.T_testCase>), _x, (-1 : stdgo.GoInt));
        };
    }
