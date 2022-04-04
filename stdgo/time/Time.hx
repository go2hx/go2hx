package stdgo.time;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _std0x : GoArray<GoInt> = ((new GoArray<GoInt>(((260 : GoInt)), ((265 : GoInt)), ((526 : GoInt)), ((528 : GoInt)), ((530 : GoInt)), ((276 : GoInt))) : GoArray<GoInt>));
var _longDayNames : Slice<GoString> = ((new Slice<GoString>(((("Sunday" : GoString))), ((("Monday" : GoString))), ((("Tuesday" : GoString))), ((("Wednesday" : GoString))), ((("Thursday" : GoString))), ((("Friday" : GoString))), ((("Saturday" : GoString)))) : Slice<GoString>));
var _shortDayNames : Slice<GoString> = ((new Slice<GoString>(((("Sun" : GoString))), ((("Mon" : GoString))), ((("Tue" : GoString))), ((("Wed" : GoString))), ((("Thu" : GoString))), ((("Fri" : GoString))), ((("Sat" : GoString)))) : Slice<GoString>));
var _shortMonthNames : Slice<GoString> = ((new Slice<GoString>(
((("Jan" : GoString))),
((("Feb" : GoString))),
((("Mar" : GoString))),
((("Apr" : GoString))),
((("May" : GoString))),
((("Jun" : GoString))),
((("Jul" : GoString))),
((("Aug" : GoString))),
((("Sep" : GoString))),
((("Oct" : GoString))),
((("Nov" : GoString))),
((("Dec" : GoString)))) : Slice<GoString>));
var _longMonthNames : Slice<GoString> = ((new Slice<GoString>(
((("January" : GoString))),
((("February" : GoString))),
((("March" : GoString))),
((("April" : GoString))),
((("May" : GoString))),
((("June" : GoString))),
((("July" : GoString))),
((("August" : GoString))),
((("September" : GoString))),
((("October" : GoString))),
((("November" : GoString))),
((("December" : GoString)))) : Slice<GoString>));
var _atoiError : stdgo.Error = stdgo.errors.Errors.new_(((("time: invalid number" : GoString))));
var _errBad : stdgo.Error = stdgo.errors.Errors.new_(((("bad value for field" : GoString))));
var _errLeadingInt : stdgo.Error = stdgo.errors.Errors.new_(((("time: bad [0-9]*" : GoString))));
var _unitMap : GoMap<GoString, GoUInt64> = Go.map(((("ns" : GoString))) => ((((1 : GoInt64)) : GoUInt64)), ((("us" : GoString))) => ((((1000 : GoInt64)) : GoUInt64)), ((("µs" : GoString))) => ((((1000 : GoInt64)) : GoUInt64)), ((("μs" : GoString))) => ((((1000 : GoInt64)) : GoUInt64)), ((("ms" : GoString))) => ((((1000000 : GoInt64)) : GoUInt64)), ((("s" : GoString))) => ((((1000000000 : GoInt64)) : GoUInt64)), ((("m" : GoString))) => (((("60000000000" : GoInt64)) : GoUInt64)), ((("h" : GoString))) => (((("3600000000000" : GoInt64)) : GoUInt64)));
var _daysBefore : GoArray<GoInt32> = ((new GoArray<GoInt32>(
((0 : GoInt32)),
((31 : GoInt32)),
((59 : GoInt32)),
((90 : GoInt32)),
((120 : GoInt32)),
((151 : GoInt32)),
((181 : GoInt32)),
((212 : GoInt32)),
((243 : GoInt32)),
((273 : GoInt32)),
((304 : GoInt32)),
((334 : GoInt32)),
((365 : GoInt32))) : GoArray<GoInt32>));
var _startNano : GoInt64 = _runtimeNano() - ((1 : GoInt64));
var _utcLoc : Location = (({ _name : ((("UTC" : GoString))), _zone : ((null : Slice<T_zone>)), _tx : ((null : Slice<T_zoneTrans>)), _extend : "", _cacheStart : 0, _cacheEnd : 0, _cacheZone : ((null : T_zone)) } : Location));
var utc : Location = _utcLoc;
var local : Location = _localLoc;
var _errLocation : stdgo.Error = stdgo.errors.Errors.new_(((("time: invalid location name" : GoString))));
var _zoneSources : Slice<GoString> = ((new Slice<GoString>(((("/usr/share/zoneinfo/" : GoString))), ((("/usr/share/lib/zoneinfo/" : GoString))), ((("/usr/lib/locale/TZ/" : GoString))), stdgo.runtime.Runtime.goroot() + ((("/lib/time/zoneinfo.zip" : GoString)))) : Slice<GoString>));
var _badData : stdgo.Error = stdgo.errors.Errors.new_(((("malformed time zone information" : GoString))));
var _localLoc : Location = new Location();
var _localOnce : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
var _zoneinfo : Pointer<GoString> = ((null : Pointer<GoString>));
var _zoneinfoOnce : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
var _loadFromEmbeddedTZData : (_zipname:GoString) -> { var _0 : GoString; var _1 : Error; } = null;
var _loadTzinfoFromTzdata : (_file:GoString, _name:GoString) -> { var _0 : Slice<GoByte>; var _1 : Error; } = null;
@:structInit @:using(Time.ParseError_static_extension) class ParseError {
    public function error():GoString {
        var _e = this;
        _e;
        if (_e.message == ("")) {
            return ((((((((("parsing time " : GoString))) + _quote(_e.value)) + (((" as " : GoString)))) + _quote(_e.layout)) + (((": cannot parse " : GoString)))) + _quote(_e.valueElem)) + (((" as " : GoString)))) + _quote(_e.layoutElem);
        };
        return (((("parsing time " : GoString))) + _quote(_e.value)) + _e.message;
    }
    public var layout : GoString = (("" : GoString));
    public var value : GoString = (("" : GoString));
    public var layoutElem : GoString = (("" : GoString));
    public var valueElem : GoString = (("" : GoString));
    public var message : GoString = (("" : GoString));
    public function new(?layout:GoString, ?value:GoString, ?layoutElem:GoString, ?valueElem:GoString, ?message:GoString) {
        if (layout != null) this.layout = layout;
        if (value != null) this.value = value;
        if (layoutElem != null) this.layoutElem = layoutElem;
        if (valueElem != null) this.valueElem = valueElem;
        if (message != null) this.message = message;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ParseError(layout, value, layoutElem, valueElem, message);
    }
}
@:structInit class T_runtimeTimer {
    public var _pp : GoUIntptr = ((0 : GoUIntptr));
    public var _when : GoInt64 = ((0 : GoInt64));
    public var _period : GoInt64 = ((0 : GoInt64));
    public var _f : (AnyInterface, GoUIntptr) -> Void = null;
    public var _arg : AnyInterface = ((null : AnyInterface));
    public var _seq : GoUIntptr = ((0 : GoUIntptr));
    public var _nextwhen : GoInt64 = ((0 : GoInt64));
    public var _status : GoUInt32 = ((0 : GoUInt32));
    public function new(?_pp:GoUIntptr, ?_when:GoInt64, ?_period:GoInt64, ?_f:(AnyInterface, GoUIntptr) -> Void, ?_arg:AnyInterface, ?_seq:GoUIntptr, ?_nextwhen:GoInt64, ?_status:GoUInt32) {
        if (_pp != null) this._pp = _pp;
        if (_when != null) this._when = _when;
        if (_period != null) this._period = _period;
        if (_f != null) this._f = _f;
        if (_arg != null) this._arg = _arg;
        if (_seq != null) this._seq = _seq;
        if (_nextwhen != null) this._nextwhen = _nextwhen;
        if (_status != null) this._status = _status;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_runtimeTimer(_pp, _when, _period, _f, _arg, _seq, _nextwhen, _status);
    }
}
@:structInit @:using(Time.Timer_static_extension) class Timer {
    public function reset(_d:Duration):Bool {
        var _t = this;
        _t;
        if (_t._r._f == null) {
            throw Go.toInterface(((("time: Reset called on uninitialized Timer" : GoString))));
        };
        var _w:GoInt64 = _when(_d);
        return _resetTimer(_t._r, _w);
    }
    public function stop():Bool {
        var _t = this;
        _t;
        if (_t._r._f == null) {
            throw Go.toInterface(((("time: Stop called on uninitialized Timer" : GoString))));
        };
        return _stopTimer(_t._r);
    }
    public var c : Chan<Time> = ((null : Chan<Time>));
    public var _r : T_runtimeTimer = new T_runtimeTimer();
    public function new(?c:Chan<Time>, ?_r:T_runtimeTimer) {
        if (c != null) this.c = c;
        if (_r != null) this._r = _r;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Timer(c, _r);
    }
}
@:structInit @:using(Time.Ticker_static_extension) class Ticker {
    public function reset(_d:Duration):Void {
        var _t = this;
        _t;
        if (_d <= ((0 : GoInt64))) {
            throw Go.toInterface(((("non-positive interval for Ticker.Reset" : GoString))));
        };
        if (_t._r._f == null) {
            throw Go.toInterface(((("time: Reset called on uninitialized Ticker" : GoString))));
        };
        _modTimer(_t._r, _when(_d), ((_d : GoInt64)), _t._r._f, Go.toInterface(_t._r._arg), _t._r._seq);
    }
    public function stop():Void {
        var _t = this;
        _t;
        _stopTimer(_t._r);
    }
    public var c : Chan<Time> = ((null : Chan<Time>));
    public var _r : T_runtimeTimer = new T_runtimeTimer();
    public function new(?c:Chan<Time>, ?_r:T_runtimeTimer) {
        if (c != null) this.c = c;
        if (_r != null) this._r = _r;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Ticker(c, _r);
    }
}
@:structInit @:using(Time.Time_static_extension) class Time {
    public function round(_d:Duration):Time {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        _t._stripMono();
        if (_d <= ((0 : GoInt64))) {
            return (_t == null ? null : _t.__copy__());
        };
        var __tmp__ = _div((_t == null ? null : _t.__copy__()), _d), _:GoInt = __tmp__._0, _r:Duration = __tmp__._1;
        if (_lessThanHalf(_r, _d)) {
            return (_t.add(-_r) == null ? null : _t.add(-_r).__copy__());
        };
        return (_t.add(_d - _r) == null ? null : _t.add(_d - _r).__copy__());
    }
    public function truncate(_d:Duration):Time {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        _t._stripMono();
        if (_d <= ((0 : GoInt64))) {
            return (_t == null ? null : _t.__copy__());
        };
        var __tmp__ = _div((_t == null ? null : _t.__copy__()), _d), _:GoInt = __tmp__._0, _r:Duration = __tmp__._1;
        return (_t.add(-_r) == null ? null : _t.add(-_r).__copy__());
    }
    public function isDST():Bool {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        var __tmp__ = _t._loc._lookup(_t.unix()), _:GoString = __tmp__._0, _:GoInt = __tmp__._1, _:GoInt64 = __tmp__._2, _:GoInt64 = __tmp__._3, _isDST:Bool = __tmp__._4;
        return _isDST;
    }
    public function unmarshalText(_data:Slice<GoByte>):Error {
        var _t = this;
        _t;
        var _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = parse(((("2006-01-02T15:04:05Z07:00" : GoString))), ((_data : GoString)));
            _t = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
            _err = __tmp__._1;
        };
        return _err;
    }
    public function marshalText():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        {
            var _y:GoInt = _t.year();
            if ((_y < ((0 : GoInt))) || (_y >= ((10000 : GoInt)))) {
                return { _0 : ((null : Slice<GoUInt8>)), _1 : stdgo.errors.Errors.new_(((("Time.MarshalText: year outside of range [0,9999]" : GoString)))) };
            };
        };
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__((((((("2006-01-02T15:04:05.999999999Z07:00" : GoString))) != null ? ((("2006-01-02T15:04:05.999999999Z07:00" : GoString))).length : ((0 : GoInt))) : GoInt)).toBasic());
        return { _0 : _t.appendFormat(_b, ((("2006-01-02T15:04:05.999999999Z07:00" : GoString)))), _1 : ((null : stdgo.Error)) };
    }
    public function unmarshalJSON(_data:Slice<GoByte>):Error {
        var _t = this;
        _t;
        if (((_data : GoString)) == ((("null" : GoString)))) {
            return ((null : stdgo.Error));
        };
        var _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = parse(((("\"2006-01-02T15:04:05Z07:00\"" : GoString))), ((_data : GoString)));
            _t = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
            _err = __tmp__._1;
        };
        return _err;
    }
    public function marshalJSON():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        {
            var _y:GoInt = _t.year();
            if ((_y < ((0 : GoInt))) || (_y >= ((10000 : GoInt)))) {
                return { _0 : ((null : Slice<GoUInt8>)), _1 : stdgo.errors.Errors.new_(((("Time.MarshalJSON: year outside of range [0,9999]" : GoString)))) };
            };
        };
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((37 : GoInt)) : GoInt)).toBasic());
        _b = (_b != null ? _b.__append__(((((("\"" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("\"" : GoString))).code : GoRune))));
        _b = _t.appendFormat(_b, ((("2006-01-02T15:04:05.999999999Z07:00" : GoString))));
        _b = (_b != null ? _b.__append__(((((("\"" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("\"" : GoString))).code : GoRune))));
        return { _0 : _b, _1 : ((null : stdgo.Error)) };
    }
    public function gobDecode(_data:Slice<GoByte>):Error {
        var _t = this;
        _t;
        return _t.unmarshalBinary(_data);
    }
    public function gobEncode():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        return _t.marshalBinary();
    }
    public function unmarshalBinary(_data:Slice<GoByte>):Error {
        var _t = this;
        _t;
        var _buf:Slice<GoUInt8> = _data;
        if ((_buf != null ? _buf.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return stdgo.errors.Errors.new_(((("Time.UnmarshalBinary: no data" : GoString))));
        };
        var _version:GoUInt8 = (_buf != null ? _buf[((0 : GoInt))] : ((0 : GoUInt8)));
        if ((_version != ((1 : GoUInt8))) && (_version != ((2 : GoUInt8)))) {
            return stdgo.errors.Errors.new_(((("Time.UnmarshalBinary: unsupported version" : GoString))));
        };
        var _wantLen:GoInt = ((15 : GoInt));
        if (_version == ((2 : GoUInt8))) {
            _wantLen++;
        };
        if ((_buf != null ? _buf.length : ((0 : GoInt))) != _wantLen) {
            return stdgo.errors.Errors.new_(((("Time.UnmarshalBinary: invalid length" : GoString))));
        };
        _buf = _buf.__slice__(((1 : GoInt)));
        var _sec:GoInt64 = (((((((((_buf != null ? _buf[((7 : GoInt))] : ((0 : GoUInt8))) : GoInt64)) | ((((_buf != null ? _buf[((6 : GoInt))] : ((0 : GoUInt8))) : GoInt64)) << ((8 : GoUnTypedInt)))) | ((((_buf != null ? _buf[((5 : GoInt))] : ((0 : GoUInt8))) : GoInt64)) << ((16 : GoUnTypedInt)))) | ((((_buf != null ? _buf[((4 : GoInt))] : ((0 : GoUInt8))) : GoInt64)) << ((24 : GoUnTypedInt)))) | ((((_buf != null ? _buf[((3 : GoInt))] : ((0 : GoUInt8))) : GoInt64)) << ((32 : GoUnTypedInt)))) | ((((_buf != null ? _buf[((2 : GoInt))] : ((0 : GoUInt8))) : GoInt64)) << ((40 : GoUnTypedInt)))) | ((((_buf != null ? _buf[((1 : GoInt))] : ((0 : GoUInt8))) : GoInt64)) << ((48 : GoUnTypedInt)))) | ((((_buf != null ? _buf[((0 : GoInt))] : ((0 : GoUInt8))) : GoInt64)) << ((56 : GoUnTypedInt)));
        _buf = _buf.__slice__(((8 : GoInt)));
        var _nsec:GoInt32 = (((((_buf != null ? _buf[((3 : GoInt))] : ((0 : GoUInt8))) : GoInt32)) | ((((_buf != null ? _buf[((2 : GoInt))] : ((0 : GoUInt8))) : GoInt32)) << ((8 : GoUnTypedInt)))) | ((((_buf != null ? _buf[((1 : GoInt))] : ((0 : GoUInt8))) : GoInt32)) << ((16 : GoUnTypedInt)))) | ((((_buf != null ? _buf[((0 : GoInt))] : ((0 : GoUInt8))) : GoInt32)) << ((24 : GoUnTypedInt)));
        _buf = _buf.__slice__(((4 : GoInt)));
        var _offset:GoInt = ((((((_buf != null ? _buf[((1 : GoInt))] : ((0 : GoUInt8))) : GoInt16)) | ((((_buf != null ? _buf[((0 : GoInt))] : ((0 : GoUInt8))) : GoInt16)) << ((8 : GoUnTypedInt)))) : GoInt)) * ((60 : GoInt));
        if (_version == ((2 : GoUInt8))) {
            _offset = _offset + ((((_buf != null ? _buf[((2 : GoInt))] : ((0 : GoUInt8))) : GoInt)));
        };
        {
            var __tmp__ = ((new Time() : Time));
            _t._wall = __tmp__._wall;
            _t._ext = __tmp__._ext;
            _t._loc = __tmp__._loc;
        };
        _t._wall = ((_nsec : GoUInt64));
        _t._ext = _sec;
        if (_offset == ((-60 : GoInt))) {
            _t._setLoc(_utcLoc);
        } else {
            var __tmp__ = stdgo.time.Time.local._lookup(_t._unixSec()), _:GoString = __tmp__._0, _localoff:GoInt = __tmp__._1, _:GoInt64 = __tmp__._2, _:GoInt64 = __tmp__._3, _:Bool = __tmp__._4;
            if (_offset == _localoff) {
                _t._setLoc(stdgo.time.Time.local);
            } else {
                _t._setLoc(fixedZone((""), _offset));
            };
        };
        return ((null : stdgo.Error));
    }
    public function marshalBinary():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        var _offsetMin:GoInt16 = ((0 : GoInt16));
        var _offsetSec:GoInt8 = ((0 : GoInt8));
        var _version:GoUInt8 = ((1 : GoUInt8));
        if (_t.location() == stdgo.time.Time.utc) {
            _offsetMin = ((-1 : GoInt16));
        } else {
            var __tmp__ = _t.zone(), _:GoString = __tmp__._0, _offset:GoInt = __tmp__._1;
            if ((_offset % ((60 : GoInt))) != ((0 : GoInt))) {
                _version = ((2 : GoUInt8));
                _offsetSec = (((_offset % ((60 : GoInt))) : GoInt8));
            };
            _offset = _offset / (((60 : GoInt)));
            if (((_offset < ((-32768 : GoInt))) || (_offset == ((-1 : GoInt)))) || (_offset > ((32767 : GoInt)))) {
                return { _0 : ((null : Slice<GoUInt8>)), _1 : stdgo.errors.Errors.new_(((("Time.MarshalBinary: unexpected zone offset" : GoString)))) };
            };
            _offsetMin = ((_offset : GoInt16));
        };
        var _sec:GoInt64 = _t._sec();
        var _nsec:GoInt32 = _t._nsec();
        var _enc:Slice<GoUInt8> = ((new Slice<GoUInt8>(
_version,
(((_sec >> ((56 : GoUnTypedInt))) : GoByte)),
(((_sec >> ((48 : GoUnTypedInt))) : GoByte)),
(((_sec >> ((40 : GoUnTypedInt))) : GoByte)),
(((_sec >> ((32 : GoUnTypedInt))) : GoByte)),
(((_sec >> ((24 : GoUnTypedInt))) : GoByte)),
(((_sec >> ((16 : GoUnTypedInt))) : GoByte)),
(((_sec >> ((8 : GoUnTypedInt))) : GoByte)),
((_sec : GoByte)),
(((_nsec >> ((24 : GoUnTypedInt))) : GoByte)),
(((_nsec >> ((16 : GoUnTypedInt))) : GoByte)),
(((_nsec >> ((8 : GoUnTypedInt))) : GoByte)),
((_nsec : GoByte)),
(((_offsetMin >> ((8 : GoUnTypedInt))) : GoByte)),
((_offsetMin : GoByte))) : Slice<GoUInt8>));
        if (_version == ((2 : GoUInt8))) {
            _enc = (_enc != null ? _enc.__append__(((_offsetSec : GoByte))) : new Slice<GoUInt8>(((_offsetSec : GoByte))));
        };
        return { _0 : _enc, _1 : ((null : stdgo.Error)) };
    }
    public function unixNano():GoInt64 {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        return ((_t._unixSec()) * ((1e+09 : GoInt64))) + ((_t._nsec() : GoInt64));
    }
    public function unixMicro():GoInt64 {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        return (_t._unixSec() * ((1e+06 : GoInt64))) + (((_t._nsec() : GoInt64)) / ((1000 : GoInt64)));
    }
    public function unixMilli():GoInt64 {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        return (_t._unixSec() * ((1000 : GoInt64))) + (((_t._nsec() : GoInt64)) / ((1e+06 : GoInt64)));
    }
    public function unix():GoInt64 {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        return _t._unixSec();
    }
    public function zone():{ var _0 : GoString; var _1 : GoInt; } {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        var _name:GoString = (("" : GoString)), _offset:GoInt = ((0 : GoInt));
        {
            var __tmp__ = _t._loc._lookup(_t._unixSec());
            _name = __tmp__._0;
            _offset = __tmp__._1;
        };
        return { _0 : _name, _1 : _offset };
    }
    public function location():Location {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        var _l:Location = _t._loc;
        if (_l == null) {
            _l = stdgo.time.Time.utc;
        };
        return _l;
    }
    public function in_(_loc:Location):Time {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        if (_loc == null) {
            throw Go.toInterface(((("time: missing Location in call to Time.In" : GoString))));
        };
        _t._setLoc(_loc);
        return (_t == null ? null : _t.__copy__());
    }
    public function local():Time {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        _t._setLoc(stdgo.time.Time.local);
        return (_t == null ? null : _t.__copy__());
    }
    public function utc():Time {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        _t._setLoc(_utcLoc);
        return (_t == null ? null : _t.__copy__());
    }
    public function _date(_full:Bool):{ var _0 : GoInt; var _1 : Month; var _2 : GoInt; var _3 : GoInt; } {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        var _year:GoInt = ((0 : GoInt)), _month:Month = new Month(), _day:GoInt = ((0 : GoInt)), _yday:GoInt = ((0 : GoInt));
        return _absDate(_t._abs(), _full);
    }
    public function addDate(_years:GoInt, _months:GoInt, _days:GoInt):Time {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        var __tmp__ = _t.date(), _year:GoInt = __tmp__._0, _month:Month = __tmp__._1, _day:GoInt = __tmp__._2;
        var __tmp__ = _t.clock(), _hour:GoInt = __tmp__._0, _min:GoInt = __tmp__._1, _sec:GoInt = __tmp__._2;
        return (stdgo.time.Time.date(_year + _years, _month + ((_months : Month)), _day + _days, _hour, _min, _sec, ((_t._nsec() : GoInt)), _t.location()) == null ? null : stdgo.time.Time.date(_year + _years, _month + ((_months : Month)), _day + _days, _hour, _min, _sec, ((_t._nsec() : GoInt)), _t.location()).__copy__());
    }
    public function sub(_u:Time):Duration {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        if (((_t._wall & _u._wall) & (("9223372036854775808" : GoUInt64))) != ((0 : GoUInt64))) {
            var _te:GoInt64 = _t._ext;
            var _ue:GoInt64 = _u._ext;
            var _d:Duration = (((_te - _ue) : Duration));
            if ((_d < ((0 : GoInt64))) && (_te > _ue)) {
                return (("9223372036854775807" : GoInt64));
            };
            if ((_d > ((0 : GoInt64))) && (_te < _ue)) {
                return (("-9223372036854775808" : GoInt64));
            };
            return _d;
        };
        var _d:Duration = ((((_t._sec() - _u._sec()) : Duration)) * ((1000000000 : GoInt64))) + (((_t._nsec() - _u._nsec()) : Duration));
        if (_u.add(_d).equal((_t == null ? null : _t.__copy__()))) {
            return _d;
        } else if (_t.before((_u == null ? null : _u.__copy__()))) {
            return (("-9223372036854775808" : GoInt64));
        } else {
            return (("9223372036854775807" : GoInt64));
        };
    }
    public function add(_d:Duration):Time {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        var _dsec:GoInt64 = (((_d / ((1e+09 : GoInt64))) : GoInt64));
        var _nsec:GoInt32 = _t._nsec() + (((_d % ((1e+09 : GoInt64))) : GoInt32));
        if (_nsec >= ((1e+09 : GoInt32))) {
            _dsec++;
            _nsec = _nsec - (((1e+09 : GoInt32)));
        } else if (_nsec < ((0 : GoInt32))) {
            _dsec--;
            _nsec = _nsec + (((1e+09 : GoInt32)));
        };
        _t._wall = (_t._wall & (((1073741823 : GoUInt64)) ^ ((-1 : GoUnTypedInt)))) | ((_nsec : GoUInt64));
        _t._addSec(_dsec);
        if ((_t._wall & (("9223372036854775808" : GoUInt64))) != ((0 : GoUInt64))) {
            var _te:GoInt64 = _t._ext + ((_d : GoInt64));
            if (((_d < ((0 : GoInt64))) && (_te > _t._ext)) || ((_d > ((0 : GoInt64))) && (_te < _t._ext))) {
                _t._stripMono();
            } else {
                _t._ext = _te;
            };
        };
        return (_t == null ? null : _t.__copy__());
    }
    public function yearDay():GoInt {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        var __tmp__ = _t._date(false), _:GoInt = __tmp__._0, _:Month = __tmp__._1, _:GoInt = __tmp__._2, _yday:GoInt = __tmp__._3;
        return _yday + ((1 : GoInt));
    }
    public function nanosecond():GoInt {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        return ((_t._nsec() : GoInt));
    }
    public function second():GoInt {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        return (((_t._abs() % ((60 : GoUInt64))) : GoInt));
    }
    public function minute():GoInt {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        return (((_t._abs() % ((3600 : GoUInt64))) : GoInt)) / ((60 : GoInt));
    }
    public function hour():GoInt {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        return (((_t._abs() % ((86400 : GoUInt64))) : GoInt)) / ((3600 : GoInt));
    }
    public function clock():{ var _0 : GoInt; var _1 : GoInt; var _2 : GoInt; } {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        var _hour:GoInt = ((0 : GoInt)), _min:GoInt = ((0 : GoInt)), _sec:GoInt = ((0 : GoInt));
        return _absClock(_t._abs());
    }
    public function isoweek():{ var _0 : GoInt; var _1 : GoInt; } {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        var _year:GoInt = ((0 : GoInt)), _week:GoInt = ((0 : GoInt));
        var _abs:GoUInt64 = _t._abs();
        var _d:Weekday = ((4 : GoInt)) - _absWeekday(_abs);
        if (_d == ((4 : GoInt))) {
            _d = ((-3 : GoInt));
        };
        _abs = _abs + (((_d : GoUInt64)) * ((86400 : GoUInt64)));
        var __tmp__ = _absDate(_abs, false), _year:GoInt = __tmp__._0, _:Month = __tmp__._1, _:GoInt = __tmp__._2, _yday:GoInt = __tmp__._3;
        return { _0 : _year, _1 : (_yday / ((7 : GoInt))) + ((1 : GoInt)) };
    }
    public function weekday():Weekday {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        return _absWeekday(_t._abs());
    }
    public function day():GoInt {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        var __tmp__ = _t._date(true), _:GoInt = __tmp__._0, _:Month = __tmp__._1, _day:GoInt = __tmp__._2, _:GoInt = __tmp__._3;
        return _day;
    }
    public function month():Month {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        var __tmp__ = _t._date(true), _:GoInt = __tmp__._0, _month:Month = __tmp__._1, _:GoInt = __tmp__._2, _:GoInt = __tmp__._3;
        return _month;
    }
    public function year():GoInt {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        var __tmp__ = _t._date(false), _year:GoInt = __tmp__._0, _:Month = __tmp__._1, _:GoInt = __tmp__._2, _:GoInt = __tmp__._3;
        return _year;
    }
    public function date():{ var _0 : GoInt; var _1 : Month; var _2 : GoInt; } {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        var _year:GoInt = ((0 : GoInt)), _month:Month = new Month(), _day:GoInt = ((0 : GoInt));
        {
            var __tmp__ = _t._date(true);
            _year = __tmp__._0;
            _month = __tmp__._1;
            _day = __tmp__._2;
        };
        return { _0 : _year, _1 : _month, _2 : _day };
    }
    public function _locabs():{ var _0 : GoString; var _1 : GoInt; var _2 : GoUInt64; } {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        var _name:GoString = (("" : GoString)), _offset:GoInt = ((0 : GoInt)), _abs:GoUInt64 = ((0 : GoUInt64));
        var _l:Location = _t._loc;
        if ((_l == null) || (_l == _localLoc)) {
            _l = _l._get();
        };
        var _sec:GoInt64 = _t._unixSec();
        if (_l != _utcLoc) {
            if (((_l._cacheZone != null) && (_l._cacheStart <= _sec)) && (_sec < _l._cacheEnd)) {
                _name = _l._cacheZone._name;
                _offset = _l._cacheZone._offset;
            } else {
                {
                    var __tmp__ = _l._lookup(_sec);
                    _name = __tmp__._0;
                    _offset = __tmp__._1;
                };
            };
            _sec = _sec + (((_offset : GoInt64)));
        } else {
            _name = ((("UTC" : GoString)));
        };
        _abs = (((_sec + (("9223372028715321600" : GoInt64))) : GoUInt64));
        return { _0 : _name, _1 : _offset, _2 : _abs };
    }
    public function _abs():GoUInt64 {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        var _l:Location = _t._loc;
        if ((_l == null) || (_l == _localLoc)) {
            _l = _l._get();
        };
        var _sec:GoInt64 = _t._unixSec();
        if (_l != _utcLoc) {
            if (((_l._cacheZone != null) && (_l._cacheStart <= _sec)) && (_sec < _l._cacheEnd)) {
                _sec = _sec + (((_l._cacheZone._offset : GoInt64)));
            } else {
                var __tmp__ = _l._lookup(_sec), _:GoString = __tmp__._0, _offset:GoInt = __tmp__._1, _:GoInt64 = __tmp__._2, _:GoInt64 = __tmp__._3, _:Bool = __tmp__._4;
                _sec = _sec + (((_offset : GoInt64)));
            };
        };
        return (((_sec + (("9223372028715321600" : GoInt64))) : GoUInt64));
    }
    public function isZero():Bool {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        return (_t._sec() == ((0 : GoInt64))) && (_t._nsec() == ((0 : GoInt32)));
    }
    public function equal(_u:Time):Bool {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        if (((_t._wall & _u._wall) & (("9223372036854775808" : GoUInt64))) != ((0 : GoUInt64))) {
            return _t._ext == _u._ext;
        };
        return (_t._sec() == _u._sec()) && (_t._nsec() == _u._nsec());
    }
    public function before(_u:Time):Bool {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        if (((_t._wall & _u._wall) & (("9223372036854775808" : GoUInt64))) != ((0 : GoUInt64))) {
            return _t._ext < _u._ext;
        };
        var _ts:GoInt64 = _t._sec();
        var _us:GoInt64 = _u._sec();
        return (_ts < _us) || ((_ts == _us) && (_t._nsec() < _u._nsec()));
    }
    public function after(_u:Time):Bool {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        if (((_t._wall & _u._wall) & (("9223372036854775808" : GoUInt64))) != ((0 : GoUInt64))) {
            return _t._ext > _u._ext;
        };
        var _ts:GoInt64 = _t._sec();
        var _us:GoInt64 = _u._sec();
        return (_ts > _us) || ((_ts == _us) && (_t._nsec() > _u._nsec()));
    }
    public function _mono():GoInt64 {
        var _t = this;
        _t;
        if ((_t._wall & (("9223372036854775808" : GoUInt64))) == ((0 : GoUInt64))) {
            return ((0 : GoInt64));
        };
        return _t._ext;
    }
    public function _setMono(_m:GoInt64):Void {
        var _t = this;
        _t;
        if ((_t._wall & (("9223372036854775808" : GoUInt64))) == ((0 : GoUInt64))) {
            var _sec:GoInt64 = _t._ext;
            if ((_sec < (("59453308800" : GoInt64))) || ((("68043243391" : GoInt64)) < _sec)) {
                return;
            };
            _t._wall = _t._wall | ((("9223372036854775808" : GoUInt64)) | ((((_sec - (("59453308800" : GoInt64))) : GoUInt64)) << ((30 : GoUnTypedInt))));
        };
        _t._ext = _m;
    }
    public function _stripMono():Void {
        var _t = this;
        _t;
        if ((_t._wall & (("9223372036854775808" : GoUInt64))) != ((0 : GoUInt64))) {
            _t._ext = _t._sec();
            _t._wall = _t._wall & (((1073741823 : GoUInt64)));
        };
    }
    public function _setLoc(_loc:Location):Void {
        var _t = this;
        _t;
        if (_loc == _utcLoc) {
            _loc = null;
        };
        _t._stripMono();
        _t._loc = _loc;
    }
    public function _addSec(_d:GoInt64):Void {
        var _t = this;
        _t;
        if ((_t._wall & (("9223372036854775808" : GoUInt64))) != ((0 : GoUInt64))) {
            var _sec:GoInt64 = ((((_t._wall << ((1 : GoUnTypedInt))) >> ((31 : GoUnTypedInt))) : GoInt64));
            var _dsec:GoInt64 = _sec + _d;
            if ((((0 : GoInt64)) <= _dsec) && (_dsec <= (("8589934591" : GoInt64)))) {
                _t._wall = ((_t._wall & ((1073741823 : GoUInt64))) | (((_dsec : GoUInt64)) << ((30 : GoUnTypedInt)))) | (("9223372036854775808" : GoUInt64));
                return;
            };
            _t._stripMono();
        };
        var _sum:GoInt64 = _t._ext + _d;
        if ((_sum > _t._ext) == (_d > ((0 : GoInt64)))) {
            _t._ext = _sum;
        } else if (_d > ((0 : GoInt64))) {
            _t._ext = (("9223372036854775807" : GoInt64));
        } else {
            _t._ext = (("-9223372036854775807" : GoInt64));
        };
    }
    public function _unixSec():GoInt64 {
        var _t = this;
        _t;
        return _t._sec() + (("-62135596800" : GoInt64));
    }
    public function _sec():GoInt64 {
        var _t = this;
        _t;
        if ((_t._wall & (("9223372036854775808" : GoUInt64))) != ((0 : GoUInt64))) {
            return (("59453308800" : GoInt64)) + ((((_t._wall << ((1 : GoUnTypedInt))) >> ((31 : GoUnTypedInt))) : GoInt64));
        };
        return _t._ext;
    }
    public function _nsec():GoInt32 {
        var _t = this;
        _t;
        return (((_t._wall & ((1073741823 : GoUInt64))) : GoInt32));
    }
    public function appendFormat(_b:Slice<GoByte>, _layout:GoString):Slice<GoByte> {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        var __tmp__ = _t._locabs(), _name:GoString = __tmp__._0, _offset:GoInt = __tmp__._1, _abs:GoUInt64 = __tmp__._2, _year:GoInt = ((-1 : GoInt)), _month:Month = new Month(), _day:GoInt = ((0 : GoInt)), _yday:GoInt = ((0 : GoInt)), _hour:GoInt = ((-1 : GoInt)), _min:GoInt = ((0 : GoInt)), _sec:GoInt = ((0 : GoInt));
        while (_layout != ("")) {
            var __tmp__ = _nextStdChunk(_layout), _prefix:GoString = __tmp__._0, _std:GoInt = __tmp__._1, _suffix:GoString = __tmp__._2;
            if (_prefix != ("")) {
                _b = (_b != null ? _b.__append__(..._prefix.__toArray__()) : new Slice<GoUInt8>(..._prefix.__toArray__()));
            };
            if (_std == ((0 : GoInt))) {
                break;
            };
            _layout = _suffix;
            if ((_year < ((0 : GoInt))) && ((_std & ((256 : GoInt))) != ((0 : GoInt)))) {
                {
                    var __tmp__ = _absDate(_abs, true);
                    _year = __tmp__._0;
                    _month = __tmp__._1;
                    _day = __tmp__._2;
                    _yday = __tmp__._3;
                };
                _yday++;
            };
            if ((_hour < ((0 : GoInt))) && ((_std & ((512 : GoInt))) != ((0 : GoInt)))) {
                {
                    var __tmp__ = _absClock(_abs);
                    _hour = __tmp__._0;
                    _min = __tmp__._1;
                    _sec = __tmp__._2;
                };
            };
            {
                var __switchIndex__ = -1;
                while (true) {
                    if (_std & ((65535 : GoInt)) == ((276 : GoInt))) {
                        var _y:GoInt = _year;
                        if (_y < ((0 : GoInt))) {
                            _y = -_y;
                        };
                        _b = _appendInt(_b, _y % ((100 : GoInt)), ((2 : GoInt)));
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((275 : GoInt))) {
                        _b = _appendInt(_b, _year, ((4 : GoInt)));
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((258 : GoInt))) {
                        _b = (_b != null ? _b.__append__(...((_month.toString() : GoString)).__slice__(0, ((3 : GoInt))).__toArray__()) : new Slice<GoUInt8>(...((_month.toString() : GoString)).__slice__(0, ((3 : GoInt))).__toArray__()));
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((257 : GoInt))) {
                        var _m:GoString = ((_month.toString() : GoString));
                        _b = (_b != null ? _b.__append__(..._m.__toArray__()) : new Slice<GoUInt8>(..._m.__toArray__()));
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((259 : GoInt))) {
                        _b = _appendInt(_b, ((_month : GoInt)), ((0 : GoInt)));
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((260 : GoInt))) {
                        _b = _appendInt(_b, ((_month : GoInt)), ((2 : GoInt)));
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((262 : GoInt))) {
                        _b = (_b != null ? _b.__append__(...((_absWeekday(_abs).toString() : GoString)).__slice__(0, ((3 : GoInt))).__toArray__()) : new Slice<GoUInt8>(...((_absWeekday(_abs).toString() : GoString)).__slice__(0, ((3 : GoInt))).__toArray__()));
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((261 : GoInt))) {
                        var _s:GoString = ((_absWeekday(_abs).toString() : GoString));
                        _b = (_b != null ? _b.__append__(..._s.__toArray__()) : new Slice<GoUInt8>(..._s.__toArray__()));
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((263 : GoInt))) {
                        _b = _appendInt(_b, _day, ((0 : GoInt)));
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((264 : GoInt))) {
                        if (_day < ((10 : GoInt))) {
                            _b = (_b != null ? _b.__append__((((((" " : GoString))).code : GoRune))) : new Slice<GoUInt8>((((((" " : GoString))).code : GoRune))));
                        };
                        _b = _appendInt(_b, _day, ((0 : GoInt)));
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((265 : GoInt))) {
                        _b = _appendInt(_b, _day, ((2 : GoInt)));
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((266 : GoInt))) {
                        if (_yday < ((100 : GoInt))) {
                            _b = (_b != null ? _b.__append__((((((" " : GoString))).code : GoRune))) : new Slice<GoUInt8>((((((" " : GoString))).code : GoRune))));
                            if (_yday < ((10 : GoInt))) {
                                _b = (_b != null ? _b.__append__((((((" " : GoString))).code : GoRune))) : new Slice<GoUInt8>((((((" " : GoString))).code : GoRune))));
                            };
                        };
                        _b = _appendInt(_b, _yday, ((0 : GoInt)));
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((267 : GoInt))) {
                        _b = _appendInt(_b, _yday, ((3 : GoInt)));
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((524 : GoInt))) {
                        _b = _appendInt(_b, _hour, ((2 : GoInt)));
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((525 : GoInt))) {
                        var _hr:GoInt = _hour % ((12 : GoInt));
                        if (_hr == ((0 : GoInt))) {
                            _hr = ((12 : GoInt));
                        };
                        _b = _appendInt(_b, _hr, ((0 : GoInt)));
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((526 : GoInt))) {
                        var _hr:GoInt = _hour % ((12 : GoInt));
                        if (_hr == ((0 : GoInt))) {
                            _hr = ((12 : GoInt));
                        };
                        _b = _appendInt(_b, _hr, ((2 : GoInt)));
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((527 : GoInt))) {
                        _b = _appendInt(_b, _min, ((0 : GoInt)));
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((528 : GoInt))) {
                        _b = _appendInt(_b, _min, ((2 : GoInt)));
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((529 : GoInt))) {
                        _b = _appendInt(_b, _sec, ((0 : GoInt)));
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((530 : GoInt))) {
                        _b = _appendInt(_b, _sec, ((2 : GoInt)));
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((533 : GoInt))) {
                        if (_hour >= ((12 : GoInt))) {
                            _b = (_b != null ? _b.__append__(...((("PM" : GoString))).__toArray__()) : new Slice<GoUInt8>(...((("PM" : GoString))).__toArray__()));
                        } else {
                            _b = (_b != null ? _b.__append__(...((("AM" : GoString))).__toArray__()) : new Slice<GoUInt8>(...((("AM" : GoString))).__toArray__()));
                        };
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((534 : GoInt))) {
                        if (_hour >= ((12 : GoInt))) {
                            _b = (_b != null ? _b.__append__(...((("pm" : GoString))).__toArray__()) : new Slice<GoUInt8>(...((("pm" : GoString))).__toArray__()));
                        } else {
                            _b = (_b != null ? _b.__append__(...((("am" : GoString))).__toArray__()) : new Slice<GoUInt8>(...((("am" : GoString))).__toArray__()));
                        };
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((24 : GoInt)) || _std & ((65535 : GoInt)) == ((27 : GoInt)) || _std & ((65535 : GoInt)) == ((25 : GoInt)) || _std & ((65535 : GoInt)) == ((26 : GoInt)) || _std & ((65535 : GoInt)) == ((28 : GoInt)) || _std & ((65535 : GoInt)) == ((29 : GoInt)) || _std & ((65535 : GoInt)) == ((32 : GoInt)) || _std & ((65535 : GoInt)) == ((30 : GoInt)) || _std & ((65535 : GoInt)) == ((31 : GoInt)) || _std & ((65535 : GoInt)) == ((33 : GoInt))) {
                        if ((_offset == ((0 : GoInt))) && (((((_std == ((24 : GoInt))) || (_std == ((27 : GoInt)))) || (_std == ((25 : GoInt)))) || (_std == ((26 : GoInt)))) || (_std == ((28 : GoInt))))) {
                            _b = (_b != null ? _b.__append__(((((("Z" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("Z" : GoString))).code : GoRune))));
                            break;
                        };
                        var _zone:GoInt = _offset / ((60 : GoInt));
                        var _absoffset:GoInt = _offset;
                        if (_zone < ((0 : GoInt))) {
                            _b = (_b != null ? _b.__append__(((((("-" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("-" : GoString))).code : GoRune))));
                            _zone = -_zone;
                            _absoffset = -_absoffset;
                        } else {
                            _b = (_b != null ? _b.__append__(((((("+" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("+" : GoString))).code : GoRune))));
                        };
                        _b = _appendInt(_b, _zone / ((60 : GoInt)), ((2 : GoInt)));
                        if ((((_std == ((27 : GoInt))) || (_std == ((32 : GoInt)))) || (_std == ((28 : GoInt)))) || (_std == ((33 : GoInt)))) {
                            _b = (_b != null ? _b.__append__((((((":" : GoString))).code : GoRune))) : new Slice<GoUInt8>((((((":" : GoString))).code : GoRune))));
                        };
                        if ((_std != ((31 : GoInt))) && (_std != ((26 : GoInt)))) {
                            _b = _appendInt(_b, _zone % ((60 : GoInt)), ((2 : GoInt)));
                        };
                        if ((((_std == ((25 : GoInt))) || (_std == ((30 : GoInt)))) || (_std == ((33 : GoInt)))) || (_std == ((28 : GoInt)))) {
                            if ((_std == ((33 : GoInt))) || (_std == ((28 : GoInt)))) {
                                _b = (_b != null ? _b.__append__((((((":" : GoString))).code : GoRune))) : new Slice<GoUInt8>((((((":" : GoString))).code : GoRune))));
                            };
                            _b = _appendInt(_b, _absoffset % ((60 : GoInt)), ((2 : GoInt)));
                        };
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((23 : GoInt))) {
                        if (_name != ("")) {
                            _b = (_b != null ? _b.__append__(..._name.__toArray__()) : new Slice<GoUInt8>(..._name.__toArray__()));
                            break;
                        };
                        var _zone:GoInt = _offset / ((60 : GoInt));
                        if (_zone < ((0 : GoInt))) {
                            _b = (_b != null ? _b.__append__(((((("-" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("-" : GoString))).code : GoRune))));
                            _zone = -_zone;
                        } else {
                            _b = (_b != null ? _b.__append__(((((("+" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("+" : GoString))).code : GoRune))));
                        };
                        _b = _appendInt(_b, _zone / ((60 : GoInt)), ((2 : GoInt)));
                        _b = _appendInt(_b, _zone % ((60 : GoInt)), ((2 : GoInt)));
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((34 : GoInt)) || _std & ((65535 : GoInt)) == ((35 : GoInt))) {
                        _b = _formatNano(_b, ((_t.nanosecond() : GoUInt)), _std);
                        break;
                    };
                    break;
                };
            };
        };
        return _b;
    }
    public function format(_layout:GoString):GoString {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        {};
        var _b:Slice<GoByte> = ((null : Slice<GoUInt8>));
        var _max:GoInt = (_layout != null ? _layout.length : ((0 : GoInt))) + ((10 : GoInt));
        if (_max < ((64 : GoInt))) {
            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 64) ((0 : GoUInt8))]);
            _b = _buf.__slice__(0, ((0 : GoInt)));
        } else {
            _b = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((_max : GoInt)).toBasic());
        };
        _b = _t.appendFormat(_b, _layout);
        return ((_b : GoString));
    }
    public function goString():GoString {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((70 : GoInt)) : GoInt)).toBasic());
        _buf = (_buf != null ? _buf.__append__(...((("time.Date(" : GoString))).__toArray__()) : new Slice<GoUInt8>(...((("time.Date(" : GoString))).__toArray__()));
        _buf = _appendInt(_buf, _t.year(), ((0 : GoInt)));
        var _month:Month = _t.month();
        if ((((1 : GoInt)) <= _month) && (_month <= ((12 : GoInt)))) {
            _buf = (_buf != null ? _buf.__append__(...(((", time." : GoString))).__toArray__()) : new Slice<GoUInt8>(...(((", time." : GoString))).__toArray__()));
            _buf = (_buf != null ? _buf.__append__(...((_t.month().toString() : GoString)).__toArray__()) : new Slice<GoUInt8>(...((_t.month().toString() : GoString)).__toArray__()));
        } else {
            _buf = _appendInt(_buf, ((_month : GoInt)), ((0 : GoInt)));
        };
        _buf = (_buf != null ? _buf.__append__(...(((", " : GoString))).__toArray__()) : new Slice<GoUInt8>(...(((", " : GoString))).__toArray__()));
        _buf = _appendInt(_buf, _t.day(), ((0 : GoInt)));
        _buf = (_buf != null ? _buf.__append__(...(((", " : GoString))).__toArray__()) : new Slice<GoUInt8>(...(((", " : GoString))).__toArray__()));
        _buf = _appendInt(_buf, _t.hour(), ((0 : GoInt)));
        _buf = (_buf != null ? _buf.__append__(...(((", " : GoString))).__toArray__()) : new Slice<GoUInt8>(...(((", " : GoString))).__toArray__()));
        _buf = _appendInt(_buf, _t.minute(), ((0 : GoInt)));
        _buf = (_buf != null ? _buf.__append__(...(((", " : GoString))).__toArray__()) : new Slice<GoUInt8>(...(((", " : GoString))).__toArray__()));
        _buf = _appendInt(_buf, _t.second(), ((0 : GoInt)));
        _buf = (_buf != null ? _buf.__append__(...(((", " : GoString))).__toArray__()) : new Slice<GoUInt8>(...(((", " : GoString))).__toArray__()));
        _buf = _appendInt(_buf, _t.nanosecond(), ((0 : GoInt)));
        _buf = (_buf != null ? _buf.__append__(...(((", " : GoString))).__toArray__()) : new Slice<GoUInt8>(...(((", " : GoString))).__toArray__()));
        {
            var _loc:Location = _t.location();
            if (Go.toInterface(_loc) == Go.toInterface(stdgo.time.Time.utc) || _loc == null) {
                _buf = (_buf != null ? _buf.__append__(...((("time.UTC" : GoString))).__toArray__()) : new Slice<GoUInt8>(...((("time.UTC" : GoString))).__toArray__()));
            } else if (Go.toInterface(_loc) == Go.toInterface(stdgo.time.Time.local)) {
                _buf = (_buf != null ? _buf.__append__(...((("time.Local" : GoString))).__toArray__()) : new Slice<GoUInt8>(...((("time.Local" : GoString))).__toArray__()));
            } else {
                _buf = (_buf != null ? _buf.__append__(...(("time.Location(" : GoString)).__toArray__()) : new Slice<GoUInt8>(...(("time.Location(" : GoString)).__toArray__()));
                _buf = (_buf != null ? _buf.__append__(...((_quote(_loc._name) : Slice<GoByte>)).__toArray__()) : new Slice<GoUInt8>(...((_quote(_loc._name) : Slice<GoByte>)).__toArray__()));
                _buf = (_buf != null ? _buf.__append__(...((")" : GoString)).__toArray__()) : new Slice<GoUInt8>(...((")" : GoString)).__toArray__()));
            };
        };
        _buf = (_buf != null ? _buf.__append__((((((")" : GoString))).code : GoRune))) : new Slice<GoUInt8>((((((")" : GoString))).code : GoRune))));
        return ((_buf : GoString));
    }
    public function toString():GoString {
        var _t = this;
        (_t == null ? null : _t.__copy__());
        var _s:GoString = _t.format(((("2006-01-02 15:04:05.999999999 -0700 MST" : GoString))));
        if ((_t._wall & (("9223372036854775808" : GoUInt64))) != ((0 : GoUInt64))) {
            var _m2:GoUInt64 = ((_t._ext : GoUInt64));
            var _sign:GoUInt8 = ((((((("+" : GoString))).code : GoRune)) : GoByte));
            if (_t._ext < ((0 : GoInt64))) {
                _sign = ((((("-" : GoString))).code : GoRune));
                _m2 = -_m2;
            };
            var _m1:GoUInt64 = _m2 / ((1e+09 : GoUInt64)), _m2:GoUInt64 = _m2 % ((1e+09 : GoUInt64));
            var _m0:GoUInt64 = _m1 / ((1e+09 : GoUInt64)), _m1:GoUInt64 = _m1 % ((1e+09 : GoUInt64));
            var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((24 : GoInt)) : GoInt)).toBasic());
            _buf = (_buf != null ? _buf.__append__(...(((" m=" : GoString))).__toArray__()) : new Slice<GoUInt8>(...(((" m=" : GoString))).__toArray__()));
            _buf = (_buf != null ? _buf.__append__(_sign) : new Slice<GoUInt8>(_sign));
            var _wid:GoInt = ((0 : GoInt));
            if (_m0 != ((0 : GoUInt64))) {
                _buf = _appendInt(_buf, ((_m0 : GoInt)), ((0 : GoInt)));
                _wid = ((9 : GoInt));
            };
            _buf = _appendInt(_buf, ((_m1 : GoInt)), _wid);
            _buf = (_buf != null ? _buf.__append__(((((("." : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("." : GoString))).code : GoRune))));
            _buf = _appendInt(_buf, ((_m2 : GoInt)), ((9 : GoInt)));
            _s = _s + (((_buf : GoString)));
        };
        return _s;
    }
    public var _wall : GoUInt64 = ((0 : GoUInt64));
    public var _ext : GoInt64 = ((0 : GoInt64));
    public var _loc : Location = ((null : Location));
    public function new(?_wall:GoUInt64, ?_ext:GoInt64, ?_loc:Location) {
        if (_wall != null) this._wall = _wall;
        if (_ext != null) this._ext = _ext;
        if (_loc != null) this._loc = _loc;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Time(_wall, _ext, _loc);
    }
}
@:named @:using(Time.Month_static_extension) typedef Month = GoInt;
@:named @:using(Time.Weekday_static_extension) typedef Weekday = GoInt;
@:named @:using(Time.Duration_static_extension) typedef Duration = GoInt64;
@:structInit @:using(Time.Location_static_extension) class Location {
    public function _lookupName(_name:GoString, _unix:GoInt64):{ var _0 : GoInt; var _1 : Bool; } {
        var _l = this;
        _l;
        var _offset:GoInt = ((0 : GoInt)), _ok:Bool = false;
        _l = _l._get();
        for (_i => _ in _l._zone) {
            var _zone:T_zone = (_l._zone != null ? _l._zone[_i] : new T_zone());
            if (_zone._name == _name) {
                var __tmp__ = _l._lookup(_unix - ((_zone._offset : GoInt64))), _nam:GoString = __tmp__._0, _offset:GoInt = __tmp__._1, _:GoInt64 = __tmp__._2, _:GoInt64 = __tmp__._3, _:Bool = __tmp__._4;
                if (_nam == _zone._name) {
                    return { _0 : _offset, _1 : true };
                };
            };
        };
        for (_i => _ in _l._zone) {
            var _zone:T_zone = (_l._zone != null ? _l._zone[_i] : new T_zone());
            if (_zone._name == _name) {
                return { _0 : _zone._offset, _1 : true };
            };
        };
        return { _0 : _offset, _1 : _ok };
    }
    public function _firstZoneUsed():Bool {
        var _l = this;
        _l;
        for (_ => _tx in _l._tx) {
            if (_tx._index == ((0 : GoUInt8))) {
                return true;
            };
        };
        return false;
    }
    public function _lookupFirstZone():GoInt {
        var _l = this;
        _l;
        if (!_l._firstZoneUsed()) {
            return ((0 : GoInt));
        };
        if (((_l._tx != null ? _l._tx.length : ((0 : GoInt))) > ((0 : GoInt))) && (_l._zone != null ? _l._zone[(_l._tx != null ? _l._tx[((0 : GoInt))] : new T_zoneTrans())._index] : new T_zone())._isDST) {
            {
                var _zi:GoInt = (((_l._tx != null ? _l._tx[((0 : GoInt))] : new T_zoneTrans())._index : GoInt)) - ((1 : GoInt));
                Go.cfor(_zi >= ((0 : GoInt)), _zi--, {
                    if (!(_l._zone != null ? _l._zone[_zi] : new T_zone())._isDST) {
                        return _zi;
                    };
                });
            };
        };
        for (_zi => _ in _l._zone) {
            if (!(_l._zone != null ? _l._zone[_zi] : new T_zone())._isDST) {
                return _zi;
            };
        };
        return ((0 : GoInt));
    }
    public function _lookup(_sec:GoInt64):{ var _0 : GoString; var _1 : GoInt; var _2 : GoInt64; var _3 : GoInt64; var _4 : Bool; } {
        var _l = this;
        _l;
        var _name:GoString = (("" : GoString)), _offset:GoInt = ((0 : GoInt)), _start:GoInt64 = ((0 : GoInt64)), _end:GoInt64 = ((0 : GoInt64)), _isDST:Bool = false;
        _l = _l._get();
        if ((_l._zone != null ? _l._zone.length : ((0 : GoInt))) == ((0 : GoInt))) {
            _name = ((("UTC" : GoString)));
            _offset = ((0 : GoInt));
            _start = (("-9223372036854775808" : GoInt64));
            _end = (("9223372036854775807" : GoInt64));
            _isDST = false;
            return { _0 : _name, _1 : _offset, _2 : _start, _3 : _end, _4 : _isDST };
        };
        {
            var _zone:T_zone = _l._cacheZone;
            if (((_zone != null) && (_l._cacheStart <= _sec)) && (_sec < _l._cacheEnd)) {
                _name = _zone._name;
                _offset = _zone._offset;
                _start = _l._cacheStart;
                _end = _l._cacheEnd;
                _isDST = _zone._isDST;
                return { _0 : _name, _1 : _offset, _2 : _start, _3 : _end, _4 : _isDST };
            };
        };
        if (((_l._tx != null ? _l._tx.length : ((0 : GoInt))) == ((0 : GoInt))) || (_sec < (_l._tx != null ? _l._tx[((0 : GoInt))] : new T_zoneTrans())._when)) {
            var _zone:T_zone = (_l._zone != null ? _l._zone[_l._lookupFirstZone()] : new T_zone());
            _name = _zone._name;
            _offset = _zone._offset;
            _start = (("-9223372036854775808" : GoInt64));
            if ((_l._tx != null ? _l._tx.length : ((0 : GoInt))) > ((0 : GoInt))) {
                _end = (_l._tx != null ? _l._tx[((0 : GoInt))] : new T_zoneTrans())._when;
            } else {
                _end = (("9223372036854775807" : GoInt64));
            };
            _isDST = _zone._isDST;
            return { _0 : _name, _1 : _offset, _2 : _start, _3 : _end, _4 : _isDST };
        };
        var _tx:Slice<T_zoneTrans> = _l._tx;
        _end = (("9223372036854775807" : GoInt64));
        var _lo:GoInt = ((0 : GoInt));
        var _hi:GoInt = (_tx != null ? _tx.length : ((0 : GoInt)));
        while ((_hi - _lo) > ((1 : GoInt))) {
            var _m:GoInt = _lo + ((_hi - _lo) / ((2 : GoInt)));
            var _lim:GoInt64 = (_tx != null ? _tx[_m] : new T_zoneTrans())._when;
            if (_sec < _lim) {
                _end = _lim;
                _hi = _m;
            } else {
                _lo = _m;
            };
        };
        var _zone:T_zone = (_l._zone != null ? _l._zone[(_tx != null ? _tx[_lo] : new T_zoneTrans())._index] : new T_zone());
        _name = _zone._name;
        _offset = _zone._offset;
        _start = (_tx != null ? _tx[_lo] : new T_zoneTrans())._when;
        _isDST = _zone._isDST;
        if ((_lo == ((_tx != null ? _tx.length : ((0 : GoInt))) - ((1 : GoInt)))) && (_l._extend != (""))) {
            {
                var __tmp__ = _tzset(_l._extend, _end, _sec), _ename:GoString = __tmp__._0, _eoffset:GoInt = __tmp__._1, _estart:GoInt64 = __tmp__._2, _eend:GoInt64 = __tmp__._3, _eisDST:Bool = __tmp__._4, _ok:Bool = __tmp__._5;
                if (_ok) {
                    return { _0 : _ename, _1 : _eoffset, _2 : _estart, _3 : _eend, _4 : _eisDST };
                };
            };
        };
        return { _0 : _name, _1 : _offset, _2 : _start, _3 : _end, _4 : _isDST };
    }
    public function toString():GoString {
        var _l = this;
        _l;
        return _l._get()._name;
    }
    public function _get():Location {
        var _l = this;
        _l;
        if (_l == null) {
            return _utcLoc;
        };
        if (_l == _localLoc) {
            _localOnce.do_(_initLocal);
        };
        return _l;
    }
    public var _name : GoString = (("" : GoString));
    public var _zone : Slice<T_zone> = ((null : Slice<T_zone>));
    public var _tx : Slice<T_zoneTrans> = ((null : Slice<T_zoneTrans>));
    public var _extend : GoString = (("" : GoString));
    public var _cacheStart : GoInt64 = ((0 : GoInt64));
    public var _cacheEnd : GoInt64 = ((0 : GoInt64));
    public var _cacheZone : T_zone = ((null : T_zone));
    public function new(?_name:GoString, ?_zone:Slice<T_zone>, ?_tx:Slice<T_zoneTrans>, ?_extend:GoString, ?_cacheStart:GoInt64, ?_cacheEnd:GoInt64, ?_cacheZone:T_zone) {
        if (_name != null) this._name = _name;
        if (_zone != null) this._zone = _zone;
        if (_tx != null) this._tx = _tx;
        if (_extend != null) this._extend = _extend;
        if (_cacheStart != null) this._cacheStart = _cacheStart;
        if (_cacheEnd != null) this._cacheEnd = _cacheEnd;
        if (_cacheZone != null) this._cacheZone = _cacheZone;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Location(_name, _zone, _tx, _extend, _cacheStart, _cacheEnd, _cacheZone);
    }
}
@:structInit class T_zone {
    public var _name : GoString = (("" : GoString));
    public var _offset : GoInt = ((0 : GoInt));
    public var _isDST : Bool = false;
    public function new(?_name:GoString, ?_offset:GoInt, ?_isDST:Bool) {
        if (_name != null) this._name = _name;
        if (_offset != null) this._offset = _offset;
        if (_isDST != null) this._isDST = _isDST;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_zone(_name, _offset, _isDST);
    }
}
@:structInit class T_zoneTrans {
    public var _when : GoInt64 = ((0 : GoInt64));
    public var _index : GoUInt8 = ((0 : GoUInt8));
    public var _isstd : Bool = false;
    public var _isutc : Bool = false;
    public function new(?_when:GoInt64, ?_index:GoUInt8, ?_isstd:Bool, ?_isutc:Bool) {
        if (_when != null) this._when = _when;
        if (_index != null) this._index = _index;
        if (_isstd != null) this._isstd = _isstd;
        if (_isutc != null) this._isutc = _isutc;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_zoneTrans(_when, _index, _isstd, _isutc);
    }
}
@:named typedef T_ruleKind = GoInt;
@:structInit class T_rule {
    public var _kind : T_ruleKind = new T_ruleKind();
    public var _day : GoInt = ((0 : GoInt));
    public var _week : GoInt = ((0 : GoInt));
    public var _mon : GoInt = ((0 : GoInt));
    public var _time : GoInt = ((0 : GoInt));
    public function new(?_kind:T_ruleKind, ?_day:GoInt, ?_week:GoInt, ?_mon:GoInt, ?_time:GoInt) {
        if (_kind != null) this._kind = _kind;
        if (_day != null) this._day = _day;
        if (_week != null) this._week = _week;
        if (_mon != null) this._mon = _mon;
        if (_time != null) this._time = _time;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_rule(_kind, _day, _week, _mon, _time);
    }
}
@:named @:using(Time.T_fileSizeError_static_extension) typedef T_fileSizeError = GoString;
@:structInit @:using(Time.T_dataIO_static_extension) class T_dataIO {
    public function _rest():Slice<GoByte> {
        var _d = this;
        _d;
        var _r:Slice<GoUInt8> = _d._p;
        _d._p = ((null : Slice<GoUInt8>));
        return _r;
    }
    public function _byte():{ var _0 : GoByte; var _1 : Bool; } {
        var _d = this;
        _d;
        var _n:GoByte = ((0 : GoUInt8)), _ok:Bool = false;
        var _p:Slice<GoUInt8> = _d._read(((1 : GoInt)));
        if ((_p != null ? _p.length : ((0 : GoInt))) < ((1 : GoInt))) {
            _d._error = true;
            return { _0 : ((0 : GoUInt8)), _1 : false };
        };
        return { _0 : (_p != null ? _p[((0 : GoInt))] : ((0 : GoUInt8))), _1 : true };
    }
    public function _big8():{ var _0 : GoUInt64; var _1 : Bool; } {
        var _d = this;
        _d;
        var _n:GoUInt64 = ((0 : GoUInt64)), _ok:Bool = false;
        var __tmp__ = _d._big4(), _n1:GoUInt32 = __tmp__._0, _ok1:Bool = __tmp__._1;
        var __tmp__ = _d._big4(), _n2:GoUInt32 = __tmp__._0, _ok2:Bool = __tmp__._1;
        if (!_ok1 || !_ok2) {
            _d._error = true;
            return { _0 : ((0 : GoUInt64)), _1 : false };
        };
        return { _0 : (((_n1 : GoUInt64)) << ((32 : GoUnTypedInt))) | ((_n2 : GoUInt64)), _1 : true };
    }
    public function _big4():{ var _0 : GoUInt32; var _1 : Bool; } {
        var _d = this;
        _d;
        var _n:GoUInt32 = ((0 : GoUInt32)), _ok:Bool = false;
        var _p:Slice<GoUInt8> = _d._read(((4 : GoInt)));
        if ((_p != null ? _p.length : ((0 : GoInt))) < ((4 : GoInt))) {
            _d._error = true;
            return { _0 : ((0 : GoUInt32)), _1 : false };
        };
        return { _0 : (((((_p != null ? _p[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) | ((((_p != null ? _p[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((8 : GoUnTypedInt)))) | ((((_p != null ? _p[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((16 : GoUnTypedInt)))) | ((((_p != null ? _p[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((24 : GoUnTypedInt))), _1 : true };
    }
    public function _read(_n:GoInt):Slice<GoByte> {
        var _d = this;
        _d;
        if ((_d._p != null ? _d._p.length : ((0 : GoInt))) < _n) {
            _d._p = ((null : Slice<GoUInt8>));
            _d._error = true;
            return ((null : Slice<GoUInt8>));
        };
        var _p:Slice<GoUInt8> = _d._p.__slice__(((0 : GoInt)), _n);
        _d._p = _d._p.__slice__(_n);
        return _p;
    }
    public var _p : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _error : Bool = false;
    public function new(?_p:Slice<GoUInt8>, ?_error:Bool) {
        if (_p != null) this._p = _p;
        if (_error != null) this._error = _error;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_dataIO(_p, _error);
    }
}
/**
    // startsWithLowerCase reports whether the string has a lower-case letter at the beginning.
    // Its purpose is to prevent matching strings like "Month" when looking for "Mon".
**/
function _startsWithLowerCase(_str:GoString):Bool {
        if ((_str != null ? _str.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return false;
        };
        var _c:GoUInt8 = (_str != null ? _str[((0 : GoInt))] : ((0 : GoUInt8)));
        return (((((("a" : GoString))).code : GoRune)) <= _c) && (_c <= ((((("z" : GoString))).code : GoRune)));
    }
/**
    // nextStdChunk finds the first occurrence of a std string in
    // layout and returns the text before, the std string, and the text after.
**/
function _nextStdChunk(_layout:GoString):{ var _0 : GoString; var _1 : GoInt; var _2 : GoString; } {
        var _prefix:GoString = (("" : GoString)), _std:GoInt = ((0 : GoInt)), _suffix:GoString = (("" : GoString));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_layout != null ? _layout.length : ((0 : GoInt))), _i++, {
                {
                    var _c:GoInt = (((_layout != null ? _layout[_i] : ((0 : GoUInt8))) : GoInt));
                    if (_c == ((((("J" : GoString))).code : GoRune))) {
                        if (((_layout != null ? _layout.length : ((0 : GoInt))) >= (_i + ((3 : GoInt)))) && (_layout.__slice__(_i, _i + ((3 : GoInt))) == ((("Jan" : GoString))))) {
                            if (((_layout != null ? _layout.length : ((0 : GoInt))) >= (_i + ((7 : GoInt)))) && (_layout.__slice__(_i, _i + ((7 : GoInt))) == ((("January" : GoString))))) {
                                return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : ((257 : GoInt)), _2 : _layout.__slice__(_i + ((7 : GoInt))) };
                            };
                            if (!_startsWithLowerCase(_layout.__slice__(_i + ((3 : GoInt))))) {
                                return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : ((258 : GoInt)), _2 : _layout.__slice__(_i + ((3 : GoInt))) };
                            };
                        };
                    } else if (_c == ((((("M" : GoString))).code : GoRune))) {
                        if ((_layout != null ? _layout.length : ((0 : GoInt))) >= (_i + ((3 : GoInt)))) {
                            if (_layout.__slice__(_i, _i + ((3 : GoInt))) == ((("Mon" : GoString)))) {
                                if (((_layout != null ? _layout.length : ((0 : GoInt))) >= (_i + ((6 : GoInt)))) && (_layout.__slice__(_i, _i + ((6 : GoInt))) == ((("Monday" : GoString))))) {
                                    return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : ((261 : GoInt)), _2 : _layout.__slice__(_i + ((6 : GoInt))) };
                                };
                                if (!_startsWithLowerCase(_layout.__slice__(_i + ((3 : GoInt))))) {
                                    return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : ((262 : GoInt)), _2 : _layout.__slice__(_i + ((3 : GoInt))) };
                                };
                            };
                            if (_layout.__slice__(_i, _i + ((3 : GoInt))) == ((("MST" : GoString)))) {
                                return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : ((23 : GoInt)), _2 : _layout.__slice__(_i + ((3 : GoInt))) };
                            };
                        };
                    } else if (_c == ((((("0" : GoString))).code : GoRune))) {
                        if ((((_layout != null ? _layout.length : ((0 : GoInt))) >= (_i + ((2 : GoInt)))) && (((((("1" : GoString))).code : GoRune)) <= (_layout != null ? _layout[_i + ((1 : GoInt))] : ((0 : GoUInt8))))) && ((_layout != null ? _layout[_i + ((1 : GoInt))] : ((0 : GoUInt8))) <= ((((("6" : GoString))).code : GoRune)))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : (_std0x != null ? _std0x[(_layout != null ? _layout[_i + ((1 : GoInt))] : ((0 : GoUInt8))) - ((((("1" : GoString))).code : GoRune))] : ((0 : GoInt))), _2 : _layout.__slice__(_i + ((2 : GoInt))) };
                        };
                        if ((((_layout != null ? _layout.length : ((0 : GoInt))) >= (_i + ((3 : GoInt)))) && ((_layout != null ? _layout[_i + ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("0" : GoString))).code : GoRune)))) && ((_layout != null ? _layout[_i + ((2 : GoInt))] : ((0 : GoUInt8))) == ((((("2" : GoString))).code : GoRune)))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : ((267 : GoInt)), _2 : _layout.__slice__(_i + ((3 : GoInt))) };
                        };
                    } else if (_c == ((((("1" : GoString))).code : GoRune))) {
                        if (((_layout != null ? _layout.length : ((0 : GoInt))) >= (_i + ((2 : GoInt)))) && ((_layout != null ? _layout[_i + ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("5" : GoString))).code : GoRune)))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : ((524 : GoInt)), _2 : _layout.__slice__(_i + ((2 : GoInt))) };
                        };
                        return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : ((259 : GoInt)), _2 : _layout.__slice__(_i + ((1 : GoInt))) };
                    } else if (_c == ((((("2" : GoString))).code : GoRune))) {
                        if (((_layout != null ? _layout.length : ((0 : GoInt))) >= (_i + ((4 : GoInt)))) && (_layout.__slice__(_i, _i + ((4 : GoInt))) == ((("2006" : GoString))))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : ((275 : GoInt)), _2 : _layout.__slice__(_i + ((4 : GoInt))) };
                        };
                        return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : ((263 : GoInt)), _2 : _layout.__slice__(_i + ((1 : GoInt))) };
                    } else if (_c == ((((("_" : GoString))).code : GoRune))) {
                        if (((_layout != null ? _layout.length : ((0 : GoInt))) >= (_i + ((2 : GoInt)))) && ((_layout != null ? _layout[_i + ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("2" : GoString))).code : GoRune)))) {
                            if (((_layout != null ? _layout.length : ((0 : GoInt))) >= (_i + ((5 : GoInt)))) && (_layout.__slice__(_i + ((1 : GoInt)), _i + ((5 : GoInt))) == ((("2006" : GoString))))) {
                                return { _0 : _layout.__slice__(((0 : GoInt)), _i + ((1 : GoInt))), _1 : ((275 : GoInt)), _2 : _layout.__slice__(_i + ((5 : GoInt))) };
                            };
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : ((264 : GoInt)), _2 : _layout.__slice__(_i + ((2 : GoInt))) };
                        };
                        if ((((_layout != null ? _layout.length : ((0 : GoInt))) >= (_i + ((3 : GoInt)))) && ((_layout != null ? _layout[_i + ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("_" : GoString))).code : GoRune)))) && ((_layout != null ? _layout[_i + ((2 : GoInt))] : ((0 : GoUInt8))) == ((((("2" : GoString))).code : GoRune)))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : ((266 : GoInt)), _2 : _layout.__slice__(_i + ((3 : GoInt))) };
                        };
                    } else if (_c == ((((("3" : GoString))).code : GoRune))) {
                        return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : ((525 : GoInt)), _2 : _layout.__slice__(_i + ((1 : GoInt))) };
                    } else if (_c == ((((("4" : GoString))).code : GoRune))) {
                        return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : ((527 : GoInt)), _2 : _layout.__slice__(_i + ((1 : GoInt))) };
                    } else if (_c == ((((("5" : GoString))).code : GoRune))) {
                        return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : ((529 : GoInt)), _2 : _layout.__slice__(_i + ((1 : GoInt))) };
                    } else if (_c == ((((("P" : GoString))).code : GoRune))) {
                        if (((_layout != null ? _layout.length : ((0 : GoInt))) >= (_i + ((2 : GoInt)))) && ((_layout != null ? _layout[_i + ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("M" : GoString))).code : GoRune)))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : ((533 : GoInt)), _2 : _layout.__slice__(_i + ((2 : GoInt))) };
                        };
                    } else if (_c == ((((("p" : GoString))).code : GoRune))) {
                        if (((_layout != null ? _layout.length : ((0 : GoInt))) >= (_i + ((2 : GoInt)))) && ((_layout != null ? _layout[_i + ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("m" : GoString))).code : GoRune)))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : ((534 : GoInt)), _2 : _layout.__slice__(_i + ((2 : GoInt))) };
                        };
                    } else if (_c == ((((("-" : GoString))).code : GoRune))) {
                        if (((_layout != null ? _layout.length : ((0 : GoInt))) >= (_i + ((7 : GoInt)))) && (_layout.__slice__(_i, _i + ((7 : GoInt))) == ((("-070000" : GoString))))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : ((30 : GoInt)), _2 : _layout.__slice__(_i + ((7 : GoInt))) };
                        };
                        if (((_layout != null ? _layout.length : ((0 : GoInt))) >= (_i + ((9 : GoInt)))) && (_layout.__slice__(_i, _i + ((9 : GoInt))) == ((("-07:00:00" : GoString))))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : ((33 : GoInt)), _2 : _layout.__slice__(_i + ((9 : GoInt))) };
                        };
                        if (((_layout != null ? _layout.length : ((0 : GoInt))) >= (_i + ((5 : GoInt)))) && (_layout.__slice__(_i, _i + ((5 : GoInt))) == ((("-0700" : GoString))))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : ((29 : GoInt)), _2 : _layout.__slice__(_i + ((5 : GoInt))) };
                        };
                        if (((_layout != null ? _layout.length : ((0 : GoInt))) >= (_i + ((6 : GoInt)))) && (_layout.__slice__(_i, _i + ((6 : GoInt))) == ((("-07:00" : GoString))))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : ((32 : GoInt)), _2 : _layout.__slice__(_i + ((6 : GoInt))) };
                        };
                        if (((_layout != null ? _layout.length : ((0 : GoInt))) >= (_i + ((3 : GoInt)))) && (_layout.__slice__(_i, _i + ((3 : GoInt))) == ((("-07" : GoString))))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : ((31 : GoInt)), _2 : _layout.__slice__(_i + ((3 : GoInt))) };
                        };
                    } else if (_c == ((((("Z" : GoString))).code : GoRune))) {
                        if (((_layout != null ? _layout.length : ((0 : GoInt))) >= (_i + ((7 : GoInt)))) && (_layout.__slice__(_i, _i + ((7 : GoInt))) == ((("Z070000" : GoString))))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : ((25 : GoInt)), _2 : _layout.__slice__(_i + ((7 : GoInt))) };
                        };
                        if (((_layout != null ? _layout.length : ((0 : GoInt))) >= (_i + ((9 : GoInt)))) && (_layout.__slice__(_i, _i + ((9 : GoInt))) == ((("Z07:00:00" : GoString))))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : ((28 : GoInt)), _2 : _layout.__slice__(_i + ((9 : GoInt))) };
                        };
                        if (((_layout != null ? _layout.length : ((0 : GoInt))) >= (_i + ((5 : GoInt)))) && (_layout.__slice__(_i, _i + ((5 : GoInt))) == ((("Z0700" : GoString))))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : ((24 : GoInt)), _2 : _layout.__slice__(_i + ((5 : GoInt))) };
                        };
                        if (((_layout != null ? _layout.length : ((0 : GoInt))) >= (_i + ((6 : GoInt)))) && (_layout.__slice__(_i, _i + ((6 : GoInt))) == ((("Z07:00" : GoString))))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : ((27 : GoInt)), _2 : _layout.__slice__(_i + ((6 : GoInt))) };
                        };
                        if (((_layout != null ? _layout.length : ((0 : GoInt))) >= (_i + ((3 : GoInt)))) && (_layout.__slice__(_i, _i + ((3 : GoInt))) == ((("Z07" : GoString))))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : ((26 : GoInt)), _2 : _layout.__slice__(_i + ((3 : GoInt))) };
                        };
                    } else if (_c == ((((("." : GoString))).code : GoRune)) || _c == ((((("," : GoString))).code : GoRune))) {
                        var y = _i + (1 : GoInt);
                        if (((_i + ((1 : GoInt))) < (_layout != null ? _layout.length : ((0 : GoInt)))) && (((_layout != null ? _layout[_i + ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("0" : GoString))).code : GoRune))) || ((_layout != null ? _layout[_i + ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("9" : GoString))).code : GoRune))))) {
                            var _ch:GoUInt8 = (_layout != null ? _layout[_i + ((1 : GoInt))] : ((0 : GoUInt8)));
                            var _j:GoInt = _i + ((1 : GoInt));
                            while ((_j < (_layout != null ? _layout.length : ((0 : GoInt)))) && ((_layout != null ? _layout[_j] : ((0 : GoUInt8))) == _ch)) {
                                _j++;
                            };
                            if (!_isDigit(_layout, _j)) {
                                var _code:GoInt = ((34 : GoInt));
                                if ((_layout != null ? _layout[_i + ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("9" : GoString))).code : GoRune))) {
                                    _code = ((35 : GoInt));
                                };
                                var _std:GoInt = _stdFracSecond(_code, _j - (_i + ((1 : GoInt))), _c);
                                return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _std, _2 : _layout.__slice__(_j) };
                            };
                        };
                    };
                };
            });
        };
        return { _0 : _layout, _1 : ((0 : GoInt)), _2 : ("") };
    }
