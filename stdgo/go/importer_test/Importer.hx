package stdgo.go.importer_test;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

private var _tests:Slice<stdgo.testing.Testing.InternalTest> = (new Slice<stdgo.testing.Testing.InternalTest>(0, 0,
	(new stdgo.testing.Testing.InternalTest(("TestForCompiler" : GoString),
		stdgo.go.importer.Importer.testForCompiler) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0,
	0) : Slice<stdgo.testing.Testing.InternalBenchmark>);

private var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

private var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0,
	0) : Slice<stdgo.testing.Testing.InternalExample>);

private function main():Void {
	var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)),
		_tests, _benchmarks,
		_fuzzTargets, _examples);
	stdgo.go.importer.Importer.testMain(_m);
	Sys.exit((stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.asInterface(_m)))
		.elem()
		.fieldByName(("exitCode" : GoString))
		.int_() : GoInt));
}

@:keep var _ = {
	try {
		stdgo.testing.internal.testdeps.Testdeps.importPath = ("go/importer" : GoString);
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};