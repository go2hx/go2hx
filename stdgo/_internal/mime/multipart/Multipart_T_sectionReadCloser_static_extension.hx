package stdgo._internal.mime.multipart;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.strings.Strings;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.mime.quotedprintable.Quotedprintable;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.mime.Mime;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.mime.multipart.Multipart.T_sectionReadCloser_asInterface) class T_sectionReadCloser_static_extension {
    @:keep
    @:tdfield
    static public function close( _rc:stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser):stdgo.Error {
        @:recv var _rc:stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser = _rc?.__copy__();
        if (_rc.closer != null) {
            return _rc.closer.close();
        };
        return (null : stdgo.Error);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function size( __self__:stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser):stdgo.GoInt64 return @:_5 __self__.size();
    @:embedded
    @:embeddededffieldsffun
    public static function seek( __self__:stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser, _0:stdgo.GoInt64, _1:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_5 __self__.seek(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function readAt( __self__:stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.readAt(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function read( __self__:stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.read(_0);
}