/**
    // match reports whether s1 and s2 match ignoring case.
    // It is assumed s1 and s2 are the same length.
**/
function _match(_s1:GoString, _s2:GoString):Bool {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_s1 != null ? _s1.length : ((0 : GoInt))), _i++, {
                var _c1:GoUInt8 = (_s1 != null ? _s1[_i] : ((0 : GoUInt8)));
                var _c2:GoUInt8 = (_s2 != null ? _s2[_i] : ((0 : GoUInt8)));
                if (_c1 != _c2) {
                    _c1 = _c1 | (((32 : GoUInt8)));
                    _c2 = _c2 | (((32 : GoUInt8)));
                    if (((_c1 != _c2) || (_c1 < ((((("a" : GoString))).code : GoRune)))) || (_c1 > ((((("z" : GoString))).code : GoRune)))) {
                        return false;
                    };
                };
            });
        };
        return true;
    }
function _lookup(_tab:Slice<GoString>, _val:GoString):{ var _0 : GoInt; var _1 : GoString; var _2 : Error; } {
        for (_i => _v in _tab) {
            if (((_val != null ? _val.length : ((0 : GoInt))) >= (_v != null ? _v.length : ((0 : GoInt)))) && _match(_val.__slice__(((0 : GoInt)), (_v != null ? _v.length : ((0 : GoInt)))), _v)) {
                return { _0 : _i, _1 : _val.__slice__((_v != null ? _v.length : ((0 : GoInt)))), _2 : ((null : stdgo.Error)) };
            };
        };
        return { _0 : ((-1 : GoInt)), _1 : _val, _2 : _errBad };
    }
