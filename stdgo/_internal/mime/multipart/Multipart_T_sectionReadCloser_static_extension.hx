package stdgo._internal.mime.multipart;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(stdgo._internal.mime.multipart.Multipart.T_sectionReadCloser_asInterface) class T_sectionReadCloser_static_extension {
    @:keep
    static public function close( _rc:stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser):stdgo.Error {
        @:recv var _rc:stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser = _rc?.__copy__();
        if (_rc.closer != null) {
            return _rc.closer.close();
        };
        return (null : stdgo.Error);
    }
    @:embedded
    public static function size( __self__:stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser):stdgo.GoInt64 return __self__.size();
    @:embedded
    public static function seek( __self__:stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.seek(_offset, _whence);
    @:embedded
    public static function readAt( __self__:stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser, _p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.readAt(_p, _off);
    @:embedded
    public static function read( __self__:stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser, _d:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.read(_d);
}
