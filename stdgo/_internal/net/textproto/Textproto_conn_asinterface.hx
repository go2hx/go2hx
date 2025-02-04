package stdgo._internal.net.textproto;
class Conn_asInterface {
    @:keep
    @:tdfield
    public dynamic function cmd(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoUInt; var _1 : stdgo.Error; } return @:_0 __self__.value.cmd(_format, ..._args);
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _upcomingHeaderKeys():stdgo.GoInt return @:_0 __self__.value._upcomingHeaderKeys();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _skipSpace():stdgo.GoInt return @:_0 __self__.value._skipSpace();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _readLineSlice():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value._readLineSlice();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _readContinuedLineSlice(_0:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Error):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value._readContinuedLineSlice(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _readCodeLine(_0:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoString; var _3 : stdgo.Error; } return @:_0 __self__.value._readCodeLine(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function startResponse(_0:stdgo.GoUInt):Void @:_0 __self__.value.startResponse(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function startRequest(_0:stdgo.GoUInt):Void @:_0 __self__.value.startRequest(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function readResponse(_0:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return @:_0 __self__.value.readResponse(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function readMIMEHeader():{ var _0 : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader; var _1 : stdgo.Error; } return @:_0 __self__.value.readMIMEHeader();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function readLineBytes():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.readLineBytes();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function readLine():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_0 __self__.value.readLine();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function readDotLines():{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value.readDotLines();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function readDotBytes():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.readDotBytes();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function readContinuedLineBytes():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.readContinuedLineBytes();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function readContinuedLine():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_0 __self__.value.readContinuedLine();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function readCodeLine(_0:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return @:_0 __self__.value.readCodeLine(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function printfLine(_0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):stdgo.Error return @:_0 __self__.value.printfLine(_0, ..._1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function next():stdgo.GoUInt return @:_0 __self__.value.next();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function endResponse(_0:stdgo.GoUInt):Void @:_0 __self__.value.endResponse(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function endRequest(_0:stdgo.GoUInt):Void @:_0 __self__.value.endRequest(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function dotWriter():stdgo._internal.io.Io_writecloser.WriteCloser return @:_0 __self__.value.dotWriter();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function dotReader():stdgo._internal.io.Io_reader.Reader return @:_0 __self__.value.dotReader();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.textproto.Textproto_connpointer.ConnPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