/**
    // appendInt appends the decimal form of x to b and returns the result.
    // If the decimal form (excluding sign) is shorter than width, the result is padded with leading 0's.
    // Duplicates functionality in strconv, but avoids dependency.
**/
function _appendInt(_b:Slice<GoByte>, _x:GoInt, _width:GoInt):Slice<GoByte> {
        var _u:GoUInt = ((_x : GoUInt));
        if (_x < ((0 : GoInt))) {
            _b = (_b != null ? _b.__append__(((((("-" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("-" : GoString))).code : GoRune))));
            _u = ((-_x : GoUInt));
        };
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 20) ((0 : GoUInt8))]);
        var _i:GoInt = (_buf != null ? _buf.length : ((0 : GoInt)));
        while (_u >= ((10 : GoUInt))) {
            _i--;
            var _q:GoUInt = _u / ((10 : GoUInt));
            if (_buf != null) _buf[_i] = ((((((((("0" : GoString))).code : GoRune)) + _u) - (_q * ((10 : GoUInt)))) : GoByte));
            _u = _q;
        };
        _i--;
        if (_buf != null) _buf[_i] = (((((((("0" : GoString))).code : GoRune)) + _u) : GoByte));
        {
            var _w:GoInt = (_buf != null ? _buf.length : ((0 : GoInt))) - _i;
            Go.cfor(_w < _width, _w++, {
                _b = (_b != null ? _b.__append__(((((("0" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("0" : GoString))).code : GoRune))));
            });
        };
        return (_b != null ? _b.__append__(..._buf.__slice__(_i).__toArray__()) : new Slice<GoUInt8>(..._buf.__slice__(_i).__toArray__()));
    }
