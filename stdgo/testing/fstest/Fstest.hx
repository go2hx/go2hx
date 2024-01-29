package stdgo.testing.fstest;
/**
    // Package fstest implements support for testing implementations and users of file systems.
**/
private var __go2hxdoc__package : Bool;
@:invalid typedef MapFile = Dynamic;
@:invalid typedef T_fsOnly = Dynamic;
@:invalid typedef T_noSub = Dynamic;
@:invalid typedef T_mapFileInfo = Dynamic;
@:invalid typedef T_openMapFile = Dynamic;
@:invalid typedef T_mapDir = Dynamic;
@:invalid typedef T_fsTester = Dynamic;
@:invalid typedef T_shuffledFile = Dynamic;
typedef MapFS = stdgo._internal.testing.fstest.Fstest.MapFS;
typedef T_shuffledFS = stdgo._internal.testing.fstest.Fstest.T_shuffledFS;
inline function testMapFS(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMapFSChmodDot(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestFS tests a file system implementation.
    // It walks the entire tree of files in fsys,
    // opening and checking that each file behaves correctly.
    // It also checks that the file system contains at least the expected files.
    // As a special case, if no expected files are listed, fsys must be empty.
    // Otherwise, fsys must contain at least the listed files; it can also contain others.
    // The contents of fsys must not change concurrently with TestFS.
    //
    // If TestFS finds any misbehaviors, it returns an error reporting all of them.
    // The error text spans multiple lines, one per detected misbehavior.
    //
    // Typical usage inside a test is:
    //
    //	if err := fstest.TestFS(myFS, "file/that/should/be/present"); err != nil {
    //		t.Fatal(err)
    //	}
**/
inline function testFS(fsys:stdgo._internal.io.fs.Fs.FS, expected:haxe.Rest<stdgo.GoString>):stdgo.Error throw "not implemented";
inline function testSymlink(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDash(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testShuffledFS(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_fsOnly_asInterface = Dynamic;
@:invalid typedef T_fsOnly_static_extension = Dynamic;
@:invalid typedef T_noSub_asInterface = Dynamic;
@:invalid typedef T_noSub_static_extension = Dynamic;
@:invalid typedef T_mapFileInfo_asInterface = Dynamic;
@:invalid typedef T_mapFileInfo_static_extension = Dynamic;
@:invalid typedef T_openMapFile_asInterface = Dynamic;
@:invalid typedef T_openMapFile_static_extension = Dynamic;
@:invalid typedef T_mapDir_asInterface = Dynamic;
@:invalid typedef T_mapDir_static_extension = Dynamic;
@:invalid typedef T_fsTester_asInterface = Dynamic;
@:invalid typedef T_fsTester_static_extension = Dynamic;
@:invalid typedef T_shuffledFile_asInterface = Dynamic;
@:invalid typedef T_shuffledFile_static_extension = Dynamic;
@:invalid typedef MapFS_asInterface = Dynamic;
@:invalid typedef MapFS_static_extension = Dynamic;
@:invalid typedef T_shuffledFS_asInterface = Dynamic;
@:invalid typedef T_shuffledFS_static_extension = Dynamic;
