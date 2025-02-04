package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.T_header_asInterface) class T_header_static_extension {
    @:embedded
    @:embeddededffieldsffun
    public static function _isZip64( __self__:stdgo._internal.archive.zip.Zip_t_header.T_header):Bool return @:_5 __self__._isZip64();
    @:embedded
    @:embeddededffieldsffun
    public static function _hasDataDescriptor( __self__:stdgo._internal.archive.zip.Zip_t_header.T_header):Bool return @:_5 __self__._hasDataDescriptor();
    @:embedded
    @:embeddededffieldsffun
    public static function setMode( __self__:stdgo._internal.archive.zip.Zip_t_header.T_header, _0:stdgo._internal.io.fs.Fs_filemode.FileMode):Void return @:_5 __self__.setMode(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setModTime( __self__:stdgo._internal.archive.zip.Zip_t_header.T_header, _0:stdgo._internal.time.Time_time.Time):Void return @:_5 __self__.setModTime(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function mode( __self__:stdgo._internal.archive.zip.Zip_t_header.T_header):stdgo._internal.io.fs.Fs_filemode.FileMode return @:_5 __self__.mode();
    @:embedded
    @:embeddededffieldsffun
    public static function modTime( __self__:stdgo._internal.archive.zip.Zip_t_header.T_header):stdgo._internal.time.Time_time.Time return @:_5 __self__.modTime();
    @:embedded
    @:embeddededffieldsffun
    public static function fileInfo( __self__:stdgo._internal.archive.zip.Zip_t_header.T_header):stdgo._internal.io.fs.Fs_fileinfo.FileInfo return @:_5 __self__.fileInfo();
}
