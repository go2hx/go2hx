package stdgo._internal.text.scanner;
class Scanner_asInterface {
    @:keep
    @:tdfield
    public dynamic function tokenText():stdgo.GoString return @:_0 __self__.value.tokenText();
    @:keep
    @:tdfield
    public dynamic function pos():stdgo._internal.text.scanner.Scanner_position.Position return @:_0 __self__.value.pos();
    @:keep
    @:tdfield
    public dynamic function scan():stdgo.GoInt32 return @:_0 __self__.value.scan();
    @:keep
    @:tdfield
    public dynamic function _scanComment(_ch:stdgo.GoInt32):stdgo.GoInt32 return @:_0 __self__.value._scanComment(_ch);
    @:keep
    @:tdfield
    public dynamic function _scanChar():Void @:_0 __self__.value._scanChar();
    @:keep
    @:tdfield
    public dynamic function _scanRawString():Void @:_0 __self__.value._scanRawString();
    @:keep
    @:tdfield
    public dynamic function _scanString(_quote:stdgo.GoInt32):stdgo.GoInt return @:_0 __self__.value._scanString(_quote);
    @:keep
    @:tdfield
    public dynamic function _scanEscape(_quote:stdgo.GoInt32):stdgo.GoInt32 return @:_0 __self__.value._scanEscape(_quote);
    @:keep
    @:tdfield
    public dynamic function _scanDigits(_ch:stdgo.GoInt32, _base:stdgo.GoInt, _n:stdgo.GoInt):stdgo.GoInt32 return @:_0 __self__.value._scanDigits(_ch, _base, _n);
    @:keep
    @:tdfield
    public dynamic function _scanNumber(_ch:stdgo.GoInt32, _seenDot:Bool):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt32; } return @:_0 __self__.value._scanNumber(_ch, _seenDot);
    @:keep
    @:tdfield
    public dynamic function _digits(_ch0:stdgo.GoInt32, _base:stdgo.GoInt, _invalid:stdgo.Pointer<stdgo.GoInt32>):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } return @:_0 __self__.value._digits(_ch0, _base, _invalid);
    @:keep
    @:tdfield
    public dynamic function _scanIdentifier():stdgo.GoInt32 return @:_0 __self__.value._scanIdentifier();
    @:keep
    @:tdfield
    public dynamic function _isIdentRune(_ch:stdgo.GoInt32, _i:stdgo.GoInt):Bool return @:_0 __self__.value._isIdentRune(_ch, _i);
    @:keep
    @:tdfield
    public dynamic function _errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._errorf(_format, ..._args);
    @:keep
    @:tdfield
    public dynamic function _error(_msg:stdgo.GoString):Void @:_0 __self__.value._error(_msg);
    @:keep
    @:tdfield
    public dynamic function peek():stdgo.GoInt32 return @:_0 __self__.value.peek();
    @:keep
    @:tdfield
    public dynamic function next():stdgo.GoInt32 return @:_0 __self__.value.next();
    @:keep
    @:tdfield
    public dynamic function _next():stdgo.GoInt32 return @:_0 __self__.value._next();
    @:keep
    @:tdfield
    public dynamic function init(_src:stdgo._internal.io.Io_reader.Reader):stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner> return @:_0 __self__.value.init(_src);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function isValid():Bool return @:_0 __self__.value.isValid();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.text.scanner.Scanner_scannerpointer.ScannerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
