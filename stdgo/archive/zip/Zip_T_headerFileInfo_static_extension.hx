package stdgo.archive.zip;
class T_headerFileInfo_static_extension {
    static public function string(_fi:T_headerFileInfo):String {
        return stdgo._internal.archive.zip.Zip_T_headerFileInfo_static_extension.T_headerFileInfo_static_extension.string(_fi);
    }
    static public function info(_fi:T_headerFileInfo):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_headerFileInfo_static_extension.T_headerFileInfo_static_extension.info(_fi);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function sys(_fi:T_headerFileInfo):stdgo.AnyInterface {
        return stdgo._internal.archive.zip.Zip_T_headerFileInfo_static_extension.T_headerFileInfo_static_extension.sys(_fi);
    }
    static public function type(_fi:T_headerFileInfo):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        return stdgo._internal.archive.zip.Zip_T_headerFileInfo_static_extension.T_headerFileInfo_static_extension.type(_fi);
    }
    static public function mode(_fi:T_headerFileInfo):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        return stdgo._internal.archive.zip.Zip_T_headerFileInfo_static_extension.T_headerFileInfo_static_extension.mode(_fi);
    }
    static public function modTime(_fi:T_headerFileInfo):stdgo._internal.time.Time_Time.Time {
        return stdgo._internal.archive.zip.Zip_T_headerFileInfo_static_extension.T_headerFileInfo_static_extension.modTime(_fi);
    }
    static public function isDir(_fi:T_headerFileInfo):Bool {
        return stdgo._internal.archive.zip.Zip_T_headerFileInfo_static_extension.T_headerFileInfo_static_extension.isDir(_fi);
    }
    static public function size(_fi:T_headerFileInfo):haxe.Int64 {
        return stdgo._internal.archive.zip.Zip_T_headerFileInfo_static_extension.T_headerFileInfo_static_extension.size(_fi);
    }
    static public function name(_fi:T_headerFileInfo):String {
        return stdgo._internal.archive.zip.Zip_T_headerFileInfo_static_extension.T_headerFileInfo_static_extension.name(_fi);
    }
}
