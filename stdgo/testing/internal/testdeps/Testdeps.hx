package stdgo.testing.internal.testdeps;
/**
    Package testdeps provides access to dependencies needed by test execution.
    
    This package is imported by the generated main package, which passes
    TestDeps into testing.Main. This allows tests to use packages at run time
    without making those packages direct dependencies of package testing.
    Direct dependencies of package testing are harder to write tests for.
**/
private var __go2hxdoc__package : Bool;
var importPath(get, set) : String;
function get_importPath():String return stdgo._internal.testing.internal.testdeps.Testdeps.importPath;
function set_importPath(v:String):String return stdgo._internal.testing.internal.testdeps.Testdeps.importPath = v;
@:invalid typedef TestDeps = Dynamic;
@:invalid typedef T_testLog = Dynamic;
@:invalid typedef TestDeps_asInterface = Dynamic;
@:invalid typedef TestDeps_static_extension = Dynamic;
@:invalid typedef T_testLog_asInterface = Dynamic;
@:invalid typedef T_testLog_static_extension = Dynamic;
