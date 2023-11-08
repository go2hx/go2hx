package stdgo.path.filepath_test;
import stdgo.path.filepath.Filepath;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
39,
39,
(new stdgo.testing.Testing.InternalTest(("TestMatch" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testMatch) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGlob" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testGlob) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCVE202230632" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testCVE202230632) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGlobError" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testGlobError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGlobUNC" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testGlobUNC) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGlobSymlink" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testGlobSymlink) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWindowsGlob" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testWindowsGlob) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNonWindowsGlobEscape" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testNonWindowsGlobEscape) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestClean" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testClean) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIsLocal" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testIsLocal) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFromAndToSlash" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testFromAndToSlash) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSplitList" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testSplitList) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSplit" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testSplit) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestJoin" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testJoin) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestExt" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testExt) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWalk" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testWalk) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWalkDir" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testWalkDir) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWalkSkipDirOnFile" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testWalkSkipDirOnFile) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWalkSkipAllOnFile" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testWalkSkipAllOnFile) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWalkFileError" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testWalkFileError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWalkSymlinkRoot" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testWalkSymlinkRoot) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBase" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testBase) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDir" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testDir) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIsAbs" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testIsAbs) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEvalSymlinks" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testEvalSymlinks) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEvalSymlinksIsNotExist" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testEvalSymlinksIsNotExist) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIssue13582" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testIssue13582) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRelativeSymlinkToAbsolute" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testRelativeSymlinkToAbsolute) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAbs" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testAbs) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAbsEmptyString" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testAbsEmptyString) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRel" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testRel) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestVolumeName" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testVolumeName) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDriveLetterInEvalSymlinks" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testDriveLetterInEvalSymlinks) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBug3486" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testBug3486) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWalkSymlink" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testWalkSymlink) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIssue29372" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testIssue29372) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEvalSymlinksAboveRoot" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testEvalSymlinksAboveRoot) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEvalSymlinksAboveRootChdir" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testEvalSymlinksAboveRootChdir) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIssue51617" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.testIssue51617) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(
10,
10,
(new stdgo.testing.Testing.InternalExample(("ExampleExt" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.exampleExt, ("No dots: \"\"\nOne dot: \".js\"\nTwo dots: \".js\"\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSplitList" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.exampleSplitList, ("On Unix: [/a/b/c /usr/bin]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRel" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.exampleRel, ("On Unix:\n\"/a/b/c\": \"b/c\" <nil>\n\"/b/c\": \"../b/c\" <nil>\n\"./b/c\": \"\" Rel: can\'t make ./b/c relative to /a\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSplit" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.exampleSplit, ("On Unix:\ninput: \"/home/arnie/amelia.jpg\"\n\tdir: \"/home/arnie/\"\n\tfile: \"amelia.jpg\"\ninput: \"/mnt/photos/\"\n\tdir: \"/mnt/photos/\"\n\tfile: \"\"\ninput: \"rabbit.jpg\"\n\tdir: \"\"\n\tfile: \"rabbit.jpg\"\ninput: \"/usr/local//go\"\n\tdir: \"/usr/local//\"\n\tfile: \"go\"\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleJoin" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.exampleJoin, ("On Unix:\na/b/c\na/b/c\na/b/c\na/b/c\n../xyz\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleMatch" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.exampleMatch, ("On Unix:\ntrue <nil>\nfalse <nil>\ntrue <nil>\ntrue <nil>\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleBase" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.exampleBase, ("On Unix:\nbaz.js\nbaz\nbaz\ndev.txt\ntodo.txt\n..\n.\n/\n.\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleDir" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.exampleDir, ("On Unix:\n/foo/bar\n/foo/bar\n/foo/bar/baz\n/dirty/path\n.\n..\n.\n.\n/\n.\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleIsAbs" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.exampleIsAbs, ("On Unix:\ntrue\nfalse\nfalse\nfalse\ntrue\nfalse\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleWalk" : stdgo.GoString), stdgo.path.filepath_test.Filepath_test.exampleWalk, ("On Unix:\nvisited file or dir: \".\"\nvisited file or dir: \"dir\"\nvisited file or dir: \"dir/to\"\nvisited file or dir: \"dir/to/walk\"\nskipping a dir without errors: skip\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("path/filepath" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