/**
    // Duplicates functionality in strconv, but avoids dependency.
**/
function _atoi(_s:GoString):{ var _0 : GoInt; var _1 : Error; } {
        var _x:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _neg:Bool = false;
        if ((_s != ("")) && (((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("-" : GoString))).code : GoRune))) || ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("+" : GoString))).code : GoRune))))) {
            _neg = (_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("-" : GoString))).code : GoRune));
            _s = _s.__slice__(((1 : GoInt)));
        };
        var __tmp__ = _leadingInt(_s), _q:GoUInt64 = __tmp__._0, _rem:GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        _x = ((_q : GoInt));
        if ((_err != null) || (_rem != (""))) {
            return { _0 : ((0 : GoInt)), _1 : _atoiError };
        };
        if (_neg) {
            _x = -_x;
        };
        return { _0 : _x, _1 : ((null : stdgo.Error)) };
    }
/**
    // The "std" value passed to formatNano contains two packed fields: the number of
    // digits after the decimal and the separator character (period or comma).
    // These functions pack and unpack that variable.
**/
function _stdFracSecond(_code:GoInt, _n:GoInt, _c:GoInt):GoInt {
        if (_c == ((((("." : GoString))).code : GoRune))) {
            return _code | ((_n & ((4095 : GoInt))) << ((16 : GoUnTypedInt)));
        };
        return (_code | ((_n & ((4095 : GoInt))) << ((16 : GoUnTypedInt)))) | ((268435456 : GoInt));
    }
function _digitsLen(_std:GoInt):GoInt {
        return (_std >> ((16 : GoUnTypedInt))) & ((4095 : GoInt));
    }
function _separator(_std:GoInt):GoByte {
        if ((_std >> ((28 : GoUnTypedInt))) == ((0 : GoInt))) {
            return ((((("." : GoString))).code : GoRune));
        };
        return ((((("," : GoString))).code : GoRune));
    }
/**
    // formatNano appends a fractional second, as nanoseconds, to b
    // and returns the result.
**/
function _formatNano(_b:Slice<GoByte>, _nanosec:GoUInt, _std:GoInt):Slice<GoByte> {
        var _n:GoInt = _digitsLen(_std), _separator:GoUInt8 = _separator(_std), _trim:Bool = (_std & ((65535 : GoInt))) == ((35 : GoInt));
        var _u:GoUInt = _nanosec;
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 9) ((0 : GoUInt8))]);
        {
            var _start:GoInt = (_buf != null ? _buf.length : ((0 : GoInt)));
            while (_start > ((0 : GoInt))) {
                _start--;
                if (_buf != null) _buf[_start] = ((((_u % ((10 : GoUInt))) + ((((("0" : GoString))).code : GoRune))) : GoByte));
                _u = _u / (((10 : GoUInt)));
            };
        };
        if (_n > ((9 : GoInt))) {
            _n = ((9 : GoInt));
        };
        if (_trim) {
            while ((_n > ((0 : GoInt))) && ((_buf != null ? _buf[_n - ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("0" : GoString))).code : GoRune)))) {
                _n--;
            };
            if (_n == ((0 : GoInt))) {
                return _b;
            };
        };
        _b = (_b != null ? _b.__append__(_separator) : new Slice<GoUInt8>(_separator));
        return (_b != null ? _b.__append__(..._buf.__slice__(0, _n).__toArray__()) : new Slice<GoUInt8>(..._buf.__slice__(0, _n).__toArray__()));
    }
function _quote(_s:GoString):GoString {
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__((((_s != null ? _s.length : ((0 : GoInt))) + ((2 : GoInt)) : GoInt)).toBasic());
        if (_buf != null) _buf[((0 : GoInt))] = ((((("\"" : GoString))).code : GoRune));
        for (_i => _c in _s) {
            if ((_c >= ((128 : GoInt32))) || (_c < (((((" " : GoString))).code : GoRune)))) {
                var _width:GoInt = ((0 : GoInt));
                if (_c == ((65533 : GoInt32))) {
                    _width = ((1 : GoInt));
                    if (((_i + ((2 : GoInt))) < (_s != null ? _s.length : ((0 : GoInt)))) && (_s.__slice__(_i, _i + ((3 : GoInt))) == ((((65533 : GoInt32)) : GoString)))) {
                        _width = ((3 : GoInt));
                    };
                } else {
                    _width = (((_c : GoString)) != null ? ((_c : GoString)).length : ((0 : GoInt)));
                };
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < _width, _j++, {
                        _buf = (_buf != null ? _buf.__append__(...(("\\x" : GoString)).__toArray__()) : new Slice<GoUInt8>(...(("\\x" : GoString)).__toArray__()));
                        _buf = (_buf != null ? _buf.__append__((((("0123456789abcdef" : GoString))) != null ? ((("0123456789abcdef" : GoString)))[(_s != null ? _s[_i + _j] : ((0 : GoUInt8))) >> ((4 : GoUnTypedInt))] : ((0 : GoUInt8)))) : new Slice<GoUInt8>((((("0123456789abcdef" : GoString))) != null ? ((("0123456789abcdef" : GoString)))[(_s != null ? _s[_i + _j] : ((0 : GoUInt8))) >> ((4 : GoUnTypedInt))] : ((0 : GoUInt8)))));
                        _buf = (_buf != null ? _buf.__append__((((("0123456789abcdef" : GoString))) != null ? ((("0123456789abcdef" : GoString)))[(_s != null ? _s[_i + _j] : ((0 : GoUInt8))) & ((15 : GoUInt8))] : ((0 : GoUInt8)))) : new Slice<GoUInt8>((((("0123456789abcdef" : GoString))) != null ? ((("0123456789abcdef" : GoString)))[(_s != null ? _s[_i + _j] : ((0 : GoUInt8))) & ((15 : GoUInt8))] : ((0 : GoUInt8)))));
                    });
                };
            } else {
                if ((_c == ((((("\"" : GoString))).code : GoRune))) || (_c == ((((("\\" : GoString))).code : GoRune)))) {
                    _buf = (_buf != null ? _buf.__append__(((((("\\" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("\\" : GoString))).code : GoRune))));
                };
                _buf = (_buf != null ? _buf.__append__(...((_c : GoString)).__toArray__()) : new Slice<GoUInt8>(...((_c : GoString)).__toArray__()));
            };
        };
        _buf = (_buf != null ? _buf.__append__(((((("\"" : GoString))).code : GoRune))) : new Slice<GoUInt8>(((((("\"" : GoString))).code : GoRune))));
        return ((_buf : GoString));
    }
/**
    // isDigit reports whether s[i] is in range and is a decimal digit.
**/
function _isDigit(_s:GoString, _i:GoInt):Bool {
        if ((_s != null ? _s.length : ((0 : GoInt))) <= _i) {
            return false;
        };
        var _c:GoUInt8 = (_s != null ? _s[_i] : ((0 : GoUInt8)));
        return (((((("0" : GoString))).code : GoRune)) <= _c) && (_c <= ((((("9" : GoString))).code : GoRune)));
    }
/**
    // getnum parses s[0:1] or s[0:2] (fixed forces s[0:2])
    // as a decimal integer and returns the integer and the
    // remainder of the string.
**/
function _getnum(_s:GoString, _fixed:Bool):{ var _0 : GoInt; var _1 : GoString; var _2 : Error; } {
        if (!_isDigit(_s, ((0 : GoInt)))) {
            return { _0 : ((0 : GoInt)), _1 : _s, _2 : _errBad };
        };
        if (!_isDigit(_s, ((1 : GoInt)))) {
            if (_fixed) {
                return { _0 : ((0 : GoInt)), _1 : _s, _2 : _errBad };
            };
            return { _0 : ((((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) - ((((("0" : GoString))).code : GoRune))) : GoInt)), _1 : _s.__slice__(((1 : GoInt))), _2 : ((null : stdgo.Error)) };
        };
        return { _0 : (((((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) - ((((("0" : GoString))).code : GoRune))) : GoInt)) * ((10 : GoInt))) + ((((_s != null ? _s[((1 : GoInt))] : ((0 : GoUInt8))) - ((((("0" : GoString))).code : GoRune))) : GoInt)), _1 : _s.__slice__(((2 : GoInt))), _2 : ((null : stdgo.Error)) };
    }
/**
    // getnum3 parses s[0:1], s[0:2], or s[0:3] (fixed forces s[0:3])
    // as a decimal integer and returns the integer and the remainder
    // of the string.
**/
function _getnum3(_s:GoString, _fixed:Bool):{ var _0 : GoInt; var _1 : GoString; var _2 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _i:GoInt = ((0 : GoInt));
        {
            _i = ((0 : GoInt));
            Go.cfor((_i < ((3 : GoInt))) && _isDigit(_s, _i), _i++, {
                _n = (_n * ((10 : GoInt))) + ((((_s != null ? _s[_i] : ((0 : GoUInt8))) - ((((("0" : GoString))).code : GoRune))) : GoInt));
            });
        };
        if ((_i == ((0 : GoInt))) || (_fixed && (_i != ((3 : GoInt))))) {
            return { _0 : ((0 : GoInt)), _1 : _s, _2 : _errBad };
        };
        return { _0 : _n, _1 : _s.__slice__(_i), _2 : ((null : stdgo.Error)) };
    }
function _cutspace(_s:GoString):GoString {
        while (((_s != null ? _s.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) == (((((" " : GoString))).code : GoRune)))) {
            _s = _s.__slice__(((1 : GoInt)));
        };
        return _s;
    }
/**
    // skip removes the given prefix from value,
    // treating runs of space characters as equivalent.
**/
function _skip(_value:GoString, _prefix:GoString):{ var _0 : GoString; var _1 : Error; } {
        while ((_prefix != null ? _prefix.length : ((0 : GoInt))) > ((0 : GoInt))) {
            if ((_prefix != null ? _prefix[((0 : GoInt))] : ((0 : GoUInt8))) == (((((" " : GoString))).code : GoRune))) {
                if (((_value != null ? _value.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_value != null ? _value[((0 : GoInt))] : ((0 : GoUInt8))) != (((((" " : GoString))).code : GoRune)))) {
                    return { _0 : _value, _1 : _errBad };
                };
                _prefix = _cutspace(_prefix);
                _value = _cutspace(_value);
                continue;
            };
            if (((_value != null ? _value.length : ((0 : GoInt))) == ((0 : GoInt))) || ((_value != null ? _value[((0 : GoInt))] : ((0 : GoUInt8))) != (_prefix != null ? _prefix[((0 : GoInt))] : ((0 : GoUInt8))))) {
                return { _0 : _value, _1 : _errBad };
            };
            _prefix = _prefix.__slice__(((1 : GoInt)));
            _value = _value.__slice__(((1 : GoInt)));
        };
        return { _0 : _value, _1 : ((null : stdgo.Error)) };
    }
/**
    // Parse parses a formatted string and returns the time value it represents.
    // See the documentation for the constant called Layout to see how to
    // represent the format. The second argument must be parseable using
    // the format string (layout) provided as the first argument.
    //
    // The example for Time.Format demonstrates the working of the layout string
    // in detail and is a good reference.
    //
    // When parsing (only), the input may contain a fractional second
    // field immediately after the seconds field, even if the layout does not
    // signify its presence. In that case either a comma or a decimal point
    // followed by a maximal series of digits is parsed as a fractional second.
    // Fractional seconds are truncated to nanosecond precision.
    //
    // Elements omitted from the layout are assumed to be zero or, when
    // zero is impossible, one, so parsing "3:04pm" returns the time
    // corresponding to Jan 1, year 0, 15:04:00 UTC (note that because the year is
    // 0, this time is before the zero Time).
    // Years must be in the range 0000..9999. The day of the week is checked
    // for syntax but it is otherwise ignored.
    //
    // For layouts specifying the two-digit year 06, a value NN >= 69 will be treated
    // as 19NN and a value NN < 69 will be treated as 20NN.
    //
    // The remainder of this comment describes the handling of time zones.
    //
    // In the absence of a time zone indicator, Parse returns a time in UTC.
    //
    // When parsing a time with a zone offset like -0700, if the offset corresponds
    // to a time zone used by the current location (Local), then Parse uses that
    // location and zone in the returned time. Otherwise it records the time as
    // being in a fabricated location with time fixed at the given zone offset.
    //
    // When parsing a time with a zone abbreviation like MST, if the zone abbreviation
    // has a defined offset in the current location, then that offset is used.
    // The zone abbreviation "UTC" is recognized as UTC regardless of location.
    // If the zone abbreviation is unknown, Parse records the time as being
    // in a fabricated location with the given zone abbreviation and a zero offset.
    // This choice means that such a time can be parsed and reformatted with the
    // same layout losslessly, but the exact instant used in the representation will
    // differ by the actual zone offset. To avoid such problems, prefer time layouts
    // that use a numeric zone offset, or use ParseInLocation.
**/
function parse(_layout:GoString, _value:GoString):{ var _0 : Time; var _1 : Error; } {
        return _parse(_layout, _value, utc, local);
    }
/**
    // ParseInLocation is like Parse but differs in two important ways.
    // First, in the absence of time zone information, Parse interprets a time as UTC;
    // ParseInLocation interprets the time as in the given location.
    // Second, when given a zone offset or abbreviation, Parse tries to match it
    // against the Local location; ParseInLocation uses the given location.
**/
function parseInLocation(_layout:GoString, _value:GoString, _loc:Location):{ var _0 : Time; var _1 : Error; } {
        return _parse(_layout, _value, _loc, _loc);
    }
function _parse(_layout:GoString, _value:GoString, _defaultLocation:Location, _local:Location):{ var _0 : Time; var _1 : Error; } {
        var _alayout:GoString = _layout, _avalue:GoString = _value;
        var _rangeErrString:GoString = ("");
        var _amSet:Bool = false;
        var _pmSet:Bool = false;
        var _year:GoInt = ((0 : GoInt)), _month:GoInt = ((-1 : GoInt)), _day:GoInt = ((-1 : GoInt)), _yday:GoInt = ((-1 : GoInt)), _hour:GoInt = ((0 : GoInt)), _min:GoInt = ((0 : GoInt)), _sec:GoInt = ((0 : GoInt)), _nsec:GoInt = ((0 : GoInt)), _z:Location = ((null : Location)), _zoneOffset:GoInt = ((-1 : GoInt)), _zoneName:GoString = (("" : GoString));
        while (true) {
            var _err:Error = ((null : stdgo.Error));
            var __tmp__ = _nextStdChunk(_layout), _prefix:GoString = __tmp__._0, _std:GoInt = __tmp__._1, _suffix:GoString = __tmp__._2;
            var _stdstr:GoString = _layout.__slice__((_prefix != null ? _prefix.length : ((0 : GoInt))), (_layout != null ? _layout.length : ((0 : GoInt))) - (_suffix != null ? _suffix.length : ((0 : GoInt))));
            {
                var __tmp__ = _skip(_value, _prefix);
                _value = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : ((new Time() : Time)), _1 : ((new ParseError(_alayout, _avalue, _prefix, _value, ("")) : ParseError)) };
            };
            if (_std == ((0 : GoInt))) {
                if ((_value != null ? _value.length : ((0 : GoInt))) != ((0 : GoInt))) {
                    return { _0 : ((new Time() : Time)), _1 : ((new ParseError(_alayout, _avalue, (""), _value, (((": extra text: " : GoString))) + _quote(_value)) : ParseError)) };
                };
                break;
            };
            _layout = _suffix;
            var _p:GoString = (("" : GoString));
            {
                var __switchIndex__ = -1;
                while (true) {
                    if (_std & ((65535 : GoInt)) == ((276 : GoInt))) {
                        if ((_value != null ? _value.length : ((0 : GoInt))) < ((2 : GoInt))) {
                            _err = _errBad;
                            break;
                        };
                        var _hold:GoString = _value;
                        {
                            final __tmp__0 = _value.__slice__(((0 : GoInt)), ((2 : GoInt)));
                            final __tmp__1 = _value.__slice__(((2 : GoInt)));
                            _p = __tmp__0;
                            _value = __tmp__1;
                        };
                        {
                            var __tmp__ = _atoi(_p);
                            _year = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            _value = _hold;
                        } else if (_year >= ((69 : GoInt))) {
                            _year = _year + (((1900 : GoInt)));
                        } else {
                            _year = _year + (((2000 : GoInt)));
                        };
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((275 : GoInt))) {
                        if (((_value != null ? _value.length : ((0 : GoInt))) < ((4 : GoInt))) || !_isDigit(_value, ((0 : GoInt)))) {
                            _err = _errBad;
                            break;
                        };
                        {
                            final __tmp__0 = _value.__slice__(((0 : GoInt)), ((4 : GoInt)));
                            final __tmp__1 = _value.__slice__(((4 : GoInt)));
                            _p = __tmp__0;
                            _value = __tmp__1;
                        };
                        {
                            var __tmp__ = _atoi(_p);
                            _year = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((258 : GoInt))) {
                        {
                            var __tmp__ = _lookup(_shortMonthNames, _value);
                            _month = __tmp__._0;
                            _value = __tmp__._1;
                            _err = __tmp__._2;
                        };
                        _month++;
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((257 : GoInt))) {
                        {
                            var __tmp__ = _lookup(_longMonthNames, _value);
                            _month = __tmp__._0;
                            _value = __tmp__._1;
                            _err = __tmp__._2;
                        };
                        _month++;
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((259 : GoInt)) || _std & ((65535 : GoInt)) == ((260 : GoInt))) {
                        {
                            var __tmp__ = _getnum(_value, _std == ((260 : GoInt)));
                            _month = __tmp__._0;
                            _value = __tmp__._1;
                            _err = __tmp__._2;
                        };
                        if ((_err == null) && ((_month <= ((0 : GoInt))) || (((12 : GoInt)) < _month))) {
                            _rangeErrString = ((("month" : GoString)));
                        };
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((262 : GoInt))) {
                        {
                            var __tmp__ = _lookup(_shortDayNames, _value);
                            _value = __tmp__._1;
                            _err = __tmp__._2;
                        };
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((261 : GoInt))) {
                        {
                            var __tmp__ = _lookup(_longDayNames, _value);
                            _value = __tmp__._1;
                            _err = __tmp__._2;
                        };
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((263 : GoInt)) || _std & ((65535 : GoInt)) == ((264 : GoInt)) || _std & ((65535 : GoInt)) == ((265 : GoInt))) {
                        if (((_std == ((264 : GoInt))) && ((_value != null ? _value.length : ((0 : GoInt))) > ((0 : GoInt)))) && ((_value != null ? _value[((0 : GoInt))] : ((0 : GoUInt8))) == (((((" " : GoString))).code : GoRune)))) {
                            _value = _value.__slice__(((1 : GoInt)));
                        };
                        {
                            var __tmp__ = _getnum(_value, _std == ((265 : GoInt)));
                            _day = __tmp__._0;
                            _value = __tmp__._1;
                            _err = __tmp__._2;
                        };
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((266 : GoInt)) || _std & ((65535 : GoInt)) == ((267 : GoInt))) {
                        {
                            var _i:GoInt = ((0 : GoInt));
                            Go.cfor(_i < ((2 : GoInt)), _i++, {
                                if (((_std == ((266 : GoInt))) && ((_value != null ? _value.length : ((0 : GoInt))) > ((0 : GoInt)))) && ((_value != null ? _value[((0 : GoInt))] : ((0 : GoUInt8))) == (((((" " : GoString))).code : GoRune)))) {
                                    _value = _value.__slice__(((1 : GoInt)));
                                };
                            });
                        };
                        {
                            var __tmp__ = _getnum3(_value, _std == ((267 : GoInt)));
                            _yday = __tmp__._0;
                            _value = __tmp__._1;
                            _err = __tmp__._2;
                        };
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((524 : GoInt))) {
                        {
                            var __tmp__ = _getnum(_value, false);
                            _hour = __tmp__._0;
                            _value = __tmp__._1;
                            _err = __tmp__._2;
                        };
                        if ((_hour < ((0 : GoInt))) || (((24 : GoInt)) <= _hour)) {
                            _rangeErrString = ((("hour" : GoString)));
                        };
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((525 : GoInt)) || _std & ((65535 : GoInt)) == ((526 : GoInt))) {
                        {
                            var __tmp__ = _getnum(_value, _std == ((526 : GoInt)));
                            _hour = __tmp__._0;
                            _value = __tmp__._1;
                            _err = __tmp__._2;
                        };
                        if ((_hour < ((0 : GoInt))) || (((12 : GoInt)) < _hour)) {
                            _rangeErrString = ((("hour" : GoString)));
                        };
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((527 : GoInt)) || _std & ((65535 : GoInt)) == ((528 : GoInt))) {
                        {
                            var __tmp__ = _getnum(_value, _std == ((528 : GoInt)));
                            _min = __tmp__._0;
                            _value = __tmp__._1;
                            _err = __tmp__._2;
                        };
                        if ((_min < ((0 : GoInt))) || (((60 : GoInt)) <= _min)) {
                            _rangeErrString = ((("minute" : GoString)));
                        };
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((529 : GoInt)) || _std & ((65535 : GoInt)) == ((530 : GoInt))) {
                        {
                            var __tmp__ = _getnum(_value, _std == ((530 : GoInt)));
                            _sec = __tmp__._0;
                            _value = __tmp__._1;
                            _err = __tmp__._2;
                        };
                        if ((_sec < ((0 : GoInt))) || (((60 : GoInt)) <= _sec)) {
                            _rangeErrString = ((("second" : GoString)));
                            break;
                        };
                        if ((((_value != null ? _value.length : ((0 : GoInt))) >= ((2 : GoInt))) && _commaOrPeriod((_value != null ? _value[((0 : GoInt))] : ((0 : GoUInt8))))) && _isDigit(_value, ((1 : GoInt)))) {
                            {
                                var __tmp__ = _nextStdChunk(_layout);
                                _std = __tmp__._1;
                            };
                            _std = _std & (((65535 : GoInt)));
                            if ((_std == ((34 : GoInt))) || (_std == ((35 : GoInt)))) {
                                break;
                            };
                            var _n:GoInt = ((2 : GoInt));
                            Go.cfor((_n < (_value != null ? _value.length : ((0 : GoInt)))) && _isDigit(_value, _n), _n++, {});
                            {
                                var __tmp__ = _parseNanoseconds(_value, _n);
                                _nsec = __tmp__._0;
                                _rangeErrString = __tmp__._1;
                                _err = __tmp__._2;
                            };
                            _value = _value.__slice__(_n);
                        };
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((533 : GoInt))) {
                        if ((_value != null ? _value.length : ((0 : GoInt))) < ((2 : GoInt))) {
                            _err = _errBad;
                            break;
                        };
                        {
                            final __tmp__0 = _value.__slice__(((0 : GoInt)), ((2 : GoInt)));
                            final __tmp__1 = _value.__slice__(((2 : GoInt)));
                            _p = __tmp__0;
                            _value = __tmp__1;
                        };
                        if (_p == ((("PM" : GoString)))) {
                            _pmSet = true;
                        } else if (_p == ((("AM" : GoString)))) {
                            _amSet = true;
                        } else {
                            _err = _errBad;
                        };
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((534 : GoInt))) {
                        if ((_value != null ? _value.length : ((0 : GoInt))) < ((2 : GoInt))) {
                            _err = _errBad;
                            break;
                        };
                        {
                            final __tmp__0 = _value.__slice__(((0 : GoInt)), ((2 : GoInt)));
                            final __tmp__1 = _value.__slice__(((2 : GoInt)));
                            _p = __tmp__0;
                            _value = __tmp__1;
                        };
                        if (_p == ((("pm" : GoString)))) {
                            _pmSet = true;
                        } else if (_p == ((("am" : GoString)))) {
                            _amSet = true;
                        } else {
                            _err = _errBad;
                        };
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((24 : GoInt)) || _std & ((65535 : GoInt)) == ((27 : GoInt)) || _std & ((65535 : GoInt)) == ((25 : GoInt)) || _std & ((65535 : GoInt)) == ((26 : GoInt)) || _std & ((65535 : GoInt)) == ((28 : GoInt)) || _std & ((65535 : GoInt)) == ((29 : GoInt)) || _std & ((65535 : GoInt)) == ((31 : GoInt)) || _std & ((65535 : GoInt)) == ((32 : GoInt)) || _std & ((65535 : GoInt)) == ((30 : GoInt)) || _std & ((65535 : GoInt)) == ((33 : GoInt))) {
                        if (((((_std == ((24 : GoInt))) || (_std == ((26 : GoInt)))) || (_std == ((27 : GoInt)))) && ((_value != null ? _value.length : ((0 : GoInt))) >= ((1 : GoInt)))) && ((_value != null ? _value[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("Z" : GoString))).code : GoRune)))) {
                            _value = _value.__slice__(((1 : GoInt)));
                            _z = utc;
                            break;
                        };
                        var _sign:GoString = (("" : GoString)), _hour:GoString = (("" : GoString)), _min:GoString = (("" : GoString)), _seconds:GoString = (("" : GoString));
                        if ((_std == ((27 : GoInt))) || (_std == ((32 : GoInt)))) {
                            if ((_value != null ? _value.length : ((0 : GoInt))) < ((6 : GoInt))) {
                                _err = _errBad;
                                break;
                            };
                            if ((_value != null ? _value[((3 : GoInt))] : ((0 : GoUInt8))) != (((((":" : GoString))).code : GoRune))) {
                                _err = _errBad;
                                break;
                            };
                            {
                                final __tmp__0 = _value.__slice__(((0 : GoInt)), ((1 : GoInt)));
                                final __tmp__1 = _value.__slice__(((1 : GoInt)), ((3 : GoInt)));
                                final __tmp__2 = _value.__slice__(((4 : GoInt)), ((6 : GoInt)));
                                final __tmp__3 = ((("00" : GoString)));
                                final __tmp__4 = _value.__slice__(((6 : GoInt)));
                                _sign = __tmp__0;
                                _hour = __tmp__1;
                                _min = __tmp__2;
                                _seconds = __tmp__3;
                                _value = __tmp__4;
                            };
                        } else if ((_std == ((31 : GoInt))) || (_std == ((26 : GoInt)))) {
                            if ((_value != null ? _value.length : ((0 : GoInt))) < ((3 : GoInt))) {
                                _err = _errBad;
                                break;
                            };
                            {
                                final __tmp__0 = _value.__slice__(((0 : GoInt)), ((1 : GoInt)));
                                final __tmp__1 = _value.__slice__(((1 : GoInt)), ((3 : GoInt)));
                                final __tmp__2 = ((("00" : GoString)));
                                final __tmp__3 = ((("00" : GoString)));
                                final __tmp__4 = _value.__slice__(((3 : GoInt)));
                                _sign = __tmp__0;
                                _hour = __tmp__1;
                                _min = __tmp__2;
                                _seconds = __tmp__3;
                                _value = __tmp__4;
                            };
                        } else if ((_std == ((28 : GoInt))) || (_std == ((33 : GoInt)))) {
                            if ((_value != null ? _value.length : ((0 : GoInt))) < ((9 : GoInt))) {
                                _err = _errBad;
                                break;
                            };
                            if (((_value != null ? _value[((3 : GoInt))] : ((0 : GoUInt8))) != (((((":" : GoString))).code : GoRune))) || ((_value != null ? _value[((6 : GoInt))] : ((0 : GoUInt8))) != (((((":" : GoString))).code : GoRune)))) {
                                _err = _errBad;
                                break;
                            };
                            {
                                final __tmp__0 = _value.__slice__(((0 : GoInt)), ((1 : GoInt)));
                                final __tmp__1 = _value.__slice__(((1 : GoInt)), ((3 : GoInt)));
                                final __tmp__2 = _value.__slice__(((4 : GoInt)), ((6 : GoInt)));
                                final __tmp__3 = _value.__slice__(((7 : GoInt)), ((9 : GoInt)));
                                final __tmp__4 = _value.__slice__(((9 : GoInt)));
                                _sign = __tmp__0;
                                _hour = __tmp__1;
                                _min = __tmp__2;
                                _seconds = __tmp__3;
                                _value = __tmp__4;
                            };
                        } else if ((_std == ((25 : GoInt))) || (_std == ((30 : GoInt)))) {
                            if ((_value != null ? _value.length : ((0 : GoInt))) < ((7 : GoInt))) {
                                _err = _errBad;
                                break;
                            };
                            {
                                final __tmp__0 = _value.__slice__(((0 : GoInt)), ((1 : GoInt)));
                                final __tmp__1 = _value.__slice__(((1 : GoInt)), ((3 : GoInt)));
                                final __tmp__2 = _value.__slice__(((3 : GoInt)), ((5 : GoInt)));
                                final __tmp__3 = _value.__slice__(((5 : GoInt)), ((7 : GoInt)));
                                final __tmp__4 = _value.__slice__(((7 : GoInt)));
                                _sign = __tmp__0;
                                _hour = __tmp__1;
                                _min = __tmp__2;
                                _seconds = __tmp__3;
                                _value = __tmp__4;
                            };
                        } else {
                            if ((_value != null ? _value.length : ((0 : GoInt))) < ((5 : GoInt))) {
                                _err = _errBad;
                                break;
                            };
                            {
                                final __tmp__0 = _value.__slice__(((0 : GoInt)), ((1 : GoInt)));
                                final __tmp__1 = _value.__slice__(((1 : GoInt)), ((3 : GoInt)));
                                final __tmp__2 = _value.__slice__(((3 : GoInt)), ((5 : GoInt)));
                                final __tmp__3 = ((("00" : GoString)));
                                final __tmp__4 = _value.__slice__(((5 : GoInt)));
                                _sign = __tmp__0;
                                _hour = __tmp__1;
                                _min = __tmp__2;
                                _seconds = __tmp__3;
                                _value = __tmp__4;
                            };
                        };
                        var _hr:GoInt = ((0 : GoInt)), _mm:GoInt = ((0 : GoInt)), _ss:GoInt = ((0 : GoInt));
                        {
                            var __tmp__ = _atoi(_hour);
                            _hr = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err == null) {
                            {
                                var __tmp__ = _atoi(_min);
                                _mm = __tmp__._0;
                                _err = __tmp__._1;
                            };
                        };
                        if (_err == null) {
                            {
                                var __tmp__ = _atoi(_seconds);
                                _ss = __tmp__._0;
                                _err = __tmp__._1;
                            };
                        };
                        _zoneOffset = (((_hr * ((60 : GoInt))) + _mm) * ((60 : GoInt))) + _ss;
                        if ((_sign != null ? _sign[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("+" : GoString))).code : GoRune))) {} else if ((_sign != null ? _sign[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("-" : GoString))).code : GoRune))) {
                            _zoneOffset = -_zoneOffset;
                        } else {
                            _err = _errBad;
                        };
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((23 : GoInt))) {
                        if (((_value != null ? _value.length : ((0 : GoInt))) >= ((3 : GoInt))) && (_value.__slice__(((0 : GoInt)), ((3 : GoInt))) == ((("UTC" : GoString))))) {
                            _z = utc;
                            _value = _value.__slice__(((3 : GoInt)));
                            break;
                        };
                        var __tmp__ = _parseTimeZone(_value), _n:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (!_ok) {
                            _err = _errBad;
                            break;
                        };
                        {
                            final __tmp__0 = _value.__slice__(0, _n);
                            final __tmp__1 = _value.__slice__(_n);
                            _zoneName = __tmp__0;
                            _value = __tmp__1;
                        };
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((34 : GoInt))) {
                        var _ndigit:GoInt = ((1 : GoInt)) + _digitsLen(_std);
                        if ((_value != null ? _value.length : ((0 : GoInt))) < _ndigit) {
                            _err = _errBad;
                            break;
                        };
                        {
                            var __tmp__ = _parseNanoseconds(_value, _ndigit);
                            _nsec = __tmp__._0;
                            _rangeErrString = __tmp__._1;
                            _err = __tmp__._2;
                        };
                        _value = _value.__slice__(_ndigit);
                        break;
                    } else if (_std & ((65535 : GoInt)) == ((35 : GoInt))) {
                        if (((((_value != null ? _value.length : ((0 : GoInt))) < ((2 : GoInt))) || !_commaOrPeriod((_value != null ? _value[((0 : GoInt))] : ((0 : GoUInt8))))) || ((_value != null ? _value[((1 : GoInt))] : ((0 : GoUInt8))) < ((((("0" : GoString))).code : GoRune)))) || (((((("9" : GoString))).code : GoRune)) < (_value != null ? _value[((1 : GoInt))] : ((0 : GoUInt8))))) {
                            break;
                        };
                        var _i:GoInt = ((0 : GoInt));
                        while ((((_i < ((9 : GoInt))) && ((_i + ((1 : GoInt))) < (_value != null ? _value.length : ((0 : GoInt))))) && (((((("0" : GoString))).code : GoRune)) <= (_value != null ? _value[_i + ((1 : GoInt))] : ((0 : GoUInt8))))) && ((_value != null ? _value[_i + ((1 : GoInt))] : ((0 : GoUInt8))) <= ((((("9" : GoString))).code : GoRune)))) {
                            _i++;
                        };
                        {
                            var __tmp__ = _parseNanoseconds(_value, ((1 : GoInt)) + _i);
                            _nsec = __tmp__._0;
                            _rangeErrString = __tmp__._1;
                            _err = __tmp__._2;
                        };
                        _value = _value.__slice__(((1 : GoInt)) + _i);
                        break;
                    };
                    break;
                };
            };
            if (_rangeErrString != ("")) {
                return { _0 : ((new Time() : Time)), _1 : ((new ParseError(_alayout, _avalue, _stdstr, _value, ((((": " : GoString))) + _rangeErrString) + (((" out of range" : GoString)))) : ParseError)) };
            };
            if (_err != null) {
                return { _0 : ((new Time() : Time)), _1 : ((new ParseError(_alayout, _avalue, _stdstr, _value, ("")) : ParseError)) };
            };
        };
        if (_pmSet && (_hour < ((12 : GoInt)))) {
            _hour = _hour + (((12 : GoInt)));
        } else if (_amSet && (_hour == ((12 : GoInt)))) {
            _hour = ((0 : GoInt));
        };
        if (_yday >= ((0 : GoInt))) {
            var _d:GoInt = ((0 : GoInt));
            var _m:GoInt = ((0 : GoInt));
            if (_isLeap(_year)) {
                if (_yday == ((60 : GoInt))) {
                    _m = ((((2 : GoInt)) : GoInt));
                    _d = ((29 : GoInt));
                } else if (_yday > ((60 : GoInt))) {
                    _yday--;
                };
            };
            if ((_yday < ((1 : GoInt))) || (_yday > ((365 : GoInt)))) {
                return { _0 : ((new Time() : Time)), _1 : ((new ParseError(_alayout, _avalue, (""), _value, (((": day-of-year out of range" : GoString)))) : ParseError)) };
            };
            if (_m == ((0 : GoInt))) {
                _m = ((_yday - ((1 : GoInt))) / ((31 : GoInt))) + ((1 : GoInt));
                if ((((_daysBefore != null ? _daysBefore[_m] : ((0 : GoInt32))) : GoInt)) < _yday) {
                    _m++;
                };
                _d = _yday - (((_daysBefore != null ? _daysBefore[_m - ((1 : GoInt))] : ((0 : GoInt32))) : GoInt));
            };
            if ((_month >= ((0 : GoInt))) && (_month != _m)) {
                return { _0 : ((new Time() : Time)), _1 : ((new ParseError(_alayout, _avalue, (""), _value, (((": day-of-year does not match month" : GoString)))) : ParseError)) };
            };
            _month = _m;
            if ((_day >= ((0 : GoInt))) && (_day != _d)) {
                return { _0 : ((new Time() : Time)), _1 : ((new ParseError(_alayout, _avalue, (""), _value, (((": day-of-year does not match day" : GoString)))) : ParseError)) };
            };
            _day = _d;
        } else {
            if (_month < ((0 : GoInt))) {
                _month = ((((1 : GoInt)) : GoInt));
            };
            if (_day < ((0 : GoInt))) {
                _day = ((1 : GoInt));
            };
        };
        if ((_day < ((1 : GoInt))) || (_day > _daysIn(((_month : Month)), _year))) {
            return { _0 : ((new Time() : Time)), _1 : ((new ParseError(_alayout, _avalue, (""), _value, (((": day out of range" : GoString)))) : ParseError)) };
        };
        if (_z != null) {
            return { _0 : (date(_year, ((_month : Month)), _day, _hour, _min, _sec, _nsec, _z) == null ? null : date(_year, ((_month : Month)), _day, _hour, _min, _sec, _nsec, _z).__copy__()), _1 : ((null : stdgo.Error)) };
        };
        if (_zoneOffset != ((-1 : GoInt))) {
            var _t:Time = (date(_year, ((_month : Month)), _day, _hour, _min, _sec, _nsec, utc) == null ? null : date(_year, ((_month : Month)), _day, _hour, _min, _sec, _nsec, utc).__copy__());
            _t._addSec(-((_zoneOffset : GoInt64)));
            var __tmp__ = _local._lookup(_t._unixSec()), _name:GoString = __tmp__._0, _offset:GoInt = __tmp__._1, _:GoInt64 = __tmp__._2, _:GoInt64 = __tmp__._3, _:Bool = __tmp__._4;
            if ((_offset == _zoneOffset) && ((_zoneName == ("")) || (_name == _zoneName))) {
                _t._setLoc(_local);
                return { _0 : (_t == null ? null : _t.__copy__()), _1 : ((null : stdgo.Error)) };
            };
            _t._setLoc(fixedZone(_zoneName, _zoneOffset));
            return { _0 : (_t == null ? null : _t.__copy__()), _1 : ((null : stdgo.Error)) };
        };
        if (_zoneName != ("")) {
            var _t:Time = (date(_year, ((_month : Month)), _day, _hour, _min, _sec, _nsec, utc) == null ? null : date(_year, ((_month : Month)), _day, _hour, _min, _sec, _nsec, utc).__copy__());
            var __tmp__ = _local._lookupName(_zoneName, _t._unixSec()), _offset:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _t._addSec(-((_offset : GoInt64)));
                _t._setLoc(_local);
                return { _0 : (_t == null ? null : _t.__copy__()), _1 : ((null : stdgo.Error)) };
            };
            if (((_zoneName != null ? _zoneName.length : ((0 : GoInt))) > ((3 : GoInt))) && (_zoneName.__slice__(0, ((3 : GoInt))) == ((("GMT" : GoString))))) {
                {
                    var __tmp__ = _atoi(_zoneName.__slice__(((3 : GoInt))));
                    _offset = __tmp__._0;
                };
                _offset = _offset * (((3600 : GoInt)));
            };
            _t._setLoc(fixedZone(_zoneName, _offset));
            return { _0 : (_t == null ? null : _t.__copy__()), _1 : ((null : stdgo.Error)) };
        };
        return { _0 : (date(_year, ((_month : Month)), _day, _hour, _min, _sec, _nsec, _defaultLocation) == null ? null : date(_year, ((_month : Month)), _day, _hour, _min, _sec, _nsec, _defaultLocation).__copy__()), _1 : ((null : stdgo.Error)) };
    }
