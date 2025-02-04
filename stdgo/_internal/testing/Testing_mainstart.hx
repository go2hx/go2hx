package stdgo._internal.testing;
function mainStart(_deps:stdgo._internal.testing.Testing_t_testdeps.T_testDeps, _tests:stdgo.Slice<stdgo._internal.testing.Testing_internaltest.InternalTest>, _benchmarks:stdgo.Slice<stdgo._internal.testing.Testing_internalbenchmark.InternalBenchmark>, _fuzzTargets:stdgo.Slice<stdgo._internal.testing.Testing_internalfuzztarget.InternalFuzzTarget>, _examples:stdgo.Slice<stdgo._internal.testing.Testing_internalexample.InternalExample>):stdgo.Ref<stdgo._internal.testing.Testing_m.M> {
        final args = #if (sys || hxnodejs) Sys.args() #else [] #end;
        var testlist:Array<stdgo._internal.testing.Testing_internaltest.InternalTest> = [];
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
        var m = new stdgo._internal.testing.Testing_m.M(_deps, testlist, _benchmarks, _fuzzTargets, _examples);
        return m;
    }
