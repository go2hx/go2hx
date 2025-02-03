package stdgo.archive.zip;
class T_fileListEntry_static_extension {
    static public function string(_f:T_fileListEntry):String {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>);
        return stdgo._internal.archive.zip.Zip_T_fileListEntry_static_extension.T_fileListEntry_static_extension.string(_f);
    }
    static public function info(_f:T_fileListEntry):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_fileListEntry_static_extension.T_fileListEntry_static_extension.info(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function modTime(_f:T_fileListEntry):stdgo._internal.time.Time_Time.Time {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>);
        return stdgo._internal.archive.zip.Zip_T_fileListEntry_static_extension.T_fileListEntry_static_extension.modTime(_f);
    }
    static public function sys(_f:T_fileListEntry):stdgo.AnyInterface {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>);
        return stdgo._internal.archive.zip.Zip_T_fileListEntry_static_extension.T_fileListEntry_static_extension.sys(_f);
    }
    static public function isDir(_f:T_fileListEntry):Bool {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>);
        return stdgo._internal.archive.zip.Zip_T_fileListEntry_static_extension.T_fileListEntry_static_extension.isDir(_f);
    }
    static public function type(_f:T_fileListEntry):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>);
        return stdgo._internal.archive.zip.Zip_T_fileListEntry_static_extension.T_fileListEntry_static_extension.type(_f);
    }
    static public function mode(_f:T_fileListEntry):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>);
        return stdgo._internal.archive.zip.Zip_T_fileListEntry_static_extension.T_fileListEntry_static_extension.mode(_f);
    }
    static public function size(_f:T_fileListEntry):haxe.Int64 {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>);
        return stdgo._internal.archive.zip.Zip_T_fileListEntry_static_extension.T_fileListEntry_static_extension.size(_f);
    }
    static public function name(_f:T_fileListEntry):String {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>);
        return stdgo._internal.archive.zip.Zip_T_fileListEntry_static_extension.T_fileListEntry_static_extension.name(_f);
    }
    static public function _stat(_f:T_fileListEntry):stdgo.Tuple<T_fileInfoDirEntry, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_fileListEntry_static_extension.T_fileListEntry_static_extension._stat(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
