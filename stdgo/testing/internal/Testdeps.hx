package stdgo.testing.internal;
/**
    Package testdeps provides access to dependencies needed by test execution.
    
    This package is imported by the generated main package, which passes
    TestDeps into testing.Main. This allows tests to use packages at run time
    without making those packages direct dependencies of package testing.
    Direct dependencies of package testing are harder to write tests for.
**/
private var __go2hxdoc__package : Bool;
var importPath(get, set) : String;
private function get_importPath():String return stdgo._internal.testing.internal.testdeps.Testdeps.importPath;
private function set_importPath(v:String):String return stdgo._internal.testing.internal.testdeps.Testdeps.importPath = v;
@:forward @:forward.new abstract TestDeps(stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps) from stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps to stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps {

}
@:forward @:forward.new abstract T_testLog(stdgo._internal.testing.internal.testdeps.Testdeps.T_testLog) from stdgo._internal.testing.internal.testdeps.Testdeps.T_testLog to stdgo._internal.testing.internal.testdeps.Testdeps.T_testLog {

}
@:forward @:forward.new abstract TestDeps_asInterface(stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_asInterface) from stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_asInterface to stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_asInterface {

}
@:forward @:forward.new abstract TestDeps_static_extension(stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension) from stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension to stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension {

}
@:forward @:forward.new abstract T_testLog_asInterface(stdgo._internal.testing.internal.testdeps.Testdeps.T_testLog_asInterface) from stdgo._internal.testing.internal.testdeps.Testdeps.T_testLog_asInterface to stdgo._internal.testing.internal.testdeps.Testdeps.T_testLog_asInterface {

}
@:forward @:forward.new abstract T_testLog_static_extension(stdgo._internal.testing.internal.testdeps.Testdeps.T_testLog_static_extension) from stdgo._internal.testing.internal.testdeps.Testdeps.T_testLog_static_extension to stdgo._internal.testing.internal.testdeps.Testdeps.T_testLog_static_extension {

}
