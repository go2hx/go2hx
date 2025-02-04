package stdgo._internal.time;
class Time_asInterface {
    @:keep
    @:tdfield
    public dynamic function round(_d:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_time.Time return @:_0 __self__.value.round(_d);
    @:keep
    @:tdfield
    public dynamic function truncate(_d:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_time.Time return @:_0 __self__.value.truncate(_d);
    @:keep
    @:tdfield
    public dynamic function isDST():Bool return @:_0 __self__.value.isDST();
    @:keep
    @:tdfield
    public dynamic function unmarshalText(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.unmarshalText(_data);
    @:keep
    @:tdfield
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.marshalText();
    @:keep
    @:tdfield
    public dynamic function unmarshalJSON(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.unmarshalJSON(_data);
    @:keep
    @:tdfield
    public dynamic function marshalJSON():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.marshalJSON();
    @:keep
    @:tdfield
    public dynamic function gobDecode(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.gobDecode(_data);
    @:keep
    @:tdfield
    public dynamic function gobEncode():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.gobEncode();
    @:keep
    @:tdfield
    public dynamic function unmarshalBinary(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.unmarshalBinary(_data);
    @:keep
    @:tdfield
    public dynamic function marshalBinary():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.marshalBinary();
    @:keep
    @:tdfield
    public dynamic function unixNano():stdgo.GoInt64 return @:_0 __self__.value.unixNano();
    @:keep
    @:tdfield
    public dynamic function unixMicro():stdgo.GoInt64 return @:_0 __self__.value.unixMicro();
    @:keep
    @:tdfield
    public dynamic function unixMilli():stdgo.GoInt64 return @:_0 __self__.value.unixMilli();
    @:keep
    @:tdfield
    public dynamic function unix():stdgo.GoInt64 return @:_0 __self__.value.unix();
    @:keep
    @:tdfield
    public dynamic function zoneBounds():{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : stdgo._internal.time.Time_time.Time; } return @:_0 __self__.value.zoneBounds();
    @:keep
    @:tdfield
    public dynamic function zone():{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } return @:_0 __self__.value.zone();
    @:keep
    @:tdfield
    public dynamic function location():stdgo.Ref<stdgo._internal.time.Time_location.Location> return @:_0 __self__.value.location();
    @:keep
    @:tdfield
    public dynamic function in_(_loc:stdgo.Ref<stdgo._internal.time.Time_location.Location>):stdgo._internal.time.Time_time.Time return @:_0 __self__.value.in_(_loc);
    @:keep
    @:tdfield
    public dynamic function local():stdgo._internal.time.Time_time.Time return @:_0 __self__.value.local();
    @:keep
    @:tdfield
    public dynamic function uTC():stdgo._internal.time.Time_time.Time return @:_0 __self__.value.uTC();
    @:keep
    @:tdfield
    public dynamic function _date(_full:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.time.Time_month.Month; var _2 : stdgo.GoInt; var _3 : stdgo.GoInt; } return @:_0 __self__.value._date(_full);
    @:keep
    @:tdfield
    public dynamic function addDate(_years:stdgo.GoInt, _months:stdgo.GoInt, _days:stdgo.GoInt):stdgo._internal.time.Time_time.Time return @:_0 __self__.value.addDate(_years, _months, _days);
    @:keep
    @:tdfield
    public dynamic function sub(_u:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_duration.Duration return @:_0 __self__.value.sub(_u);
    @:keep
    @:tdfield
    public dynamic function add(_d:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_time.Time return @:_0 __self__.value.add(_d);
    @:keep
    @:tdfield
    public dynamic function yearDay():stdgo.GoInt return @:_0 __self__.value.yearDay();
    @:keep
    @:tdfield
    public dynamic function nanosecond():stdgo.GoInt return @:_0 __self__.value.nanosecond();
    @:keep
    @:tdfield
    public dynamic function second():stdgo.GoInt return @:_0 __self__.value.second();
    @:keep
    @:tdfield
    public dynamic function minute():stdgo.GoInt return @:_0 __self__.value.minute();
    @:keep
    @:tdfield
    public dynamic function hour():stdgo.GoInt return @:_0 __self__.value.hour();
    @:keep
    @:tdfield
    public dynamic function clock():{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; } return @:_0 __self__.value.clock();
    @:keep
    @:tdfield
    public dynamic function iSOWeek():{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } return @:_0 __self__.value.iSOWeek();
    @:keep
    @:tdfield
    public dynamic function weekday():stdgo._internal.time.Time_weekday.Weekday return @:_0 __self__.value.weekday();
    @:keep
    @:tdfield
    public dynamic function day():stdgo.GoInt return @:_0 __self__.value.day();
    @:keep
    @:tdfield
    public dynamic function month():stdgo._internal.time.Time_month.Month return @:_0 __self__.value.month();
    @:keep
    @:tdfield
    public dynamic function year():stdgo.GoInt return @:_0 __self__.value.year();
    @:keep
    @:tdfield
    public dynamic function date():{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.time.Time_month.Month; var _2 : stdgo.GoInt; } return @:_0 __self__.value.date();
    @:keep
    @:tdfield
    public dynamic function _locabs():{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoUInt64; } return @:_0 __self__.value._locabs();
    @:keep
    @:tdfield
    public dynamic function _abs():stdgo.GoUInt64 return @:_0 __self__.value._abs();
    @:keep
    @:tdfield
    public dynamic function isZero():Bool return @:_0 __self__.value.isZero();
    @:keep
    @:tdfield
    public dynamic function equal(_u:stdgo._internal.time.Time_time.Time):Bool return @:_0 __self__.value.equal(_u);
    @:keep
    @:tdfield
    public dynamic function compare(_u:stdgo._internal.time.Time_time.Time):stdgo.GoInt return @:_0 __self__.value.compare(_u);
    @:keep
    @:tdfield
    public dynamic function before(_u:stdgo._internal.time.Time_time.Time):Bool return @:_0 __self__.value.before(_u);
    @:keep
    @:tdfield
    public dynamic function after(_u:stdgo._internal.time.Time_time.Time):Bool return @:_0 __self__.value.after(_u);
    @:keep
    @:tdfield
    public dynamic function _mono():stdgo.GoInt64 return @:_0 __self__.value._mono();
    @:keep
    @:tdfield
    public dynamic function _setMono(_m:stdgo.GoInt64):Void @:_0 __self__.value._setMono(_m);
    @:keep
    @:tdfield
    public dynamic function _stripMono():Void @:_0 __self__.value._stripMono();
    @:keep
    @:tdfield
    public dynamic function _setLoc(_loc:stdgo.Ref<stdgo._internal.time.Time_location.Location>):Void @:_0 __self__.value._setLoc(_loc);
    @:keep
    @:tdfield
    public dynamic function _addSec(_d:stdgo.GoInt64):Void @:_0 __self__.value._addSec(_d);
    @:keep
    @:tdfield
    public dynamic function _unixSec():stdgo.GoInt64 return @:_0 __self__.value._unixSec();
    @:keep
    @:tdfield
    public dynamic function _sec():stdgo.GoInt64 return @:_0 __self__.value._sec();
    @:keep
    @:tdfield
    public dynamic function _nsec():stdgo.GoInt32 return @:_0 __self__.value._nsec();
    @:keep
    @:tdfield
    public dynamic function _appendStrictRFC3339(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value._appendStrictRFC3339(_b);
    @:keep
    @:tdfield
    public dynamic function _appendFormatRFC3339(_b:stdgo.Slice<stdgo.GoUInt8>, _nanos:Bool):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._appendFormatRFC3339(_b, _nanos);
    @:keep
    @:tdfield
    public dynamic function _appendFormat(_b:stdgo.Slice<stdgo.GoUInt8>, _layout:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._appendFormat(_b, _layout);
    @:keep
    @:tdfield
    public dynamic function appendFormat(_b:stdgo.Slice<stdgo.GoUInt8>, _layout:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.appendFormat(_b, _layout);
    @:keep
    @:tdfield
    public dynamic function format(_layout:stdgo.GoString):stdgo.GoString return @:_0 __self__.value.format(_layout);
    @:keep
    @:tdfield
    public dynamic function goString():stdgo.GoString return @:_0 __self__.value.goString();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.time.Time_timepointer.TimePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
