package stdgo.path.filepath;
private function set_lstatP(v:stdgo.Pointer<stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; }>):stdgo.Pointer<stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; }> {
        stdgo._internal.path.filepath.Filepath_lstatP.lstatP = v;
        return v;
    }
