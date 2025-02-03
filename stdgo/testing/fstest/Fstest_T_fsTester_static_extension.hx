package stdgo.testing.fstest;
class T_fsTester_static_extension {
    static public function _checkBadPath(_t:T_fsTester, _file:String, _desc:String, _open:stdgo.GoString -> stdgo.Error):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_fsTester.T_fsTester>);
        final _file = (_file : stdgo.GoString);
        final _desc = (_desc : stdgo.GoString);
        final _open = _open;
        stdgo._internal.testing.fstest.Fstest_T_fsTester_static_extension.T_fsTester_static_extension._checkBadPath(_t, _file, _desc, _open);
    }
    static public function _checkOpen(_t:T_fsTester, _file:String):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_fsTester.T_fsTester>);
        final _file = (_file : stdgo.GoString);
        stdgo._internal.testing.fstest.Fstest_T_fsTester_static_extension.T_fsTester_static_extension._checkOpen(_t, _file);
    }
    static public function _checkFileRead(_t:T_fsTester, _file:String, _desc:String, _data1:Array<std.UInt>, _data2:Array<std.UInt>):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_fsTester.T_fsTester>);
        final _file = (_file : stdgo.GoString);
        final _desc = (_desc : stdgo.GoString);
        final _data1 = ([for (i in _data1) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _data2 = ([for (i in _data2) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.testing.fstest.Fstest_T_fsTester_static_extension.T_fsTester_static_extension._checkFileRead(_t, _file, _desc, _data1, _data2);
    }
    static public function _checkFile(_t:T_fsTester, _file:String):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_fsTester.T_fsTester>);
        final _file = (_file : stdgo.GoString);
        stdgo._internal.testing.fstest.Fstest_T_fsTester_static_extension.T_fsTester_static_extension._checkFile(_t, _file);
    }
    static public function _checkDirList(_t:T_fsTester, _dir:String, _desc:String, _list1:Array<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>, _list2:Array<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_fsTester.T_fsTester>);
        final _dir = (_dir : stdgo.GoString);
        final _desc = (_desc : stdgo.GoString);
        final _list1 = ([for (i in _list1) i] : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>);
        final _list2 = ([for (i in _list2) i] : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>);
        stdgo._internal.testing.fstest.Fstest_T_fsTester_static_extension.T_fsTester_static_extension._checkDirList(_t, _dir, _desc, _list1, _list2);
    }
    static public function _checkStat(_t:T_fsTester, _path:String, _entry:stdgo._internal.io.fs.Fs_DirEntry.DirEntry):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_fsTester.T_fsTester>);
        final _path = (_path : stdgo.GoString);
        stdgo._internal.testing.fstest.Fstest_T_fsTester_static_extension.T_fsTester_static_extension._checkStat(_t, _path, _entry);
    }
    static public function _checkGlob(_t:T_fsTester, _dir:String, _list:Array<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_fsTester.T_fsTester>);
        final _dir = (_dir : stdgo.GoString);
        final _list = ([for (i in _list) i] : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>);
        stdgo._internal.testing.fstest.Fstest_T_fsTester_static_extension.T_fsTester_static_extension._checkGlob(_t, _dir, _list);
    }
    static public function _checkDir(_t:T_fsTester, _dir:String):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_fsTester.T_fsTester>);
        final _dir = (_dir : stdgo.GoString);
        stdgo._internal.testing.fstest.Fstest_T_fsTester_static_extension.T_fsTester_static_extension._checkDir(_t, _dir);
    }
    static public function _openDir(_t:T_fsTester, _dir:String):stdgo._internal.io.fs.Fs_ReadDirFile.ReadDirFile {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_fsTester.T_fsTester>);
        final _dir = (_dir : stdgo.GoString);
        return stdgo._internal.testing.fstest.Fstest_T_fsTester_static_extension.T_fsTester_static_extension._openDir(_t, _dir);
    }
    static public function _errorf(_t:T_fsTester, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_fsTester.T_fsTester>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.testing.fstest.Fstest_T_fsTester_static_extension.T_fsTester_static_extension._errorf(_t, _format, ...[for (i in _args) i]);
    }
}
