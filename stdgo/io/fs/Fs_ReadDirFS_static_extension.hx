package stdgo.io.fs;
class ReadDirFS_static_extension {
    static public function readDir(t:stdgo._internal.io.fs.Fs_ReadDirFS.ReadDirFS, _name:String):stdgo.Tuple<Array<DirEntry>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_ReadDirFS_static_extension.ReadDirFS_static_extension.readDir(t, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
