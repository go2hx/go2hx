package stdgo._internal.go.build;
class T_importReader_asInterface {
    @:keep
    @:tdfield
    public dynamic function _readImport():Void @:_0 __self__.value._readImport();
    @:keep
    @:tdfield
    public dynamic function _readString():Void @:_0 __self__.value._readString();
    @:keep
    @:tdfield
    public dynamic function _readIdent():Void @:_0 __self__.value._readIdent();
    @:keep
    @:tdfield
    public dynamic function _readKeyword(_kw:stdgo.GoString):Void @:_0 __self__.value._readKeyword(_kw);
    @:keep
    @:tdfield
    public dynamic function _findEmbed(_first:Bool):Bool return @:_0 __self__.value._findEmbed(_first);
    @:keep
    @:tdfield
    public dynamic function _nextByte(_skipSpace:Bool):stdgo.GoUInt8 return @:_0 __self__.value._nextByte(_skipSpace);
    @:keep
    @:tdfield
    public dynamic function _peekByte(_skipSpace:Bool):stdgo.GoUInt8 return @:_0 __self__.value._peekByte(_skipSpace);
    @:keep
    @:tdfield
    public dynamic function _readByteNoBuf():stdgo.GoUInt8 return @:_0 __self__.value._readByteNoBuf();
    @:keep
    @:tdfield
    public dynamic function _readByte():stdgo.GoUInt8 return @:_0 __self__.value._readByte();
    @:keep
    @:tdfield
    public dynamic function _syntaxError():Void @:_0 __self__.value._syntaxError();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.build.Build_t_importreaderpointer.T_importReaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
