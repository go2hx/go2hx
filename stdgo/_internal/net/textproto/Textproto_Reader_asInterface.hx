package stdgo._internal.net.textproto;
class Reader_asInterface {
    @:keep
    public dynamic function _upcomingHeaderKeys():stdgo.GoInt return __self__.value._upcomingHeaderKeys();
    @:keep
    public dynamic function readMIMEHeader():{ var _0 : stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader; var _1 : stdgo.Error; } return __self__.value.readMIMEHeader();
    @:keep
    public dynamic function readDotLines():{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.value.readDotLines();
    @:keep
    public dynamic function readDotBytes():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.readDotBytes();
    @:keep
    public dynamic function _closeDot():Void __self__.value._closeDot();
    @:keep
    public dynamic function dotReader():stdgo._internal.io.Io_Reader.Reader return __self__.value.dotReader();
    @:keep
    public dynamic function readResponse(_expectCode:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return __self__.value.readResponse(_expectCode);
    @:keep
    public dynamic function readCodeLine(_expectCode:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return __self__.value.readCodeLine(_expectCode);
    @:keep
    public dynamic function _readCodeLine(_expectCode:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoString; var _3 : stdgo.Error; } return __self__.value._readCodeLine(_expectCode);
    @:keep
    public dynamic function _skipSpace():stdgo.GoInt return __self__.value._skipSpace();
    @:keep
    public dynamic function _readContinuedLineSlice(_validateFirstLine:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Error):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value._readContinuedLineSlice(_validateFirstLine);
    @:keep
    public dynamic function readContinuedLineBytes():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.readContinuedLineBytes();
    @:keep
    public dynamic function readContinuedLine():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value.readContinuedLine();
    @:keep
    public dynamic function _readLineSlice():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value._readLineSlice();
    @:keep
    public dynamic function readLineBytes():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.readLineBytes();
    @:keep
    public dynamic function readLine():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value.readLine();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.textproto.Textproto_Reader.Reader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
