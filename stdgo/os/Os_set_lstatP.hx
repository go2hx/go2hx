package stdgo.os;
private function set_lstatP(v:stdgo.Pointer<stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; }>):stdgo.Pointer<stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; }> {
        stdgo._internal.os.Os_lstatP.lstatP = v;
        return v;
    }
