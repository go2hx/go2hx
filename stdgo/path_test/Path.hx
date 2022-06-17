package stdgo.path_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _tests : Slice<stdgo.testing.Testing.InternalTest> = ((new Slice<stdgo.testing.Testing.InternalTest>(((new stdgo.testing.Testing.InternalTest(((("TestMatch" : GoString))), stdgo.path_test.Path_test.testMatch) : stdgo.testing.Testing.InternalTest)), ((new stdgo.testing.Testing.InternalTest(((("TestClean" : GoString))), stdgo.path_test.Path_test.testClean) : stdgo.testing.Testing.InternalTest)), ((new stdgo.testing.Testing.InternalTest(((("TestCleanMallocs" : GoString))), stdgo.path_test.Path_test.testCleanMallocs) : stdgo.testing.Testing.InternalTest)), ((new stdgo.testing.Testing.InternalTest(((("TestSplit" : GoString))), stdgo.path_test.Path_test.testSplit) : stdgo.testing.Testing.InternalTest)), ((new stdgo.testing.Testing.InternalTest(((("TestJoin" : GoString))), stdgo.path_test.Path_test.testJoin) : stdgo.testing.Testing.InternalTest)), ((new stdgo.testing.Testing.InternalTest(((("TestExt" : GoString))), stdgo.path_test.Path_test.testExt) : stdgo.testing.Testing.InternalTest)), ((new stdgo.testing.Testing.InternalTest(((("TestBase" : GoString))), stdgo.path_test.Path_test.testBase) : stdgo.testing.Testing.InternalTest)), ((new stdgo.testing.Testing.InternalTest(((("TestDir" : GoString))), stdgo.path_test.Path_test.testDir) : stdgo.testing.Testing.InternalTest)), ((new stdgo.testing.Testing.InternalTest(((("TestIsAbs" : GoString))), stdgo.path_test.Path_test.testIsAbs) : stdgo.testing.Testing.InternalTest))) : Slice<stdgo.testing.Testing.InternalTest>));
var _benchmarks : Slice<stdgo.testing.Testing.InternalBenchmark> = ((new Slice<stdgo.testing.Testing.InternalBenchmark>() : Slice<stdgo.testing.Testing.InternalBenchmark>));
var _fuzzTargets : Slice<stdgo.testing.Testing.InternalFuzzTarget> = ((new Slice<stdgo.testing.Testing.InternalFuzzTarget>() : Slice<stdgo.testing.Testing.InternalFuzzTarget>));
var _examples : Slice<stdgo.testing.Testing.InternalExample> = ((new Slice<stdgo.testing.Testing.InternalExample>(((new stdgo.testing.Testing.InternalExample(((("ExampleBase" : GoString))), stdgo.path_test.Path_test.exampleBase, ((("b\n/\n.\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleClean" : GoString))), stdgo.path_test.Path_test.exampleClean, ((("Clean(\"a/c\") = \"a/c\"\nClean(\"a//c\") = \"a/c\"\nClean(\"a/c/.\") = \"a/c\"\nClean(\"a/c/b/..\") = \"a/c\"\nClean(\"/../a/c\") = \"/a/c\"\nClean(\"/../a/b/../././/c\") = \"/a/c\"\nClean(\"\") = \".\"\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleDir" : GoString))), stdgo.path_test.Path_test.exampleDir, ((("/a/b\na/b\n/a\na\n/\n.\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleExt" : GoString))), stdgo.path_test.Path_test.exampleExt, (((".css\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleIsAbs" : GoString))), stdgo.path_test.Path_test.exampleIsAbs, ((("true\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleJoin" : GoString))), stdgo.path_test.Path_test.exampleJoin, ((("a/b/c\na/b/c\na/b/c\n../xyz\n\na\na\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleMatch" : GoString))), stdgo.path_test.Path_test.exampleMatch, ((("true <nil>\ntrue <nil>\nfalse <nil>\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleSplit" : GoString))), stdgo.path_test.Path_test.exampleSplit, ((("path.Split(\"static/myfile.css\") = dir: \"static/\", file: \"myfile.css\"\npath.Split(\"myfile.css\") = dir: \"\", file: \"myfile.css\"\npath.Split(\"\") = dir: \"\", file: \"\"\n" : GoString))), false) : stdgo.testing.Testing.InternalExample))) : Slice<stdgo.testing.Testing.InternalExample>));
function main():Void {
        var _m:stdgo.testing.Testing.M = stdgo.testing.Testing.mainStart(((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        stdgo.os.Os.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ((("path" : GoString)));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