/**
    // parseTimeZone parses a time zone string and returns its length. Time zones
    // are human-generated and unpredictable. We can't do precise error checking.
    // On the other hand, for a correct parse there must be a time zone at the
    // beginning of the string, so it's almost always true that there's one
    // there. We look at the beginning of the string for a run of upper-case letters.
    // If there are more than 5, it's an error.
    // If there are 4 or 5 and the last is a T, it's a time zone.
    // If there are 3, it's a time zone.
    // Otherwise, other than special cases, it's not a time zone.
    // GMT is special because it can have an hour offset.
**/
function _parseTimeZone(_value:GoString):{ var _0 : GoInt; var _1 : Bool; } {
        var _length:GoInt = ((0 : GoInt)), _ok:Bool = false;
        if ((_value != null ? _value.length : ((0 : GoInt))) < ((3 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : false };
        };
        if (((_value != null ? _value.length : ((0 : GoInt))) >= ((4 : GoInt))) && ((_value.__slice__(0, ((4 : GoInt))) == ((("ChST" : GoString)))) || (_value.__slice__(0, ((4 : GoInt))) == ((("MeST" : GoString)))))) {
            return { _0 : ((4 : GoInt)), _1 : true };
        };
        if (_value.__slice__(0, ((3 : GoInt))) == ((("GMT" : GoString)))) {
            _length = _parseGMT(_value);
            return { _0 : _length, _1 : true };
        };
        if (((_value != null ? _value[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("+" : GoString))).code : GoRune))) || ((_value != null ? _value[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("-" : GoString))).code : GoRune)))) {
            _length = _parseSignedOffset(_value);
            var _ok:Bool = _length > ((0 : GoInt));
            return { _0 : _length, _1 : _ok };
        };
        var _nUpper:GoInt = ((0 : GoInt));
        {
            _nUpper = ((0 : GoInt));
            Go.cfor(_nUpper < ((6 : GoInt)), _nUpper++, {
                if (_nUpper >= (_value != null ? _value.length : ((0 : GoInt)))) {
                    break;
                };
                {
                    var _c:GoUInt8 = (_value != null ? _value[_nUpper] : ((0 : GoUInt8)));
                    if ((_c < ((((("A" : GoString))).code : GoRune))) || (((((("Z" : GoString))).code : GoRune)) < _c)) {
                        break;
                    };
                };
            });
        };
        if (_nUpper == ((0 : GoInt)) || _nUpper == ((1 : GoInt)) || _nUpper == ((2 : GoInt)) || _nUpper == ((6 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : false };
        } else if (_nUpper == ((5 : GoInt))) {
            if ((_value != null ? _value[((4 : GoInt))] : ((0 : GoUInt8))) == ((((("T" : GoString))).code : GoRune))) {
                return { _0 : ((5 : GoInt)), _1 : true };
            };
        } else if (_nUpper == ((4 : GoInt))) {
            if (((_value != null ? _value[((3 : GoInt))] : ((0 : GoUInt8))) == ((((("T" : GoString))).code : GoRune))) || (_value.__slice__(0, ((4 : GoInt))) == ((("WITA" : GoString))))) {
                return { _0 : ((4 : GoInt)), _1 : true };
            };
        } else if (_nUpper == ((3 : GoInt))) {
            return { _0 : ((3 : GoInt)), _1 : true };
        };
        return { _0 : ((0 : GoInt)), _1 : false };
    }
/**
    // parseGMT parses a GMT time zone. The input string is known to start "GMT".
    // The function checks whether that is followed by a sign and a number in the
    // range -23 through +23 excluding zero.
**/
function _parseGMT(_value:GoString):GoInt {
        _value = _value.__slice__(((3 : GoInt)));
        if ((_value != null ? _value.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return ((3 : GoInt));
        };
        return ((3 : GoInt)) + _parseSignedOffset(_value);
    }
/**
    // parseSignedOffset parses a signed timezone offset (e.g. "+03" or "-04").
    // The function checks for a signed number in the range -23 through +23 excluding zero.
    // Returns length of the found offset string or 0 otherwise
**/
function _parseSignedOffset(_value:GoString):GoInt {
        var _sign:GoUInt8 = (_value != null ? _value[((0 : GoInt))] : ((0 : GoUInt8)));
        if ((_sign != ((((("-" : GoString))).code : GoRune))) && (_sign != ((((("+" : GoString))).code : GoRune)))) {
            return ((0 : GoInt));
        };
        var __tmp__ = _leadingInt(_value.__slice__(((1 : GoInt)))), _x:GoUInt64 = __tmp__._0, _rem:GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if ((_err != null) || (_value.__slice__(((1 : GoInt))) == _rem)) {
            return ((0 : GoInt));
        };
        if (_x > ((23 : GoUInt64))) {
            return ((0 : GoInt));
        };
        return (_value != null ? _value.length : ((0 : GoInt))) - (_rem != null ? _rem.length : ((0 : GoInt)));
    }
function _commaOrPeriod(_b:GoByte):Bool {
        return (_b == ((((("." : GoString))).code : GoRune))) || (_b == ((((("," : GoString))).code : GoRune)));
    }
function _parseNanoseconds(_value:GoString, _nbytes:GoInt):{ var _0 : GoInt; var _1 : GoString; var _2 : Error; } {
        var _ns:GoInt = ((0 : GoInt)), _rangeErrString:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        if (!_commaOrPeriod((_value != null ? _value[((0 : GoInt))] : ((0 : GoUInt8))))) {
            _err = _errBad;
            return { _0 : _ns, _1 : _rangeErrString, _2 : _err };
        };
        if (_nbytes > ((10 : GoInt))) {
            _value = _value.__slice__(0, ((10 : GoInt)));
            _nbytes = ((10 : GoInt));
        };
        {
            {
                var __tmp__ = _atoi(_value.__slice__(((1 : GoInt)), _nbytes));
                _ns = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _ns, _1 : _rangeErrString, _2 : _err };
            };
        };
        if (_ns < ((0 : GoInt))) {
            _rangeErrString = ((("fractional second" : GoString)));
            return { _0 : _ns, _1 : _rangeErrString, _2 : _err };
        };
        var _scaleDigits:GoInt = ((10 : GoInt)) - _nbytes;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _scaleDigits, _i++, {
                _ns = _ns * (((10 : GoInt)));
            });
        };
        return { _0 : _ns, _1 : _rangeErrString, _2 : _err };
    }
/**
    // leadingInt consumes the leading [0-9]* from s.
**/
function _leadingInt(_s:GoString):{ var _0 : GoUInt64; var _1 : GoString; var _2 : Error; } {
        var _x:GoUInt64 = ((0 : GoUInt64)), _rem:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        var _i:GoInt = ((0 : GoInt));
        Go.cfor(_i < (_s != null ? _s.length : ((0 : GoInt))), _i++, {
            var _c:GoUInt8 = (_s != null ? _s[_i] : ((0 : GoUInt8)));
            if ((_c < ((((("0" : GoString))).code : GoRune))) || (_c > ((((("9" : GoString))).code : GoRune)))) {
                break;
            };
            if (_x > (("922337203685477580" : GoUInt64))) {
                return { _0 : ((0 : GoUInt64)), _1 : (""), _2 : _errLeadingInt };
            };
            _x = ((_x * ((10 : GoUInt64))) + ((_c : GoUInt64))) - ((((("0" : GoString))).code : GoRune));
            if (_x > (("9223372036854775808" : GoUInt64))) {
                return { _0 : ((0 : GoUInt64)), _1 : (""), _2 : _errLeadingInt };
            };
        });
        return { _0 : _x, _1 : _s.__slice__(_i), _2 : ((null : stdgo.Error)) };
    }
/**
    // leadingFraction consumes the leading [0-9]* from s.
    // It is used only for fractions, so does not return an error on overflow,
    // it just stops accumulating precision.
**/
function _leadingFraction(_s:GoString):{ var _0 : GoUInt64; var _1 : GoFloat64; var _2 : GoString; } {
        var _x:GoUInt64 = ((0 : GoUInt64)), _scale:GoFloat64 = ((0 : GoFloat64)), _rem:GoString = (("" : GoString));
        var _i:GoInt = ((0 : GoInt));
        _scale = ((1 : GoFloat64));
        var _overflow:Bool = false;
        Go.cfor(_i < (_s != null ? _s.length : ((0 : GoInt))), _i++, {
            var _c:GoUInt8 = (_s != null ? _s[_i] : ((0 : GoUInt8)));
            if ((_c < ((((("0" : GoString))).code : GoRune))) || (_c > ((((("9" : GoString))).code : GoRune)))) {
                break;
            };
            if (_overflow) {
                continue;
            };
            if (_x > (("922337203685477580" : GoUInt64))) {
                _overflow = true;
                continue;
            };
            var _y:GoUInt64 = ((_x * ((10 : GoUInt64))) + ((_c : GoUInt64))) - ((((("0" : GoString))).code : GoRune));
            if (_y > (("9223372036854775808" : GoUInt64))) {
                _overflow = true;
                continue;
            };
            _x = _y;
            _scale = _scale * (((10 : GoFloat64)));
        });
        return { _0 : _x, _1 : _scale, _2 : _s.__slice__(_i) };
    }
/**
    // ParseDuration parses a duration string.
    // A duration string is a possibly signed sequence of
    // decimal numbers, each with optional fraction and a unit suffix,
    // such as "300ms", "-1.5h" or "2h45m".
    // Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h".
**/
function parseDuration(_s:GoString):{ var _0 : Duration; var _1 : Error; } {
        var _orig:GoString = _s;
        var _d:GoUInt64 = ((0 : GoUInt64));
        var _neg:Bool = false;
        if (_s != ("")) {
            var _c:GoUInt8 = (_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8)));
            if ((_c == ((((("-" : GoString))).code : GoRune))) || (_c == ((((("+" : GoString))).code : GoRune)))) {
                _neg = _c == ((((("-" : GoString))).code : GoRune));
                _s = _s.__slice__(((1 : GoInt)));
            };
        };
        if (_s == ((("0" : GoString)))) {
            return { _0 : ((0 : GoInt64)), _1 : ((null : stdgo.Error)) };
        };
        if (_s == ("")) {
            return { _0 : ((0 : GoInt64)), _1 : stdgo.errors.Errors.new_(((("time: invalid duration " : GoString))) + _quote(_orig)) };
        };
        while (_s != ("")) {
            var _v:GoUInt64 = ((0 : GoUInt64)), _f:GoUInt64 = ((0 : GoUInt64)), _scale:GoFloat64 = ((1 : GoFloat64));
            var _err:Error = ((null : stdgo.Error));
            if (!(((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("." : GoString))).code : GoRune))) || ((((((("0" : GoString))).code : GoRune)) <= (_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8)))) && ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) <= ((((("9" : GoString))).code : GoRune)))))) {
                return { _0 : ((0 : GoInt64)), _1 : stdgo.errors.Errors.new_(((("time: invalid duration " : GoString))) + _quote(_orig)) };
            };
            var _pl:GoInt = (_s != null ? _s.length : ((0 : GoInt)));
            {
                var __tmp__ = _leadingInt(_s);
                _v = __tmp__._0;
                _s = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : ((0 : GoInt64)), _1 : stdgo.errors.Errors.new_(((("time: invalid duration " : GoString))) + _quote(_orig)) };
            };
            var _pre:Bool = _pl != (_s != null ? _s.length : ((0 : GoInt)));
            var _post:Bool = false;
            if ((_s != ("")) && ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("." : GoString))).code : GoRune)))) {
                _s = _s.__slice__(((1 : GoInt)));
                var _pl:GoInt = (_s != null ? _s.length : ((0 : GoInt)));
                {
                    var __tmp__ = _leadingFraction(_s);
                    _f = __tmp__._0;
                    _scale = __tmp__._1;
                    _s = __tmp__._2;
                };
                _post = _pl != (_s != null ? _s.length : ((0 : GoInt)));
            };
            if (!_pre && !_post) {
                return { _0 : ((0 : GoInt64)), _1 : stdgo.errors.Errors.new_(((("time: invalid duration " : GoString))) + _quote(_orig)) };
            };
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_s != null ? _s.length : ((0 : GoInt))), _i++, {
                var _c:GoUInt8 = (_s != null ? _s[_i] : ((0 : GoUInt8)));
                if ((_c == ((((("." : GoString))).code : GoRune))) || ((((((("0" : GoString))).code : GoRune)) <= _c) && (_c <= ((((("9" : GoString))).code : GoRune))))) {
                    break;
                };
            });
            if (_i == ((0 : GoInt))) {
                return { _0 : ((0 : GoInt64)), _1 : stdgo.errors.Errors.new_(((("time: missing unit in duration " : GoString))) + _quote(_orig)) };
            };
            var _u:GoString = _s.__slice__(0, _i);
            _s = _s.__slice__(_i);
            var __tmp__ = (_unitMap != null && _unitMap.__exists__(_u) ? { value : _unitMap[_u], ok : true } : { value : ((0 : GoUInt64)), ok : false }), _unit:GoUInt64 = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (!_ok) {
                return { _0 : ((0 : GoInt64)), _1 : stdgo.errors.Errors.new_(((((("time: unknown unit " : GoString))) + _quote(_u)) + (((" in duration " : GoString)))) + _quote(_orig)) };
            };
            if (_v > ((("9223372036854775808" : GoUInt64)) / _unit)) {
                return { _0 : ((0 : GoInt64)), _1 : stdgo.errors.Errors.new_(((("time: invalid duration " : GoString))) + _quote(_orig)) };
            };
            _v = _v * (_unit);
            if (_f > ((0 : GoUInt64))) {
                _v = _v + ((((((_f : GoFloat64)) * (((_unit : GoFloat64)) / _scale)) : GoUInt64)));
                if (_v > (("9223372036854775808" : GoUInt64))) {
                    return { _0 : ((0 : GoInt64)), _1 : stdgo.errors.Errors.new_(((("time: invalid duration " : GoString))) + _quote(_orig)) };
                };
            };
            _d = _d + (_v);
            if (_d > (("9223372036854775808" : GoUInt64))) {
                return { _0 : ((0 : GoInt64)), _1 : stdgo.errors.Errors.new_(((("time: invalid duration " : GoString))) + _quote(_orig)) };
            };
        };
        if (_neg) {
            return { _0 : -((_d : Duration)), _1 : ((null : stdgo.Error)) };
        };
        if (_d > (("9223372036854775807" : GoUInt64))) {
            return { _0 : ((0 : GoInt64)), _1 : stdgo.errors.Errors.new_(((("time: invalid duration " : GoString))) + _quote(_orig)) };
        };
        return { _0 : ((_d : Duration)), _1 : ((null : stdgo.Error)) };
    }
/**
    // Sleep pauses the current goroutine for at least the duration d.
    // A negative or zero duration causes Sleep to return immediately.
**/
function sleep(_d:Duration):Void {}
/**
    // when is a helper function for setting the 'when' field of a runtimeTimer.
    // It returns what the time will be, in nanoseconds, Duration d in the future.
    // If d is negative, it is ignored. If the returned value would be less than
    // zero because of an overflow, MaxInt64 is returned.
**/
function _when(_d:Duration):GoInt64 {
        if (_d <= ((0 : GoInt64))) {
            return _runtimeNano();
        };
        var _t:GoInt64 = _runtimeNano() + ((_d : GoInt64));
        if (_t < ((0 : GoInt64))) {
            _t = (("9223372036854775807" : GoInt64));
        };
        return _t;
    }
