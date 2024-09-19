package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.FileHeader_asInterface) class FileHeader_static_extension {
    @:keep
    static public function _hasDataDescriptor( _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>):Bool {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader> = _h;
        return (_h.flags & (8 : stdgo.GoUInt16) : stdgo.GoUInt16) != ((0 : stdgo.GoUInt16));
    }
    @:keep
    static public function _isZip64( _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>):Bool {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader> = _h;
        return ((_h.compressedSize64 >= (4294967295i64 : stdgo.GoUInt64) : Bool) || (_h.uncompressedSize64 >= (4294967295i64 : stdgo.GoUInt64) : Bool) : Bool);
    }
    @:keep
    static public function setMode( _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>, _mode:stdgo._internal.io.fs.Fs_FileMode.FileMode):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader> = _h;
        _h.creatorVersion = ((_h.creatorVersion & (255 : stdgo.GoUInt16) : stdgo.GoUInt16) | (768 : stdgo.GoUInt16) : stdgo.GoUInt16);
        _h.externalAttrs = (stdgo._internal.archive.zip.Zip__fileModeToUnixMode._fileModeToUnixMode(_mode) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
        if ((_mode & (-2147483648u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
            _h.externalAttrs = (_h.externalAttrs | ((16u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
        if ((_mode & (128u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) == ((0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
            _h.externalAttrs = (_h.externalAttrs | ((1u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
    }
    @:keep
    static public function mode( _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader> = _h;
        var _mode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
        {
            final __value__ = (_h.creatorVersion >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16);
            if (__value__ == ((3 : stdgo.GoUInt16)) || __value__ == ((19 : stdgo.GoUInt16))) {
                _mode = stdgo._internal.archive.zip.Zip__unixModeToFileMode._unixModeToFileMode((_h.externalAttrs >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32));
            } else if (__value__ == ((11 : stdgo.GoUInt16)) || __value__ == ((14 : stdgo.GoUInt16)) || __value__ == ((0 : stdgo.GoUInt16))) {
                _mode = stdgo._internal.archive.zip.Zip__msdosModeToFileMode._msdosModeToFileMode(_h.externalAttrs);
            };
        };
        if ((((_h.name.length) > (0 : stdgo.GoInt) : Bool) && (_h.name[((_h.name.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool)) {
            _mode = (_mode | ((-2147483648u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
        };
        return _mode;
    }
    @:keep
    static public function setModTime( _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>, _t:stdgo._internal.time.Time_Time.Time):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader> = _h;
        _t = _t.utc()?.__copy__();
        _h.modified = _t?.__copy__();
        {
            var __tmp__ = stdgo._internal.archive.zip.Zip__timeToMsDosTime._timeToMsDosTime(_t?.__copy__());
            _h.modifiedDate = __tmp__._0;
            _h.modifiedTime = __tmp__._1;
        };
    }
    @:keep
    static public function modTime( _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>):stdgo._internal.time.Time_Time.Time {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader> = _h;
        return stdgo._internal.archive.zip.Zip__msDosTimeToTime._msDosTimeToTime(_h.modifiedDate, _h.modifiedTime)?.__copy__();
    }
    @:keep
    static public function fileInfo( _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>):stdgo._internal.io.fs.Fs_FileInfo.FileInfo {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader> = _h;
        return stdgo.Go.asInterface((new stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo(_h) : stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo));
    }
}
