package stdgo.time;
class Time_static_extension {
    static public function round(_t:Time_, _d:Duration):Time_ {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.round(_t, _d);
    }
    static public function truncate(_t:Time_, _d:Duration):Time_ {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.truncate(_t, _d);
    }
    static public function isDST(_t:Time_):Bool {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.isDST(_t);
    }
    static public function unmarshalText(_t:Time_, _data:Array<std.UInt>):stdgo.Error {
        final _t = (_t : stdgo.Ref<stdgo._internal.time.Time_Time.Time>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.unmarshalText(_t, _data);
    }
    static public function marshalText(_t:Time_):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.time.Time_Time_static_extension.Time_static_extension.marshalText(_t);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function unmarshalJSON(_t:Time_, _data:Array<std.UInt>):stdgo.Error {
        final _t = (_t : stdgo.Ref<stdgo._internal.time.Time_Time.Time>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.unmarshalJSON(_t, _data);
    }
    static public function marshalJSON(_t:Time_):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.time.Time_Time_static_extension.Time_static_extension.marshalJSON(_t);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function gobDecode(_t:Time_, _data:Array<std.UInt>):stdgo.Error {
        final _t = (_t : stdgo.Ref<stdgo._internal.time.Time_Time.Time>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.gobDecode(_t, _data);
    }
    static public function gobEncode(_t:Time_):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.time.Time_Time_static_extension.Time_static_extension.gobEncode(_t);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function unmarshalBinary(_t:Time_, _data:Array<std.UInt>):stdgo.Error {
        final _t = (_t : stdgo.Ref<stdgo._internal.time.Time_Time.Time>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.unmarshalBinary(_t, _data);
    }
    static public function marshalBinary(_t:Time_):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.time.Time_Time_static_extension.Time_static_extension.marshalBinary(_t);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function unixNano(_t:Time_):haxe.Int64 {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.unixNano(_t);
    }
    static public function unixMicro(_t:Time_):haxe.Int64 {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.unixMicro(_t);
    }
    static public function unixMilli(_t:Time_):haxe.Int64 {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.unixMilli(_t);
    }
    static public function unix(_t:Time_):haxe.Int64 {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.unix(_t);
    }
    static public function zoneBounds(_t:Time_):stdgo.Tuple<Time_, Time_> {
        return {
            final obj = stdgo._internal.time.Time_Time_static_extension.Time_static_extension.zoneBounds(_t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function zone(_t:Time_):stdgo.Tuple<String, StdTypes.Int> {
        return {
            final obj = stdgo._internal.time.Time_Time_static_extension.Time_static_extension.zone(_t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function location(_t:Time_):Location {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.location(_t);
    }
    static public function in_(_t:Time_, _loc:Location):Time_ {
        final _loc = (_loc : stdgo.Ref<stdgo._internal.time.Time_Location.Location>);
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.in_(_t, _loc);
    }
    static public function local(_t:Time_):Time_ {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.local(_t);
    }
    static public function uTC(_t:Time_):Time_ {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.uTC(_t);
    }
    static public function _date(_t:Time_, _full:Bool):stdgo.Tuple.Tuple4<StdTypes.Int, Month, StdTypes.Int, StdTypes.Int> {
        return {
            final obj = stdgo._internal.time.Time_Time_static_extension.Time_static_extension._date(_t, _full);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function addDate(_t:Time_, _years:StdTypes.Int, _months:StdTypes.Int, _days:StdTypes.Int):Time_ {
        final _years = (_years : stdgo.GoInt);
        final _months = (_months : stdgo.GoInt);
        final _days = (_days : stdgo.GoInt);
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.addDate(_t, _years, _months, _days);
    }
    static public function sub(_t:Time_, _u:Time_):Duration {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.sub(_t, _u);
    }
    static public function add(_t:Time_, _d:Duration):Time_ {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.add(_t, _d);
    }
    static public function yearDay(_t:Time_):StdTypes.Int {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.yearDay(_t);
    }
    static public function nanosecond(_t:Time_):StdTypes.Int {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.nanosecond(_t);
    }
    static public function second(_t:Time_):StdTypes.Int {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.second(_t);
    }
    static public function minute(_t:Time_):StdTypes.Int {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.minute(_t);
    }
    static public function hour(_t:Time_):StdTypes.Int {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.hour(_t);
    }
    static public function clock(_t:Time_):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, StdTypes.Int> {
        return {
            final obj = stdgo._internal.time.Time_Time_static_extension.Time_static_extension.clock(_t);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function iSOWeek(_t:Time_):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        return {
            final obj = stdgo._internal.time.Time_Time_static_extension.Time_static_extension.iSOWeek(_t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function weekday(_t:Time_):Weekday {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.weekday(_t);
    }
    static public function day(_t:Time_):StdTypes.Int {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.day(_t);
    }
    static public function month(_t:Time_):Month {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.month(_t);
    }
    static public function year(_t:Time_):StdTypes.Int {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.year(_t);
    }
    static public function date(_t:Time_):stdgo.Tuple.Tuple3<StdTypes.Int, Month, StdTypes.Int> {
        return {
            final obj = stdgo._internal.time.Time_Time_static_extension.Time_static_extension.date(_t);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _locabs(_t:Time_):stdgo.Tuple.Tuple3<String, StdTypes.Int, haxe.UInt64> {
        return {
            final obj = stdgo._internal.time.Time_Time_static_extension.Time_static_extension._locabs(_t);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _abs(_t:Time_):haxe.UInt64 {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension._abs(_t);
    }
    static public function isZero(_t:Time_):Bool {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.isZero(_t);
    }
    static public function equal(_t:Time_, _u:Time_):Bool {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.equal(_t, _u);
    }
    static public function compare(_t:Time_, _u:Time_):StdTypes.Int {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.compare(_t, _u);
    }
    static public function before(_t:Time_, _u:Time_):Bool {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.before(_t, _u);
    }
    static public function after(_t:Time_, _u:Time_):Bool {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.after(_t, _u);
    }
    static public function _mono(_t:Time_):haxe.Int64 {
        final _t = (_t : stdgo.Ref<stdgo._internal.time.Time_Time.Time>);
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension._mono(_t);
    }
    static public function _setMono(_t:Time_, _m:haxe.Int64):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.time.Time_Time.Time>);
        final _m = (_m : stdgo.GoInt64);
        stdgo._internal.time.Time_Time_static_extension.Time_static_extension._setMono(_t, _m);
    }
    static public function _stripMono(_t:Time_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.time.Time_Time.Time>);
        stdgo._internal.time.Time_Time_static_extension.Time_static_extension._stripMono(_t);
    }
    static public function _setLoc(_t:Time_, _loc:Location):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.time.Time_Time.Time>);
        final _loc = (_loc : stdgo.Ref<stdgo._internal.time.Time_Location.Location>);
        stdgo._internal.time.Time_Time_static_extension.Time_static_extension._setLoc(_t, _loc);
    }
    static public function _addSec(_t:Time_, _d:haxe.Int64):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.time.Time_Time.Time>);
        final _d = (_d : stdgo.GoInt64);
        stdgo._internal.time.Time_Time_static_extension.Time_static_extension._addSec(_t, _d);
    }
    static public function _unixSec(_t:Time_):haxe.Int64 {
        final _t = (_t : stdgo.Ref<stdgo._internal.time.Time_Time.Time>);
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension._unixSec(_t);
    }
    static public function _sec(_t:Time_):haxe.Int64 {
        final _t = (_t : stdgo.Ref<stdgo._internal.time.Time_Time.Time>);
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension._sec(_t);
    }
    static public function _nsec(_t:Time_):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.time.Time_Time.Time>);
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension._nsec(_t);
    }
    static public function _appendStrictRFC3339(_t:Time_, _b:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.time.Time_Time_static_extension.Time_static_extension._appendStrictRFC3339(_t, _b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _appendFormatRFC3339(_t:Time_, _b:Array<std.UInt>, _nanos:Bool):Array<std.UInt> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.time.Time_Time_static_extension.Time_static_extension._appendFormatRFC3339(_t, _b, _nanos)) i];
    }
    static public function _appendFormat(_t:Time_, _b:Array<std.UInt>, _layout:String):Array<std.UInt> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _layout = (_layout : stdgo.GoString);
        return [for (i in stdgo._internal.time.Time_Time_static_extension.Time_static_extension._appendFormat(_t, _b, _layout)) i];
    }
    static public function appendFormat(_t:Time_, _b:Array<std.UInt>, _layout:String):Array<std.UInt> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _layout = (_layout : stdgo.GoString);
        return [for (i in stdgo._internal.time.Time_Time_static_extension.Time_static_extension.appendFormat(_t, _b, _layout)) i];
    }
    static public function format(_t:Time_, _layout:String):String {
        final _layout = (_layout : stdgo.GoString);
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.format(_t, _layout);
    }
    static public function goString(_t:Time_):String {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.goString(_t);
    }
    static public function string(_t:Time_):String {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.string(_t);
    }
}