function _startTimer(_0:T_runtimeTimer):Void {}
function _stopTimer(_0:T_runtimeTimer):Bool throw "not implemeneted";
function _resetTimer(_0:T_runtimeTimer, _1:GoInt64):Bool throw "not implemeneted";
function _modTimer(_t:T_runtimeTimer, _when:GoInt64, _period:GoInt64, _f:(AnyInterface, GoUIntptr) -> Void, _arg:AnyInterface, _seq:GoUIntptr):Void {}
/**
    // NewTimer creates a new Timer that will send
    // the current time on its channel after at least duration d.
**/
function newTimer(_d:Duration):Timer {
        var _c:Chan<Time> = new Chan<Time>(((((1 : GoInt)) : GoInt)).toBasic(), () -> new Time());
        var _t:Timer = (({ c : _c, _r : ((({ _when : _when(_d), _f : _sendTime, _arg : Go.toInterface(_c), _pp : 0, _period : 0, _seq : 0, _nextwhen : 0, _status : 0 } : T_runtimeTimer)) == null ? null : (({ _when : _when(_d), _f : _sendTime, _arg : Go.toInterface(_c), _pp : 0, _period : 0, _seq : 0, _nextwhen : 0, _status : 0 } : T_runtimeTimer)).__copy__()) } : Timer));
        _startTimer(_t._r);
        return _t;
    }
/**
    // sendTime does a non-blocking send of the current time on c.
**/
function _sendTime(_c:AnyInterface, _seq:GoUIntptr):Void {
        Go.select([((_c.value : Chan<Time>)).__send__(now()) => {}, {}]);
    }
/**
    // After waits for the duration to elapse and then sends the current time
    // on the returned channel.
    // It is equivalent to NewTimer(d).C.
    // The underlying Timer is not recovered by the garbage collector
    // until the timer fires. If efficiency is a concern, use NewTimer
    // instead and call Timer.Stop if the timer is no longer needed.
**/
function after(_d:Duration):Chan<Time> {
        return newTimer(_d).c;
    }
/**
    // AfterFunc waits for the duration to elapse and then calls f
    // in its own goroutine. It returns a Timer that can
    // be used to cancel the call using its Stop method.
**/
function afterFunc(_d:Duration, _f:() -> Void):Timer {
        var _t:Timer = (({ _r : ((({ _when : _when(_d), _f : _goFunc, _arg : Go.toInterface(_f), _pp : 0, _period : 0, _seq : 0, _nextwhen : 0, _status : 0 } : T_runtimeTimer)) == null ? null : (({ _when : _when(_d), _f : _goFunc, _arg : Go.toInterface(_f), _pp : 0, _period : 0, _seq : 0, _nextwhen : 0, _status : 0 } : T_runtimeTimer)).__copy__()), c : ((null : Chan<Time>)) } : Timer));
        _startTimer(_t._r);
        return _t;
    }
function _goFunc(_arg:AnyInterface, _seq:GoUIntptr):Void {
        Go.routine(() -> ((_arg.value : () -> Void))());
    }
/**
    // for testing: whatever interrupts a sleep
**/
function _interrupt():Void {
        stdgo.syscall.Syscall.kill(stdgo.syscall.Syscall.getpid(), ((1 : GoInt)));
    }
function _open(_name:GoString):{ var _0 : GoUIntptr; var _1 : Error; } {
        var __tmp__ = stdgo.syscall.Syscall.open(_name, ((0 : GoInt)), ((0 : GoUInt32))), _fd:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((0 : GoUIntptr)), _1 : _err };
        };
        return { _0 : ((_fd : GoUIntptr)), _1 : ((null : stdgo.Error)) };
    }
function _read(_fd:GoUIntptr, _buf:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        return stdgo.syscall.Syscall.read(((_fd : GoInt)), _buf);
    }
function _closefd(_fd:GoUIntptr):Void {
        stdgo.syscall.Syscall.close(((_fd : GoInt)));
    }
function _preadn(_fd:GoUIntptr, _buf:Slice<GoByte>, _off:GoInt):Error {
        var _whence:GoInt = ((0 : GoInt));
        if (_off < ((0 : GoInt))) {
            _whence = ((2 : GoInt));
        };
        {
            var __tmp__ = stdgo.syscall.Syscall.seek(((_fd : GoInt)), ((_off : GoInt64)), _whence), _:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        while ((_buf != null ? _buf.length : ((0 : GoInt))) > ((0 : GoInt))) {
            var __tmp__ = stdgo.syscall.Syscall.read(((_fd : GoInt)), _buf), _m:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_m <= ((0 : GoInt))) {
                if (_err == null) {
                    return stdgo.errors.Errors.new_(((("short read" : GoString))));
                };
                return _err;
            };
            _buf = _buf.__slice__(_m);
        };
        return ((null : stdgo.Error));
    }
/**
    // NewTicker returns a new Ticker containing a channel that will send
    // the current time on the channel after each tick. The period of the
    // ticks is specified by the duration argument. The ticker will adjust
    // the time interval or drop ticks to make up for slow receivers.
    // The duration d must be greater than zero; if not, NewTicker will
    // panic. Stop the ticker to release associated resources.
**/
function newTicker(_d:Duration):Ticker {
        if (_d <= ((0 : GoInt64))) {
            throw Go.toInterface(stdgo.errors.Errors.new_(((("non-positive interval for NewTicker" : GoString)))));
        };
        var _c:Chan<Time> = new Chan<Time>(((((1 : GoInt)) : GoInt)).toBasic(), () -> new Time());
        var _t:Ticker = (({ c : _c, _r : ((({ _when : _when(_d), _period : ((_d : GoInt64)), _f : _sendTime, _arg : Go.toInterface(_c), _pp : 0, _seq : 0, _nextwhen : 0, _status : 0 } : T_runtimeTimer)) == null ? null : (({ _when : _when(_d), _period : ((_d : GoInt64)), _f : _sendTime, _arg : Go.toInterface(_c), _pp : 0, _seq : 0, _nextwhen : 0, _status : 0 } : T_runtimeTimer)).__copy__()) } : Ticker));
        _startTimer(_t._r);
        return _t;
    }
/**
    // Tick is a convenience wrapper for NewTicker providing access to the ticking
    // channel only. While Tick is useful for clients that have no need to shut down
    // the Ticker, be aware that without a way to shut it down the underlying
    // Ticker cannot be recovered by the garbage collector; it "leaks".
    // Unlike NewTicker, Tick will return nil if d <= 0.
**/
function tick(_d:Duration):Chan<Time> {
        if (_d <= ((0 : GoInt64))) {
            return ((null : Chan<Time>));
        };
        return newTicker(_d).c;
    }
/**
    // absWeekday is like Weekday but operates on an absolute time.
**/
function _absWeekday(_abs:GoUInt64):Weekday {
        var _sec:GoUInt64 = (_abs + ((86400 : GoUInt64))) % ((604800 : GoUInt64));
        return (((((_sec : GoInt)) / ((86400 : GoInt))) : Weekday));
    }
/**
    // absClock is like clock but operates on an absolute time.
**/
function _absClock(_abs:GoUInt64):{ var _0 : GoInt; var _1 : GoInt; var _2 : GoInt; } {
        var _hour:GoInt = ((0 : GoInt)), _min:GoInt = ((0 : GoInt)), _sec:GoInt = ((0 : GoInt));
        _sec = (((_abs % ((86400 : GoUInt64))) : GoInt));
        _hour = _sec / ((3600 : GoInt));
        _sec = _sec - (_hour * ((3600 : GoInt)));
        _min = _sec / ((60 : GoInt));
        _sec = _sec - (_min * ((60 : GoInt)));
        return { _0 : _hour, _1 : _min, _2 : _sec };
    }
/**
    // fmtFrac formats the fraction of v/10**prec (e.g., ".12345") into the
    // tail of buf, omitting trailing zeros. It omits the decimal
    // point too when the fraction is 0. It returns the index where the
    // output bytes begin and the value v/10**prec.
**/
function _fmtFrac(_buf:Slice<GoByte>, _v:GoUInt64, _prec:GoInt):{ var _0 : GoInt; var _1 : GoUInt64; } {
        var _nw:GoInt = ((0 : GoInt)), _nv:GoUInt64 = ((0 : GoUInt64));
        var _w:GoInt = (_buf != null ? _buf.length : ((0 : GoInt)));
        var _print:Bool = false;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _prec, _i++, {
                var _digit:GoUInt64 = _v % ((10 : GoUInt64));
                _print = _print || (_digit != ((0 : GoUInt64)));
                if (_print) {
                    _w--;
                    if (_buf != null) _buf[_w] = ((_digit : GoByte)) + ((((("0" : GoString))).code : GoRune));
                };
                _v = _v / (((10 : GoUInt64)));
            });
        };
        if (_print) {
            _w--;
            if (_buf != null) _buf[_w] = ((((("." : GoString))).code : GoRune));
        };
        return { _0 : _w, _1 : _v };
    }
/**
    // fmtInt formats v into the tail of buf.
    // It returns the index where the output begins.
**/
function _fmtInt(_buf:Slice<GoByte>, _v:GoUInt64):GoInt {
        var _w:GoInt = (_buf != null ? _buf.length : ((0 : GoInt)));
        if (_v == ((0 : GoUInt64))) {
            _w--;
            if (_buf != null) _buf[_w] = ((((("0" : GoString))).code : GoRune));
        } else {
            while (_v > ((0 : GoUInt64))) {
                _w--;
                if (_buf != null) _buf[_w] = (((_v % ((10 : GoUInt64))) : GoByte)) + ((((("0" : GoString))).code : GoRune));
                _v = _v / (((10 : GoUInt64)));
            };
        };
        return _w;
    }
/**
    // lessThanHalf reports whether x+x < y but avoids overflow,
    // assuming x and y are both positive (Duration is signed).
**/
function _lessThanHalf(_x:Duration, _y:Duration):Bool {
        return (((_x : GoUInt64)) + ((_x : GoUInt64))) < ((_y : GoUInt64));
    }
/**
    // Since returns the time elapsed since t.
    // It is shorthand for time.Now().Sub(t).
**/
function since(_t:Time):Duration {
        var _now:Time = new Time();
        if ((_t._wall & (("9223372036854775808" : GoUInt64))) != ((0 : GoUInt64))) {
            _now = ((new Time((("9223372036854775808" : GoUInt64)), _runtimeNano() - _startNano, null) : Time));
        } else {
            _now = (now() == null ? null : now().__copy__());
        };
        return _now.sub((_t == null ? null : _t.__copy__()));
    }
/**
    // Until returns the duration until t.
    // It is shorthand for t.Sub(time.Now()).
**/
function until(_t:Time):Duration {
        var _now:Time = new Time();
        if ((_t._wall & (("9223372036854775808" : GoUInt64))) != ((0 : GoUInt64))) {
            _now = ((new Time((("9223372036854775808" : GoUInt64)), _runtimeNano() - _startNano, null) : Time));
        } else {
            _now = (now() == null ? null : now().__copy__());
        };
        return _t.sub((_now == null ? null : _now.__copy__()));
    }
/**
    // absDate is like date but operates on an absolute time.
**/
function _absDate(_abs:GoUInt64, _full:Bool):{ var _0 : GoInt; var _1 : Month; var _2 : GoInt; var _3 : GoInt; } {
        var _year:GoInt = ((0 : GoInt)), _month:Month = new Month(), _day:GoInt = ((0 : GoInt)), _yday:GoInt = ((0 : GoInt));
        var _d:GoUInt64 = _abs / ((86400 : GoUInt64));
        var _n:GoUInt64 = _d / ((146097 : GoUInt64));
        var _y:GoUInt64 = ((400 : GoUInt64)) * _n;
        _d = _d - (((146097 : GoUInt64)) * _n);
        _n = _d / ((36524 : GoUInt64));
        _n = _n - (_n >> ((2 : GoUnTypedInt)));
        _y = _y + (((100 : GoUInt64)) * _n);
        _d = _d - (((36524 : GoUInt64)) * _n);
        _n = _d / ((1461 : GoUInt64));
        _y = _y + (((4 : GoUInt64)) * _n);
        _d = _d - (((1461 : GoUInt64)) * _n);
        _n = _d / ((365 : GoUInt64));
        _n = _n - (_n >> ((2 : GoUnTypedInt)));
        _y = _y + (_n);
        _d = _d - (((365 : GoUInt64)) * _n);
        _year = (((((_y : GoInt64)) + (("-292277022399" : GoInt64))) : GoInt));
        _yday = ((_d : GoInt));
        if (!_full) {
            return { _0 : _year, _1 : _month, _2 : _day, _3 : _yday };
        };
        _day = _yday;
        if (_isLeap(_year)) {
            if (_day > ((59 : GoInt))) {
                _day--;
            } else if (_day == ((59 : GoInt))) {
                _month = ((2 : GoInt));
                _day = ((29 : GoInt));
                return { _0 : _year, _1 : _month, _2 : _day, _3 : _yday };
            };
        };
        _month = (((_day / ((31 : GoInt))) : Month));
        var _end:GoInt = (((_daysBefore != null ? _daysBefore[_month + ((1 : GoInt))] : ((0 : GoInt32))) : GoInt));
        var _begin:GoInt = ((0 : GoInt));
        if (_day >= _end) {
            _month++;
            _begin = _end;
        } else {
            _begin = (((_daysBefore != null ? _daysBefore[_month] : ((0 : GoInt32))) : GoInt));
        };
        _month++;
        _day = (_day - _begin) + ((1 : GoInt));
        return { _0 : _year, _1 : _month, _2 : _day, _3 : _yday };
    }
function _daysIn(_m:Month, _year:GoInt):GoInt {
        if ((_m == ((2 : GoInt))) && _isLeap(_year)) {
            return ((29 : GoInt));
        };
        return ((((_daysBefore != null ? _daysBefore[_m] : ((0 : GoInt32))) - (_daysBefore != null ? _daysBefore[_m - ((1 : GoInt))] : ((0 : GoInt32)))) : GoInt));
    }
/**
    // daysSinceEpoch takes a year and returns the number of days from
    // the absolute epoch to the start of that year.
    // This is basically (year - zeroYear) * 365, but accounting for leap days.
**/
function _daysSinceEpoch(_year:GoInt):GoUInt64 {
        var _y:GoUInt64 = (((((_year : GoInt64)) - (("-292277022399" : GoInt64))) : GoUInt64));
        var _n:GoUInt64 = _y / ((400 : GoUInt64));
        _y = _y - (((400 : GoUInt64)) * _n);
        var _d:GoUInt64 = ((146097 : GoUInt64)) * _n;
        _n = _y / ((100 : GoUInt64));
        _y = _y - (((100 : GoUInt64)) * _n);
        _d = _d + (((36524 : GoUInt64)) * _n);
        _n = _y / ((4 : GoUInt64));
        _y = _y - (((4 : GoUInt64)) * _n);
        _d = _d + (((1461 : GoUInt64)) * _n);
        _n = _y;
        _d = _d + (((365 : GoUInt64)) * _n);
        return _d;
    }
/**
    // Provided by package runtime.
**/
function _now():{ var _0 : GoInt64; var _1 : GoInt32; var _2 : GoInt64; } throw "not implemeneted";
/**
    // runtimeNano returns the current value of the runtime clock in nanoseconds.
    //go:linkname runtimeNano runtime.nanotime
**/
function _runtimeNano():GoInt64 throw "not implemeneted";
/**
    // Now returns the current local time.
**/
function now():Time {
        var __tmp__ = _now(), _sec:GoInt64 = __tmp__._0, _nsec:GoInt32 = __tmp__._1, _mono:GoInt64 = __tmp__._2;
        _mono = _mono - (_startNano);
        _sec = _sec + ((("2682288000" : GoInt64)));
        if ((((_sec : GoUInt64)) >> ((33 : GoUnTypedInt))) != ((0 : GoUInt64))) {
            return ((new Time(((_nsec : GoUInt64)), _sec + (("59453308800" : GoInt64)), local) : Time));
        };
        return ((new Time(((("9223372036854775808" : GoUInt64)) | (((_sec : GoUInt64)) << ((30 : GoUnTypedInt)))) | ((_nsec : GoUInt64)), _mono, local) : Time));
    }
function _unixTime(_sec:GoInt64, _nsec:GoInt32):Time {
        return ((new Time(((_nsec : GoUInt64)), _sec + (("62135596800" : GoInt64)), local) : Time));
    }
/**
    // Unix returns the local Time corresponding to the given Unix time,
    // sec seconds and nsec nanoseconds since January 1, 1970 UTC.
    // It is valid to pass nsec outside the range [0, 999999999].
    // Not all sec values have a corresponding time value. One such
    // value is 1<<63-1 (the largest int64 value).
**/
function unix(_sec:GoInt64, _nsec:GoInt64):Time {
        if ((_nsec < ((0 : GoInt64))) || (_nsec >= ((1e+09 : GoInt64)))) {
            var _n:GoInt64 = _nsec / ((1e+09 : GoInt64));
            _sec = _sec + (_n);
            _nsec = _nsec - (_n * ((1e+09 : GoInt64)));
            if (_nsec < ((0 : GoInt64))) {
                _nsec = _nsec + (((1e+09 : GoInt64)));
                _sec--;
            };
        };
        return (_unixTime(_sec, ((_nsec : GoInt32))) == null ? null : _unixTime(_sec, ((_nsec : GoInt32))).__copy__());
    }
/**
    // UnixMilli returns the local Time corresponding to the given Unix time,
    // msec milliseconds since January 1, 1970 UTC.
**/
function unixMilli(_msec:GoInt64):Time {
        return (unix(_msec / ((1000 : GoInt64)), (_msec % ((1000 : GoInt64))) * ((1e+06 : GoInt64))) == null ? null : unix(_msec / ((1000 : GoInt64)), (_msec % ((1000 : GoInt64))) * ((1e+06 : GoInt64))).__copy__());
    }
/**
    // UnixMicro returns the local Time corresponding to the given Unix time,
    // usec microseconds since January 1, 1970 UTC.
**/
function unixMicro(_usec:GoInt64):Time {
        return (unix(_usec / ((1e+06 : GoInt64)), (_usec % ((1e+06 : GoInt64))) * ((1000 : GoInt64))) == null ? null : unix(_usec / ((1e+06 : GoInt64)), (_usec % ((1e+06 : GoInt64))) * ((1000 : GoInt64))).__copy__());
    }
function _isLeap(_year:GoInt):Bool {
        return ((_year % ((4 : GoInt))) == ((0 : GoInt))) && (((_year % ((100 : GoInt))) != ((0 : GoInt))) || ((_year % ((400 : GoInt))) == ((0 : GoInt))));
    }
/**
    // norm returns nhi, nlo such that
    //	hi * base + lo == nhi * base + nlo
    //	0 <= nlo < base
**/
function _norm(_hi:GoInt, _lo:GoInt, _base:GoInt):{ var _0 : GoInt; var _1 : GoInt; } {
        var _nhi:GoInt = ((0 : GoInt)), _nlo:GoInt = ((0 : GoInt));
        if (_lo < ((0 : GoInt))) {
            var _n:GoInt = ((-_lo - ((1 : GoInt))) / _base) + ((1 : GoInt));
            _hi = _hi - (_n);
            _lo = _lo + (_n * _base);
        };
        if (_lo >= _base) {
            var _n:GoInt = _lo / _base;
            _hi = _hi + (_n);
            _lo = _lo - (_n * _base);
        };
        return { _0 : _hi, _1 : _lo };
    }
/**
    // Date returns the Time corresponding to
    //	yyyy-mm-dd hh:mm:ss + nsec nanoseconds
    // in the appropriate zone for that time in the given location.
    //
    // The month, day, hour, min, sec, and nsec values may be outside
    // their usual ranges and will be normalized during the conversion.
    // For example, October 32 converts to November 1.
    //
    // A daylight savings time transition skips or repeats times.
    // For example, in the United States, March 13, 2011 2:15am never occurred,
    // while November 6, 2011 1:15am occurred twice. In such cases, the
    // choice of time zone, and therefore the time, is not well-defined.
    // Date returns a time that is correct in one of the two zones involved
    // in the transition, but it does not guarantee which.
    //
    // Date panics if loc is nil.
**/
function date(_year:GoInt, _month:Month, _day:GoInt, _hour:GoInt, _min:GoInt, _sec:GoInt, _nsec:GoInt, _loc:Location):Time {
        if (_loc == null) {
            throw Go.toInterface(((("time: missing Location in call to Date" : GoString))));
        };
        var _m:GoInt = ((_month : GoInt)) - ((1 : GoInt));
        {
            var __tmp__ = _norm(_year, _m, ((12 : GoInt)));
            _year = __tmp__._0;
            _m = __tmp__._1;
        };
        _month = ((_m : Month)) + ((1 : GoInt));
        {
            var __tmp__ = _norm(_sec, _nsec, ((1e+09 : GoInt)));
            _sec = __tmp__._0;
            _nsec = __tmp__._1;
        };
        {
            var __tmp__ = _norm(_min, _sec, ((60 : GoInt)));
            _min = __tmp__._0;
            _sec = __tmp__._1;
        };
        {
            var __tmp__ = _norm(_hour, _min, ((60 : GoInt)));
            _hour = __tmp__._0;
            _min = __tmp__._1;
        };
        {
            var __tmp__ = _norm(_day, _hour, ((24 : GoInt)));
            _day = __tmp__._0;
            _hour = __tmp__._1;
        };
        var _d:GoUInt64 = _daysSinceEpoch(_year);
        _d = _d + ((((_daysBefore != null ? _daysBefore[_month - ((1 : GoInt))] : ((0 : GoInt32))) : GoUInt64)));
        if (_isLeap(_year) && (_month >= ((3 : GoInt)))) {
            _d++;
        };
        _d = _d + ((((_day - ((1 : GoInt))) : GoUInt64)));
        var _abs:GoUInt64 = _d * ((86400 : GoUInt64));
        _abs = _abs + ((((((_hour * ((3600 : GoInt))) + (_min * ((60 : GoInt)))) + _sec) : GoUInt64)));
        var _unix:GoInt64 = ((_abs : GoInt64)) + (("-9223372028715321600" : GoInt64));
        var __tmp__ = _loc._lookup(_unix), _:GoString = __tmp__._0, _offset:GoInt = __tmp__._1, _start:GoInt64 = __tmp__._2, _end:GoInt64 = __tmp__._3, _:Bool = __tmp__._4;
        if (_offset != ((0 : GoInt))) {
            var _utc:GoInt64 = _unix - ((_offset : GoInt64));
            if ((_utc < _start) || (_utc >= _end)) {
                {
                    var __tmp__ = _loc._lookup(_utc);
                    _offset = __tmp__._1;
                };
            };
            _unix = _unix - (((_offset : GoInt64)));
        };
        var _t:Time = (_unixTime(_unix, ((_nsec : GoInt32))) == null ? null : _unixTime(_unix, ((_nsec : GoInt32))).__copy__());
        _t._setLoc(_loc);
        return (_t == null ? null : _t.__copy__());
    }
/**
    // div divides t by d and returns the quotient parity and remainder.
    // We don't use the quotient parity anymore (round half up instead of round to even)
    // but it's still here in case we change our minds.
**/
function _div(_t:Time, _d:Duration):{ var _0 : GoInt; var _1 : Duration; } {
        var _qmod2:GoInt = ((0 : GoInt)), _r:Duration = new Duration();
        var _neg:Bool = false;
        var _nsec:GoInt32 = _t._nsec();
        var _sec:GoInt64 = _t._sec();
        if (_sec < ((0 : GoInt64))) {
            _neg = true;
            _sec = -_sec;
            _nsec = -_nsec;
            if (_nsec < ((0 : GoInt32))) {
                _nsec = _nsec + (((1e+09 : GoInt32)));
                _sec--;
            };
        };
        {
            var __switchIndex__ = -1;
            while (true) {
                if ((_d < ((1000000000 : GoInt64))) && ((((1000000000 : GoInt64)) % (_d + _d)) == ((0 : GoInt64)))) {
                    _qmod2 = (((_nsec / ((_d : GoInt32))) : GoInt)) & ((1 : GoInt));
                    _r = (((_nsec % ((_d : GoInt32))) : Duration));
                    break;
                } else if ((_d % ((1000000000 : GoInt64))) == ((0 : GoInt64))) {
                    var _d1:GoInt64 = (((_d / ((1000000000 : GoInt64))) : GoInt64));
                    _qmod2 = (((_sec / _d1) : GoInt)) & ((1 : GoInt));
                    _r = ((((_sec % _d1) : Duration)) * ((1000000000 : GoInt64))) + ((_nsec : Duration));
                    break;
                } else {
                    var _sec:GoUInt64 = ((_sec : GoUInt64));
                    var _tmp:GoUInt64 = (_sec >> ((32 : GoUnTypedInt))) * ((1e+09 : GoUInt64));
                    var _u1:GoUInt64 = _tmp >> ((32 : GoUnTypedInt));
                    var _u0:GoUInt64 = _tmp << ((32 : GoUnTypedInt));
                    _tmp = (_sec & (("4294967295" : GoUInt64))) * ((1e+09 : GoUInt64));
                    var _u0x:GoUInt64 = _u0, _u0:GoUInt64 = _u0 + _tmp;
                    if (_u0 < _u0x) {
                        _u1++;
                    };
                    {
                        final __tmp__0 = _u0;
                        final __tmp__1 = _u0 + ((_nsec : GoUInt64));
                        _u0x = __tmp__0;
                        _u0 = __tmp__1;
                    };
                    if (_u0 < _u0x) {
                        _u1++;
                    };
                    var _d1:GoUInt64 = ((_d : GoUInt64));
                    while ((_d1 >> ((63 : GoUnTypedInt))) != ((1 : GoUInt64))) {
                        _d1 = _d1 << (((1 : GoUnTypedInt)));
                    };
                    var _d0:GoUInt64 = ((((0 : GoUInt64)) : GoUInt64));
                    while (true) {
                        _qmod2 = ((0 : GoInt));
                        if ((_u1 > _d1) || ((_u1 == _d1) && (_u0 >= _d0))) {
                            _qmod2 = ((1 : GoInt));
                            {
                                final __tmp__0 = _u0;
                                final __tmp__1 = _u0 - _d0;
                                _u0x = __tmp__0;
                                _u0 = __tmp__1;
                            };
                            if (_u0 > _u0x) {
                                _u1--;
                            };
                            _u1 = _u1 - (_d1);
                        };
                        if ((_d1 == ((0 : GoUInt64))) && (_d0 == ((_d : GoUInt64)))) {
                            break;
                        };
                        _d0 = _d0 >> (((1 : GoUnTypedInt)));
                        _d0 = _d0 | ((_d1 & ((1 : GoUInt64))) << ((63 : GoUnTypedInt)));
                        _d1 = _d1 >> (((1 : GoUnTypedInt)));
                    };
                    _r = ((_u0 : Duration));
                };
                break;
            };
        };
        if (_neg && (_r != ((0 : GoInt64)))) {
            _qmod2 = _qmod2 ^ (((1 : GoInt)));
            _r = _d - _r;
        };
        return { _0 : _qmod2, _1 : _r };
    }
