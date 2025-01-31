package stdgo._internal.net.mail;
import stdgo._internal.errors.Errors;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.log.Log;
class Header_asInterface {
    @:keep
    @:tdfield
    public dynamic function addressList(_key:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>>; var _1 : stdgo.Error; } return @:_0 __self__.value.addressList(_key);
    @:keep
    @:tdfield
    public dynamic function date():{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : stdgo.Error; } return @:_0 __self__.value.date();
    @:keep
    @:tdfield
    public dynamic function get(_key:stdgo.GoString):stdgo.GoString return @:_0 __self__.value.get(_key);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.mail.Mail_HeaderPointer.HeaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
