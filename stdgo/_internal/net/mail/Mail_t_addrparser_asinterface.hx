package stdgo._internal.net.mail;
class T_addrParser_asInterface {
    @:keep
    @:tdfield
    public dynamic function _decodeRFC2047Word(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } return @:_0 __self__.value._decodeRFC2047Word(_s);
    @:keep
    @:tdfield
    public dynamic function _consumeComment():{ var _0 : stdgo.GoString; var _1 : Bool; } return @:_0 __self__.value._consumeComment();
    @:keep
    @:tdfield
    public dynamic function _skipCFWS():Bool return @:_0 __self__.value._skipCFWS();
    @:keep
    @:tdfield
    public dynamic function _len():stdgo.GoInt return @:_0 __self__.value._len();
    @:keep
    @:tdfield
    public dynamic function _empty():Bool return @:_0 __self__.value._empty();
    @:keep
    @:tdfield
    public dynamic function _peek():stdgo.GoUInt8 return @:_0 __self__.value._peek();
    @:keep
    @:tdfield
    public dynamic function _skipSpace():Void @:_0 __self__.value._skipSpace();
    @:keep
    @:tdfield
    public dynamic function _consume(_c:stdgo.GoUInt8):Bool return @:_0 __self__.value._consume(_c);
    @:keep
    @:tdfield
    public dynamic function _consumeDisplayNameComment():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_0 __self__.value._consumeDisplayNameComment();
    @:keep
    @:tdfield
    public dynamic function _consumeAtom(_dot:Bool, _permissive:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_0 __self__.value._consumeAtom(_dot, _permissive);
    @:keep
    @:tdfield
    public dynamic function _consumeQuotedString():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_0 __self__.value._consumeQuotedString();
    @:keep
    @:tdfield
    public dynamic function _consumePhrase():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_0 __self__.value._consumePhrase();
    @:keep
    @:tdfield
    public dynamic function _consumeAddrSpec():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_0 __self__.value._consumeAddrSpec();
    @:keep
    @:tdfield
    public dynamic function _consumeGroupList():{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>; var _1 : stdgo.Error; } return @:_0 __self__.value._consumeGroupList();
    @:keep
    @:tdfield
    public dynamic function _parseAddress(_handleGroup:Bool):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>; var _1 : stdgo.Error; } return @:_0 __self__.value._parseAddress(_handleGroup);
    @:keep
    @:tdfield
    public dynamic function _parseSingleAddress():{ var _0 : stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>; var _1 : stdgo.Error; } return @:_0 __self__.value._parseSingleAddress();
    @:keep
    @:tdfield
    public dynamic function _parseAddressList():{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>>; var _1 : stdgo.Error; } return @:_0 __self__.value._parseAddressList();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.mail.Mail_t_addrparserpointer.T_addrParserPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