/**
    // FixedZone returns a Location that always uses
    // the given zone name and offset (seconds east of UTC).
**/
function fixedZone(_name:GoString, _offset:GoInt):Location {
        var _l:Location = (({ _name : _name, _zone : ((new Slice<T_zone>(((new T_zone(_name, _offset, false) : T_zone))) : Slice<T_zone>)), _tx : ((new Slice<T_zoneTrans>(((new T_zoneTrans((("-9223372036854775808" : GoInt64)), ((0 : GoUInt8)), false, false) : T_zoneTrans))) : Slice<T_zoneTrans>)), _cacheStart : (("-9223372036854775808" : GoInt64)), _cacheEnd : (("9223372036854775807" : GoInt64)), _extend : "", _cacheZone : ((null : T_zone)) } : Location));
        _l._cacheZone = (_l._zone != null ? _l._zone[((0 : GoInt))] : new T_zone());
        return _l;
    }
/**
    // tzset takes a timezone string like the one found in the TZ environment
    // variable, the end of the last time zone transition expressed as seconds
    // since January 1, 1970 00:00:00 UTC, and a time expressed the same way.
    // We call this a tzset string since in C the function tzset reads TZ.
    // The return values are as for lookup, plus ok which reports whether the
    // parse succeeded.
**/
function _tzset(_s:GoString, _initEnd:GoInt64, _sec:GoInt64):{ var _0 : GoString; var _1 : GoInt; var _2 : GoInt64; var _3 : GoInt64; var _4 : Bool; var _5 : Bool; } {
        var _name:GoString = (("" : GoString)), _offset:GoInt = ((0 : GoInt)), _start:GoInt64 = ((0 : GoInt64)), _end:GoInt64 = ((0 : GoInt64)), _isDST:Bool = false, _ok:Bool = false;
        var _stdName:GoString = (("" : GoString)), _dstName:GoString = (("" : GoString)), _stdOffset:GoInt = ((0 : GoInt)), _dstOffset:GoInt = ((0 : GoInt));
        {
            var __tmp__ = _tzsetName(_s);
            _stdName = __tmp__._0;
            _s = __tmp__._1;
            _ok = __tmp__._2;
        };
        if (_ok) {
            {
                var __tmp__ = _tzsetOffset(_s);
                _stdOffset = __tmp__._0;
                _s = __tmp__._1;
                _ok = __tmp__._2;
            };
        };
        if (!_ok) {
            return { _0 : (""), _1 : ((0 : GoInt)), _2 : ((0 : GoInt64)), _3 : ((0 : GoInt64)), _4 : false, _5 : false };
        };
        _stdOffset = -_stdOffset;
        if (((_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt))) || ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("," : GoString))).code : GoRune)))) {
            return { _0 : _stdName, _1 : _stdOffset, _2 : _initEnd, _3 : (("9223372036854775807" : GoInt64)), _4 : false, _5 : true };
        };
        {
            var __tmp__ = _tzsetName(_s);
            _dstName = __tmp__._0;
            _s = __tmp__._1;
            _ok = __tmp__._2;
        };
        if (_ok) {
            if (((_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt))) || ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("," : GoString))).code : GoRune)))) {
                _dstOffset = _stdOffset + ((3600 : GoInt));
            } else {
                {
                    var __tmp__ = _tzsetOffset(_s);
                    _dstOffset = __tmp__._0;
                    _s = __tmp__._1;
                    _ok = __tmp__._2;
                };
                _dstOffset = -_dstOffset;
            };
        };
        if (!_ok) {
            return { _0 : (""), _1 : ((0 : GoInt)), _2 : ((0 : GoInt64)), _3 : ((0 : GoInt64)), _4 : false, _5 : false };
        };
        if ((_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt))) {
            _s = (((",M3.2.0,M11.1.0" : GoString)));
        };
        if (((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) != ((((("," : GoString))).code : GoRune))) && ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) != (((((";" : GoString))).code : GoRune)))) {
            return { _0 : (""), _1 : ((0 : GoInt)), _2 : ((0 : GoInt64)), _3 : ((0 : GoInt64)), _4 : false, _5 : false };
        };
        _s = _s.__slice__(((1 : GoInt)));
        var _startRule:T_rule = new T_rule(), _endRule:T_rule = new T_rule();
        {
            var __tmp__ = _tzsetRule(_s);
            _startRule = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
            _s = __tmp__._1;
            _ok = __tmp__._2;
        };
        if ((!_ok || ((_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt)))) || ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) != ((((("," : GoString))).code : GoRune)))) {
            return { _0 : (""), _1 : ((0 : GoInt)), _2 : ((0 : GoInt64)), _3 : ((0 : GoInt64)), _4 : false, _5 : false };
        };
        _s = _s.__slice__(((1 : GoInt)));
        {
            var __tmp__ = _tzsetRule(_s);
            _endRule = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
            _s = __tmp__._1;
            _ok = __tmp__._2;
        };
        if (!_ok || ((_s != null ? _s.length : ((0 : GoInt))) > ((0 : GoInt)))) {
            return { _0 : (""), _1 : ((0 : GoInt)), _2 : ((0 : GoInt64)), _3 : ((0 : GoInt64)), _4 : false, _5 : false };
        };
        var __tmp__ = _absDate(((((_sec + (("62135596800" : GoInt64))) + (("9223371966579724800" : GoInt64))) : GoUInt64)), false), _year:GoInt = __tmp__._0, _:Month = __tmp__._1, _:GoInt = __tmp__._2, _yday:GoInt = __tmp__._3;
        var _ysec:GoInt64 = (((_yday * ((86400 : GoInt))) : GoInt64)) + (_sec % ((86400 : GoInt64)));
        var _d:GoUInt64 = _daysSinceEpoch(_year);
        var _abs:GoInt64 = (((_d * ((86400 : GoUInt64))) : GoInt64));
        _abs = _abs + ((("-9223372028715321600" : GoInt64)));
        var _startSec:GoInt64 = ((_tzruleTime(_year, (_startRule == null ? null : _startRule.__copy__()), _stdOffset) : GoInt64));
        var _endSec:GoInt64 = ((_tzruleTime(_year, (_endRule == null ? null : _endRule.__copy__()), _dstOffset) : GoInt64));
        var _dstIsDST:Bool = true, _stdIsDST:Bool = false;
        if (_endSec < _startSec) {
            {
                final __tmp__0 = _endSec;
                final __tmp__1 = _startSec;
                _startSec = __tmp__0;
                _endSec = __tmp__1;
            };
            {
                final __tmp__0 = _dstName;
                final __tmp__1 = _stdName;
                _stdName = __tmp__0;
                _dstName = __tmp__1;
            };
            {
                final __tmp__0 = _dstOffset;
                final __tmp__1 = _stdOffset;
                _stdOffset = __tmp__0;
                _dstOffset = __tmp__1;
            };
            {
                final __tmp__0 = _dstIsDST;
                final __tmp__1 = _stdIsDST;
                _stdIsDST = __tmp__0;
                _dstIsDST = __tmp__1;
            };
        };
        if (_ysec < _startSec) {
            return { _0 : _stdName, _1 : _stdOffset, _2 : _abs, _3 : _startSec + _abs, _4 : _stdIsDST, _5 : true };
        } else if (_ysec >= _endSec) {
            return { _0 : _stdName, _1 : _stdOffset, _2 : _endSec + _abs, _3 : _abs + ((31536000 : GoInt64)), _4 : _stdIsDST, _5 : true };
        } else {
            return { _0 : _dstName, _1 : _dstOffset, _2 : _startSec + _abs, _3 : _endSec + _abs, _4 : _dstIsDST, _5 : true };
        };
    }
/**
    // tzsetName returns the timezone name at the start of the tzset string s,
    // and the remainder of s, and reports whether the parsing is OK.
**/
function _tzsetName(_s:GoString):{ var _0 : GoString; var _1 : GoString; var _2 : Bool; } {
        if ((_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : (""), _1 : (""), _2 : false };
        };
        if ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) != ((((("<" : GoString))).code : GoRune))) {
            for (_i => _r in _s) {
                if (_r == ((((("0" : GoString))).code : GoRune)) || _r == ((((("1" : GoString))).code : GoRune)) || _r == ((((("2" : GoString))).code : GoRune)) || _r == ((((("3" : GoString))).code : GoRune)) || _r == ((((("4" : GoString))).code : GoRune)) || _r == ((((("5" : GoString))).code : GoRune)) || _r == ((((("6" : GoString))).code : GoRune)) || _r == ((((("7" : GoString))).code : GoRune)) || _r == ((((("8" : GoString))).code : GoRune)) || _r == ((((("9" : GoString))).code : GoRune)) || _r == ((((("," : GoString))).code : GoRune)) || _r == ((((("-" : GoString))).code : GoRune)) || _r == ((((("+" : GoString))).code : GoRune))) {
                    if (_i < ((3 : GoInt))) {
                        return { _0 : (""), _1 : (""), _2 : false };
                    };
                    return { _0 : _s.__slice__(0, _i), _1 : _s.__slice__(_i), _2 : true };
                };
            };
            if ((_s != null ? _s.length : ((0 : GoInt))) < ((3 : GoInt))) {
                return { _0 : (""), _1 : (""), _2 : false };
            };
            return { _0 : _s, _1 : (""), _2 : true };
        } else {
            for (_i => _r in _s) {
                if (_r == (((((">" : GoString))).code : GoRune))) {
                    return { _0 : _s.__slice__(((1 : GoInt)), _i), _1 : _s.__slice__(_i + ((1 : GoInt))), _2 : true };
                };
            };
            return { _0 : (""), _1 : (""), _2 : false };
        };
    }
/**
    // tzsetOffset returns the timezone offset at the start of the tzset string s,
    // and the remainder of s, and reports whether the parsing is OK.
    // The timezone offset is returned as a number of seconds.
**/
function _tzsetOffset(_s:GoString):{ var _0 : GoInt; var _1 : GoString; var _2 : Bool; } {
        var _offset:GoInt = ((0 : GoInt)), _rest:GoString = (("" : GoString)), _ok:Bool = false;
        if ((_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : (""), _2 : false };
        };
        var _neg:Bool = false;
        if ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("+" : GoString))).code : GoRune))) {
            _s = _s.__slice__(((1 : GoInt)));
        } else if ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("-" : GoString))).code : GoRune))) {
            _s = _s.__slice__(((1 : GoInt)));
            _neg = true;
        };
        var _hours:GoInt = ((0 : GoInt));
        {
            var __tmp__ = _tzsetNum(_s, ((0 : GoInt)), ((168 : GoInt)));
            _hours = __tmp__._0;
            _s = __tmp__._1;
            _ok = __tmp__._2;
        };
        if (!_ok) {
            return { _0 : ((0 : GoInt)), _1 : (""), _2 : false };
        };
        var _off:GoInt = _hours * ((3600 : GoInt));
        if (((_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt))) || ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) != (((((":" : GoString))).code : GoRune)))) {
            if (_neg) {
                _off = -_off;
            };
            return { _0 : _off, _1 : _s, _2 : true };
        };
        var _mins:GoInt = ((0 : GoInt));
        {
            var __tmp__ = _tzsetNum(_s.__slice__(((1 : GoInt))), ((0 : GoInt)), ((59 : GoInt)));
            _mins = __tmp__._0;
            _s = __tmp__._1;
            _ok = __tmp__._2;
        };
        if (!_ok) {
            return { _0 : ((0 : GoInt)), _1 : (""), _2 : false };
        };
        _off = _off + (_mins * ((60 : GoInt)));
        if (((_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt))) || ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) != (((((":" : GoString))).code : GoRune)))) {
            if (_neg) {
                _off = -_off;
            };
            return { _0 : _off, _1 : _s, _2 : true };
        };
        var _secs:GoInt = ((0 : GoInt));
        {
            var __tmp__ = _tzsetNum(_s.__slice__(((1 : GoInt))), ((0 : GoInt)), ((59 : GoInt)));
            _secs = __tmp__._0;
            _s = __tmp__._1;
            _ok = __tmp__._2;
        };
        if (!_ok) {
            return { _0 : ((0 : GoInt)), _1 : (""), _2 : false };
        };
        _off = _off + (_secs);
        if (_neg) {
            _off = -_off;
        };
        return { _0 : _off, _1 : _s, _2 : true };
    }
/**
    // tzsetRule parses a rule from a tzset string.
    // It returns the rule, and the remainder of the string, and reports success.
**/
function _tzsetRule(_s:GoString):{ var _0 : T_rule; var _1 : GoString; var _2 : Bool; } {
        var _r:T_rule = new T_rule();
        if ((_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((new T_rule() : T_rule)), _1 : (""), _2 : false };
        };
        var _ok:Bool = false;
        if ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("J" : GoString))).code : GoRune))) {
            var _jday:GoInt = ((0 : GoInt));
            {
                var __tmp__ = _tzsetNum(_s.__slice__(((1 : GoInt))), ((1 : GoInt)), ((365 : GoInt)));
                _jday = __tmp__._0;
                _s = __tmp__._1;
                _ok = __tmp__._2;
            };
            if (!_ok) {
                return { _0 : ((new T_rule() : T_rule)), _1 : (""), _2 : false };
            };
            _r._kind = ((0 : GoInt));
            _r._day = _jday;
        } else if ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("M" : GoString))).code : GoRune))) {
            var _mon:GoInt = ((0 : GoInt));
            {
                var __tmp__ = _tzsetNum(_s.__slice__(((1 : GoInt))), ((1 : GoInt)), ((12 : GoInt)));
                _mon = __tmp__._0;
                _s = __tmp__._1;
                _ok = __tmp__._2;
            };
            if ((!_ok || ((_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt)))) || ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) != ((((("." : GoString))).code : GoRune)))) {
                return { _0 : ((new T_rule() : T_rule)), _1 : (""), _2 : false };
            };
            var _week:GoInt = ((0 : GoInt));
            {
                var __tmp__ = _tzsetNum(_s.__slice__(((1 : GoInt))), ((1 : GoInt)), ((5 : GoInt)));
                _week = __tmp__._0;
                _s = __tmp__._1;
                _ok = __tmp__._2;
            };
            if ((!_ok || ((_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt)))) || ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) != ((((("." : GoString))).code : GoRune)))) {
                return { _0 : ((new T_rule() : T_rule)), _1 : (""), _2 : false };
            };
            var _day:GoInt = ((0 : GoInt));
            {
                var __tmp__ = _tzsetNum(_s.__slice__(((1 : GoInt))), ((0 : GoInt)), ((6 : GoInt)));
                _day = __tmp__._0;
                _s = __tmp__._1;
                _ok = __tmp__._2;
            };
            if (!_ok) {
                return { _0 : ((new T_rule() : T_rule)), _1 : (""), _2 : false };
            };
            _r._kind = ((2 : GoInt));
            _r._day = _day;
            _r._week = _week;
            _r._mon = _mon;
        } else {
            var _day:GoInt = ((0 : GoInt));
            {
                var __tmp__ = _tzsetNum(_s, ((0 : GoInt)), ((365 : GoInt)));
                _day = __tmp__._0;
                _s = __tmp__._1;
                _ok = __tmp__._2;
            };
            if (!_ok) {
                return { _0 : ((new T_rule() : T_rule)), _1 : (""), _2 : false };
            };
            _r._kind = ((1 : GoInt));
            _r._day = _day;
        };
        if (((_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt))) || ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) != ((((("/" : GoString))).code : GoRune)))) {
            _r._time = ((7200 : GoInt));
            return { _0 : (_r == null ? null : _r.__copy__()), _1 : _s, _2 : true };
        };
        var __tmp__ = _tzsetOffset(_s.__slice__(((1 : GoInt)))), _offset:GoInt = __tmp__._0, _s:GoString = __tmp__._1, _ok:Bool = __tmp__._2;
        if (!_ok) {
            return { _0 : ((new T_rule() : T_rule)), _1 : (""), _2 : false };
        };
        _r._time = _offset;
        return { _0 : (_r == null ? null : _r.__copy__()), _1 : _s, _2 : true };
    }
/**
    // tzsetNum parses a number from a tzset string.
    // It returns the number, and the remainder of the string, and reports success.
    // The number must be between min and max.
**/
function _tzsetNum(_s:GoString, _min:GoInt, _max:GoInt):{ var _0 : GoInt; var _1 : GoString; var _2 : Bool; } {
        var _num:GoInt = ((0 : GoInt)), _rest:GoString = (("" : GoString)), _ok:Bool = false;
        if ((_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : (""), _2 : false };
        };
        _num = ((0 : GoInt));
        for (_i => _r in _s) {
            if ((_r < ((((("0" : GoString))).code : GoRune))) || (_r > ((((("9" : GoString))).code : GoRune)))) {
                if ((_i == ((0 : GoInt))) || (_num < _min)) {
                    return { _0 : ((0 : GoInt)), _1 : (""), _2 : false };
                };
                return { _0 : _num, _1 : _s.__slice__(_i), _2 : true };
            };
            _num = _num * (((10 : GoInt)));
            _num = _num + (((_r : GoInt)) - ((((("0" : GoString))).code : GoRune)));
            if (_num > _max) {
                return { _0 : ((0 : GoInt)), _1 : (""), _2 : false };
            };
        };
        if (_num < _min) {
            return { _0 : ((0 : GoInt)), _1 : (""), _2 : false };
        };
        return { _0 : _num, _1 : (""), _2 : true };
    }
/**
    // tzruleTime takes a year, a rule, and a timezone offset,
    // and returns the number of seconds since the start of the year
    // that the rule takes effect.
**/
function _tzruleTime(_year:GoInt, _r:T_rule, _off:GoInt):GoInt {
        var _s:GoInt = ((0 : GoInt));
        {
            var __switchIndex__ = -1;
            while (true) {
                if (_r._kind == ((0 : GoInt))) {
                    _s = (_r._day - ((1 : GoInt))) * ((86400 : GoInt));
                    if (_isLeap(_year) && (_r._day >= ((60 : GoInt)))) {
                        _s = _s + (((86400 : GoInt)));
                    };
                    break;
                } else if (_r._kind == ((1 : GoInt))) {
                    _s = _r._day * ((86400 : GoInt));
                    break;
                } else if (_r._kind == ((2 : GoInt))) {
                    var _m1:GoInt = ((_r._mon + ((9 : GoInt))) % ((12 : GoInt))) + ((1 : GoInt));
                    var _yy0:GoInt = _year;
                    if (_r._mon <= ((2 : GoInt))) {
                        _yy0--;
                    };
                    var _yy1:GoInt = _yy0 / ((100 : GoInt));
                    var _yy2:GoInt = _yy0 % ((100 : GoInt));
                    var _dow:GoInt = ((((((((((26 : GoInt)) * _m1) - ((2 : GoInt))) / ((10 : GoInt))) + ((1 : GoInt))) + _yy2) + (_yy2 / ((4 : GoInt)))) + (_yy1 / ((4 : GoInt)))) - (((2 : GoInt)) * _yy1)) % ((7 : GoInt));
                    if (_dow < ((0 : GoInt))) {
                        _dow = _dow + (((7 : GoInt)));
                    };
                    var _d:GoInt = _r._day - _dow;
                    if (_d < ((0 : GoInt))) {
                        _d = _d + (((7 : GoInt)));
                    };
                    {
                        var _i:GoInt = ((1 : GoInt));
                        Go.cfor(_i < _r._week, _i++, {
                            if ((_d + ((7 : GoInt))) >= _daysIn(((_r._mon : Month)), _year)) {
                                break;
                            };
                            _d = _d + (((7 : GoInt)));
                        });
                    };
                    _d = _d + ((((_daysBefore != null ? _daysBefore[_r._mon - ((1 : GoInt))] : ((0 : GoInt32))) : GoInt)));
                    if (_isLeap(_year) && (_r._mon > ((2 : GoInt)))) {
                        _d++;
                    };
                    _s = _d * ((86400 : GoInt));
                    break;
                };
                break;
            };
        };
        return (_s + _r._time) - _off;
    }
/**
    // LoadLocation returns the Location with the given name.
    //
    // If the name is "" or "UTC", LoadLocation returns UTC.
    // If the name is "Local", LoadLocation returns Local.
    //
    // Otherwise, the name is taken to be a location name corresponding to a file
    // in the IANA Time Zone database, such as "America/New_York".
    //
    // LoadLocation looks for the IANA Time Zone database in the following
    // locations in order:
    //
    // - the directory or uncompressed zip file named by the ZONEINFO environment variable
    // - on a Unix system, the system standard installation location
    // - $GOROOT/lib/time/zoneinfo.zip
    // - the time/tzdata package, if it was imported
**/
function loadLocation(_name:GoString):{ var _0 : Location; var _1 : Error; } {
        if ((_name == ("")) || (_name == ((("UTC" : GoString))))) {
            return { _0 : utc, _1 : ((null : stdgo.Error)) };
        };
        if (_name == ((("Local" : GoString)))) {
            return { _0 : local, _1 : ((null : stdgo.Error)) };
        };
        if ((_containsDotDot(_name) || ((_name != null ? _name[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("/" : GoString))).code : GoRune)))) || ((_name != null ? _name[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("\\" : GoString))).code : GoRune)))) {
            return { _0 : null, _1 : _errLocation };
        };
        _zoneinfoOnce.do_(function():Void {
            var __tmp__ = stdgo.syscall.Syscall.getenv(((("ZONEINFO" : GoString)))), _env:GoString = __tmp__._0, _:Bool = __tmp__._1;
            _zoneinfo = Go.pointer(_env);
        });
        var _firstErr:Error = ((null : stdgo.Error));
        if (_zoneinfo.value != ("")) {
            {
                var __tmp__ = _loadTzinfoFromDirOrZip(_zoneinfo.value, _name), _zoneData:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    {
                        var __tmp__ = loadLocationFromTZData(_name, _zoneData), _z:Location = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err == null) {
                            return { _0 : _z, _1 : ((null : stdgo.Error)) };
                        };
                    };
                    _firstErr = _err;
                } else if (_err != ((2 : GoUIntptr))) {
                    _firstErr = _err;
                };
            };
        };
        {
            var __tmp__ = _loadLocation(_name, _zoneSources), _z:Location = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                return { _0 : _z, _1 : ((null : stdgo.Error)) };
            } else if (_firstErr == null) {
                _firstErr = _err;
            };
        };
        return { _0 : null, _1 : _firstErr };
    }
/**
    // containsDotDot reports whether s contains "..".
**/
function _containsDotDot(_s:GoString):Bool {
        if ((_s != null ? _s.length : ((0 : GoInt))) < ((2 : GoInt))) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((_s != null ? _s.length : ((0 : GoInt))) - ((1 : GoInt))), _i++, {
                if (((_s != null ? _s[_i] : ((0 : GoUInt8))) == ((((("." : GoString))).code : GoRune))) && ((_s != null ? _s[_i + ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("." : GoString))).code : GoRune)))) {
                    return true;
                };
            });
        };
        return false;
    }
function _initLocal():Void {
        _localLoc._name = ((("Local" : GoString)));
        var _z:T_zone = ((new T_zone() : T_zone));
        var _d:stdgo.syscall.js.Js.Value = stdgo.syscall.js.Js.global().get(((("Date" : GoString)))).new_();
        var _offset:GoInt = _d.call(((("getTimezoneOffset" : GoString)))).int() * ((-1 : GoInt));
        _z._offset = _offset * ((60 : GoInt));
        _z._name = ((("UTC" : GoString)));
        if (_offset < ((0 : GoInt))) {
            _z._name = _z._name + (((("-" : GoString))));
            _offset = _offset * (((-1 : GoInt)));
        } else {
            _z._name = _z._name + (((("+" : GoString))));
        };
        _z._name = _z._name + (_itoa(_offset / ((60 : GoInt))));
        var _min:GoInt = _offset % ((60 : GoInt));
        if (_min != ((0 : GoInt))) {
            _z._name = _z._name + ((((":" : GoString))) + _itoa(_min));
        };
        _localLoc._zone = ((new Slice<T_zone>((_z == null ? null : _z.__copy__())) : Slice<T_zone>));
    }
/**
    // itoa is like strconv.Itoa but only works for values of i in range [0,99].
    // It panics if i is out of range.
**/
function _itoa(_i:GoInt):GoString {
        if (_i < ((10 : GoInt))) {
            return ((("0123456789" : GoString))).__slice__(_i, _i + ((1 : GoInt)));
        };
        return ((("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : GoString))).__slice__(_i * ((2 : GoInt)), (_i * ((2 : GoInt))) + ((2 : GoInt)));
    }
/**
    // registerLoadFromEmbeddedTZData is called by the time/tzdata package,
    // if it is imported.
**/
function _registerLoadFromEmbeddedTZData(_f:GoString -> { var _0 : GoString; var _1 : Error; }):Void {
        _loadFromEmbeddedTZData = _f;
    }
/**
    // Make a string by stopping at the first NUL
**/
function _byteString(_p:Slice<GoByte>):GoString {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_p != null ? _p.length : ((0 : GoInt))), _i++, {
                if ((_p != null ? _p[_i] : ((0 : GoUInt8))) == ((0 : GoUInt8))) {
                    return ((_p.__slice__(((0 : GoInt)), _i) : GoString));
                };
            });
        };
        return ((_p : GoString));
    }
