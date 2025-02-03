package stdgo.mime.multipart;
class T_sectionReadCloser_static_extension {
    static public function close(_rc:T_sectionReadCloser):stdgo.Error {
        return stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser_static_extension.T_sectionReadCloser_static_extension.close(_rc);
    }
    public static function size(__self__:stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser):haxe.Int64 {
        return stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser_static_extension.T_sectionReadCloser_static_extension.size(__self__);
    }
    public static function seek(__self__:stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser, _0:haxe.Int64, _1:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt64);
        final _1 = (_1 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser_static_extension.T_sectionReadCloser_static_extension.seek(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readAt(__self__:stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser, _0:Array<std.UInt>, _1:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser_static_extension.T_sectionReadCloser_static_extension.readAt(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function read(__self__:stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser_static_extension.T_sectionReadCloser_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
