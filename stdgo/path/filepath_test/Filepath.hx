package stdgo.path.filepath_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _tests : Slice<stdgo.testing.Testing.InternalTest> = ((new Slice<stdgo.testing.Testing.InternalTest>(
((new stdgo.testing.Testing.InternalTest(((("TestMatch" : GoString))), stdgo.path.filepath_test.Filepath_test.testMatch) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGlob" : GoString))), stdgo.path.filepath_test.Filepath_test.testGlob) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGlobError" : GoString))), stdgo.path.filepath_test.Filepath_test.testGlobError) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGlobUNC" : GoString))), stdgo.path.filepath_test.Filepath_test.testGlobUNC) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGlobSymlink" : GoString))), stdgo.path.filepath_test.Filepath_test.testGlobSymlink) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWindowsGlob" : GoString))), stdgo.path.filepath_test.Filepath_test.testWindowsGlob) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestNonWindowsGlobEscape" : GoString))), stdgo.path.filepath_test.Filepath_test.testNonWindowsGlobEscape) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestClean" : GoString))), stdgo.path.filepath_test.Filepath_test.testClean) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestFromAndToSlash" : GoString))), stdgo.path.filepath_test.Filepath_test.testFromAndToSlash) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestSplitList" : GoString))), stdgo.path.filepath_test.Filepath_test.testSplitList) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestSplit" : GoString))), stdgo.path.filepath_test.Filepath_test.testSplit) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestJoin" : GoString))), stdgo.path.filepath_test.Filepath_test.testJoin) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestExt" : GoString))), stdgo.path.filepath_test.Filepath_test.testExt) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWalk" : GoString))), stdgo.path.filepath_test.Filepath_test.testWalk) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWalkDir" : GoString))), stdgo.path.filepath_test.Filepath_test.testWalkDir) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWalkSkipDirOnFile" : GoString))), stdgo.path.filepath_test.Filepath_test.testWalkSkipDirOnFile) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWalkFileError" : GoString))), stdgo.path.filepath_test.Filepath_test.testWalkFileError) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestBase" : GoString))), stdgo.path.filepath_test.Filepath_test.testBase) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDir" : GoString))), stdgo.path.filepath_test.Filepath_test.testDir) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestIsAbs" : GoString))), stdgo.path.filepath_test.Filepath_test.testIsAbs) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestEvalSymlinks" : GoString))), stdgo.path.filepath_test.Filepath_test.testEvalSymlinks) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestEvalSymlinksIsNotExist" : GoString))), stdgo.path.filepath_test.Filepath_test.testEvalSymlinksIsNotExist) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestIssue13582" : GoString))), stdgo.path.filepath_test.Filepath_test.testIssue13582) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestAbs" : GoString))), stdgo.path.filepath_test.Filepath_test.testAbs) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestAbsEmptyString" : GoString))), stdgo.path.filepath_test.Filepath_test.testAbsEmptyString) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestRel" : GoString))), stdgo.path.filepath_test.Filepath_test.testRel) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestVolumeName" : GoString))), stdgo.path.filepath_test.Filepath_test.testVolumeName) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDriveLetterInEvalSymlinks" : GoString))), stdgo.path.filepath_test.Filepath_test.testDriveLetterInEvalSymlinks) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestBug3486" : GoString))), stdgo.path.filepath_test.Filepath_test.testBug3486) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWalkSymlink" : GoString))), stdgo.path.filepath_test.Filepath_test.testWalkSymlink) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestIssue29372" : GoString))), stdgo.path.filepath_test.Filepath_test.testIssue29372) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestEvalSymlinksAboveRoot" : GoString))), stdgo.path.filepath_test.Filepath_test.testEvalSymlinksAboveRoot) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestEvalSymlinksAboveRootChdir" : GoString))), stdgo.path.filepath_test.Filepath_test.testEvalSymlinksAboveRootChdir) : stdgo.testing.Testing.InternalTest))) : Slice<stdgo.testing.Testing.InternalTest>));
var _benchmarks : Slice<stdgo.testing.Testing.InternalBenchmark> = ((new Slice<stdgo.testing.Testing.InternalBenchmark>() : Slice<stdgo.testing.Testing.InternalBenchmark>));
var _fuzzTargets : Slice<stdgo.testing.Testing.InternalFuzzTarget> = ((new Slice<stdgo.testing.Testing.InternalFuzzTarget>() : Slice<stdgo.testing.Testing.InternalFuzzTarget>));
var _examples : Slice<stdgo.testing.Testing.InternalExample> = ((new Slice<stdgo.testing.Testing.InternalExample>(((new stdgo.testing.Testing.InternalExample(((("ExampleExt" : GoString))), stdgo.path.filepath_test.Filepath_test.exampleExt, ((("No dots: \"\"\nOne dot: \".js\"\nTwo dots: \".js\"\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleSplitList" : GoString))), stdgo.path.filepath_test.Filepath_test.exampleSplitList, ((("On Unix: [/a/b/c /usr/bin]\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleRel" : GoString))), stdgo.path.filepath_test.Filepath_test.exampleRel, ((("On Unix:\n\"/a/b/c\": \"b/c\" <nil>\n\"/b/c\": \"../b/c\" <nil>\n\"./b/c\": \"\" Rel: can\'t make ./b/c relative to /a\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleSplit" : GoString))), stdgo.path.filepath_test.Filepath_test.exampleSplit, ((("On Unix:\ninput: \"/home/arnie/amelia.jpg\"\n\tdir: \"/home/arnie/\"\n\tfile: \"amelia.jpg\"\ninput: \"/mnt/photos/\"\n\tdir: \"/mnt/photos/\"\n\tfile: \"\"\ninput: \"rabbit.jpg\"\n\tdir: \"\"\n\tfile: \"rabbit.jpg\"\ninput: \"/usr/local//go\"\n\tdir: \"/usr/local//\"\n\tfile: \"go\"\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleJoin" : GoString))), stdgo.path.filepath_test.Filepath_test.exampleJoin, ((("On Unix:\na/b/c\na/b/c\na/b/c\na/b/c\n../xyz\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleMatch" : GoString))), stdgo.path.filepath_test.Filepath_test.exampleMatch, ((("On Unix:\ntrue <nil>\nfalse <nil>\ntrue <nil>\ntrue <nil>\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleBase" : GoString))), stdgo.path.filepath_test.Filepath_test.exampleBase, ((("On Unix:\nbaz.js\nbaz\nbaz\ndev.txt\ntodo.txt\n..\n.\n/\n.\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleDir" : GoString))), stdgo.path.filepath_test.Filepath_test.exampleDir, ((("On Unix:\n/foo/bar\n/foo/bar\n/foo/bar/baz\n/dirty/path\n.\n..\n.\n.\n/\n.\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleIsAbs" : GoString))), stdgo.path.filepath_test.Filepath_test.exampleIsAbs, ((("On Unix:\ntrue\nfalse\nfalse\nfalse\ntrue\nfalse\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleWalk" : GoString))), stdgo.path.filepath_test.Filepath_test.exampleWalk, ((("On Unix:\nvisited file or dir: \".\"\nvisited file or dir: \"dir\"\nvisited file or dir: \"dir/to\"\nvisited file or dir: \"dir/to/walk\"\nskipping a dir without errors: skip\n" : GoString))), false) : stdgo.testing.Testing.InternalExample))) : Slice<stdgo.testing.Testing.InternalExample>));
function main():Void {
        var _m:stdgo.testing.Testing.M = stdgo.testing.Testing.mainStart(((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        stdgo.os.Os.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ((("path/filepath" : GoString)));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
