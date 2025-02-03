package stdgo.io.fs;
class ReadDirFile_static_extension {
    static public function readDir(t:stdgo._internal.io.fs.Fs_ReadDirFile.ReadDirFile, _n:StdTypes.Int):stdgo.Tuple<Array<DirEntry>, stdgo.Error> {
        final _n = (_n : stdgo.GoInt);
        return {
            final obj = stdgo._internal.io.fs.Fs_ReadDirFile_static_extension.ReadDirFile_static_extension.readDir(t, _n);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