/**
    // LoadLocationFromTZData returns a Location with the given name
    // initialized from the IANA Time Zone database-formatted data.
    // The data should be in the format of a standard IANA time zone file
    // (for example, the content of /etc/localtime on Unix systems).
**/
function loadLocationFromTZData(_name:GoString, _data:Slice<GoByte>):{ var _0 : Location; var _1 : Error; } {
        var _d:T_dataIO = ((new T_dataIO(_data, false) : T_dataIO));
        {
            var _magic:Slice<GoUInt8> = _d._read(((4 : GoInt)));
            if (((_magic : GoString)) != ((("TZif" : GoString)))) {
                return { _0 : null, _1 : _badData };
            };
        };
        var _version:GoInt = ((0 : GoInt));
        var _p:Slice<GoByte> = ((null : Slice<GoUInt8>));
        {
            _p = _d._read(((16 : GoInt)));
            if ((_p != null ? _p.length : ((0 : GoInt))) != ((16 : GoInt))) {
                return { _0 : null, _1 : _badData };
            } else {
                if ((_p != null ? _p[((0 : GoInt))] : ((0 : GoUInt8))) == ((0 : GoUInt8))) {
                    _version = ((1 : GoInt));
                } else if ((_p != null ? _p[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("2" : GoString))).code : GoRune))) {
                    _version = ((2 : GoInt));
                } else if ((_p != null ? _p[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("3" : GoString))).code : GoRune))) {
                    _version = ((3 : GoInt));
                } else {
                    return { _0 : null, _1 : _badData };
                };
            };
        };
        {};
        var _n:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 6) ((0 : GoInt))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((6 : GoInt)), _i++, {
                var __tmp__ = _d._big4(), _nn:GoUInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    return { _0 : null, _1 : _badData };
                };
                if (((((_nn : GoInt)) : GoUInt32)) != _nn) {
                    return { _0 : null, _1 : _badData };
                };
                if (_n != null) _n[_i] = ((_nn : GoInt));
            });
        };
        var _is64:Bool = false;
        if (_version > ((1 : GoInt))) {
            var _skip:GoInt = (((((((_n != null ? _n[((3 : GoInt))] : ((0 : GoInt))) * ((4 : GoInt))) + (_n != null ? _n[((3 : GoInt))] : ((0 : GoInt)))) + ((_n != null ? _n[((4 : GoInt))] : ((0 : GoInt))) * ((6 : GoInt)))) + (_n != null ? _n[((5 : GoInt))] : ((0 : GoInt)))) + ((_n != null ? _n[((2 : GoInt))] : ((0 : GoInt))) * ((8 : GoInt)))) + (_n != null ? _n[((1 : GoInt))] : ((0 : GoInt)))) + (_n != null ? _n[((0 : GoInt))] : ((0 : GoInt)));
            _skip = _skip + (((20 : GoInt)));
            _d._read(_skip);
            _is64 = true;
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((6 : GoInt)), _i++, {
                    var __tmp__ = _d._big4(), _nn:GoUInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        return { _0 : null, _1 : _badData };
                    };
                    if (((((_nn : GoInt)) : GoUInt32)) != _nn) {
                        return { _0 : null, _1 : _badData };
                    };
                    if (_n != null) _n[_i] = ((_nn : GoInt));
                });
            };
        };
        var _size:GoInt = ((4 : GoInt));
        if (_is64) {
            _size = ((8 : GoInt));
        };
        var _txtimes:T_dataIO = ((new T_dataIO(_d._read((_n != null ? _n[((3 : GoInt))] : ((0 : GoInt))) * _size), false) : T_dataIO));
        var _txzones:Slice<GoUInt8> = _d._read((_n != null ? _n[((3 : GoInt))] : ((0 : GoInt))));
        var _zonedata:T_dataIO = ((new T_dataIO(_d._read((_n != null ? _n[((4 : GoInt))] : ((0 : GoInt))) * ((6 : GoInt))), false) : T_dataIO));
        var _abbrev:Slice<GoUInt8> = _d._read((_n != null ? _n[((5 : GoInt))] : ((0 : GoInt))));
        _d._read((_n != null ? _n[((2 : GoInt))] : ((0 : GoInt))) * (_size + ((4 : GoInt))));
        var _isstd:Slice<GoUInt8> = _d._read((_n != null ? _n[((1 : GoInt))] : ((0 : GoInt))));
        var _isutc:Slice<GoUInt8> = _d._read((_n != null ? _n[((0 : GoInt))] : ((0 : GoInt))));
        if (_d._error) {
            return { _0 : null, _1 : _badData };
        };
        var _extend:GoString = (("" : GoString));
        var _rest:Slice<GoUInt8> = _d._rest();
        if ((((_rest != null ? _rest.length : ((0 : GoInt))) > ((2 : GoInt))) && ((_rest != null ? _rest[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("\n" : GoString))).code : GoRune)))) && ((_rest != null ? _rest[(_rest != null ? _rest.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))) == ((((("\n" : GoString))).code : GoRune)))) {
            _extend = ((_rest.__slice__(((1 : GoInt)), (_rest != null ? _rest.length : ((0 : GoInt))) - ((1 : GoInt))) : GoString));
        };
        var _nzone:GoInt = (_n != null ? _n[((4 : GoInt))] : ((0 : GoInt)));
        if (_nzone == ((0 : GoInt))) {
            return { _0 : null, _1 : _badData };
        };
        var _zones:Slice<T_zone> = new Slice<T_zone>(...[for (i in 0 ... ((_nzone : GoInt)).toBasic()) new T_zone()]);
        for (_i => _ in _zones) {
            var _ok:Bool = false;
            var _n:GoUInt32 = ((0 : GoUInt32));
            {
                {
                    var __tmp__ = _zonedata._big4();
                    _n = __tmp__._0;
                    _ok = __tmp__._1;
                };
                if (!_ok) {
                    return { _0 : null, _1 : _badData };
                };
            };
            if (((((_n : GoInt)) : GoUInt32)) != _n) {
                return { _0 : null, _1 : _badData };
            };
            (_zones != null ? _zones[_i] : new T_zone())._offset = ((((_n : GoInt32)) : GoInt));
            var _b:GoByte = ((0 : GoUInt8));
            {
                {
                    var __tmp__ = _zonedata._byte();
                    _b = __tmp__._0;
                    _ok = __tmp__._1;
                };
                if (!_ok) {
                    return { _0 : null, _1 : _badData };
                };
            };
            (_zones != null ? _zones[_i] : new T_zone())._isDST = _b != ((0 : GoUInt8));
            {
                {
                    var __tmp__ = _zonedata._byte();
                    _b = __tmp__._0;
                    _ok = __tmp__._1;
                };
                if (!_ok || (((_b : GoInt)) >= (_abbrev != null ? _abbrev.length : ((0 : GoInt))))) {
                    return { _0 : null, _1 : _badData };
                };
            };
            (_zones != null ? _zones[_i] : new T_zone())._name = _byteString(_abbrev.__slice__(_b));
            if ((false && ((_name != null ? _name.length : ((0 : GoInt))) > ((8 : GoInt)))) && ((_name.__slice__(0, ((8 : GoInt))) == ((("Etc/GMT+" : GoString)))) || (_name.__slice__(0, ((8 : GoInt))) == ((("Etc/GMT-" : GoString)))))) {
                if (_name != ((("Etc/GMT+0" : GoString)))) {
                    (_zones != null ? _zones[_i] : new T_zone())._name = _name.__slice__(((4 : GoInt)));
                };
            };
        };
        var _tx:Slice<T_zoneTrans> = new Slice<T_zoneTrans>(...[for (i in 0 ... (((_n != null ? _n[((3 : GoInt))] : ((0 : GoInt))) : GoInt)).toBasic()) new T_zoneTrans()]);
        for (_i => _ in _tx) {
            var _n:GoInt64 = ((0 : GoInt64));
            if (!_is64) {
                {
                    var __tmp__ = _txtimes._big4(), _n4:GoUInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        return { _0 : null, _1 : _badData };
                    } else {
                        _n = ((((_n4 : GoInt32)) : GoInt64));
                    };
                };
            } else {
                {
                    var __tmp__ = _txtimes._big8(), _n8:GoUInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        return { _0 : null, _1 : _badData };
                    } else {
                        _n = ((_n8 : GoInt64));
                    };
                };
            };
            (_tx != null ? _tx[_i] : new T_zoneTrans())._when = _n;
            if ((((_txzones != null ? _txzones[_i] : ((0 : GoUInt8))) : GoInt)) >= (_zones != null ? _zones.length : ((0 : GoInt)))) {
                return { _0 : null, _1 : _badData };
            };
            (_tx != null ? _tx[_i] : new T_zoneTrans())._index = (_txzones != null ? _txzones[_i] : ((0 : GoUInt8)));
            if (_i < (_isstd != null ? _isstd.length : ((0 : GoInt)))) {
                (_tx != null ? _tx[_i] : new T_zoneTrans())._isstd = (_isstd != null ? _isstd[_i] : ((0 : GoUInt8))) != ((0 : GoUInt8));
            };
            if (_i < (_isutc != null ? _isutc.length : ((0 : GoInt)))) {
                (_tx != null ? _tx[_i] : new T_zoneTrans())._isutc = (_isutc != null ? _isutc[_i] : ((0 : GoUInt8))) != ((0 : GoUInt8));
            };
        };
        if ((_tx != null ? _tx.length : ((0 : GoInt))) == ((0 : GoInt))) {
            _tx = (_tx != null ? _tx.__append__(((({ _when : (("-9223372036854775808" : GoInt64)), _index : ((0 : GoUInt8)), _isstd : false, _isutc : false } : T_zoneTrans)) == null ? null : (({ _when : (("-9223372036854775808" : GoInt64)), _index : ((0 : GoUInt8)), _isstd : false, _isutc : false } : T_zoneTrans)).__copy__())) : new Slice<T_zoneTrans>(((({ _when : (("-9223372036854775808" : GoInt64)), _index : ((0 : GoUInt8)), _isstd : false, _isutc : false } : T_zoneTrans)) == null ? null : (({ _when : (("-9223372036854775808" : GoInt64)), _index : ((0 : GoUInt8)), _isstd : false, _isutc : false } : T_zoneTrans)).__copy__())));
        };
        var _l:Location = (({ _zone : _zones, _tx : _tx, _name : _name, _extend : _extend, _cacheStart : 0, _cacheEnd : 0, _cacheZone : ((null : T_zone)) } : Location));
        var __tmp__ = _now(), _sec:GoInt64 = __tmp__._0, _:GoInt32 = __tmp__._1, _:GoInt64 = __tmp__._2;
        for (_i => _ in _tx) {
            if (((_tx != null ? _tx[_i] : new T_zoneTrans())._when <= _sec) && (((_i + ((1 : GoInt))) == (_tx != null ? _tx.length : ((0 : GoInt)))) || (_sec < (_tx != null ? _tx[_i + ((1 : GoInt))] : new T_zoneTrans())._when))) {
                _l._cacheStart = (_tx != null ? _tx[_i] : new T_zoneTrans())._when;
                _l._cacheEnd = (("9223372036854775807" : GoInt64));
                _l._cacheZone = (_l._zone != null ? _l._zone[(_tx != null ? _tx[_i] : new T_zoneTrans())._index] : new T_zone());
                if ((_i + ((1 : GoInt))) < (_tx != null ? _tx.length : ((0 : GoInt)))) {
                    _l._cacheEnd = (_tx != null ? _tx[_i + ((1 : GoInt))] : new T_zoneTrans())._when;
                } else if (_l._extend != ("")) {
                    {
                        var __tmp__ = _tzset(_l._extend, _l._cacheEnd, _sec), _name:GoString = __tmp__._0, _offset:GoInt = __tmp__._1, _estart:GoInt64 = __tmp__._2, _eend:GoInt64 = __tmp__._3, _isDST:Bool = __tmp__._4, _ok:Bool = __tmp__._5;
                        if (_ok) {
                            _l._cacheStart = _estart;
                            _l._cacheEnd = _eend;
                            {
                                var _zoneIdx:GoInt = _findZone(_l._zone, _name, _offset, _isDST);
                                if (_zoneIdx != ((-1 : GoInt))) {
                                    _l._cacheZone = (_l._zone != null ? _l._zone[_zoneIdx] : new T_zone());
                                } else {
                                    _l._cacheZone = (({ _name : _name, _offset : _offset, _isDST : _isDST } : T_zone));
                                };
                            };
                        };
                    };
                };
                break;
            };
        };
        return { _0 : _l, _1 : ((null : stdgo.Error)) };
    }
function _findZone(_zones:Slice<T_zone>, _name:GoString, _offset:GoInt, _isDST:Bool):GoInt {
        for (_i => _z in _zones) {
            if (((_z._name == _name) && (_z._offset == _offset)) && (_z._isDST == _isDST)) {
                return _i;
            };
        };
        return ((-1 : GoInt));
    }
/**
    // loadTzinfoFromDirOrZip returns the contents of the file with the given name
    // in dir. dir can either be an uncompressed zip file, or a directory.
**/
function _loadTzinfoFromDirOrZip(_dir:GoString, _name:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        if (((_dir != null ? _dir.length : ((0 : GoInt))) > ((4 : GoInt))) && (_dir.__slice__((_dir != null ? _dir.length : ((0 : GoInt))) - ((4 : GoInt))) == (((".zip" : GoString))))) {
            return _loadTzinfoFromZip(_dir, _name);
        };
        if (_dir != ("")) {
            _name = (_dir + ((("/" : GoString)))) + _name;
        };
        return _readFile(_name);
    }
/**
    // get4 returns the little-endian 32-bit value in b.
**/
function _get4(_b:Slice<GoByte>):GoInt {
        if ((_b != null ? _b.length : ((0 : GoInt))) < ((4 : GoInt))) {
            return ((0 : GoInt));
        };
        return (((((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) : GoInt)) | ((((_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8))) : GoInt)) << ((8 : GoUnTypedInt)))) | ((((_b != null ? _b[((2 : GoInt))] : ((0 : GoUInt8))) : GoInt)) << ((16 : GoUnTypedInt)))) | ((((_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8))) : GoInt)) << ((24 : GoUnTypedInt)));
    }
/**
    // get2 returns the little-endian 16-bit value in b.
**/
function _get2(_b:Slice<GoByte>):GoInt {
        if ((_b != null ? _b.length : ((0 : GoInt))) < ((2 : GoInt))) {
            return ((0 : GoInt));
        };
        return (((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) : GoInt)) | ((((_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8))) : GoInt)) << ((8 : GoUnTypedInt)));
    }
/**
    // loadTzinfoFromZip returns the contents of the file with the given name
    // in the given uncompressed zip file.
**/
function _loadTzinfoFromZip(_zipfile:GoString, _name:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        var __tmp__ = _open(_zipfile), _fd:GoUIntptr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : _err };
        };
        try {
            {
                var _a0 = _fd;
                __deferstack__.unshift(() -> _closefd(_a0));
            };
            {};
            var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((22 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var _err:stdgo.Error = _preadn(_fd, _buf, ((-22 : GoInt)));
                if ((_err != null) || (_get4(_buf) != ((101010256 : GoInt)))) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : ((null : Slice<GoUInt8>)), _1 : stdgo.errors.Errors.new_(((("corrupt zip file " : GoString))) + _zipfile) };
                    };
                };
            };
            var _n:GoInt = _get2(_buf.__slice__(((10 : GoInt))));
            var _size:GoInt = _get4(_buf.__slice__(((12 : GoInt))));
            var _off:GoInt = _get4(_buf.__slice__(((16 : GoInt))));
            _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var _err:stdgo.Error = _preadn(_fd, _buf, _off);
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : ((null : Slice<GoUInt8>)), _1 : stdgo.errors.Errors.new_(((("corrupt zip file " : GoString))) + _zipfile) };
                    };
                };
            };
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _n, _i++, {
                    if (_get4(_buf) != ((33639248 : GoInt))) {
                        break;
                    };
                    var _meth:GoInt = _get2(_buf.__slice__(((10 : GoInt))));
                    var _size:GoInt = _get4(_buf.__slice__(((24 : GoInt))));
                    var _namelen:GoInt = _get2(_buf.__slice__(((28 : GoInt))));
                    var _xlen:GoInt = _get2(_buf.__slice__(((30 : GoInt))));
                    var _fclen:GoInt = _get2(_buf.__slice__(((32 : GoInt))));
                    var _off:GoInt = _get4(_buf.__slice__(((42 : GoInt))));
                    var _zname:Slice<GoUInt8> = _buf.__slice__(((46 : GoInt)), ((46 : GoInt)) + _namelen);
                    _buf = _buf.__slice__(((((46 : GoInt)) + _namelen) + _xlen) + _fclen);
                    if (((_zname : GoString)) != _name) {
                        continue;
                    };
                    if (_meth != ((0 : GoInt))) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : ((null : Slice<GoUInt8>)), _1 : stdgo.errors.Errors.new_(((((("unsupported compression for " : GoString))) + _name) + (((" in " : GoString)))) + _zipfile) };
                        };
                    };
                    _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((30 : GoInt)) + _namelen : GoInt)).toBasic()) ((0 : GoUInt8))]);
                    {
                        var _err:stdgo.Error = _preadn(_fd, _buf, _off);
                        if (((((_err != null) || (_get4(_buf) != ((67324752 : GoInt)))) || (_get2(_buf.__slice__(((8 : GoInt)))) != _meth)) || (_get2(_buf.__slice__(((26 : GoInt)))) != _namelen)) || (((_buf.__slice__(((30 : GoInt)), ((30 : GoInt)) + _namelen) : GoString)) != _name)) {
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return { _0 : ((null : Slice<GoUInt8>)), _1 : stdgo.errors.Errors.new_(((("corrupt zip file " : GoString))) + _zipfile) };
                            };
                        };
                    };
                    _xlen = _get2(_buf.__slice__(((28 : GoInt))));
                    _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt8))]);
                    {
                        var _err:stdgo.Error = _preadn(_fd, _buf, ((_off + ((30 : GoInt))) + _namelen) + _xlen);
                        if (_err != null) {
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return { _0 : ((null : Slice<GoUInt8>)), _1 : stdgo.errors.Errors.new_(((("corrupt zip file " : GoString))) + _zipfile) };
                            };
                        };
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : _buf, _1 : ((null : stdgo.Error)) };
                    };
                });
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return { _0 : ((null : Slice<GoUInt8>)), _1 : ((2 : GoUIntptr)) };
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return { _0 : ((null : Slice<GoUInt8>)), _1 : ((null : stdgo.Error)) };
            };
        };
    }
/**
    // loadTzinfo returns the time zone information of the time zone
    // with the given name, from a given source. A source may be a
    // timezone database directory, tzdata database file or an uncompressed
    // zip file, containing the contents of such a directory.
**/
function _loadTzinfo(_name:GoString, _source:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        if (((_source != null ? _source.length : ((0 : GoInt))) >= ((6 : GoInt))) && (_source.__slice__((_source != null ? _source.length : ((0 : GoInt))) - ((6 : GoInt))) == ((("tzdata" : GoString))))) {
            return _loadTzinfoFromTzdata(_source, _name);
        };
        return _loadTzinfoFromDirOrZip(_source, _name);
    }
/**
    // loadLocation returns the Location with the given name from one of
    // the specified sources. See loadTzinfo for a list of supported sources.
    // The first timezone data matching the given name that is successfully loaded
    // and parsed is returned as a Location.
**/
function _loadLocation(_name:GoString, _sources:Slice<GoString>):{ var _0 : Location; var _1 : Error; } {
        var _z:Location = ((null : Location)), _firstErr:Error = ((null : stdgo.Error));
        for (_ => _source in _sources) {
            var __tmp__ = _loadTzinfo(_name, _source), _zoneData:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                {
                    {
                        var __tmp__ = loadLocationFromTZData(_name, _zoneData);
                        _z = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err == null) {
                        return { _0 : _z, _1 : ((null : stdgo.Error)) };
                    };
                };
            };
            if ((_firstErr == null) && (_err != ((2 : GoUIntptr)))) {
                _firstErr = _err;
            };
        };
        if (_loadFromEmbeddedTZData != null) {
            var __tmp__ = _loadFromEmbeddedTZData(_name), _zonedata:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                {
                    {
                        var __tmp__ = loadLocationFromTZData(_name, ((_zonedata : Slice<GoByte>)));
                        _z = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err == null) {
                        return { _0 : _z, _1 : ((null : stdgo.Error)) };
                    };
                };
            };
            if ((_firstErr == null) && (_err != ((2 : GoUIntptr)))) {
                _firstErr = _err;
            };
        };
        if (_firstErr != null) {
            return { _0 : null, _1 : _firstErr };
        };
        return { _0 : null, _1 : stdgo.errors.Errors.new_(((("unknown time zone " : GoString))) + _name) };
    }
/**
    // readFile reads and returns the content of the named file.
    // It is a trivial implementation of os.ReadFile, reimplemented
    // here to avoid depending on io/ioutil or os.
    // It returns an error if name exceeds maxFileSize bytes.
**/
function _readFile(_name:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        var __tmp__ = _open(_name), _f:GoUIntptr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : _err };
        };
        try {
            {
                var _a0 = _f;
                __deferstack__.unshift(() -> _closefd(_a0));
            };
            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 4096) ((0 : GoUInt8))]), _ret:Slice<GoByte> = ((null : Slice<GoUInt8>)), _n:GoInt = ((0 : GoInt));
            while (true) {
                {
                    var __tmp__ = _read(_f, _buf.__slice__(0));
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_n > ((0 : GoInt))) {
                    _ret = (_ret != null ? _ret.__append__(..._buf.__slice__(0, _n).__toArray__()) : new Slice<GoUInt8>(..._buf.__slice__(0, _n).__toArray__()));
                };
                if ((_n == ((0 : GoInt))) || (_err != null)) {
                    break;
                };
                if ((_ret != null ? _ret.length : ((0 : GoInt))) > ((10485760 : GoInt))) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : ((null : Slice<GoUInt8>)), _1 : new T_fileSizeError_wrapper(Go.pointer(((_name : T_fileSizeError)))) };
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return { _0 : _ret, _1 : _err };
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return { _0 : ((null : Slice<GoUInt8>)), _1 : ((null : stdgo.Error)) };
            };
        };
    }
@:build(stdgo.internal.Macro.wrapper(ParseError)) class ParseError_static_extension {

}
@:build(stdgo.internal.Macro.wrapper(Timer)) class Timer_static_extension {

}
@:build(stdgo.internal.Macro.wrapper(Ticker)) class Ticker_static_extension {

}
@:build(stdgo.internal.Macro.wrapper(Time)) class Time_static_extension {

}
@:build(stdgo.internal.Macro.wrapper(Month)) class Month_static_extension {
    public static function toString(_m:Month):GoString {
        _m;
        if ((((1 : GoInt)) <= _m) && (_m <= ((12 : GoInt)))) {
            return (_longMonthNames != null ? _longMonthNames[_m - ((1 : GoInt))] : (("" : GoString)));
        };
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((20 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _n:GoInt = _fmtInt(_buf, ((_m : GoUInt64)));
        return (((("%!Month(" : GoString))) + ((_buf.__slice__(_n) : GoString))) + (((")" : GoString)));
    }
}
@:build(stdgo.internal.Macro.wrapper(Weekday)) class Weekday_static_extension {
    public static function toString(_d:Weekday):GoString {
        _d;
        if ((((0 : GoInt)) <= _d) && (_d <= ((6 : GoInt)))) {
            return (_longDayNames != null ? _longDayNames[_d] : (("" : GoString)));
        };
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((20 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _n:GoInt = _fmtInt(_buf, ((_d : GoUInt64)));
        return (((("%!Weekday(" : GoString))) + ((_buf.__slice__(_n) : GoString))) + (((")" : GoString)));
    }
}
@:build(stdgo.internal.Macro.wrapper(Duration)) class Duration_static_extension {
    public static function round(_d:Duration, _m:Duration):Duration {
        _d;
        if (_m <= ((0 : GoInt64))) {
            return _d;
        };
        var _r:Duration = _d % _m;
        if (_d < ((0 : GoInt64))) {
            _r = -_r;
            if (_lessThanHalf(_r, _m)) {
                return _d + _r;
            };
            {
                var _d1:Duration = (_d - _m) + _r;
                if (_d1 < _d) {
                    return _d1;
                };
            };
            return (("-9223372036854775808" : GoInt64));
        };
        if (_lessThanHalf(_r, _m)) {
            return _d - _r;
        };
        {
            var _d1:Duration = (_d + _m) - _r;
            if (_d1 > _d) {
                return _d1;
            };
        };
        return (("9223372036854775807" : GoInt64));
    }
    public static function truncate(_d:Duration, _m:Duration):Duration {
        _d;
        if (_m <= ((0 : GoInt64))) {
            return _d;
        };
        return _d - (_d % _m);
    }
    public static function hours(_d:Duration):GoFloat64 {
        _d;
        var _hour:Duration = _d / (("3600000000000" : GoInt64));
        var _nsec:Duration = _d % (("3600000000000" : GoInt64));
        return ((_hour : GoFloat64)) + (((_nsec : GoFloat64)) / ((3.6e+12 : GoFloat64)));
    }
    public static function minutes(_d:Duration):GoFloat64 {
        _d;
        var _min:Duration = _d / (("60000000000" : GoInt64));
        var _nsec:Duration = _d % (("60000000000" : GoInt64));
        return ((_min : GoFloat64)) + (((_nsec : GoFloat64)) / ((6e+10 : GoFloat64)));
    }
    public static function seconds(_d:Duration):GoFloat64 {
        _d;
        var _sec:Duration = _d / ((1000000000 : GoInt64));
        var _nsec:Duration = _d % ((1000000000 : GoInt64));
        return ((_sec : GoFloat64)) + (((_nsec : GoFloat64)) / ((1e+09 : GoFloat64)));
    }
    public static function milliseconds(_d:Duration):GoInt64 {
        _d;
        return ((_d : GoInt64)) / ((1e+06 : GoInt64));
    }
    public static function microseconds(_d:Duration):GoInt64 {
        _d;
        return ((_d : GoInt64)) / ((1000 : GoInt64));
    }
    public static function nanoseconds(_d:Duration):GoInt64 {
        _d;
        return ((_d : GoInt64));
    }
    public static function toString(_d:Duration):GoString {
        _d;
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 32) ((0 : GoUInt8))]);
        var _w:GoInt = (_buf != null ? _buf.length : ((0 : GoInt)));
        var _u:GoUInt64 = ((_d : GoUInt64));
        var _neg:Bool = _d < ((0 : GoInt64));
        if (_neg) {
            _u = -_u;
        };
        if (_u < ((((1000000000 : GoInt64)) : GoUInt64))) {
            var _prec:GoInt = ((0 : GoInt));
            _w--;
            if (_buf != null) _buf[_w] = ((((("s" : GoString))).code : GoRune));
            _w--;
            if (_u == ((0 : GoUInt64))) {
                return ((("0s" : GoString)));
            } else if (_u < ((((1000 : GoInt64)) : GoUInt64))) {
                _prec = ((0 : GoInt));
                if (_buf != null) _buf[_w] = ((((("n" : GoString))).code : GoRune));
            } else if (_u < ((((1000000 : GoInt64)) : GoUInt64))) {
                _prec = ((3 : GoInt));
                _w--;
                Go.copy(_buf.__slice__(_w), ((("µ" : GoString))));
            } else {
                _prec = ((6 : GoInt));
                if (_buf != null) _buf[_w] = ((((("m" : GoString))).code : GoRune));
            };
            {
                var __tmp__ = _fmtFrac(_buf.__slice__(0, _w), _u, _prec);
                _w = __tmp__._0;
                _u = __tmp__._1;
            };
            _w = _fmtInt(_buf.__slice__(0, _w), _u);
        } else {
            _w--;
            if (_buf != null) _buf[_w] = ((((("s" : GoString))).code : GoRune));
            {
                var __tmp__ = _fmtFrac(_buf.__slice__(0, _w), _u, ((9 : GoInt)));
                _w = __tmp__._0;
                _u = __tmp__._1;
            };
            _w = _fmtInt(_buf.__slice__(0, _w), _u % ((60 : GoUInt64)));
            _u = _u / (((60 : GoUInt64)));
            if (_u > ((0 : GoUInt64))) {
                _w--;
                if (_buf != null) _buf[_w] = ((((("m" : GoString))).code : GoRune));
                _w = _fmtInt(_buf.__slice__(0, _w), _u % ((60 : GoUInt64)));
                _u = _u / (((60 : GoUInt64)));
                if (_u > ((0 : GoUInt64))) {
                    _w--;
                    if (_buf != null) _buf[_w] = ((((("h" : GoString))).code : GoRune));
                    _w = _fmtInt(_buf.__slice__(0, _w), _u);
                };
            };
        };
        if (_neg) {
            _w--;
            if (_buf != null) _buf[_w] = ((((("-" : GoString))).code : GoRune));
        };
        return ((_buf.__slice__(_w) : GoString));
    }
}
@:build(stdgo.internal.Macro.wrapper(Location)) class Location_static_extension {

}
@:build(stdgo.internal.Macro.wrapper(T_fileSizeError)) class T_fileSizeError_static_extension {
    public static function error(_f:T_fileSizeError):GoString {
        _f;
        return (((("time: file " : GoString))) + ((_f : GoString))) + (((" is too large" : GoString)));
    }
}
@:build(stdgo.internal.Macro.wrapper(T_dataIO)) class T_dataIO_static_extension {

}
