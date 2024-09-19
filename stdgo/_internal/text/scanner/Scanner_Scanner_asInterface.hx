package stdgo._internal.text.scanner;
class Scanner_asInterface {
    @:keep
    public dynamic function tokenText():stdgo.GoString return __self__.value.tokenText();
    @:keep
    public dynamic function pos():stdgo._internal.text.scanner.Scanner_Position.Position return __self__.value.pos();
    @:keep
    public dynamic function scan():stdgo.GoInt32 return __self__.value.scan();
    @:keep
    public dynamic function _scanComment(_ch:stdgo.GoInt32):stdgo.GoInt32 return __self__.value._scanComment(_ch);
    @:keep
    public dynamic function _scanChar():Void __self__.value._scanChar();
    @:keep
    public dynamic function _scanRawString():Void __self__.value._scanRawString();
    @:keep
    public dynamic function _scanString(_quote:stdgo.GoInt32):stdgo.GoInt return __self__.value._scanString(_quote);
    @:keep
    public dynamic function _scanEscape(_quote:stdgo.GoInt32):stdgo.GoInt32 return __self__.value._scanEscape(_quote);
    @:keep
    public dynamic function _scanDigits(_ch:stdgo.GoInt32, _base:stdgo.GoInt, _n:stdgo.GoInt):stdgo.GoInt32 return __self__.value._scanDigits(_ch, _base, _n);
    @:keep
    public dynamic function _scanNumber(_ch:stdgo.GoInt32, _seenDot:Bool):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt32; } return __self__.value._scanNumber(_ch, _seenDot);
    @:keep
    public dynamic function _digits(_ch0:stdgo.GoInt32, _base:stdgo.GoInt, _invalid:stdgo.Pointer<stdgo.GoInt32>):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } return __self__.value._digits(_ch0, _base, _invalid);
    @:keep
    public dynamic function _scanIdentifier():stdgo.GoInt32 return __self__.value._scanIdentifier();
    @:keep
    public dynamic function _isIdentRune(_ch:stdgo.GoInt32, _i:stdgo.GoInt):Bool return __self__.value._isIdentRune(_ch, _i);
    @:keep
    public dynamic function _errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value._errorf(_format, ..._args);
    @:keep
    public dynamic function _error(_msg:stdgo.GoString):Void __self__.value._error(_msg);
    @:keep
    public dynamic function peek():stdgo.GoInt32 return __self__.value.peek();
    @:keep
    public dynamic function next():stdgo.GoInt32 return __self__.value.next();
    @:keep
    public dynamic function _next():stdgo.GoInt32 return __self__.value._next();
    @:keep
    public dynamic function init(_src:stdgo._internal.io.Io_Reader.Reader):stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner> return __self__.value.init(_src);
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function isValid():Bool return __self__.value.isValid();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
