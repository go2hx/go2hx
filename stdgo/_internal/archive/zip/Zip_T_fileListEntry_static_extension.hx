package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.T_fileListEntry_asInterface) class T_fileListEntry_static_extension {
    @:keep
    static public function string( _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>):stdgo.GoString {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry> = _f;
        return stdgo._internal.io.fs.Fs_formatDirEntry.formatDirEntry(stdgo.Go.asInterface(_f))?.__copy__();
    }
    @:keep
    static public function info( _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry> = _f;
        return { _0 : stdgo.Go.asInterface(_f), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function modTime( _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>):stdgo._internal.time.Time_Time.Time {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry> = _f;
        if ((_f._file == null || (_f._file : Dynamic).__nil__)) {
            return (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time);
        };
        return _f._file.fileHeader.modified.utc()?.__copy__();
    }
    @:keep
    static public function sys( _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>):stdgo.AnyInterface {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry> = _f;
        return (null : stdgo.AnyInterface);
    }
    @:keep
    static public function isDir( _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry> = _f;
        return true;
    }
    @:keep
    static public function type( _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry> = _f;
        return (-2147483648u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode);
    }
    @:keep
    static public function mode( _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry> = _f;
        return (-2147483283u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode);
    }
    @:keep
    static public function size( _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>):stdgo.GoInt64 {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry> = _f;
        return (0i64 : stdgo.GoInt64);
    }
    @:keep
    static public function name( _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>):stdgo.GoString {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry> = _f;
        var __tmp__ = stdgo._internal.archive.zip.Zip__split._split(_f._name?.__copy__()), __0:stdgo.GoString = __tmp__._0, _elem:stdgo.GoString = __tmp__._1, __1:Bool = __tmp__._2;
        return _elem?.__copy__();
    }
    @:keep
    static public function _stat( _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>):{ var _0 : stdgo._internal.archive.zip.Zip_T_fileInfoDirEntry.T_fileInfoDirEntry; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry> = _f;
        if (_f._isDup) {
            return { _0 : (null : stdgo._internal.archive.zip.Zip_T_fileInfoDirEntry.T_fileInfoDirEntry), _1 : stdgo._internal.errors.Errors_new_.new_((_f._name + (": duplicate entries in zip file" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        if (!_f._isDir) {
            return { _0 : stdgo.Go.asInterface((new stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo((stdgo.Go.setRef(_f._file.fileHeader) : stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>)) : stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo)), _1 : (null : stdgo.Error) };
        };
        return { _0 : stdgo.Go.asInterface(_f), _1 : (null : stdgo.Error) };
    }
}
