package stdgo.go.importer_test;
import stdgo._internal.go.importer.Importer;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(1, 1, (new stdgo._internal.testing.Testing.InternalTest(("TestForCompiler" : stdgo.GoString), stdgo._internal.go.importer.Importer.testForCompiler) : stdgo._internal.testing.Testing.InternalTest)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>(0, 0) : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(0, 0) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo._internal.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        stdgo._internal.go.importer.Importer.testMain(_m);
        Sys.exit((stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_m))).elem().fieldByName(("exitCode" : stdgo.GoString)).int_() : stdgo.GoInt));
    }
@:keep var _ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps.importPath = ("go/importer" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
