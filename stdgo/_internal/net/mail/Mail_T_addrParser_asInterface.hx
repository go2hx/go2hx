package stdgo._internal.net.mail;
class T_addrParser_asInterface {
    @:keep
    public dynamic function _decodeRFC2047Word(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } return __self__.value._decodeRFC2047Word(_s);
    @:keep
    public dynamic function _consumeComment():{ var _0 : stdgo.GoString; var _1 : Bool; } return __self__.value._consumeComment();
    @:keep
    public dynamic function _skipCFWS():Bool return __self__.value._skipCFWS();
    @:keep
    public dynamic function _len():stdgo.GoInt return __self__.value._len();
    @:keep
    public dynamic function _empty():Bool return __self__.value._empty();
    @:keep
    public dynamic function _peek():stdgo.GoUInt8 return __self__.value._peek();
    @:keep
    public dynamic function _skipSpace():Void __self__.value._skipSpace();
    @:keep
    public dynamic function _consume(_c:stdgo.GoUInt8):Bool return __self__.value._consume(_c);
    @:keep
    public dynamic function _consumeDisplayNameComment():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value._consumeDisplayNameComment();
    @:keep
    public dynamic function _consumeAtom(_dot:Bool, _permissive:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value._consumeAtom(_dot, _permissive);
    @:keep
    public dynamic function _consumeQuotedString():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value._consumeQuotedString();
    @:keep
    public dynamic function _consumePhrase():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value._consumePhrase();
    @:keep
    public dynamic function _consumeAddrSpec():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value._consumeAddrSpec();
    @:keep
    public dynamic function _consumeGroupList():{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>; var _1 : stdgo.Error; } return __self__.value._consumeGroupList();
    @:keep
    public dynamic function _parseAddress(_handleGroup:Bool):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>; var _1 : stdgo.Error; } return __self__.value._parseAddress(_handleGroup);
    @:keep
    public dynamic function _parseSingleAddress():{ var _0 : stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>; var _1 : stdgo.Error; } return __self__.value._parseSingleAddress();
    @:keep
    public dynamic function _parseAddressList():{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>; var _1 : stdgo.Error; } return __self__.value._parseAddressList();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
