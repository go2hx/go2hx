package _internal.path.filepath_dot_test;
import stdgo._internal.path.filepath.Filepath;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing_InternalTest.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing_InternalTest.InternalTest>(39, 39, ...[
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestMatch" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testMatch.testMatch) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestGlob" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testGlob.testGlob) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestCVE202230632" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testCVE202230632.testCVE202230632) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestGlobError" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testGlobError.testGlobError) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestGlobUNC" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testGlobUNC.testGlobUNC) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestGlobSymlink" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testGlobSymlink.testGlobSymlink) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestWindowsGlob" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testWindowsGlob.testWindowsGlob) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestNonWindowsGlobEscape" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testNonWindowsGlobEscape.testNonWindowsGlobEscape) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestClean" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testClean.testClean) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestIsLocal" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testIsLocal.testIsLocal) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestFromAndToSlash" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testFromAndToSlash.testFromAndToSlash) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestSplitList" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testSplitList.testSplitList) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestSplit" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testSplit.testSplit) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestJoin" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testJoin.testJoin) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestExt" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testExt.testExt) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestWalk" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testWalk.testWalk) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestWalkDir" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testWalkDir.testWalkDir) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestWalkSkipDirOnFile" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testWalkSkipDirOnFile.testWalkSkipDirOnFile) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestWalkSkipAllOnFile" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testWalkSkipAllOnFile.testWalkSkipAllOnFile) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestWalkFileError" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testWalkFileError.testWalkFileError) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestWalkSymlinkRoot" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testWalkSymlinkRoot.testWalkSymlinkRoot) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestBase" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testBase.testBase) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestDir" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testDir.testDir) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestIsAbs" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testIsAbs.testIsAbs) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestEvalSymlinks" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testEvalSymlinks.testEvalSymlinks) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestEvalSymlinksIsNotExist" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testEvalSymlinksIsNotExist.testEvalSymlinksIsNotExist) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestIssue13582" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testIssue13582.testIssue13582) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestRelativeSymlinkToAbsolute" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testRelativeSymlinkToAbsolute.testRelativeSymlinkToAbsolute) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestAbs" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testAbs.testAbs) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestAbsEmptyString" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testAbsEmptyString.testAbsEmptyString) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestRel" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testRel.testRel) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestVolumeName" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testVolumeName.testVolumeName) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestDriveLetterInEvalSymlinks" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testDriveLetterInEvalSymlinks.testDriveLetterInEvalSymlinks) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestBug3486" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testBug3486.testBug3486) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestWalkSymlink" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testWalkSymlink.testWalkSymlink) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestIssue29372" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testIssue29372.testIssue29372) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestEvalSymlinksAboveRoot" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testEvalSymlinksAboveRoot.testEvalSymlinksAboveRoot) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestEvalSymlinksAboveRootChdir" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testEvalSymlinksAboveRootChdir.testEvalSymlinksAboveRootChdir) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestIssue51617" : stdgo.GoString), _internal.path.filepath_test.Filepath_test_testIssue51617.testIssue51617) : stdgo._internal.testing.Testing_InternalTest.InternalTest)].concat([for (i in 39 ... (39 > 39 ? 39 : 39 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing_InternalTest.InternalTest)])) : stdgo.Slice<stdgo._internal.testing.Testing_InternalTest.InternalTest>);