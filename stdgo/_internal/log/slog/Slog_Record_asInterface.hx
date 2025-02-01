package stdgo._internal.log.slog;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.log.internal.Internal;
import stdgo._internal.log.Log;
import stdgo._internal.context.Context;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.math.Math;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.log.slog.internal.buffer.Buffer;
import stdgo._internal.slices.Slices;
import stdgo._internal.log.slog.internal.Internal;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
class Record_asInterface {
    @:keep
    @:tdfield
    public dynamic function _source():stdgo.Ref<stdgo._internal.log.slog.Slog_Source.Source> return @:_0 __self__.value._source();
    @:keep
    @:tdfield
    public dynamic function add(_args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.add(..._args);
    @:keep
    @:tdfield
    public dynamic function addAttrs(_attrs:haxe.Rest<stdgo._internal.log.slog.Slog_Attr.Attr>):Void @:_0 __self__.value.addAttrs(..._attrs);
    @:keep
    @:tdfield
    public dynamic function attrs(_f:stdgo._internal.log.slog.Slog_Attr.Attr -> Bool):Void @:_0 __self__.value.attrs(_f);
    @:keep
    @:tdfield
    public dynamic function numAttrs():stdgo.GoInt return @:_0 __self__.value.numAttrs();
    @:keep
    @:tdfield
    public dynamic function clone():stdgo._internal.log.slog.Slog_Record.Record return @:_0 __self__.value.clone();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.log.slog.Slog_RecordPointer.RecordPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
