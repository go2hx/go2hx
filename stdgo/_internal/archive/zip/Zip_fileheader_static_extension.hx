package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.FileHeader_asInterface) class FileHeader_static_extension {
    @:keep
    @:tdfield
    static public function _hasDataDescriptor( _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>):Bool {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader> = _h;
        return ((@:checkr _h ?? throw "null pointer dereference").flags & (8 : stdgo.GoUInt16) : stdgo.GoUInt16) != ((0 : stdgo.GoUInt16));
    }
    @:keep
    @:tdfield
    static public function _isZip64( _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>):Bool {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader> = _h;
        return (((@:checkr _h ?? throw "null pointer dereference").compressedSize64 >= (4294967295i64 : stdgo.GoUInt64) : Bool) || ((@:checkr _h ?? throw "null pointer dereference").uncompressedSize64 >= (4294967295i64 : stdgo.GoUInt64) : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function setMode( _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>, _mode:stdgo._internal.io.fs.Fs_filemode.FileMode):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader> = _h;
        (@:checkr _h ?? throw "null pointer dereference").creatorVersion = (((@:checkr _h ?? throw "null pointer dereference").creatorVersion & (255 : stdgo.GoUInt16) : stdgo.GoUInt16) | (768 : stdgo.GoUInt16) : stdgo.GoUInt16);
        (@:checkr _h ?? throw "null pointer dereference").externalAttrs = (stdgo._internal.archive.zip.Zip__filemodetounixmode._fileModeToUnixMode(_mode) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
        if ((_mode & (-2147483648u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) : stdgo._internal.io.fs.Fs_filemode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_filemode.FileMode))) {
            (@:checkr _h ?? throw "null pointer dereference").externalAttrs = ((@:checkr _h ?? throw "null pointer dereference").externalAttrs | ((16u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
        if ((_mode & (128u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) : stdgo._internal.io.fs.Fs_filemode.FileMode) == ((0u32 : stdgo._internal.io.fs.Fs_filemode.FileMode))) {
            (@:checkr _h ?? throw "null pointer dereference").externalAttrs = ((@:checkr _h ?? throw "null pointer dereference").externalAttrs | ((1u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
    }
    @:keep
    @:tdfield
    static public function mode( _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>):stdgo._internal.io.fs.Fs_filemode.FileMode {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader> = _h;
        var _mode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_filemode.FileMode);
        {
            final __value__ = ((@:checkr _h ?? throw "null pointer dereference").creatorVersion >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16);
            if (__value__ == ((3 : stdgo.GoUInt16)) || __value__ == ((19 : stdgo.GoUInt16))) {
                _mode = stdgo._internal.archive.zip.Zip__unixmodetofilemode._unixModeToFileMode(((@:checkr _h ?? throw "null pointer dereference").externalAttrs >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32));
            } else if (__value__ == ((11 : stdgo.GoUInt16)) || __value__ == ((14 : stdgo.GoUInt16)) || __value__ == ((0 : stdgo.GoUInt16))) {
                _mode = stdgo._internal.archive.zip.Zip__msdosmodetofilemode._msdosModeToFileMode((@:checkr _h ?? throw "null pointer dereference").externalAttrs);
            };
        };
        if (((((@:checkr _h ?? throw "null pointer dereference").name.length) > (0 : stdgo.GoInt) : Bool) && ((@:checkr _h ?? throw "null pointer dereference").name[(((@:checkr _h ?? throw "null pointer dereference").name.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool)) {
            _mode = (_mode | ((-2147483648u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo._internal.io.fs.Fs_filemode.FileMode);
        };
        return _mode;
    }
    @:keep
    @:tdfield
    static public function setModTime( _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>, _t:stdgo._internal.time.Time_time.Time):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader> = _h;
        _t = _t.uTC()?.__copy__();
        (@:checkr _h ?? throw "null pointer dereference").modified = _t?.__copy__();
        {
            var __tmp__ = stdgo._internal.archive.zip.Zip__timetomsdostime._timeToMsDosTime(_t?.__copy__());
            (@:checkr _h ?? throw "null pointer dereference").modifiedDate = @:tmpset0 __tmp__._0;
            (@:checkr _h ?? throw "null pointer dereference").modifiedTime = @:tmpset0 __tmp__._1;
        };
    }
    @:keep
    @:tdfield
    static public function modTime( _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>):stdgo._internal.time.Time_time.Time {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader> = _h;
        return stdgo._internal.archive.zip.Zip__msdostimetotime._msDosTimeToTime((@:checkr _h ?? throw "null pointer dereference").modifiedDate, (@:checkr _h ?? throw "null pointer dereference").modifiedTime)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function fileInfo( _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>):stdgo._internal.io.fs.Fs_fileinfo.FileInfo {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader> = _h;
        return stdgo.Go.asInterface((new stdgo._internal.archive.zip.Zip_t_headerfileinfo.T_headerFileInfo(_h) : stdgo._internal.archive.zip.Zip_t_headerfileinfo.T_headerFileInfo));
    }
}
