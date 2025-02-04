package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.T_fileListEntry_asInterface) class T_fileListEntry_static_extension {
    @:keep
    @:tdfield
    static public function string( _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>):stdgo.GoString {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry> = _f;
        return stdgo._internal.io.fs.Fs_formatdirentry.formatDirEntry(stdgo.Go.asInterface(_f))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function info( _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry> = _f;
        return { _0 : stdgo.Go.asInterface(_f), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function modTime( _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>):stdgo._internal.time.Time_time.Time {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry> = _f;
        if (((@:checkr _f ?? throw "null pointer dereference")._file == null || ((@:checkr _f ?? throw "null pointer dereference")._file : Dynamic).__nil__)) {
            return (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time);
        };
        return (@:checkr (@:checkr _f ?? throw "null pointer dereference")._file ?? throw "null pointer dereference").fileHeader.modified.uTC()?.__copy__();
    }
    @:keep
    @:tdfield
    static public function sys( _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>):stdgo.AnyInterface {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry> = _f;
        return (null : stdgo.AnyInterface);
    }
    @:keep
    @:tdfield
    static public function isDir( _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry> = _f;
        return true;
    }
    @:keep
    @:tdfield
    static public function type( _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>):stdgo._internal.io.fs.Fs_filemode.FileMode {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry> = _f;
        return (-2147483648u32 : stdgo._internal.io.fs.Fs_filemode.FileMode);
    }
    @:keep
    @:tdfield
    static public function mode( _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>):stdgo._internal.io.fs.Fs_filemode.FileMode {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry> = _f;
        return (-2147483283u32 : stdgo._internal.io.fs.Fs_filemode.FileMode);
    }
    @:keep
    @:tdfield
    static public function size( _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>):stdgo.GoInt64 {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry> = _f;
        return (0i64 : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function name( _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>):stdgo.GoString {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry> = _f;
        var __tmp__ = stdgo._internal.archive.zip.Zip__split._split((@:checkr _f ?? throw "null pointer dereference")._name?.__copy__()), __0:stdgo.GoString = __tmp__._0, _elem:stdgo.GoString = __tmp__._1, __1:Bool = __tmp__._2;
        return _elem?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _stat( _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry>):{ var _0 : stdgo._internal.archive.zip.Zip_t_fileinfodirentry.T_fileInfoDirEntry; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filelistentry.T_fileListEntry> = _f;
        if ((@:checkr _f ?? throw "null pointer dereference")._isDup) {
            return { _0 : (null : stdgo._internal.archive.zip.Zip_t_fileinfodirentry.T_fileInfoDirEntry), _1 : stdgo._internal.errors.Errors_new_.new_(((@:checkr _f ?? throw "null pointer dereference")._name + (": duplicate entries in zip file" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        if (!(@:checkr _f ?? throw "null pointer dereference")._isDir) {
            return { _0 : stdgo.Go.asInterface((new stdgo._internal.archive.zip.Zip_t_headerfileinfo.T_headerFileInfo((stdgo.Go.setRef((@:checkr (@:checkr _f ?? throw "null pointer dereference")._file ?? throw "null pointer dereference").fileHeader) : stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>)) : stdgo._internal.archive.zip.Zip_t_headerfileinfo.T_headerFileInfo)), _1 : (null : stdgo.Error) };
        };
        return { _0 : stdgo.Go.asInterface(_f), _1 : (null : stdgo.Error) };
    }
}
