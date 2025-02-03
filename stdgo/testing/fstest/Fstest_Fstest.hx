package stdgo.testing.fstest;
/**
    Package fstest implements support for testing implementations and users of file systems.
**/
class Fstest {
    static public inline function testMapFS(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.fstest.Fstest_testMapFS.testMapFS(_t);
    }
    static public inline function testMapFSChmodDot(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.fstest.Fstest_testMapFSChmodDot.testMapFSChmodDot(_t);
    }
    /**
        TestFS tests a file system implementation.
        It walks the entire tree of files in fsys,
        opening and checking that each file behaves correctly.
        It also checks that the file system contains at least the expected files.
        As a special case, if no expected files are listed, fsys must be empty.
        Otherwise, fsys must contain at least the listed files; it can also contain others.
        The contents of fsys must not change concurrently with TestFS.
        
        If TestFS finds any misbehaviors, it returns an error reporting all of them.
        The error text spans multiple lines, one per detected misbehavior.
        
        Typical usage inside a test is:
        
        	if err := fstest.TestFS(myFS, "file/that/should/be/present"); err != nil {
        		t.Fatal(err)
        	}
    **/
    static public inline function testFS(_fsys:stdgo._internal.io.fs.Fs_FS.FS, _expected:haxe.Rest<String>):stdgo.Error {
        return stdgo._internal.testing.fstest.Fstest_testFS.testFS(_fsys, ...[for (i in _expected) i]);
    }
    static public inline function testSymlink(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.fstest.Fstest_testSymlink.testSymlink(_t);
    }
    static public inline function testDash(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.fstest.Fstest_testDash.testDash(_t);
    }
    static public inline function testShuffledFS(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.fstest.Fstest_testShuffledFS.testShuffledFS(_t);
    }
}
