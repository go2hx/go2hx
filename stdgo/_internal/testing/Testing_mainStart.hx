package stdgo._internal.testing;
function mainStart(_deps:stdgo._internal.testing.Testing_T_testDeps.T_testDeps, _tests:stdgo.Slice<stdgo._internal.testing.Testing_InternalTest.InternalTest>, _benchmarks:stdgo.Slice<stdgo._internal.testing.Testing_InternalBenchmark.InternalBenchmark>, _fuzzTargets:stdgo.Slice<stdgo._internal.testing.Testing_InternalFuzzTarget.InternalFuzzTarget>, _examples:stdgo.Slice<stdgo._internal.testing.Testing_InternalExample.InternalExample>):stdgo.Ref<stdgo._internal.testing.Testing_M.M> {
        final args = Sys.args();
        var testlist:Array<stdgo._internal.testing.Testing_InternalTest.InternalTest> = [];
        var runArgBool = false;
        var excludes:Array<String> = [];
        for (i in 0 ... args.length) {
            if ((args[i] == "-run" || args[i] == "--run") && i < args.length - 1) {
                final match = args[i + 1];
                runArgBool = true;
                for (_ => test in _tests) {
                    if (test.name.toString().indexOf(match) == 0) {
                        testlist.push(test);
                    };
                };
                break;
            };
        };
        if (!runArgBool) testlist = _tests.__toArray__();
        for (i in 0 ... args.length) {
            if ((args[i] == "-exclude" || args[i] == "--exclude") && i < args.length - 1) {
                final excludes = args[i + 1].split(",");
                for (test in testlist) {
                    if (excludes.indexOf(test.name) != -1) testlist.remove(test);
                };
            };
        };
        var m = new stdgo._internal.testing.Testing_M.M(_deps, testlist, _benchmarks, _fuzzTargets, _examples);
        return m;
    }
