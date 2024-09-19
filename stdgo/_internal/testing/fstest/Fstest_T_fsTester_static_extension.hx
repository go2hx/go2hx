package stdgo._internal.testing.fstest;
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.T_fsTester_asInterface) class T_fsTester_static_extension {
    @:keep
    static public function _checkBadPath( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_fsTester.T_fsTester>, _file:stdgo.GoString, _desc:stdgo.GoString, _open:stdgo.GoString -> stdgo.Error):Void throw "T_fsTester:testing.fstest._checkBadPath is not yet implemented";
    @:keep
    static public function _checkOpen( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_fsTester.T_fsTester>, _file:stdgo.GoString):Void throw "T_fsTester:testing.fstest._checkOpen is not yet implemented";
    @:keep
    static public function _checkFileRead( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_fsTester.T_fsTester>, _file:stdgo.GoString, _desc:stdgo.GoString, _data1:stdgo.Slice<stdgo.GoUInt8>, _data2:stdgo.Slice<stdgo.GoUInt8>):Void throw "T_fsTester:testing.fstest._checkFileRead is not yet implemented";
    @:keep
    static public function _checkFile( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_fsTester.T_fsTester>, _file:stdgo.GoString):Void throw "T_fsTester:testing.fstest._checkFile is not yet implemented";
    @:keep
    static public function _checkDirList( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_fsTester.T_fsTester>, _dir:stdgo.GoString, _desc:stdgo.GoString, _list1:stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>, _list2:stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>):Void throw "T_fsTester:testing.fstest._checkDirList is not yet implemented";
    @:keep
    static public function _checkStat( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_fsTester.T_fsTester>, _path:stdgo.GoString, _entry:stdgo._internal.io.fs.Fs_DirEntry.DirEntry):Void throw "T_fsTester:testing.fstest._checkStat is not yet implemented";
    @:keep
    static public function _checkGlob( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_fsTester.T_fsTester>, _dir:stdgo.GoString, _list:stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>):Void throw "T_fsTester:testing.fstest._checkGlob is not yet implemented";
    @:keep
    static public function _checkDir( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_fsTester.T_fsTester>, _dir:stdgo.GoString):Void throw "T_fsTester:testing.fstest._checkDir is not yet implemented";
    @:keep
    static public function _openDir( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_fsTester.T_fsTester>, _dir:stdgo.GoString):stdgo._internal.io.fs.Fs_ReadDirFile.ReadDirFile throw "T_fsTester:testing.fstest._openDir is not yet implemented";
    @:keep
    static public function _errorf( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_fsTester.T_fsTester>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void throw "T_fsTester:testing.fstest._errorf is not yet implemented";
}
