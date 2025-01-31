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
class Reader_asInterface {
    @:keep
    @:tdfield
    public dynamic function _isBoundaryDelimiterLine(_line:stdgo.Slice<stdgo.GoUInt8>):Bool return @:_0 __self__.value._isBoundaryDelimiterLine(_line);
    @:keep
    @:tdfield
    public dynamic function _isFinalBoundary(_line:stdgo.Slice<stdgo.GoUInt8>):Bool return @:_0 __self__.value._isFinalBoundary(_line);
    @:keep
    @:tdfield
    public dynamic function _nextPart(_rawPart:Bool, _maxMIMEHeaderSize:stdgo.GoInt64, _maxMIMEHeaders:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part>; var _1 : stdgo.Error; } return @:_0 __self__.value._nextPart(_rawPart, _maxMIMEHeaderSize, _maxMIMEHeaders);
    @:keep
    @:tdfield
    public dynamic function nextRawPart():{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part>; var _1 : stdgo.Error; } return @:_0 __self__.value.nextRawPart();
    @:keep
    @:tdfield
    public dynamic function nextPart():{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part>; var _1 : stdgo.Error; } return @:_0 __self__.value.nextPart();
    @:keep
    @:tdfield
    public dynamic function _readForm(_maxMemory:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } return @:_0 __self__.value._readForm(_maxMemory);
    @:keep
    @:tdfield
    public dynamic function readForm(_maxMemory:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>; var _1 : stdgo.Error; } return @:_0 __self__.value.readForm(_maxMemory);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.mime.multipart.Multipart_ReaderPointer.ReaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
