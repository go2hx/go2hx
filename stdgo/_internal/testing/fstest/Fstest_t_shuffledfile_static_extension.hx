package stdgo._internal.testing.fstest;
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.T_shuffledFile_asInterface) class T_shuffledFile_static_extension {
    @:keep
    @:tdfield
    static public function readDir( _f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_shuffledfile.T_shuffledFile>, _n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_shuffledfile.T_shuffledFile> = _f;
        var __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference").file) : stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile)) : stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile).readDir(_n), _dirents:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_dirents), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_dirents[(_i : stdgo.GoInt)].name() > _dirents[(_j : stdgo.GoInt)].name() : Bool);
        });
        return { _0 : _dirents, _1 : _err };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function stat( __self__:stdgo._internal.testing.fstest.Fstest_t_shuffledfile.T_shuffledFile):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } return @:_5 __self__.stat();
    @:embedded
    @:embeddededffieldsffun
    public static function read( __self__:stdgo._internal.testing.fstest.Fstest_t_shuffledfile.T_shuffledFile, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.read(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function close( __self__:stdgo._internal.testing.fstest.Fstest_t_shuffledfile.T_shuffledFile):stdgo.Error return @:_5 __self__.close();
}
