package stdgo.io.fs;
class GlobFS_static_extension {
    static public function glob(t:stdgo._internal.io.fs.Fs_GlobFS.GlobFS, _pattern:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _pattern = (_pattern : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_GlobFS_static_extension.GlobFS_static_extension.glob(t, _pattern);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
