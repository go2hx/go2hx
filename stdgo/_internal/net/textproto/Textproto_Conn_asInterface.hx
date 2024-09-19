package stdgo._internal.net.textproto;
class Conn_asInterface {
    @:keep
    public dynamic function cmd(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoUInt; var _1 : stdgo.Error; } return __self__.value.cmd(_format, ..._args);
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:embedded
    public dynamic function _upcomingHeaderKeys():stdgo.GoInt return __self__.value._upcomingHeaderKeys();
    @:embedded
    public dynamic function _skipSpace():stdgo.GoInt return __self__.value._skipSpace();
    @:embedded
    public dynamic function _readLineSlice():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value._readLineSlice();
    @:embedded
    public dynamic function _readContinuedLineSlice(_validateFirstLine:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Error):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value._readContinuedLineSlice(_validateFirstLine);
    @:embedded
    public dynamic function _readCodeLine(_expectCode:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoString; var _3 : stdgo.Error; } return __self__.value._readCodeLine(_expectCode);
    @:embedded
    public dynamic function startResponse(_id:stdgo.GoUInt):Void __self__.value.startResponse(_id);
    @:embedded
    public dynamic function startRequest(_id:stdgo.GoUInt):Void __self__.value.startRequest(_id);
    @:embedded
    public dynamic function readResponse(_expectCode:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return __self__.value.readResponse(_expectCode);
    @:embedded
    public dynamic function readMIMEHeader():{ var _0 : stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader; var _1 : stdgo.Error; } return __self__.value.readMIMEHeader();
    @:embedded
    public dynamic function readLineBytes():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.readLineBytes();
    @:embedded
    public dynamic function readLine():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value.readLine();
    @:embedded
    public dynamic function readDotLines():{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.value.readDotLines();
    @:embedded
    public dynamic function readDotBytes():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.readDotBytes();
    @:embedded
    public dynamic function readContinuedLineBytes():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.readContinuedLineBytes();
    @:embedded
    public dynamic function readContinuedLine():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value.readContinuedLine();
    @:embedded
    public dynamic function readCodeLine(_expectCode:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return __self__.value.readCodeLine(_expectCode);
    @:embedded
    public dynamic function printfLine(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Error return __self__.value.printfLine(_format, ..._a);
    @:embedded
    public dynamic function next():stdgo.GoUInt return __self__.value.next();
    @:embedded
    public dynamic function endResponse(_id:stdgo.GoUInt):Void __self__.value.endResponse(_id);
    @:embedded
    public dynamic function endRequest(_id:stdgo.GoUInt):Void __self__.value.endRequest(_id);
    @:embedded
    public dynamic function dotWriter():stdgo._internal.io.Io_WriteCloser.WriteCloser return __self__.value.dotWriter();
    @:embedded
    public dynamic function dotReader():stdgo._internal.io.Io_Reader.Reader return __self__.value.dotReader();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.textproto.Textproto_Conn.Conn>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
