package stdgo.embed;
class T_openFile_static_extension {
    static public function readAt(_f:T_openFile, _b:Array<std.UInt>, _offset:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.embed.Embed_T_openFile.T_openFile>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _offset = (_offset : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.embed.Embed_T_openFile_static_extension.T_openFile_static_extension.readAt(_f, _b, _offset);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function seek(_f:T_openFile, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.embed.Embed_T_openFile.T_openFile>);
        final _offset = (_offset : stdgo.GoInt64);
        final _whence = (_whence : stdgo.GoInt);
        return {
            final obj = stdgo._internal.embed.Embed_T_openFile_static_extension.T_openFile_static_extension.seek(_f, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_f:T_openFile, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.embed.Embed_T_openFile.T_openFile>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.embed.Embed_T_openFile_static_extension.T_openFile_static_extension.read(_f, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function stat(_f:T_openFile):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.embed.Embed_T_openFile.T_openFile>);
        return {
            final obj = stdgo._internal.embed.Embed_T_openFile_static_extension.T_openFile_static_extension.stat(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_f:T_openFile):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.embed.Embed_T_openFile.T_openFile>);
        return stdgo._internal.embed.Embed_T_openFile_static_extension.T_openFile_static_extension.close(_f);
    }
}
