package stdgo._internal.encoding.csv;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
class Writer_asInterface {
    @:keep
    @:tdfield
    public dynamic function _fieldNeedsQuotes(_field:stdgo.GoString):Bool return @:_0 __self__.value._fieldNeedsQuotes(_field);
    @:keep
    @:tdfield
    public dynamic function writeAll(_records:stdgo.Slice<stdgo.Slice<stdgo.GoString>>):stdgo.Error return @:_0 __self__.value.writeAll(_records);
    @:keep
    @:tdfield
    public dynamic function error():stdgo.Error return @:_0 __self__.value.error();
    @:keep
    @:tdfield
    public dynamic function flush():Void @:_0 __self__.value.flush();
    @:keep
    @:tdfield
    public dynamic function write(_record:stdgo.Slice<stdgo.GoString>):stdgo.Error return @:_0 __self__.value.write(_record);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.encoding.csv.Csv_WriterPointer.WriterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
