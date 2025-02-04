package stdgo._internal.net.textproto;
class Reader_asInterface {
    @:keep
    @:tdfield
    public dynamic function _upcomingHeaderKeys():stdgo.GoInt return @:_0 __self__.value._upcomingHeaderKeys();
    @:keep
    @:tdfield
    public dynamic function readMIMEHeader():{ var _0 : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader; var _1 : stdgo.Error; } return @:_0 __self__.value.readMIMEHeader();
    @:keep
    @:tdfield
    public dynamic function readDotLines():{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value.readDotLines();
    @:keep
    @:tdfield
    public dynamic function readDotBytes():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.readDotBytes();
    @:keep
    @:tdfield
    public dynamic function _closeDot():Void @:_0 __self__.value._closeDot();
    @:keep
    @:tdfield
    public dynamic function dotReader():stdgo._internal.io.Io_reader.Reader return @:_0 __self__.value.dotReader();
    @:keep
    @:tdfield
    public dynamic function readResponse(_expectCode:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return @:_0 __self__.value.readResponse(_expectCode);
    @:keep
    @:tdfield
    public dynamic function readCodeLine(_expectCode:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return @:_0 __self__.value.readCodeLine(_expectCode);
    @:keep
    @:tdfield
    public dynamic function _readCodeLine(_expectCode:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoString; var _3 : stdgo.Error; } return @:_0 __self__.value._readCodeLine(_expectCode);
    @:keep
    @:tdfield
    public dynamic function _skipSpace():stdgo.GoInt return @:_0 __self__.value._skipSpace();
    @:keep
    @:tdfield
    public dynamic function _readContinuedLineSlice(_validateFirstLine:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Error):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value._readContinuedLineSlice(_validateFirstLine);
    @:keep
    @:tdfield
    public dynamic function readContinuedLineBytes():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.readContinuedLineBytes();
    @:keep
    @:tdfield
    public dynamic function readContinuedLine():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_0 __self__.value.readContinuedLine();
    @:keep
    @:tdfield
    public dynamic function _readLineSlice():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value._readLineSlice();
    @:keep
    @:tdfield
    public dynamic function readLineBytes():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.readLineBytes();
    @:keep
    @:tdfield
    public dynamic function readLine():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_0 __self__.value.readLine();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.textproto.Textproto_readerpointer.ReaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
