package stdgo.testing.internal.testdeps;
var importPath(get, set) : stdgo.GoString;
private function get_importPath():stdgo.GoString return stdgo._internal.testing.internal.testdeps.Testdeps_importpath.importPath;
private function set_importPath(v:stdgo.GoString):stdgo.GoString {
        stdgo._internal.testing.internal.testdeps.Testdeps_importpath.importPath = v;
        return v;
    }
typedef TestDeps = stdgo._internal.testing.internal.testdeps.Testdeps_testdeps.TestDeps;
typedef TestDepsPointer = stdgo._internal.testing.internal.testdeps.Testdeps_testdepspointer.TestDepsPointer;
/**
    * Package testdeps provides access to dependencies needed by test execution.
    * 
    * This package is imported by the generated main package, which passes
    * TestDeps into testing.Main. This allows tests to use packages at run time
    * without making those packages direct dependencies of package testing.
    * Direct dependencies of package testing are harder to write tests for.
**/
class Testdeps {

}
