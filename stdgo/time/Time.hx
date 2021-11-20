package stdgo.time;
import stdgo.Chan;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.StdGoTypes;
@:structInit class ParseError {
    public function error():GoString {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_e.value.message == (("" : GoString))) {
            return (("parsing time " : GoString)) + _quote(_e.value.value) + ((" as " : GoString)) + _quote(_e.value.layout) + ((": cannot parse " : GoString)) + _quote(_e.value.valueElem) + ((" as " : GoString)) + _quote(_e.value.layoutElem);
        };
        return (("parsing time " : GoString)) + _quote(_e.value.value) + _e.value.message;
    }
    public var layout : GoString = (("" : GoString));
    public var value : GoString = (("" : GoString));
    public var layoutElem : GoString = (("" : GoString));
    public var valueElem : GoString = (("" : GoString));
    public var message : GoString = (("" : GoString));
    public function new(?layout:GoString, ?value:GoString, ?layoutElem:GoString, ?valueElem:GoString, ?message:GoString) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(layout) + " " + Go.string(value) + " " + Go.string(layoutElem) + " " + Go.string(valueElem) + " " + Go.string(message) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ParseError(layout, value, layoutElem, valueElem, message);
    }
    public function __set__(__tmp__) {
        this.layout = __tmp__.layout;
        this.value = __tmp__.value;
        this.layoutElem = __tmp__.layoutElem;
        this.valueElem = __tmp__.valueElem;
        this.message = __tmp__.message;
        return this;
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
    public function new(?_pp:GoUIntptr, ?_when:GoInt64, ?_period:GoInt64, ?_f:(AnyInterface, GoUIntptr) -> Void, ?_arg:AnyInterface, ?_seq:GoUIntptr, ?_nextwhen:GoInt64, ?_status:GoUInt32) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_pp) + " " + Go.string(_when) + " " + Go.string(_period) + " " + Go.string(_f) + " " + Go.string(_arg) + " " + Go.string(_seq) + " " + Go.string(_nextwhen) + " " + Go.string(_status) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_runtimeTimer(_pp, _when, _period, _f, _arg, _seq, _nextwhen, _status);
    }
    public function __set__(__tmp__) {
        this._pp = __tmp__._pp;
        this._when = __tmp__._when;
        this._period = __tmp__._period;
        this._f = __tmp__._f;
        this._arg = __tmp__._arg;
        this._seq = __tmp__._seq;
        this._nextwhen = __tmp__._nextwhen;
        this._status = __tmp__._status;
        return this;
    }
}
@:structInit class Timer {
    public function reset(_d:Duration):Bool {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_t.value._r._f == null) {
            throw "time: Reset called on uninitialized Timer";
        };
        var _w:GoInt64 = _when(_d);
        return _resetTimer(Go.pointer(_t.value._r), _w);
    }
    public function stop():Bool {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_t.value._r._f == null) {
            throw "time: Stop called on uninitialized Timer";
        };
        return _stopTimer(Go.pointer(_t.value._r));
    }
    public var c : Chan<Time> = new Chan<Time>(0, () -> new Time(), true);
    public var _r : T_runtimeTimer = new T_runtimeTimer();
    public function new(?c:Chan<Time>, ?_r:T_runtimeTimer) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(c) + " " + Go.string(_r) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Timer(c, _r);
    }
    public function __set__(__tmp__) {
        this.c = __tmp__.c;
        this._r = __tmp__._r;
        return this;
    }
}
@:structInit class Ticker {
    public function reset(_d:Duration):Void {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_t.value._r._f == null) {
            throw "time: Reset called on uninitialized Ticker";
        };
        _modTimer(Go.pointer(_t.value._r), _when(_d), _d.__t__, _t.value._r._f, Go.toInterface(_t.value._r._arg), _t.value._r._seq);
    }
    public function stop():Void {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _stopTimer(Go.pointer(_t.value._r));
    }
    public var c : Chan<Time> = new Chan<Time>(0, () -> new Time(), true);
    public var _r : T_runtimeTimer = new T_runtimeTimer();
    public function new(?c:Chan<Time>, ?_r:T_runtimeTimer) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(c) + " " + Go.string(_r) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Ticker(c, _r);
    }
    public function __set__(__tmp__) {
        this.c = __tmp__.c;
        this._r = __tmp__._r;
        return this;
    }
}
@:structInit class Time {
    public function round(_d:Duration):Time {
        var _t = this.__copy__();
        _t._stripMono();
        if (_d.__t__ <= ((0 : GoInt64))) {
            return _t.__copy__();
        };
        var __tmp__ = _div(_t.__copy__(), _d), _:GoInt = __tmp__._0, _r:Duration = __tmp__._1;
        if (_lessThanHalf(_r, _d)) {
            return _t.add(new Duration(-_r.__t__)).__copy__();
        };
        return _t.add(new Duration(_d.__t__ - _r.__t__)).__copy__();
    }
    public function truncate(_d:Duration):Time {
        var _t = this.__copy__();
        _t._stripMono();
        if (_d.__t__ <= ((0 : GoInt64))) {
            return _t.__copy__();
        };
        var __tmp__ = _div(_t.__copy__(), _d), _:GoInt = __tmp__._0, _r:Duration = __tmp__._1;
        return _t.add(new Duration(-_r.__t__)).__copy__();
    }
    public function isDST():Bool {
        var _t = this.__copy__();
        var __tmp__ = _t._loc.value._lookup(_t.unix()), _:GoString = __tmp__._0, _:GoInt = __tmp__._1, _:GoInt64 = __tmp__._2, _:GoInt64 = __tmp__._3, _isDST:Bool = __tmp__._4;
        return _isDST;
    }
    public function unmarshalText(_data:Slice<GoByte>):Error {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = parse(rfc3339, ((_data : GoString)));
            _t.value = __tmp__._0.__copy__();
            _err = __tmp__._1;
        };
        return _err;
    }
    public function marshalText():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _t = this.__copy__();
        {
            var _y:GoInt = _t.year();
            if (_y < ((0 : GoInt)) || _y >= ((10000 : GoInt))) {
                return { _0 : new Slice<GoUInt8>().nil(), _1 : stdgo.errors.Errors.new_("Time.MarshalText: year outside of range [0,9999]") };
            };
        };
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((rfc3339nano.length : GoInt)).toBasic());
        return { _0 : _t.appendFormat(_b, rfc3339nano), _1 : ((null : stdgo.Error)) };
    }
    public function unmarshalJSON(_data:Slice<GoByte>):Error {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (((_data : GoString)) == (("null" : GoString))) {
            return ((null : stdgo.Error));
        };
        var _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = parse((("\"" : GoString)) + rfc3339 + (("\"" : GoString)), ((_data : GoString)));
            _t.value = __tmp__._0.__copy__();
            _err = __tmp__._1;
        };
        return _err;
    }
    public function marshalJSON():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _t = this.__copy__();
        {
            var _y:GoInt = _t.year();
            if (_y < ((0 : GoInt)) || _y >= ((10000 : GoInt))) {
                return { _0 : new Slice<GoUInt8>().nil(), _1 : stdgo.errors.Errors.new_("Time.MarshalJSON: year outside of range [0,9999]") };
            };
        };
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((rfc3339nano.length + ((2 : GoInt)) : GoInt)).toBasic());
        _b = _b.__append__((("\"".code : GoRune)));
        _b = _t.appendFormat(_b, rfc3339nano);
        _b = _b.__append__((("\"".code : GoRune)));
        return { _0 : _b, _1 : ((null : stdgo.Error)) };
    }
    public function gobDecode(_data:Slice<GoByte>):Error {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _t.value.unmarshalBinary(_data);
    }
    public function gobEncode():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _t = this.__copy__();
        return _t.marshalBinary();
    }
    public function unmarshalBinary(_data:Slice<GoByte>):Error {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _buf:Slice<GoUInt8> = _data;
        if (_buf.length == ((0 : GoInt))) {
            return stdgo.errors.Errors.new_("Time.UnmarshalBinary: no data");
        };
        if (_buf[((0 : GoInt))] != _timeBinaryVersion) {
            return stdgo.errors.Errors.new_("Time.UnmarshalBinary: unsupported version");
        };
        if (_buf.length != ((1 : GoUnTypedInt)) + ((8 : GoUnTypedInt)) + ((4 : GoUnTypedInt)) + ((2 : GoUnTypedInt))) {
            return stdgo.errors.Errors.new_("Time.UnmarshalBinary: invalid length");
        };
        _buf = _buf.__slice__(((1 : GoInt)));
        var _sec:GoInt64 = ((_buf[((7 : GoInt))] : GoInt64)) | (((_buf[((6 : GoInt))] : GoInt64)) << ((8 : GoUnTypedInt))) | (((_buf[((5 : GoInt))] : GoInt64)) << ((16 : GoUnTypedInt))) | (((_buf[((4 : GoInt))] : GoInt64)) << ((24 : GoUnTypedInt))) | (((_buf[((3 : GoInt))] : GoInt64)) << ((32 : GoUnTypedInt))) | (((_buf[((2 : GoInt))] : GoInt64)) << ((40 : GoUnTypedInt))) | (((_buf[((1 : GoInt))] : GoInt64)) << ((48 : GoUnTypedInt))) | (((_buf[((0 : GoInt))] : GoInt64)) << ((56 : GoUnTypedInt)));
        _buf = _buf.__slice__(((8 : GoInt)));
        var _nsec:GoInt32 = ((_buf[((3 : GoInt))] : GoInt32)) | (((_buf[((2 : GoInt))] : GoInt32)) << ((8 : GoUnTypedInt))) | (((_buf[((1 : GoInt))] : GoInt32)) << ((16 : GoUnTypedInt))) | (((_buf[((0 : GoInt))] : GoInt32)) << ((24 : GoUnTypedInt)));
        _buf = _buf.__slice__(((4 : GoInt)));
        var _offset:GoInt = (((((_buf[((1 : GoInt))] : GoInt16)) | (((_buf[((0 : GoInt))] : GoInt16)) << ((8 : GoUnTypedInt)))) : GoInt)) * ((60 : GoInt));
        _t.value = new Time().__copy__();
        _t.value._wall = ((_nsec : GoUInt64));
        _t.value._ext = _sec;
        if (_offset == -((1 : GoUnTypedInt)) * ((60 : GoUnTypedInt))) {
            _t.value._setLoc(Go.pointer(_utcLoc));
        } else {
            var __tmp__ = Time.local.value._lookup(_t.value._unixSec()), _:GoString = __tmp__._0, _localoff:GoInt = __tmp__._1, _:GoInt64 = __tmp__._2, _:GoInt64 = __tmp__._3, _:Bool = __tmp__._4;
            if (_offset == _localoff) {
                _t.value._setLoc(Time.local);
            } else {
                _t.value._setLoc(fixedZone("", _offset));
            };
        };
        return ((null : stdgo.Error));
    }
    public function marshalBinary():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _t = this.__copy__();
        var _offsetMin:GoInt16 = ((0 : GoInt16));
        if (_t.location() == Time.utc) {
            _offsetMin = -((1 : GoUnTypedInt));
        } else {
            var __tmp__ = _t.zone(), _:GoString = __tmp__._0, _offset:GoInt = __tmp__._1;
            if (_offset % ((60 : GoInt)) != ((0 : GoInt))) {
                return { _0 : new Slice<GoUInt8>().nil(), _1 : stdgo.errors.Errors.new_("Time.MarshalBinary: zone offset has fractional minute") };
            };
            _offset = _offset / (((60 : GoInt)));
            if (_offset < -((32768 : GoUnTypedInt)) || _offset == -((1 : GoUnTypedInt)) || _offset > ((32767 : GoInt))) {
                return { _0 : new Slice<GoUInt8>().nil(), _1 : stdgo.errors.Errors.new_("Time.MarshalBinary: unexpected zone offset") };
            };
            _offsetMin = ((_offset : GoInt16));
        };
        var _sec:GoInt64 = _t._sec();
        var _nsec:GoInt32 = _t._nsec();
        var _enc:Slice<GoUInt8> = new Slice<GoUInt8>(
_timeBinaryVersion,
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
((_offsetMin : GoByte)));
        return { _0 : _enc, _1 : ((null : stdgo.Error)) };
    }
    public function unixNano():GoInt64 {
        var _t = this.__copy__();
        return (_t._unixSec()) * ((1e+09 : GoInt64)) + ((_t._nsec() : GoInt64));
    }
    public function unixMicro():GoInt64 {
        var _t = this.__copy__();
        return _t._unixSec() * ((1e+06 : GoInt64)) + ((_t._nsec() : GoInt64)) / ((1000 : GoInt64));
    }
    public function unixMilli():GoInt64 {
        var _t = this.__copy__();
        return _t._unixSec() * ((1000 : GoInt64)) + ((_t._nsec() : GoInt64)) / ((1e+06 : GoInt64));
    }
    public function unix():GoInt64 {
        var _t = this.__copy__();
        return _t._unixSec();
    }
    public function zone():{ var _0 : GoString; var _1 : GoInt; } {
        var _t = this.__copy__();
        var _name:GoString = (("" : GoString)), _offset:GoInt = ((0 : GoInt));
        {
            var __tmp__ = _t._loc.value._lookup(_t._unixSec());
            _name = __tmp__._0;
            _offset = __tmp__._1;
        };
        return { _0 : _name, _1 : _offset };
    }
    public function location():Pointer<Location> {
        var _t = this.__copy__();
        var _l:Pointer<Location> = _t._loc;
        if (_l == null || _l.isNil()) {
            _l = Time.utc;
        };
        return _l;
    }
    public function in_(_loc:Pointer<Location>):Time {
        var _t = this.__copy__();
        if (_loc == null || _loc.isNil()) {
            throw "time: missing Location in call to Time.In";
        };
        _t._setLoc(_loc);
        return _t.__copy__();
    }
    public function local():Time {
        var _t = this.__copy__();
        _t._setLoc(Time.local);
        return _t.__copy__();
    }
    public function utc():Time {
        var _t = this.__copy__();
        _t._setLoc(Go.pointer(_utcLoc));
        return _t.__copy__();
    }
    public function _date(_full:Bool):{ var _0 : GoInt; var _1 : Month; var _2 : GoInt; var _3 : GoInt; } {
        var _t = this.__copy__();
        var _year:GoInt = ((0 : GoInt)), _month:Month = new Month(), _day:GoInt = ((0 : GoInt)), _yday:GoInt = ((0 : GoInt));
        return _absDate(_t._abs(), _full);
    }
    public function addDate(_years:GoInt, _months:GoInt, _days:GoInt):Time {
        var _t = this.__copy__();
        var __tmp__ = _t.date(), _year:GoInt = __tmp__._0, _month:Month = __tmp__._1, _day:GoInt = __tmp__._2;
        var __tmp__ = _t.clock(), _hour:GoInt = __tmp__._0, _min:GoInt = __tmp__._1, _sec:GoInt = __tmp__._2;
        return Time.date(_year + _years, new Month(_month.__t__ + new Month(_months).__t__), _day + _days, _hour, _min, _sec, ((_t._nsec() : GoInt)), _t.location()).__copy__();
    }
    public function sub(_u:Time):Duration {
        var _t = this.__copy__();
        if (_t._wall & _u._wall & _hasMonotonic != ((0 : GoUInt64))) {
            var _te:GoInt64 = _t._ext;
            var _ue:GoInt64 = _u._ext;
            var _d:Duration = new Duration((_te - _ue));
            if (_d.__t__ < ((0 : GoInt64)) && _te > _ue) {
                return _maxDuration;
            };
            if (_d.__t__ > ((0 : GoInt64)) && _te < _ue) {
                return _minDuration;
            };
            return _d;
        };
        var _d:Duration = new Duration(new Duration(new Duration((_t._sec() - _u._sec())).__t__ * Time.second.__t__).__t__ + new Duration((_t._nsec() - _u._nsec())).__t__);
        if (_u.add(_d).equal(_t.__copy__())) {
            return _d;
        } else if (_t.before(_u.__copy__())) {
            return _minDuration;
        } else {
            return _maxDuration;
        };
    }
    public function add(_d:Duration):Time {
        var _t = this.__copy__();
        var _dsec:GoInt64 = new Duration(_d.__t__ / ((1e+09 : GoInt64))).__t__;
        var _nsec:GoInt32 = _t._nsec() + new Duration(_d.__t__ % ((1e+09 : GoInt64))).__t__;
        if (_nsec >= ((1e+09 : GoInt32))) {
            _dsec++;
            _nsec = _nsec - (((1e+09 : GoInt32)));
        } else if (_nsec < ((0 : GoInt32))) {
            _dsec--;
            _nsec = _nsec + (((1e+09 : GoInt32)));
        };
        _t._wall = (_t._wall & _nsecMask) ^ ((-1 : GoUnTypedInt)) | ((_nsec : GoUInt64));
        _t._addSec(_dsec);
        if (_t._wall & _hasMonotonic != ((0 : GoUInt64))) {
            var _te:GoInt64 = _t._ext + _d.__t__;
            if (_d.__t__ < ((0 : GoInt64)) && _te > _t._ext || _d.__t__ > ((0 : GoInt64)) && _te < _t._ext) {
                _t._stripMono();
            } else {
                _t._ext = _te;
            };
        };
        return _t.__copy__();
    }
    public function yearDay():GoInt {
        var _t = this.__copy__();
        var __tmp__ = _t._date(false), _:GoInt = __tmp__._0, _:Month = __tmp__._1, _:GoInt = __tmp__._2, _yday:GoInt = __tmp__._3;
        return _yday + ((1 : GoInt));
    }
    public function nanosecond():GoInt {
        var _t = this.__copy__();
        return ((_t._nsec() : GoInt));
    }
    public function second():GoInt {
        var _t = this.__copy__();
        return (((_t._abs() % _secondsPerMinute) : GoInt));
    }
    public function minute():GoInt {
        var _t = this.__copy__();
        return (((_t._abs() % _secondsPerHour) : GoInt)) / _secondsPerMinute;
    }
    public function hour():GoInt {
        var _t = this.__copy__();
        return (((_t._abs() % _secondsPerDay) : GoInt)) / _secondsPerHour;
    }
    public function clock():{ var _0 : GoInt; var _1 : GoInt; var _2 : GoInt; } {
        var _t = this.__copy__();
        var _hour:GoInt = ((0 : GoInt)), _min:GoInt = ((0 : GoInt)), _sec:GoInt = ((0 : GoInt));
        return _absClock(_t._abs());
    }
    public function isoweek():{ var _0 : GoInt; var _1 : GoInt; } {
        var _t = this.__copy__();
        var _year:GoInt = ((0 : GoInt)), _week:GoInt = ((0 : GoInt));
        var _abs:GoUInt64 = _t._abs();
        var _d:Weekday = new Weekday(thursday.__t__ - _absWeekday(_abs).__t__);
        if (_d.__t__ == ((4 : GoInt))) {
            _d = new Weekday(-((3 : GoUnTypedInt)));
        };
        _abs = _abs + (_d.__t__ * _secondsPerDay);
        var __tmp__ = _absDate(_abs, false), _year:GoInt = __tmp__._0, _:Month = __tmp__._1, _:GoInt = __tmp__._2, _yday:GoInt = __tmp__._3;
        return { _0 : _year, _1 : _yday / ((7 : GoInt)) + ((1 : GoInt)) };
    }
    public function weekday():Weekday {
        var _t = this.__copy__();
        return _absWeekday(_t._abs());
    }
    public function day():GoInt {
        var _t = this.__copy__();
        var __tmp__ = _t._date(true), _:GoInt = __tmp__._0, _:Month = __tmp__._1, _day:GoInt = __tmp__._2, _:GoInt = __tmp__._3;
        return _day;
    }
    public function month():Month {
        var _t = this.__copy__();
        var __tmp__ = _t._date(true), _:GoInt = __tmp__._0, _month:Month = __tmp__._1, _:GoInt = __tmp__._2, _:GoInt = __tmp__._3;
        return _month;
    }
    public function year():GoInt {
        var _t = this.__copy__();
        var __tmp__ = _t._date(false), _year:GoInt = __tmp__._0, _:Month = __tmp__._1, _:GoInt = __tmp__._2, _:GoInt = __tmp__._3;
        return _year;
    }
    public function date():{ var _0 : GoInt; var _1 : Month; var _2 : GoInt; } {
        var _t = this.__copy__();
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
        var _t = this.__copy__();
        var _name:GoString = (("" : GoString)), _offset:GoInt = ((0 : GoInt)), _abs:GoUInt64 = ((0 : GoUInt64));
        var _l:Pointer<Location> = _t._loc;
        if (_l == null || _l.isNil() || _l == Go.pointer(_localLoc)) {
            _l = _l.value._get();
        };
        var _sec:GoInt64 = _t._unixSec();
        if (_l != Go.pointer(_utcLoc)) {
            if (_l.value._cacheZone != null && !_l.value._cacheZone.isNil() && _l.value._cacheStart <= _sec && _sec < _l.value._cacheEnd) {
                _name = _l.value._cacheZone.value._name;
                _offset = _l.value._cacheZone.value._offset;
            } else {
                {
                    var __tmp__ = _l.value._lookup(_sec);
                    _name = __tmp__._0;
                    _offset = __tmp__._1;
                };
            };
            _sec = _sec + (((_offset : GoInt64)));
        } else {
            _name = "UTC";
        };
        _abs = (((_sec + (_unixToInternal + _internalToAbsolute)) : GoUInt64));
        return { _0 : _name, _1 : _offset, _2 : _abs };
    }
    public function _abs():GoUInt64 {
        var _t = this.__copy__();
        var _l:Pointer<Location> = _t._loc;
        if (_l == null || _l.isNil() || _l == Go.pointer(_localLoc)) {
            _l = _l.value._get();
        };
        var _sec:GoInt64 = _t._unixSec();
        if (_l != Go.pointer(_utcLoc)) {
            if (_l.value._cacheZone != null && !_l.value._cacheZone.isNil() && _l.value._cacheStart <= _sec && _sec < _l.value._cacheEnd) {
                _sec = _sec + (((_l.value._cacheZone.value._offset : GoInt64)));
            } else {
                var __tmp__ = _l.value._lookup(_sec), _:GoString = __tmp__._0, _offset:GoInt = __tmp__._1, _:GoInt64 = __tmp__._2, _:GoInt64 = __tmp__._3, _:Bool = __tmp__._4;
                _sec = _sec + (((_offset : GoInt64)));
            };
        };
        return (((_sec + (_unixToInternal + _internalToAbsolute)) : GoUInt64));
    }
    public function isZero():Bool {
        var _t = this.__copy__();
        return _t._sec() == ((0 : GoInt64)) && _t._nsec() == ((0 : GoInt32));
    }
    public function equal(_u:Time):Bool {
        var _t = this.__copy__();
        if (_t._wall & _u._wall & _hasMonotonic != ((0 : GoUInt64))) {
            return _t._ext == _u._ext;
        };
        return _t._sec() == _u._sec() && _t._nsec() == _u._nsec();
    }
    public function before(_u:Time):Bool {
        var _t = this.__copy__();
        if (_t._wall & _u._wall & _hasMonotonic != ((0 : GoUInt64))) {
            return _t._ext < _u._ext;
        };
        var _ts:GoInt64 = _t._sec();
        var _us:GoInt64 = _u._sec();
        return _ts < _us || _ts == _us && _t._nsec() < _u._nsec();
    }
    public function after(_u:Time):Bool {
        var _t = this.__copy__();
        if (_t._wall & _u._wall & _hasMonotonic != ((0 : GoUInt64))) {
            return _t._ext > _u._ext;
        };
        var _ts:GoInt64 = _t._sec();
        var _us:GoInt64 = _u._sec();
        return _ts > _us || _ts == _us && _t._nsec() > _u._nsec();
    }
    public function _mono():GoInt64 {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_t.value._wall & _hasMonotonic == ((0 : GoUInt64))) {
            return ((0 : GoInt64));
        };
        return _t.value._ext;
    }
    public function _setMono(_m:GoInt64):Void {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_t.value._wall & _hasMonotonic == ((0 : GoUInt64))) {
            var _sec:GoInt64 = _t.value._ext;
            if (_sec < _minWall || _maxWall < _sec) {
                return;
            };
            _t.value._wall = _t.value._wall | (_hasMonotonic | ((((_sec - _minWall) : GoUInt64)) << _nsecShift));
        };
        _t.value._ext = _m;
    }
    public function _stripMono():Void {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_t.value._wall & _hasMonotonic != ((0 : GoUInt64))) {
            _t.value._ext = _t.value._sec();
            _t.value._wall = _t.value._wall & (_nsecMask);
        };
    }
    public function _setLoc(_loc:Pointer<Location>):Void {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_loc == Go.pointer(_utcLoc)) {
            _loc = new Pointer<Location>().nil();
        };
        _t.value._stripMono();
        _t.value._loc = _loc;
    }
    public function _addSec(_d:GoInt64):Void {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_t.value._wall & _hasMonotonic != ((0 : GoUInt64))) {
            var _sec:GoInt64 = ((((_t.value._wall << ((1 : GoUnTypedInt))) >> (_nsecShift + ((1 : GoUnTypedInt)))) : GoInt64));
            var _dsec:GoInt64 = _sec + _d;
            if (((0 : GoInt64)) <= _dsec && _dsec <= (((1 : GoUnTypedInt)) << ((33 : GoUnTypedInt))) - ((1 : GoUnTypedInt))) {
                _t.value._wall = _t.value._wall & _nsecMask | (((_dsec : GoUInt64)) << _nsecShift) | _hasMonotonic;
                return;
            };
            _t.value._stripMono();
        };
        var _sum:GoInt64 = _t.value._ext + _d;
        if ((_sum > _t.value._ext) == (_d > ((0 : GoInt64)))) {
            _t.value._ext = _sum;
        } else if (_d > ((0 : GoInt64))) {
            _t.value._ext = (((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt))) - ((1 : GoUnTypedInt));
        } else {
            _t.value._ext = -((((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt))) - ((1 : GoUnTypedInt)));
        };
    }
    public function _unixSec():GoInt64 {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _t.value._sec() + _internalToUnix;
    }
    public function _sec():GoInt64 {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_t.value._wall & _hasMonotonic != ((0 : GoUInt64))) {
            return _wallToInternal + ((((_t.value._wall << ((1 : GoUnTypedInt))) >> (_nsecShift + ((1 : GoUnTypedInt)))) : GoInt64));
        };
        return _t.value._ext;
    }
    public function _nsec():GoInt32 {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return (((_t.value._wall & _nsecMask) : GoInt32));
    }
    public function appendFormat(_b:Slice<GoByte>, _layout:GoString):Slice<GoByte> {
        var _t = this.__copy__();
        var __tmp__ = _t._locabs(), _name:GoString = __tmp__._0, _offset:GoInt = __tmp__._1, _abs:GoUInt64 = __tmp__._2, _year:GoInt = -((1 : GoUnTypedInt)), _month:Month = new Month(), _day:GoInt = ((0 : GoInt)), _yday:GoInt = ((0 : GoInt)), _hour:GoInt = -((1 : GoUnTypedInt)), _min:GoInt = ((0 : GoInt)), _sec:GoInt = ((0 : GoInt));
        while (_layout != (("" : GoString))) {
            var __tmp__ = _nextStdChunk(_layout), _prefix:GoString = __tmp__._0, _std:GoInt = __tmp__._1, _suffix:GoString = __tmp__._2;
            if (_prefix != (("" : GoString))) {
                _b = _b.__append__(..._prefix.toArray());
            };
            if (_std == ((0 : GoInt))) {
                break;
            };
            _layout = _suffix;
            if (_year < ((0 : GoInt)) && _std & _stdNeedDate != ((0 : GoInt))) {
                {
                    var __tmp__ = _absDate(_abs, true);
                    _year = __tmp__._0;
                    _month = __tmp__._1;
                    _day = __tmp__._2;
                    _yday = __tmp__._3;
                };
                _yday++;
            };
            if (_hour < ((0 : GoInt)) && _std & _stdNeedClock != ((0 : GoInt))) {
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
                    if (_std & _stdMask == _stdYear) {
                        var _y:GoInt = _year;
                        if (_y < ((0 : GoInt))) {
                            _y = -_y;
                        };
                        _b = _appendInt(_b, _y % ((100 : GoInt)), ((2 : GoInt)));
                        break;
                    } else if (_std & _stdMask == _stdLongYear) {
                        _b = _appendInt(_b, _year, ((4 : GoInt)));
                        break;
                    } else if (_std & _stdMask == _stdMonth) {
                        _b = _b.__append__(..._month.toString().__slice__(0, ((3 : GoInt))).toArray());
                        break;
                    } else if (_std & _stdMask == _stdLongMonth) {
                        var _m:GoString = _month.toString();
                        _b = _b.__append__(..._m.toArray());
                        break;
                    } else if (_std & _stdMask == _stdNumMonth) {
                        _b = _appendInt(_b, _month.__t__, ((0 : GoInt)));
                        break;
                    } else if (_std & _stdMask == _stdZeroMonth) {
                        _b = _appendInt(_b, _month.__t__, ((2 : GoInt)));
                        break;
                    } else if (_std & _stdMask == _stdWeekDay) {
                        _b = _b.__append__(..._absWeekday(_abs).toString().__slice__(0, ((3 : GoInt))).toArray());
                        break;
                    } else if (_std & _stdMask == _stdLongWeekDay) {
                        var _s:GoString = _absWeekday(_abs).toString();
                        _b = _b.__append__(..._s.toArray());
                        break;
                    } else if (_std & _stdMask == _stdDay) {
                        _b = _appendInt(_b, _day, ((0 : GoInt)));
                        break;
                    } else if (_std & _stdMask == _stdUnderDay) {
                        if (_day < ((10 : GoInt))) {
                            _b = _b.__append__(((" ".code : GoRune)));
                        };
                        _b = _appendInt(_b, _day, ((0 : GoInt)));
                        break;
                    } else if (_std & _stdMask == _stdZeroDay) {
                        _b = _appendInt(_b, _day, ((2 : GoInt)));
                        break;
                    } else if (_std & _stdMask == _stdUnderYearDay) {
                        if (_yday < ((100 : GoInt))) {
                            _b = _b.__append__(((" ".code : GoRune)));
                            if (_yday < ((10 : GoInt))) {
                                _b = _b.__append__(((" ".code : GoRune)));
                            };
                        };
                        _b = _appendInt(_b, _yday, ((0 : GoInt)));
                        break;
                    } else if (_std & _stdMask == _stdZeroYearDay) {
                        _b = _appendInt(_b, _yday, ((3 : GoInt)));
                        break;
                    } else if (_std & _stdMask == _stdHour) {
                        _b = _appendInt(_b, _hour, ((2 : GoInt)));
                        break;
                    } else if (_std & _stdMask == _stdHour12) {
                        var _hr:GoInt = _hour % ((12 : GoInt));
                        if (_hr == ((0 : GoInt))) {
                            _hr = ((12 : GoInt));
                        };
                        _b = _appendInt(_b, _hr, ((0 : GoInt)));
                        break;
                    } else if (_std & _stdMask == _stdZeroHour12) {
                        var _hr:GoInt = _hour % ((12 : GoInt));
                        if (_hr == ((0 : GoInt))) {
                            _hr = ((12 : GoInt));
                        };
                        _b = _appendInt(_b, _hr, ((2 : GoInt)));
                        break;
                    } else if (_std & _stdMask == _stdMinute) {
                        _b = _appendInt(_b, _min, ((0 : GoInt)));
                        break;
                    } else if (_std & _stdMask == _stdZeroMinute) {
                        _b = _appendInt(_b, _min, ((2 : GoInt)));
                        break;
                    } else if (_std & _stdMask == _stdSecond) {
                        _b = _appendInt(_b, _sec, ((0 : GoInt)));
                        break;
                    } else if (_std & _stdMask == _stdZeroSecond) {
                        _b = _appendInt(_b, _sec, ((2 : GoInt)));
                        break;
                    } else if (_std & _stdMask == _stdPM) {
                        if (_hour >= ((12 : GoInt))) {
                            _b = _b.__append__(...(("PM" : GoString)).toArray());
                        } else {
                            _b = _b.__append__(...(("AM" : GoString)).toArray());
                        };
                        break;
                    } else if (_std & _stdMask == _stdpm) {
                        if (_hour >= ((12 : GoInt))) {
                            _b = _b.__append__(...(("pm" : GoString)).toArray());
                        } else {
                            _b = _b.__append__(...(("am" : GoString)).toArray());
                        };
                        break;
                    } else if (_std & _stdMask == _stdISO8601TZ || _std & _stdMask == _stdISO8601ColonTZ || _std & _stdMask == _stdISO8601SecondsTZ || _std & _stdMask == _stdISO8601ShortTZ || _std & _stdMask == _stdISO8601ColonSecondsTZ || _std & _stdMask == _stdNumTZ || _std & _stdMask == _stdNumColonTZ || _std & _stdMask == _stdNumSecondsTz || _std & _stdMask == _stdNumShortTZ || _std & _stdMask == _stdNumColonSecondsTZ) {
                        if (_offset == ((0 : GoInt)) && (_std == _stdISO8601TZ || _std == _stdISO8601ColonTZ || _std == _stdISO8601SecondsTZ || _std == _stdISO8601ShortTZ || _std == _stdISO8601ColonSecondsTZ)) {
                            _b = _b.__append__((("Z".code : GoRune)));
                            break;
                        };
                        var _zone:GoInt = _offset / ((60 : GoInt));
                        var _absoffset:GoInt = _offset;
                        if (_zone < ((0 : GoInt))) {
                            _b = _b.__append__((("-".code : GoRune)));
                            _zone = -_zone;
                            _absoffset = -_absoffset;
                        } else {
                            _b = _b.__append__((("+".code : GoRune)));
                        };
                        _b = _appendInt(_b, _zone / ((60 : GoInt)), ((2 : GoInt)));
                        if (_std == _stdISO8601ColonTZ || _std == _stdNumColonTZ || _std == _stdISO8601ColonSecondsTZ || _std == _stdNumColonSecondsTZ) {
                            _b = _b.__append__(((":".code : GoRune)));
                        };
                        if (_std != _stdNumShortTZ && _std != _stdISO8601ShortTZ) {
                            _b = _appendInt(_b, _zone % ((60 : GoInt)), ((2 : GoInt)));
                        };
                        if (_std == _stdISO8601SecondsTZ || _std == _stdNumSecondsTz || _std == _stdNumColonSecondsTZ || _std == _stdISO8601ColonSecondsTZ) {
                            if (_std == _stdNumColonSecondsTZ || _std == _stdISO8601ColonSecondsTZ) {
                                _b = _b.__append__(((":".code : GoRune)));
                            };
                            _b = _appendInt(_b, _absoffset % ((60 : GoInt)), ((2 : GoInt)));
                        };
                        break;
                    } else if (_std & _stdMask == _stdTZ) {
                        if (_name != (("" : GoString))) {
                            _b = _b.__append__(..._name.toArray());
                            break;
                        };
                        var _zone:GoInt = _offset / ((60 : GoInt));
                        if (_zone < ((0 : GoInt))) {
                            _b = _b.__append__((("-".code : GoRune)));
                            _zone = -_zone;
                        } else {
                            _b = _b.__append__((("+".code : GoRune)));
                        };
                        _b = _appendInt(_b, _zone / ((60 : GoInt)), ((2 : GoInt)));
                        _b = _appendInt(_b, _zone % ((60 : GoInt)), ((2 : GoInt)));
                        break;
                    } else if (_std & _stdMask == _stdFracSecond0 || _std & _stdMask == _stdFracSecond9) {
                        _b = _formatNano(_b, ((_t.nanosecond() : GoUInt)), (_std >> _stdArgShift), _std & _stdMask == _stdFracSecond9);
                        break;
                    };
                    break;
                };
            };
        };
        return _b;
    }
    public function format(_layout:GoString):GoString {
        var _t = this.__copy__();
        final _bufSize:GoUnTypedInt = ((64 : GoUnTypedInt));
        var _b:Slice<GoByte> = new Slice<GoUInt8>().nil();
        var _max:GoInt = _layout.length + ((10 : GoInt));
        if (_max < _bufSize) {
            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 64) ((0 : GoUInt8))]);
            _b = _buf.__slice__(0, ((0 : GoInt)));
        } else {
            _b = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_max : GoInt)).toBasic());
        };
        _b = _t.appendFormat(_b, _layout);
        return ((_b : GoString));
    }
    public function goString():GoString {
        var _t = this.__copy__();
        var _buf:Slice<GoUInt8> = (("time.Date(" : Slice<GoByte>));
        _buf = _appendInt(_buf, _t.year(), ((0 : GoInt)));
        var _month:Month = _t.month();
        if (january.__t__ <= _month.__t__ && _month.__t__ <= december.__t__) {
            _buf = _buf.__append__(...((", time." : GoString)).toArray());
            _buf = _buf.__append__(..._t.month().toString().toArray());
        } else {
            _buf = _appendInt(_buf, _month.__t__, ((0 : GoInt)));
        };
        _buf = _buf.__append__(...((", " : GoString)).toArray());
        _buf = _appendInt(_buf, _t.day(), ((0 : GoInt)));
        _buf = _buf.__append__(...((", " : GoString)).toArray());
        _buf = _appendInt(_buf, _t.hour(), ((0 : GoInt)));
        _buf = _buf.__append__(...((", " : GoString)).toArray());
        _buf = _appendInt(_buf, _t.minute(), ((0 : GoInt)));
        _buf = _buf.__append__(...((", " : GoString)).toArray());
        _buf = _appendInt(_buf, _t.second(), ((0 : GoInt)));
        _buf = _buf.__append__(...((", " : GoString)).toArray());
        _buf = _appendInt(_buf, _t.nanosecond(), ((0 : GoInt)));
        _buf = _buf.__append__(...((", " : GoString)).toArray());
        {
            var _loc:Pointer<Location> = _t.location();
            if (_loc == Time.utc || _loc == null || _loc.isNil()) {
                _buf = _buf.__append__(...(("time.UTC" : GoString)).toArray());
            } else if (_loc == Time.local) {
                _buf = _buf.__append__(...(("time.Local" : GoString)).toArray());
            } else {
                _buf = _buf.__append__(...(("time.Location(" : GoString)).toArray());
                _buf = _buf.__append__(...((_quote(_loc.value._name) : Slice<GoByte>)).toArray());
                _buf = _buf.__append__(...((")" : GoString)).toArray());
            };
        };
        _buf = _buf.__append__(((")".code : GoRune)));
        return ((_buf : GoString));
    }
    public function toString():GoString {
        var _t = this.__copy__();
        var _s:GoString = _t.format("2006-01-02 15:04:05.999999999 -0700 MST");
        if (_t._wall & _hasMonotonic != ((0 : GoUInt64))) {
            var _m2:GoUInt64 = ((_t._ext : GoUInt64));
            var _sign:GoUInt8 = (((("+".code : GoRune)) : GoByte));
            if (_t._ext < ((0 : GoInt64))) {
                _sign = (("-".code : GoRune));
                _m2 = -_m2;
            };
            var _m1:GoUInt64 = _m2 / ((1e+09 : GoUInt64)), _m2:GoUInt64 = _m2 % ((1e+09 : GoUInt64));
            var _m0:GoUInt64 = _m1 / ((1e+09 : GoUInt64)), _m1:GoUInt64 = _m1 % ((1e+09 : GoUInt64));
            var _buf:Slice<GoByte> = new Slice<GoUInt8>().nil();
            _buf = _buf.__append__(...((" m=" : GoString)).toArray());
            _buf = _buf.__append__(_sign);
            var _wid:GoInt = ((0 : GoInt));
            if (_m0 != ((0 : GoUInt64))) {
                _buf = _appendInt(_buf, ((_m0 : GoInt)), ((0 : GoInt)));
                _wid = ((9 : GoInt));
            };
            _buf = _appendInt(_buf, ((_m1 : GoInt)), _wid);
            _buf = _buf.__append__(((".".code : GoRune)));
            _buf = _appendInt(_buf, ((_m2 : GoInt)), ((9 : GoInt)));
            _s = _s + (((_buf : GoString)));
        };
        return _s;
    }
    public var _wall : GoUInt64 = ((0 : GoUInt64));
    public var _ext : GoInt64 = ((0 : GoInt64));
    public var _loc : Pointer<Location> = new Pointer<Location>().nil();
    public function new(?_wall:GoUInt64, ?_ext:GoInt64, ?_loc:Pointer<Location>) stdgo.internal.Macro.initLocals();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Time(_wall, _ext, _loc);
    }
    public function __set__(__tmp__) {
        this._wall = __tmp__._wall;
        this._ext = __tmp__._ext;
        this._loc = __tmp__._loc;
        return this;
    }
}
@:named class Month {
    public function toString():GoString {
        var _m = this.__copy__();
        if (january.__t__ <= _m.__t__ && _m.__t__ <= december.__t__) {
            return _longMonthNames[new Month(_m.__t__ - ((1 : GoInt))).__t__];
        };
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((20 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _n:GoInt = _fmtInt(_buf, _m.__t__);
        return (("%!Month(" : GoString)) + ((_buf.__slice__(_n) : GoString)) + ((")" : GoString));
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new Month(__t__);
}
@:named class Weekday {
    public function toString():GoString {
        var _d = this.__copy__();
        if (sunday.__t__ <= _d.__t__ && _d.__t__ <= saturday.__t__) {
            return _longDayNames[_d.__t__];
        };
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((20 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _n:GoInt = _fmtInt(_buf, _d.__t__);
        return (("%!Weekday(" : GoString)) + ((_buf.__slice__(_n) : GoString)) + ((")" : GoString));
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new Weekday(__t__);
}
@:named class Duration {
    public function round(_m:Duration):Duration {
        var _d = this.__copy__();
        if (_m.__t__ <= ((0 : GoInt64))) {
            return _d;
        };
        var _r:Duration = new Duration(_d.__t__ % _m.__t__);
        if (_d.__t__ < ((0 : GoInt64))) {
            _r = new Duration(-_r.__t__);
            if (_lessThanHalf(_r, _m)) {
                return new Duration(_d.__t__ + _r.__t__);
            };
            {
                var _d1:Duration = new Duration(new Duration(_d.__t__ - _m.__t__).__t__ + _r.__t__);
                if (_d1.__t__ < _d.__t__) {
                    return _d1;
                };
            };
            return _minDuration;
        };
        if (_lessThanHalf(_r, _m)) {
            return new Duration(_d.__t__ - _r.__t__);
        };
        {
            var _d1:Duration = new Duration(new Duration(_d.__t__ + _m.__t__).__t__ - _r.__t__);
            if (_d1.__t__ > _d.__t__) {
                return _d1;
            };
        };
        return _maxDuration;
    }
    public function truncate(_m:Duration):Duration {
        var _d = this.__copy__();
        if (_m.__t__ <= ((0 : GoInt64))) {
            return _d;
        };
        return new Duration(_d.__t__ - new Duration(_d.__t__ % _m.__t__).__t__);
    }
    public function hours():GoFloat64 {
        var _d = this.__copy__();
        var _hour:Duration = new Duration(_d.__t__ / hour.__t__);
        var _nsec:Duration = new Duration(_d.__t__ % hour.__t__);
        return _hour.__t__ + _nsec.__t__ / (((60 : GoUnTypedInt)) * ((60 : GoUnTypedInt)) * ((1e+09 : GoUnTypedFloat)));
    }
    public function minutes():GoFloat64 {
        var _d = this.__copy__();
        var _min:Duration = new Duration(_d.__t__ / minute.__t__);
        var _nsec:Duration = new Duration(_d.__t__ % minute.__t__);
        return _min.__t__ + _nsec.__t__ / (((60 : GoUnTypedFloat)) * ((1e+09 : GoUnTypedFloat)));
    }
    public function seconds():GoFloat64 {
        var _d = this.__copy__();
        var _sec:Duration = new Duration(_d.__t__ / second.__t__);
        var _nsec:Duration = new Duration(_d.__t__ % second.__t__);
        return _sec.__t__ + _nsec.__t__ / ((1e+09 : GoFloat64));
    }
    public function milliseconds():GoInt64 {
        var _d = this.__copy__();
        return _d.__t__ / ((1e+06 : GoInt64));
    }
    public function microseconds():GoInt64 {
        var _d = this.__copy__();
        return _d.__t__ / ((1000 : GoInt64));
    }
    public function nanoseconds():GoInt64 {
        var _d = this.__copy__();
        return _d.__t__;
    }
    public function toString():GoString {
        var _d = this.__copy__();
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 32) ((0 : GoUInt8))]);
        var _w:GoInt = _buf.length;
        var _u:GoUInt64 = _d.__t__;
        var _neg:Bool = _d.__t__ < ((0 : GoInt64));
        if (_neg) {
            _u = -_u;
        };
        if (_u < second.__t__) {
            var _prec:GoInt = ((0 : GoInt));
            _w--;
            _buf[_w] = (("s".code : GoRune));
            _w--;
            if (_u == ((0 : GoUInt64))) {
                return "0s";
            } else if (_u < microsecond.__t__) {
                _prec = ((0 : GoInt));
                _buf[_w] = (("n".code : GoRune));
            } else if (_u < millisecond.__t__) {
                _prec = ((3 : GoInt));
                _w--;
                Go.copy(_buf.__slice__(_w), "µ");
            } else {
                _prec = ((6 : GoInt));
                _buf[_w] = (("m".code : GoRune));
            };
            {
                var __tmp__ = _fmtFrac(_buf.__slice__(0, _w), _u, _prec);
                _w = __tmp__._0;
                _u = __tmp__._1;
            };
            _w = _fmtInt(_buf.__slice__(0, _w), _u);
        } else {
            _w--;
            _buf[_w] = (("s".code : GoRune));
            {
                var __tmp__ = _fmtFrac(_buf.__slice__(0, _w), _u, ((9 : GoInt)));
                _w = __tmp__._0;
                _u = __tmp__._1;
            };
            _w = _fmtInt(_buf.__slice__(0, _w), _u % ((60 : GoUInt64)));
            _u = _u / (((60 : GoUInt64)));
            if (_u > ((0 : GoUInt64))) {
                _w--;
                _buf[_w] = (("m".code : GoRune));
                _w = _fmtInt(_buf.__slice__(0, _w), _u % ((60 : GoUInt64)));
                _u = _u / (((60 : GoUInt64)));
                if (_u > ((0 : GoUInt64))) {
                    _w--;
                    _buf[_w] = (("h".code : GoRune));
                    _w = _fmtInt(_buf.__slice__(0, _w), _u);
                };
            };
        };
        if (_neg) {
            _w--;
            _buf[_w] = (("-".code : GoRune));
        };
        return ((_buf.__slice__(_w) : GoString));
    }
    public var __t__ : GoInt64;
    public function new(?t:GoInt64) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new Duration(__t__);
}
@:structInit class Location {
    public function _lookupName(_name:GoString, _unix:GoInt64):{ var _0 : GoInt; var _1 : Bool; } {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _offset:GoInt = ((0 : GoInt)), _ok:Bool = false;
        _l = _l.value._get();
        {
            var _i;
            for (_obj in _l.value._zone.keyValueIterator()) {
                _i = _obj.key;
                var _zone:Pointer<T_zone> = Go.pointer(_l.value._zone[_i]);
                if (_zone.value._name == _name) {
                    var __tmp__ = _l.value._lookup(_unix - ((_zone.value._offset : GoInt64))), _nam:GoString = __tmp__._0, _offset:GoInt = __tmp__._1, _:GoInt64 = __tmp__._2, _:GoInt64 = __tmp__._3, _:Bool = __tmp__._4;
                    if (_nam == _zone.value._name) {
                        return { _0 : _offset, _1 : true };
                    };
                };
            };
        };
        {
            var _i;
            for (_obj in _l.value._zone.keyValueIterator()) {
                _i = _obj.key;
                var _zone:Pointer<T_zone> = Go.pointer(_l.value._zone[_i]);
                if (_zone.value._name == _name) {
                    return { _0 : _zone.value._offset, _1 : true };
                };
            };
        };
        return { _0 : _offset, _1 : _ok };
    }
    public function _firstZoneUsed():Bool {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        for (_tx in _l.value._tx) {
            if (_tx._index == ((0 : GoUInt8))) {
                return true;
            };
        };
        return false;
    }
    public function _lookupFirstZone():GoInt {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_l.value._firstZoneUsed()) {
            return ((0 : GoInt));
        };
        if (_l.value._tx.length > ((0 : GoInt)) && _l.value._zone[_l.value._tx[((0 : GoInt))]._index]._isDST) {
            {
                var _zi:GoInt = ((_l.value._tx[((0 : GoInt))]._index : GoInt)) - ((1 : GoInt));
                Go.cfor(_zi >= ((0 : GoInt)), _zi--, {
                    if (!_l.value._zone[_zi]._isDST) {
                        return _zi;
                    };
                });
            };
        };
        {
            var _zi;
            for (_obj in _l.value._zone.keyValueIterator()) {
                _zi = _obj.key;
                if (!_l.value._zone[_zi]._isDST) {
                    return _zi;
                };
            };
        };
        return ((0 : GoInt));
    }
    public function _lookup(_sec:GoInt64):{ var _0 : GoString; var _1 : GoInt; var _2 : GoInt64; var _3 : GoInt64; var _4 : Bool; } {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _name:GoString = (("" : GoString)), _offset:GoInt = ((0 : GoInt)), _start:GoInt64 = ((0 : GoInt64)), _end:GoInt64 = ((0 : GoInt64)), _isDST:Bool = false;
        _l = _l.value._get();
        if (_l.value._zone.length == ((0 : GoInt))) {
            _name = "UTC";
            _offset = ((0 : GoInt));
            _start = _alpha;
            _end = _omega;
            _isDST = false;
            return { _0 : _name, _1 : _offset, _2 : _start, _3 : _end, _4 : _isDST };
        };
        {
            var _zone:Pointer<T_zone> = _l.value._cacheZone;
            if (_zone != null && !_zone.isNil() && _l.value._cacheStart <= _sec && _sec < _l.value._cacheEnd) {
                _name = _zone.value._name;
                _offset = _zone.value._offset;
                _start = _l.value._cacheStart;
                _end = _l.value._cacheEnd;
                _isDST = _zone.value._isDST;
                return { _0 : _name, _1 : _offset, _2 : _start, _3 : _end, _4 : _isDST };
            };
        };
        if (_l.value._tx.length == ((0 : GoInt)) || _sec < _l.value._tx[((0 : GoInt))]._when) {
            var _zone:Pointer<T_zone> = Go.pointer(_l.value._zone[_l.value._lookupFirstZone()]);
            _name = _zone.value._name;
            _offset = _zone.value._offset;
            _start = _alpha;
            if (_l.value._tx.length > ((0 : GoInt))) {
                _end = _l.value._tx[((0 : GoInt))]._when;
            } else {
                _end = _omega;
            };
            _isDST = _zone.value._isDST;
            return { _0 : _name, _1 : _offset, _2 : _start, _3 : _end, _4 : _isDST };
        };
        var _tx:Slice<T_zoneTrans> = _l.value._tx;
        _end = _omega;
        var _lo:GoInt = ((0 : GoInt));
        var _hi:GoInt = _tx.length;
        while (_hi - _lo > ((1 : GoInt))) {
            var _m:GoInt = _lo + (_hi - _lo) / ((2 : GoInt));
            var _lim:GoInt64 = _tx[_m]._when;
            if (_sec < _lim) {
                _end = _lim;
                _hi = _m;
            } else {
                _lo = _m;
            };
        };
        var _zone:Pointer<T_zone> = Go.pointer(_l.value._zone[_tx[_lo]._index]);
        _name = _zone.value._name;
        _offset = _zone.value._offset;
        _start = _tx[_lo]._when;
        _isDST = _zone.value._isDST;
        if (_lo == _tx.length - ((1 : GoInt)) && _l.value._extend != (("" : GoString))) {
            {
                var __tmp__ = _tzset(_l.value._extend, _end, _sec), _ename:GoString = __tmp__._0, _eoffset:GoInt = __tmp__._1, _estart:GoInt64 = __tmp__._2, _eend:GoInt64 = __tmp__._3, _eisDST:Bool = __tmp__._4, _ok:Bool = __tmp__._5;
                if (_ok) {
                    return { _0 : _ename, _1 : _eoffset, _2 : _estart, _3 : _eend, _4 : _eisDST };
                };
            };
        };
        return { _0 : _name, _1 : _offset, _2 : _start, _3 : _end, _4 : _isDST };
    }
    public function toString():GoString {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _l.value._get().value._name;
    }
    public function _get():Pointer<Location> {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_l == null || _l.isNil()) {
            return Go.pointer(_utcLoc);
        };
        if (_l == Go.pointer(_localLoc)) {
            _localOnce.do_(_initLocal);
        };
        return _l;
    }
    public var _name : GoString = (("" : GoString));
    public var _zone : Slice<T_zone> = new Slice<T_zone>().nil();
    public var _tx : Slice<T_zoneTrans> = new Slice<T_zoneTrans>().nil();
    public var _extend : GoString = (("" : GoString));
    public var _cacheStart : GoInt64 = ((0 : GoInt64));
    public var _cacheEnd : GoInt64 = ((0 : GoInt64));
    public var _cacheZone : Pointer<T_zone> = new Pointer<T_zone>().nil();
    public function new(?_name:GoString, ?_zone:Slice<T_zone>, ?_tx:Slice<T_zoneTrans>, ?_extend:GoString, ?_cacheStart:GoInt64, ?_cacheEnd:GoInt64, ?_cacheZone:Pointer<T_zone>) stdgo.internal.Macro.initLocals();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Location(_name, _zone, _tx, _extend, _cacheStart, _cacheEnd, _cacheZone);
    }
    public function __set__(__tmp__) {
        this._name = __tmp__._name;
        this._zone = __tmp__._zone;
        this._tx = __tmp__._tx;
        this._extend = __tmp__._extend;
        this._cacheStart = __tmp__._cacheStart;
        this._cacheEnd = __tmp__._cacheEnd;
        this._cacheZone = __tmp__._cacheZone;
        return this;
    }
}
@:structInit class T_zone {
    public var _name : GoString = (("" : GoString));
    public var _offset : GoInt = ((0 : GoInt));
    public var _isDST : Bool = false;
    public function new(?_name:GoString, ?_offset:GoInt, ?_isDST:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_name) + " " + Go.string(_offset) + " " + Go.string(_isDST) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_zone(_name, _offset, _isDST);
    }
    public function __set__(__tmp__) {
        this._name = __tmp__._name;
        this._offset = __tmp__._offset;
        this._isDST = __tmp__._isDST;
        return this;
    }
}
@:structInit class T_zoneTrans {
    public var _when : GoInt64 = ((0 : GoInt64));
    public var _index : GoUInt8 = ((0 : GoUInt8));
    public var _isstd : Bool = false;
    public var _isutc : Bool = false;
    public function new(?_when:GoInt64, ?_index:GoUInt8, ?_isstd:Bool, ?_isutc:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_when) + " " + Go.string(_index) + " " + Go.string(_isstd) + " " + Go.string(_isutc) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_zoneTrans(_when, _index, _isstd, _isutc);
    }
    public function __set__(__tmp__) {
        this._when = __tmp__._when;
        this._index = __tmp__._index;
        this._isstd = __tmp__._isstd;
        this._isutc = __tmp__._isutc;
        return this;
    }
}
@:named class T_ruleKind {
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_ruleKind(__t__);
}
@:structInit class T_rule {
    public var _kind : T_ruleKind = new T_ruleKind();
    public var _day : GoInt = ((0 : GoInt));
    public var _week : GoInt = ((0 : GoInt));
    public var _mon : GoInt = ((0 : GoInt));
    public var _time : GoInt = ((0 : GoInt));
    public function new(?_kind:T_ruleKind, ?_day:GoInt, ?_week:GoInt, ?_mon:GoInt, ?_time:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_kind) + " " + Go.string(_day) + " " + Go.string(_week) + " " + Go.string(_mon) + " " + Go.string(_time) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_rule(_kind, _day, _week, _mon, _time);
    }
    public function __set__(__tmp__) {
        this._kind = __tmp__._kind;
        this._day = __tmp__._day;
        this._week = __tmp__._week;
        this._mon = __tmp__._mon;
        this._time = __tmp__._time;
        return this;
    }
}
@:named class T_fileSizeError {
    public function error():GoString {
        var _f = this.__copy__();
        return (("time: file " : GoString)) + _f.__t__ + ((" is too large" : GoString));
    }
    public var __t__ : GoString;
    public function new(?t:GoString) {
        __t__ = t == null ? "" : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_fileSizeError(__t__);
}
@:structInit class T_dataIO {
    public function _rest():Slice<GoByte> {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _r:Slice<GoUInt8> = _d.value._p;
        _d.value._p = new Slice<GoUInt8>().nil();
        return _r;
    }
    public function _byte():{ var _0 : GoByte; var _1 : Bool; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoByte = ((0 : GoUInt8)), _ok:Bool = false;
        var _p:Slice<GoUInt8> = _d.value._read(((1 : GoInt)));
        if (_p.length < ((1 : GoInt))) {
            _d.value._error = true;
            return { _0 : ((0 : GoUInt8)), _1 : false };
        };
        return { _0 : _p[((0 : GoInt))], _1 : true };
    }
    public function _big8():{ var _0 : GoUInt64; var _1 : Bool; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoUInt64 = ((0 : GoUInt64)), _ok:Bool = false;
        var __tmp__ = _d.value._big4(), _n1:GoUInt32 = __tmp__._0, _ok1:Bool = __tmp__._1;
        var __tmp__ = _d.value._big4(), _n2:GoUInt32 = __tmp__._0, _ok2:Bool = __tmp__._1;
        if (!_ok1 || !_ok2) {
            _d.value._error = true;
            return { _0 : ((0 : GoUInt64)), _1 : false };
        };
        return { _0 : ((((_n1 : GoUInt64)) << ((32 : GoUnTypedInt)))) | ((_n2 : GoUInt64)), _1 : true };
    }
    public function _big4():{ var _0 : GoUInt32; var _1 : Bool; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoUInt32 = ((0 : GoUInt32)), _ok:Bool = false;
        var _p:Slice<GoUInt8> = _d.value._read(((4 : GoInt)));
        if (_p.length < ((4 : GoInt))) {
            _d.value._error = true;
            return { _0 : ((0 : GoUInt32)), _1 : false };
        };
        return { _0 : ((_p[((3 : GoInt))] : GoUInt32)) | (((_p[((2 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))) | (((_p[((1 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt))) | (((_p[((0 : GoInt))] : GoUInt32)) << ((24 : GoUnTypedInt))), _1 : true };
    }
    public function _read(_n:GoInt):Slice<GoByte> {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_d.value._p.length < _n) {
            _d.value._p = new Slice<GoUInt8>().nil();
            _d.value._error = true;
            return new Slice<GoUInt8>().nil();
        };
        var _p:Slice<GoUInt8> = _d.value._p.__slice__(((0 : GoInt)), _n);
        _d.value._p = _d.value._p.__slice__(_n);
        return _p;
    }
    public var _p : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _error : Bool = false;
    public function new(?_p:Slice<GoUInt8>, ?_error:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_p) + " " + Go.string(_error) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_dataIO(_p, _error);
    }
    public function __set__(__tmp__) {
        this._p = __tmp__._p;
        this._error = __tmp__._error;
        return this;
    }
}
final _stdNeedDate : GoUnTypedInt = (((1 : GoUnTypedInt)) << ((8 : GoUnTypedInt)));
final _stdYear = (20 : GoUnTypedInt) + _stdNeedDate;
final nanosecond : Duration = new Duration(((1 : GoInt64)));
final microsecond : Duration = new Duration(((1000 : GoInt64)) * nanosecond.__t__);
final millisecond : Duration = new Duration(((1000 : GoInt64)) * microsecond.__t__);
final second : Duration = new Duration(((1000 : GoInt64)) * millisecond.__t__);
final minute : Duration = new Duration(((60 : GoInt64)) * second.__t__);
final _stdDay = (7 : GoUnTypedInt) + _stdNeedDate;
final _absoluteZeroYear : GoInt64 = -(("292277022399" : GoUnTypedInt));
final _internalYear : GoInt64 = ((1 : GoUnTypedInt));
final _secondsPerMinute : GoInt64 = ((60 : GoUnTypedInt));
final _secondsPerHour : GoUnTypedInt = ((60 : GoUnTypedInt)) * _secondsPerMinute;
final _secondsPerDay : GoUnTypedInt = ((24 : GoUnTypedInt)) * _secondsPerHour;
final _absoluteToInternal : GoInt64 = (_absoluteZeroYear - _internalYear) * ((365.2425 : GoUnTypedFloat)) * _secondsPerDay;
final _internalToAbsolute : GoInt64 = -_absoluteToInternal;
var _utcLoc : Location = (({ _name : "UTC", _zone : new Slice<T_zone>().nil(), _tx : new Slice<T_zoneTrans>().nil(), _extend : "", _cacheStart : 0, _cacheEnd : 0, _cacheZone : new Pointer<T_zone>().nil() } : Location)).__copy__();
final rfc3339 : GoString = "2006-01-02T15:04:05Z07:00";
final rfc850 : GoString = "Monday, 02-Jan-06 15:04:05 MST";
final _ruleMonthWeekDay : T_ruleKind = new T_ruleKind((2 : GoUnTypedInt));
final september : Month = new Month(((1 : GoUnTypedInt)) + (8 : GoUnTypedInt));
var _errLocation : stdgo.Error = stdgo.errors.Errors.new_("time: invalid location name");
final ansic : GoString = "Mon Jan _2 15:04:05 2006";
final _hasMonotonic : GoUnTypedInt = (((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt)));
final saturday : Weekday = new Weekday((6 : GoUnTypedInt));
final _stdNeedClock : GoUnTypedInt = (((2 : GoUnTypedInt)) << ((8 : GoUnTypedInt)));
final _stdpm = (22 : GoUnTypedInt) + _stdNeedClock;
final _nsecShift : GoInt64 = ((30 : GoUnTypedInt));
final _stdLongWeekDay = (5 : GoUnTypedInt) + _stdNeedDate;
var _errLeadingInt : stdgo.Error = stdgo.errors.Errors.new_("time: bad [0-9]*");
final _daysPer4Years : GoUnTypedInt = ((365 : GoUnTypedInt)) * ((4 : GoUnTypedInt)) + ((1 : GoUnTypedInt));
final _maxFileSize : GoUnTypedInt = (((10 : GoUnTypedInt)) << ((20 : GoUnTypedInt)));
final monday : Weekday = new Weekday((1 : GoUnTypedInt));
var _badData : stdgo.Error = stdgo.errors.Errors.new_("malformed time zone information");
final _stdISO8601SecondsTZ = (25 : GoUnTypedInt);
final _lowerhex : GoString = "0123456789abcdef";
final stampMicro : GoString = "Jan _2 15:04:05.000000";
var _localLoc : Location = new Location();
var local : Pointer<Location> = Go.pointer(_localLoc);
final sunday : Weekday = new Weekday((0 : GoUnTypedInt));
final _smallsString : GoString = (("00010203040506070809" : GoString)) + (("10111213141516171819" : GoString)) + (("20212223242526272829" : GoString)) + (("30313233343536373839" : GoString)) + (("40414243444546474849" : GoString)) + (("50515253545556575859" : GoString)) + (("60616263646566676869" : GoString)) + (("70717273747576777879" : GoString)) + (("80818283848586878889" : GoString)) + (("90919293949596979899" : GoString));
final _ruleJulian : T_ruleKind = new T_ruleKind((0 : GoUnTypedInt));
final _seekStart : GoInt64 = ((0 : GoUnTypedInt));
var _longDayNames : Slice<GoString> = new Slice<GoString>("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday");
final _seekCurrent : GoInt64 = ((1 : GoUnTypedInt));
final april : Month = new Month(((1 : GoUnTypedInt)) + (3 : GoUnTypedInt));
var _atoiError : stdgo.Error = stdgo.errors.Errors.new_("time: invalid number");
final _stdZeroMinute = (16 : GoUnTypedInt) + _stdNeedClock;
final _alpha : GoUnTypedInt = (-((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt)));
final _stdZeroSecond = (18 : GoUnTypedInt) + _stdNeedClock;
final hour : Duration = new Duration(((60 : GoInt64)) * minute.__t__);
var _unitMap : GoMap<GoString, GoInt64> = new GoMap<GoString, GoInt64>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(int64_kind))), { key : "ns", value : nanosecond.__t__ }, { key : "us", value : microsecond.__t__ }, { key : "µs", value : microsecond.__t__ }, { key : "μs", value : microsecond.__t__ }, { key : "ms", value : millisecond.__t__ }, { key : "s", value : second.__t__ }, { key : "m", value : minute.__t__ }, { key : "h", value : hour.__t__ });
final _secondsPerWeek : GoUnTypedInt = ((7 : GoUnTypedInt)) * _secondsPerDay;
final _stdISO8601ColonSecondsTZ = (28 : GoUnTypedInt);
final unixDate : GoString = "Mon Jan _2 15:04:05 MST 2006";
final friday : Weekday = new Weekday((5 : GoUnTypedInt));
final _stdISO8601ColonTZ = (27 : GoUnTypedInt);
final rfc3339nano : GoString = "2006-01-02T15:04:05.999999999Z07:00";
final _stdHour12 = (13 : GoUnTypedInt) + _stdNeedClock;
final _stdLongMonth : GoUnTypedInt = (1 : GoUnTypedInt) + _stdNeedDate;
var _shortDayNames : Slice<GoString> = new Slice<GoString>("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat");
var _errBad : stdgo.Error = stdgo.errors.Errors.new_("bad value for field");
final _stdArgShift : GoInt64 = ((16 : GoUnTypedInt));
final _unixToInternal : GoInt64 = (((1969 : GoUnTypedInt)) * ((365 : GoUnTypedInt)) + ((1969 : GoUnTypedInt)) / ((4 : GoUnTypedInt)) - ((1969 : GoUnTypedInt)) / ((100 : GoUnTypedInt)) + ((1969 : GoUnTypedInt)) / ((400 : GoUnTypedInt))) * _secondsPerDay;
final _stdPM : GoUnTypedInt = (21 : GoUnTypedInt) + _stdNeedClock;
final _stdUnderYearDay = (10 : GoUnTypedInt) + _stdNeedDate;
final _stdNumMonth = (3 : GoUnTypedInt) + _stdNeedDate;
final _stdNumShortTZ = (31 : GoUnTypedInt);
var _daysBefore : GoArray<GoInt32> = new GoArray<GoInt32>(
((0 : GoInt32)),
((31 : GoInt32)),
((31 : GoUnTypedInt)) + ((28 : GoUnTypedInt)),
((31 : GoUnTypedInt)) + ((28 : GoUnTypedInt)) + ((31 : GoUnTypedInt)),
((31 : GoUnTypedInt)) + ((28 : GoUnTypedInt)) + ((31 : GoUnTypedInt)) + ((30 : GoUnTypedInt)),
((31 : GoUnTypedInt)) + ((28 : GoUnTypedInt)) + ((31 : GoUnTypedInt)) + ((30 : GoUnTypedInt)) + ((31 : GoUnTypedInt)),
((31 : GoUnTypedInt)) + ((28 : GoUnTypedInt)) + ((31 : GoUnTypedInt)) + ((30 : GoUnTypedInt)) + ((31 : GoUnTypedInt)) + ((30 : GoUnTypedInt)),
((31 : GoUnTypedInt)) + ((28 : GoUnTypedInt)) + ((31 : GoUnTypedInt)) + ((30 : GoUnTypedInt)) + ((31 : GoUnTypedInt)) + ((30 : GoUnTypedInt)) + ((31 : GoUnTypedInt)),
((31 : GoUnTypedInt)) + ((28 : GoUnTypedInt)) + ((31 : GoUnTypedInt)) + ((30 : GoUnTypedInt)) + ((31 : GoUnTypedInt)) + ((30 : GoUnTypedInt)) + ((31 : GoUnTypedInt)) + ((31 : GoUnTypedInt)),
((31 : GoUnTypedInt)) + ((28 : GoUnTypedInt)) + ((31 : GoUnTypedInt)) + ((30 : GoUnTypedInt)) + ((31 : GoUnTypedInt)) + ((30 : GoUnTypedInt)) + ((31 : GoUnTypedInt)) + ((31 : GoUnTypedInt)) + ((30 : GoUnTypedInt)),
((31 : GoUnTypedInt)) + ((28 : GoUnTypedInt)) + ((31 : GoUnTypedInt)) + ((30 : GoUnTypedInt)) + ((31 : GoUnTypedInt)) + ((30 : GoUnTypedInt)) + ((31 : GoUnTypedInt)) + ((31 : GoUnTypedInt)) + ((30 : GoUnTypedInt)) + ((31 : GoUnTypedInt)),
((31 : GoUnTypedInt)) + ((28 : GoUnTypedInt)) + ((31 : GoUnTypedInt)) + ((30 : GoUnTypedInt)) + ((31 : GoUnTypedInt)) + ((30 : GoUnTypedInt)) + ((31 : GoUnTypedInt)) + ((31 : GoUnTypedInt)) + ((30 : GoUnTypedInt)) + ((31 : GoUnTypedInt)) + ((30 : GoUnTypedInt)),
((31 : GoUnTypedInt)) + ((28 : GoUnTypedInt)) + ((31 : GoUnTypedInt)) + ((30 : GoUnTypedInt)) + ((31 : GoUnTypedInt)) + ((30 : GoUnTypedInt)) + ((31 : GoUnTypedInt)) + ((31 : GoUnTypedInt)) + ((30 : GoUnTypedInt)) + ((31 : GoUnTypedInt)) + ((30 : GoUnTypedInt)) + ((31 : GoUnTypedInt))).copy();
var _longMonthNames : Slice<GoString> = new Slice<GoString>(
"January",
"February",
"March",
"April",
"May",
"June",
"July",
"August",
"September",
"October",
"November",
"December");
final _wallToInternal : GoInt64 = (((1884 : GoUnTypedInt)) * ((365 : GoUnTypedInt)) + ((1884 : GoUnTypedInt)) / ((4 : GoUnTypedInt)) - ((1884 : GoUnTypedInt)) / ((100 : GoUnTypedInt)) + ((1884 : GoUnTypedInt)) / ((400 : GoUnTypedInt))) * _secondsPerDay;
final stampMilli : GoString = "Jan _2 15:04:05.000";
final _runeSelf : GoInt64 = ((128 : GoUnTypedInt));
final _stdFracSecond0 = (34 : GoUnTypedInt);
final _stdZeroYearDay = (11 : GoUnTypedInt) + _stdNeedDate;
final _internalToWall : GoInt64 = -_wallToInternal;
var _loadTzinfoFromTzdata : (_file:GoString, _name:GoString) -> { var _0 : Slice<GoByte>; var _1 : Error; } = null;
final _ruleDOY : T_ruleKind = new T_ruleKind((1 : GoUnTypedInt));
final july : Month = new Month(((1 : GoUnTypedInt)) + (6 : GoUnTypedInt));
final rfc1123z : GoString = "Mon, 02 Jan 2006 15:04:05 -0700";
final _stdMonth = (2 : GoUnTypedInt) + _stdNeedDate;
final november : Month = new Month(((1 : GoUnTypedInt)) + (10 : GoUnTypedInt));
final december : Month = new Month(((1 : GoUnTypedInt)) + (11 : GoUnTypedInt));
var _localOnce : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
final _timeBinaryVersion : GoByte = ((1 : GoUInt8));
final _stdMask : GoUnTypedInt = (((1 : GoUnTypedInt)) << _stdArgShift) - ((1 : GoUnTypedInt));
var _startNano : GoInt64 = _runtimeNano() - ((1 : GoInt64));
final stampNano : GoString = "Jan _2 15:04:05.000000000";
final _stdZeroMonth = (4 : GoUnTypedInt) + _stdNeedDate;
final _stdZeroDay = (9 : GoUnTypedInt) + _stdNeedDate;
final _stdZeroHour12 = (14 : GoUnTypedInt) + _stdNeedClock;
var _std0x : GoArray<GoInt> = new GoArray<GoInt>(_stdZeroMonth, _stdZeroDay, _stdZeroHour12, _stdZeroMinute, _stdZeroSecond, _stdYear).copy();
final _runeError : GoInt32 = (("\u{FFFD}".code : GoRune));
final rfc822 : GoString = "02 Jan 06 15:04 MST";
final _omega : GoUnTypedInt = (((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt))) - ((1 : GoUnTypedInt));
final _stdFracSecond9 = (35 : GoUnTypedInt);
final _nsecMask : GoUnTypedInt = (((1 : GoUnTypedInt)) << ((30 : GoUnTypedInt))) - ((1 : GoUnTypedInt));
final _minDuration : Duration = (new Duration(-((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt))));
var _loadFromEmbeddedTZData : (_zipname:GoString) -> { var _0 : GoString; var _1 : Error; } = null;
final _stdNumSecondsTz = (30 : GoUnTypedInt);
final rfc1123 : GoString = "Mon, 02 Jan 2006 15:04:05 MST";
final _daysPer400Years : GoUnTypedInt = ((365 : GoUnTypedInt)) * ((400 : GoUnTypedInt)) + ((97 : GoUnTypedInt));
final _stdISO8601TZ = (24 : GoUnTypedInt);
final _digits : GoString = "0123456789";
final wednesday : Weekday = new Weekday((3 : GoUnTypedInt));
var _shortMonthNames : Slice<GoString> = new Slice<GoString>(
"Jan",
"Feb",
"Mar",
"Apr",
"May",
"Jun",
"Jul",
"Aug",
"Sep",
"Oct",
"Nov",
"Dec");
final _stdMinute = (15 : GoUnTypedInt) + _stdNeedClock;
final _stdNumTZ = (29 : GoUnTypedInt);
final thursday : Weekday = new Weekday((4 : GoUnTypedInt));
final _stdSecond = (17 : GoUnTypedInt) + _stdNeedClock;
final _stdHour : GoUnTypedInt = (12 : GoUnTypedInt) + _stdNeedClock;
final _0 : GoUnTypedInt = (0 : GoUnTypedInt);
final may : Month = new Month(((1 : GoUnTypedInt)) + (4 : GoUnTypedInt));
final stamp : GoString = "Jan _2 15:04:05";
var _zoneinfoOnce : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
final kitchen : GoString = "3:04PM";
final _minWall : GoInt64 = _wallToInternal;
final _stdUnderDay = (8 : GoUnTypedInt) + _stdNeedDate;
final _daysPer100Years : GoUnTypedInt = ((365 : GoUnTypedInt)) * ((100 : GoUnTypedInt)) + ((24 : GoUnTypedInt));
var _zoneinfo : Pointer<GoString> = new Pointer<GoString>().nil();
final _stdNumColonSecondsTZ = (33 : GoUnTypedInt);
final october : Month = new Month(((1 : GoUnTypedInt)) + (9 : GoUnTypedInt));
final _maxDuration : Duration = new Duration((((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt))) - ((1 : GoUnTypedInt)));
final _stdTZ : GoUnTypedInt = (23 : GoUnTypedInt);
final march : Month = new Month(((1 : GoUnTypedInt)) + (2 : GoUnTypedInt));
var _zoneSources : Slice<GoString> = new Slice<GoString>("/usr/share/zoneinfo/", "/usr/share/lib/zoneinfo/", "/usr/lib/locale/TZ/", stdgo.runtime.Runtime.goroot() + (("/lib/time/zoneinfo.zip" : GoString)));
final _stdNumColonTZ = (32 : GoUnTypedInt);
final august : Month = new Month(((1 : GoUnTypedInt)) + (7 : GoUnTypedInt));
final january : Month = new Month(((1 : GoUnTypedInt)) + (0 : GoUnTypedInt));
final layout : GoString = "01/02 03:04:05PM \'06 -0700";
final february : Month = new Month(((1 : GoUnTypedInt)) + (1 : GoUnTypedInt));
final _stdWeekDay = (6 : GoUnTypedInt) + _stdNeedDate;
final rfc822z : GoString = "02 Jan 06 15:04 -0700";
final _stdLongYear : GoUnTypedInt = (19 : GoUnTypedInt) + _stdNeedDate;
final rubyDate : GoString = "Mon Jan 02 15:04:05 -0700 2006";
final _maxWall : GoInt64 = _wallToInternal + ((((1 : GoUnTypedInt)) << ((33 : GoUnTypedInt))) - ((1 : GoUnTypedInt)));
final tuesday : Weekday = new Weekday((2 : GoUnTypedInt));
final june : Month = new Month(((1 : GoUnTypedInt)) + (5 : GoUnTypedInt));
final _stdISO8601ShortTZ = (26 : GoUnTypedInt);
final _internalToUnix : GoInt64 = -_unixToInternal;
final _seekEnd : GoInt64 = ((2 : GoUnTypedInt));
var utc : Pointer<Location> = Go.pointer(_utcLoc);
/**
    // startsWithLowerCase reports whether the string has a lower-case letter at the beginning.
    // Its purpose is to prevent matching strings like "Month" when looking for "Mon".
**/
function _startsWithLowerCase(_str:GoString):Bool {
        if (_str.length == ((0 : GoInt))) {
            return false;
        };
        var _c:GoUInt8 = _str[((0 : GoInt))];
        return (("a".code : GoRune)) <= _c && _c <= (("z".code : GoRune));
    }
/**
    // nextStdChunk finds the first occurrence of a std string in
    // layout and returns the text before, the std string, and the text after.
**/
function _nextStdChunk(_layout:GoString):{ var _0 : GoString; var _1 : GoInt; var _2 : GoString; } {
        var _prefix:GoString = (("" : GoString)), _std:GoInt = ((0 : GoInt)), _suffix:GoString = (("" : GoString));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _layout.length, _i++, {
                {
                    var _c:GoInt = ((_layout[_i] : GoInt));
                    if (_c == (("J".code : GoRune))) {
                        if (_layout.length >= _i + ((3 : GoInt)) && _layout.__slice__(_i, _i + ((3 : GoInt))) == (("Jan" : GoString))) {
                            if (_layout.length >= _i + ((7 : GoInt)) && _layout.__slice__(_i, _i + ((7 : GoInt))) == (("January" : GoString))) {
                                return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _stdLongMonth, _2 : _layout.__slice__(_i + ((7 : GoInt))) };
                            };
                            if (!_startsWithLowerCase(_layout.__slice__(_i + ((3 : GoInt))))) {
                                return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _stdMonth, _2 : _layout.__slice__(_i + ((3 : GoInt))) };
                            };
                        };
                    } else if (_c == (("M".code : GoRune))) {
                        if (_layout.length >= _i + ((3 : GoInt))) {
                            if (_layout.__slice__(_i, _i + ((3 : GoInt))) == (("Mon" : GoString))) {
                                if (_layout.length >= _i + ((6 : GoInt)) && _layout.__slice__(_i, _i + ((6 : GoInt))) == (("Monday" : GoString))) {
                                    return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _stdLongWeekDay, _2 : _layout.__slice__(_i + ((6 : GoInt))) };
                                };
                                if (!_startsWithLowerCase(_layout.__slice__(_i + ((3 : GoInt))))) {
                                    return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _stdWeekDay, _2 : _layout.__slice__(_i + ((3 : GoInt))) };
                                };
                            };
                            if (_layout.__slice__(_i, _i + ((3 : GoInt))) == (("MST" : GoString))) {
                                return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _stdTZ, _2 : _layout.__slice__(_i + ((3 : GoInt))) };
                            };
                        };
                    } else if (_c == (("0".code : GoRune))) {
                        if (_layout.length >= _i + ((2 : GoInt)) && (("1".code : GoRune)) <= _layout[_i + ((1 : GoInt))] && _layout[_i + ((1 : GoInt))] <= (("6".code : GoRune))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _std0x[_layout[_i + ((1 : GoInt))] - (("1".code : GoRune))], _2 : _layout.__slice__(_i + ((2 : GoInt))) };
                        };
                        if (_layout.length >= _i + ((3 : GoInt)) && _layout[_i + ((1 : GoInt))] == (("0".code : GoRune)) && _layout[_i + ((2 : GoInt))] == (("2".code : GoRune))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _stdZeroYearDay, _2 : _layout.__slice__(_i + ((3 : GoInt))) };
                        };
                    } else if (_c == (("1".code : GoRune))) {
                        if (_layout.length >= _i + ((2 : GoInt)) && _layout[_i + ((1 : GoInt))] == (("5".code : GoRune))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _stdHour, _2 : _layout.__slice__(_i + ((2 : GoInt))) };
                        };
                        return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _stdNumMonth, _2 : _layout.__slice__(_i + ((1 : GoInt))) };
                    } else if (_c == (("2".code : GoRune))) {
                        if (_layout.length >= _i + ((4 : GoInt)) && _layout.__slice__(_i, _i + ((4 : GoInt))) == (("2006" : GoString))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _stdLongYear, _2 : _layout.__slice__(_i + ((4 : GoInt))) };
                        };
                        return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _stdDay, _2 : _layout.__slice__(_i + ((1 : GoInt))) };
                    } else if (_c == (("_".code : GoRune))) {
                        if (_layout.length >= _i + ((2 : GoInt)) && _layout[_i + ((1 : GoInt))] == (("2".code : GoRune))) {
                            if (_layout.length >= _i + ((5 : GoInt)) && _layout.__slice__(_i + ((1 : GoInt)), _i + ((5 : GoInt))) == (("2006" : GoString))) {
                                return { _0 : _layout.__slice__(((0 : GoInt)), _i + ((1 : GoInt))), _1 : _stdLongYear, _2 : _layout.__slice__(_i + ((5 : GoInt))) };
                            };
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _stdUnderDay, _2 : _layout.__slice__(_i + ((2 : GoInt))) };
                        };
                        if (_layout.length >= _i + ((3 : GoInt)) && _layout[_i + ((1 : GoInt))] == (("_".code : GoRune)) && _layout[_i + ((2 : GoInt))] == (("2".code : GoRune))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _stdUnderYearDay, _2 : _layout.__slice__(_i + ((3 : GoInt))) };
                        };
                    } else if (_c == (("3".code : GoRune))) {
                        return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _stdHour12, _2 : _layout.__slice__(_i + ((1 : GoInt))) };
                    } else if (_c == (("4".code : GoRune))) {
                        return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _stdMinute, _2 : _layout.__slice__(_i + ((1 : GoInt))) };
                    } else if (_c == (("5".code : GoRune))) {
                        return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _stdSecond, _2 : _layout.__slice__(_i + ((1 : GoInt))) };
                    } else if (_c == (("P".code : GoRune))) {
                        if (_layout.length >= _i + ((2 : GoInt)) && _layout[_i + ((1 : GoInt))] == (("M".code : GoRune))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _stdPM, _2 : _layout.__slice__(_i + ((2 : GoInt))) };
                        };
                    } else if (_c == (("p".code : GoRune))) {
                        if (_layout.length >= _i + ((2 : GoInt)) && _layout[_i + ((1 : GoInt))] == (("m".code : GoRune))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _stdpm, _2 : _layout.__slice__(_i + ((2 : GoInt))) };
                        };
                    } else if (_c == (("-".code : GoRune))) {
                        if (_layout.length >= _i + ((7 : GoInt)) && _layout.__slice__(_i, _i + ((7 : GoInt))) == (("-070000" : GoString))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _stdNumSecondsTz, _2 : _layout.__slice__(_i + ((7 : GoInt))) };
                        };
                        if (_layout.length >= _i + ((9 : GoInt)) && _layout.__slice__(_i, _i + ((9 : GoInt))) == (("-07:00:00" : GoString))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _stdNumColonSecondsTZ, _2 : _layout.__slice__(_i + ((9 : GoInt))) };
                        };
                        if (_layout.length >= _i + ((5 : GoInt)) && _layout.__slice__(_i, _i + ((5 : GoInt))) == (("-0700" : GoString))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _stdNumTZ, _2 : _layout.__slice__(_i + ((5 : GoInt))) };
                        };
                        if (_layout.length >= _i + ((6 : GoInt)) && _layout.__slice__(_i, _i + ((6 : GoInt))) == (("-07:00" : GoString))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _stdNumColonTZ, _2 : _layout.__slice__(_i + ((6 : GoInt))) };
                        };
                        if (_layout.length >= _i + ((3 : GoInt)) && _layout.__slice__(_i, _i + ((3 : GoInt))) == (("-07" : GoString))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _stdNumShortTZ, _2 : _layout.__slice__(_i + ((3 : GoInt))) };
                        };
                    } else if (_c == (("Z".code : GoRune))) {
                        if (_layout.length >= _i + ((7 : GoInt)) && _layout.__slice__(_i, _i + ((7 : GoInt))) == (("Z070000" : GoString))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _stdISO8601SecondsTZ, _2 : _layout.__slice__(_i + ((7 : GoInt))) };
                        };
                        if (_layout.length >= _i + ((9 : GoInt)) && _layout.__slice__(_i, _i + ((9 : GoInt))) == (("Z07:00:00" : GoString))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _stdISO8601ColonSecondsTZ, _2 : _layout.__slice__(_i + ((9 : GoInt))) };
                        };
                        if (_layout.length >= _i + ((5 : GoInt)) && _layout.__slice__(_i, _i + ((5 : GoInt))) == (("Z0700" : GoString))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _stdISO8601TZ, _2 : _layout.__slice__(_i + ((5 : GoInt))) };
                        };
                        if (_layout.length >= _i + ((6 : GoInt)) && _layout.__slice__(_i, _i + ((6 : GoInt))) == (("Z07:00" : GoString))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _stdISO8601ColonTZ, _2 : _layout.__slice__(_i + ((6 : GoInt))) };
                        };
                        if (_layout.length >= _i + ((3 : GoInt)) && _layout.__slice__(_i, _i + ((3 : GoInt))) == (("Z07" : GoString))) {
                            return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _stdISO8601ShortTZ, _2 : _layout.__slice__(_i + ((3 : GoInt))) };
                        };
                    } else if (_c == ((".".code : GoRune)) || _c == ((",".code : GoRune))) {
                        if (_i + ((1 : GoInt)) < _layout.length && (_layout[_i + ((1 : GoInt))] == (("0".code : GoRune)) || _layout[_i + ((1 : GoInt))] == (("9".code : GoRune)))) {
                            var _ch:GoUInt8 = _layout[_i + ((1 : GoInt))];
                            var _j:GoInt = _i + ((1 : GoInt));
                            while (_j < _layout.length && _layout[_j] == _ch) {
                                _j++;
                            };
                            if (!_isDigit(_layout, _j)) {
                                var _std:GoInt = _stdFracSecond0;
                                if (_layout[_i + ((1 : GoInt))] == (("9".code : GoRune))) {
                                    _std = _stdFracSecond9;
                                };
                                _std = _std | (((_j - (_i + ((1 : GoInt)))) << _stdArgShift));
                                return { _0 : _layout.__slice__(((0 : GoInt)), _i), _1 : _std, _2 : _layout.__slice__(_j) };
                            };
                        };
                    };
                };
            });
        };
        return { _0 : _layout, _1 : ((0 : GoInt)), _2 : "" };
    }
/**
    // match reports whether s1 and s2 match ignoring case.
    // It is assumed s1 and s2 are the same length.
**/
function _match(_s1:GoString, _s2:GoString):Bool {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _s1.length, _i++, {
                var _c1:GoUInt8 = _s1[_i];
                var _c2:GoUInt8 = _s2[_i];
                if (_c1 != _c2) {
                    _c1 = _c1 | ((("a".code : GoRune)) - (("A".code : GoRune)));
                    _c2 = _c2 | ((("a".code : GoRune)) - (("A".code : GoRune)));
                    if (_c1 != _c2 || _c1 < (("a".code : GoRune)) || _c1 > (("z".code : GoRune))) {
                        return false;
                    };
                };
            });
        };
        return true;
    }
function _lookup(_tab:Slice<GoString>, _val:GoString):{ var _0 : GoInt; var _1 : GoString; var _2 : Error; } {
        {
            var _i;
            var _v;
            for (_obj in _tab.keyValueIterator()) {
                _i = _obj.key;
                _v = _obj.value;
                if (_val.length >= _v.length && _match(_val.__slice__(((0 : GoInt)), _v.length), _v)) {
                    return { _0 : _i, _1 : _val.__slice__(_v.length), _2 : ((null : stdgo.Error)) };
                };
            };
        };
        return { _0 : -((1 : GoUnTypedInt)), _1 : _val, _2 : _errBad };
    }
/**
    // appendInt appends the decimal form of x to b and returns the result.
    // If the decimal form (excluding sign) is shorter than width, the result is padded with leading 0's.
    // Duplicates functionality in strconv, but avoids dependency.
**/
function _appendInt(_b:Slice<GoByte>, _x:GoInt, _width:GoInt):Slice<GoByte> {
        var _u:GoUInt = ((_x : GoUInt));
        if (_x < ((0 : GoInt))) {
            _b = _b.__append__((("-".code : GoRune)));
            _u = ((-_x : GoUInt));
        };
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 20) ((0 : GoUInt8))]);
        var _i:GoInt = _buf.length;
        while (_u >= ((10 : GoUInt))) {
            _i--;
            var _q:GoUInt = _u / ((10 : GoUInt));
            _buf[_i] = ((((("0".code : GoRune)) + _u - _q * ((10 : GoUInt))) : GoByte));
            _u = _q;
        };
        _i--;
        _buf[_i] = ((((("0".code : GoRune)) + _u) : GoByte));
        {
            var _w:GoInt = _buf.length - _i;
            Go.cfor(_w < _width, _w++, {
                _b = _b.__append__((("0".code : GoRune)));
            });
        };
        return _b.__append__(..._buf.__slice__(_i).toArray());
    }
/**
    // Duplicates functionality in strconv, but avoids dependency.
**/
function _atoi(_s:GoString):{ var _0 : GoInt; var _1 : Error; } {
        var _x:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _neg:Bool = false;
        if (_s != (("" : GoString)) && (_s[((0 : GoInt))] == (("-".code : GoRune)) || _s[((0 : GoInt))] == (("+".code : GoRune)))) {
            _neg = _s[((0 : GoInt))] == (("-".code : GoRune));
            _s = _s.__slice__(((1 : GoInt)));
        };
        var __tmp__ = _leadingInt(_s), _q:GoInt64 = __tmp__._0, _rem:GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        _x = ((_q : GoInt));
        if (_err != null || _rem != (("" : GoString))) {
            return { _0 : ((0 : GoInt)), _1 : _atoiError };
        };
        if (_neg) {
            _x = -_x;
        };
        return { _0 : _x, _1 : ((null : stdgo.Error)) };
    }
/**
    // formatNano appends a fractional second, as nanoseconds, to b
    // and returns the result.
**/
function _formatNano(_b:Slice<GoByte>, _nanosec:GoUInt, _n:GoInt, _trim:Bool):Slice<GoByte> {
        var _u:GoUInt = _nanosec;
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 9) ((0 : GoUInt8))]);
        {
            var _start:GoInt = _buf.length;
            while (_start > ((0 : GoInt))) {
                _start--;
                _buf[_start] = (((_u % ((10 : GoUInt)) + (("0".code : GoRune))) : GoByte));
                _u = _u / (((10 : GoUInt)));
            };
        };
        if (_n > ((9 : GoInt))) {
            _n = ((9 : GoInt));
        };
        if (_trim) {
            while (_n > ((0 : GoInt)) && _buf[_n - ((1 : GoInt))] == (("0".code : GoRune))) {
                _n--;
            };
            if (_n == ((0 : GoInt))) {
                return _b;
            };
        };
        _b = _b.__append__(((".".code : GoRune)));
        return _b.__append__(..._buf.__slice__(0, _n).toArray());
    }
function _quote(_s:GoString):GoString {
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_s.length + ((2 : GoInt)) : GoInt)).toBasic());
        _buf[((0 : GoInt))] = (("\"".code : GoRune));
        {
            var _i;
            var _c;
            for (_obj in _s.keyValueIterator()) {
                _i = _obj.key;
                _c = _obj.value;
                if (_c >= _runeSelf || _c < ((" ".code : GoRune))) {
                    var _width:GoInt = ((0 : GoInt));
                    if (_c == _runeError) {
                        _width = ((1 : GoInt));
                        if (_i + ((2 : GoInt)) < _s.length && _s.__slice__(_i, _i + ((3 : GoInt))) == ((_runeError : GoString))) {
                            _width = ((3 : GoInt));
                        };
                    } else {
                        _width = ((_c : GoString)).length;
                    };
                    {
                        var _j:GoInt = ((0 : GoInt));
                        Go.cfor(_j < _width, _j++, {
                            _buf = _buf.__append__(...(("\\x" : GoString)).toArray());
                            _buf = _buf.__append__(_lowerhex[(_s[_i + _j] >> ((4 : GoUnTypedInt)))]);
                            _buf = _buf.__append__(_lowerhex[_s[_i + _j] & ((15 : GoUInt8))]);
                        });
                    };
                } else {
                    if (_c == (("\"".code : GoRune)) || _c == (("\\".code : GoRune))) {
                        _buf = _buf.__append__((("\\".code : GoRune)));
                    };
                    _buf = _buf.__append__(...((_c : GoString)).toArray());
                };
            };
        };
        _buf = _buf.__append__((("\"".code : GoRune)));
        return ((_buf : GoString));
    }
/**
    // isDigit reports whether s[i] is in range and is a decimal digit.
**/
function _isDigit(_s:GoString, _i:GoInt):Bool {
        if (_s.length <= _i) {
            return false;
        };
        var _c:GoUInt8 = _s[_i];
        return (("0".code : GoRune)) <= _c && _c <= (("9".code : GoRune));
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
            return { _0 : (((_s[((0 : GoInt))] - (("0".code : GoRune))) : GoInt)), _1 : _s.__slice__(((1 : GoInt))), _2 : ((null : stdgo.Error)) };
        };
        return { _0 : (((_s[((0 : GoInt))] - (("0".code : GoRune))) : GoInt)) * ((10 : GoInt)) + (((_s[((1 : GoInt))] - (("0".code : GoRune))) : GoInt)), _1 : _s.__slice__(((2 : GoInt))), _2 : ((null : stdgo.Error)) };
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
            Go.cfor(_i < ((3 : GoInt)) && _isDigit(_s, _i), _i++, {
                _n = _n * ((10 : GoInt)) + (((_s[_i] - (("0".code : GoRune))) : GoInt));
            });
        };
        if (_i == ((0 : GoInt)) || _fixed && _i != ((3 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : _s, _2 : _errBad };
        };
        return { _0 : _n, _1 : _s.__slice__(_i), _2 : ((null : stdgo.Error)) };
    }
function _cutspace(_s:GoString):GoString {
        while (_s.length > ((0 : GoInt)) && _s[((0 : GoInt))] == ((" ".code : GoRune))) {
            _s = _s.__slice__(((1 : GoInt)));
        };
        return _s;
    }
/**
    // skip removes the given prefix from value,
    // treating runs of space characters as equivalent.
**/
function _skip(_value:GoString, _prefix:GoString):{ var _0 : GoString; var _1 : Error; } {
        while (_prefix.length > ((0 : GoInt))) {
            if (_prefix[((0 : GoInt))] == ((" ".code : GoRune))) {
                if (_value.length > ((0 : GoInt)) && _value[((0 : GoInt))] != ((" ".code : GoRune))) {
                    return { _0 : _value, _1 : _errBad };
                };
                _prefix = _cutspace(_prefix);
                _value = _cutspace(_value);
                continue;
            };
            if (_value.length == ((0 : GoInt)) || _value[((0 : GoInt))] != _prefix[((0 : GoInt))]) {
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
function parseInLocation(_layout:GoString, _value:GoString, _loc:Pointer<Location>):{ var _0 : Time; var _1 : Error; } {
        return _parse(_layout, _value, _loc, _loc);
    }
function _parse(_layout:GoString, _value:GoString, _defaultLocation:Pointer<Location>, _local:Pointer<Location>):{ var _0 : Time; var _1 : Error; } {
        var _alayout:GoString = _layout, _avalue:GoString = _value;
        var _rangeErrString:GoString = "";
        var _amSet:Bool = false;
        var _pmSet:Bool = false;
        var _year:GoInt = ((0 : GoInt)), _month:GoInt = -((1 : GoUnTypedInt)), _day:GoInt = -((1 : GoUnTypedInt)), _yday:GoInt = -((1 : GoUnTypedInt)), _hour:GoInt = ((0 : GoInt)), _min:GoInt = ((0 : GoInt)), _sec:GoInt = ((0 : GoInt)), _nsec:GoInt = ((0 : GoInt)), _z:Pointer<Location> = new Pointer<Location>().nil(), _zoneOffset:GoInt = -((1 : GoUnTypedInt)), _zoneName:GoString = (("" : GoString));
        while (true) {
            var _err:Error = ((null : stdgo.Error));
            var __tmp__ = _nextStdChunk(_layout), _prefix:GoString = __tmp__._0, _std:GoInt = __tmp__._1, _suffix:GoString = __tmp__._2;
            var _stdstr:GoString = _layout.__slice__(_prefix.length, _layout.length - _suffix.length);
            {
                var __tmp__ = _skip(_value, _prefix);
                _value = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : new Time().__copy__(), _1 : Go.pointer(new ParseError(_alayout, _avalue, _prefix, _value, "")).value };
            };
            if (_std == ((0 : GoInt))) {
                if (_value.length != ((0 : GoInt))) {
                    return { _0 : new Time().__copy__(), _1 : Go.pointer(new ParseError(_alayout, _avalue, "", _value, ((": extra text: " : GoString)) + _quote(_value))).value };
                };
                break;
            };
            _layout = _suffix;
            var _p:GoString = (("" : GoString));
            {
                var __switchIndex__ = -1;
                while (true) {
                    if (_std & _stdMask == _stdYear) {
                        if (_value.length < ((2 : GoInt))) {
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
                    } else if (_std & _stdMask == _stdLongYear) {
                        if (_value.length < ((4 : GoInt)) || !_isDigit(_value, ((0 : GoInt)))) {
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
                    } else if (_std & _stdMask == _stdMonth) {
                        {
                            var __tmp__ = _lookup(_shortMonthNames, _value);
                            _month = __tmp__._0;
                            _value = __tmp__._1;
                            _err = __tmp__._2;
                        };
                        _month++;
                        break;
                    } else if (_std & _stdMask == _stdLongMonth) {
                        {
                            var __tmp__ = _lookup(_longMonthNames, _value);
                            _month = __tmp__._0;
                            _value = __tmp__._1;
                            _err = __tmp__._2;
                        };
                        _month++;
                        break;
                    } else if (_std & _stdMask == _stdNumMonth || _std & _stdMask == _stdZeroMonth) {
                        {
                            var __tmp__ = _getnum(_value, _std == _stdZeroMonth);
                            _month = __tmp__._0;
                            _value = __tmp__._1;
                            _err = __tmp__._2;
                        };
                        if (_err == null && (_month <= ((0 : GoInt)) || ((12 : GoInt)) < _month)) {
                            _rangeErrString = "month";
                        };
                        break;
                    } else if (_std & _stdMask == _stdWeekDay) {
                        {
                            var __tmp__ = _lookup(_shortDayNames, _value);
                            _value = __tmp__._1;
                            _err = __tmp__._2;
                        };
                        break;
                    } else if (_std & _stdMask == _stdLongWeekDay) {
                        {
                            var __tmp__ = _lookup(_longDayNames, _value);
                            _value = __tmp__._1;
                            _err = __tmp__._2;
                        };
                        break;
                    } else if (_std & _stdMask == _stdDay || _std & _stdMask == _stdUnderDay || _std & _stdMask == _stdZeroDay) {
                        if (_std == _stdUnderDay && _value.length > ((0 : GoInt)) && _value[((0 : GoInt))] == ((" ".code : GoRune))) {
                            _value = _value.__slice__(((1 : GoInt)));
                        };
                        {
                            var __tmp__ = _getnum(_value, _std == _stdZeroDay);
                            _day = __tmp__._0;
                            _value = __tmp__._1;
                            _err = __tmp__._2;
                        };
                        break;
                    } else if (_std & _stdMask == _stdUnderYearDay || _std & _stdMask == _stdZeroYearDay) {
                        {
                            var _i:GoInt = ((0 : GoInt));
                            Go.cfor(_i < ((2 : GoInt)), _i++, {
                                if (_std == _stdUnderYearDay && _value.length > ((0 : GoInt)) && _value[((0 : GoInt))] == ((" ".code : GoRune))) {
                                    _value = _value.__slice__(((1 : GoInt)));
                                };
                            });
                        };
                        {
                            var __tmp__ = _getnum3(_value, _std == _stdZeroYearDay);
                            _yday = __tmp__._0;
                            _value = __tmp__._1;
                            _err = __tmp__._2;
                        };
                        break;
                    } else if (_std & _stdMask == _stdHour) {
                        {
                            var __tmp__ = _getnum(_value, false);
                            _hour = __tmp__._0;
                            _value = __tmp__._1;
                            _err = __tmp__._2;
                        };
                        if (_hour < ((0 : GoInt)) || ((24 : GoInt)) <= _hour) {
                            _rangeErrString = "hour";
                        };
                        break;
                    } else if (_std & _stdMask == _stdHour12 || _std & _stdMask == _stdZeroHour12) {
                        {
                            var __tmp__ = _getnum(_value, _std == _stdZeroHour12);
                            _hour = __tmp__._0;
                            _value = __tmp__._1;
                            _err = __tmp__._2;
                        };
                        if (_hour < ((0 : GoInt)) || ((12 : GoInt)) < _hour) {
                            _rangeErrString = "hour";
                        };
                        break;
                    } else if (_std & _stdMask == _stdMinute || _std & _stdMask == _stdZeroMinute) {
                        {
                            var __tmp__ = _getnum(_value, _std == _stdZeroMinute);
                            _min = __tmp__._0;
                            _value = __tmp__._1;
                            _err = __tmp__._2;
                        };
                        if (_min < ((0 : GoInt)) || ((60 : GoInt)) <= _min) {
                            _rangeErrString = "minute";
                        };
                        break;
                    } else if (_std & _stdMask == _stdSecond || _std & _stdMask == _stdZeroSecond) {
                        {
                            var __tmp__ = _getnum(_value, _std == _stdZeroSecond);
                            _sec = __tmp__._0;
                            _value = __tmp__._1;
                            _err = __tmp__._2;
                        };
                        if (_sec < ((0 : GoInt)) || ((60 : GoInt)) <= _sec) {
                            _rangeErrString = "second";
                            break;
                        };
                        if (_value.length >= ((2 : GoInt)) && _commaOrPeriod(_value[((0 : GoInt))]) && _isDigit(_value, ((1 : GoInt)))) {
                            {
                                var __tmp__ = _nextStdChunk(_layout);
                                _std = __tmp__._1;
                            };
                            _std = _std & (_stdMask);
                            if (_std == _stdFracSecond0 || _std == _stdFracSecond9) {
                                break;
                            };
                            var _n:GoInt = ((2 : GoInt));
                            Go.cfor(_n < _value.length && _isDigit(_value, _n), _n++, {});
                            {
                                var __tmp__ = _parseNanoseconds(_value, _n);
                                _nsec = __tmp__._0;
                                _rangeErrString = __tmp__._1;
                                _err = __tmp__._2;
                            };
                            _value = _value.__slice__(_n);
                        };
                        break;
                    } else if (_std & _stdMask == _stdPM) {
                        if (_value.length < ((2 : GoInt))) {
                            _err = _errBad;
                            break;
                        };
                        {
                            final __tmp__0 = _value.__slice__(((0 : GoInt)), ((2 : GoInt)));
                            final __tmp__1 = _value.__slice__(((2 : GoInt)));
                            _p = __tmp__0;
                            _value = __tmp__1;
                        };
                        if (_p == (("PM" : GoString))) {
                            _pmSet = true;
                        } else if (_p == (("AM" : GoString))) {
                            _amSet = true;
                        } else {
                            _err = _errBad;
                        };
                        break;
                    } else if (_std & _stdMask == _stdpm) {
                        if (_value.length < ((2 : GoInt))) {
                            _err = _errBad;
                            break;
                        };
                        {
                            final __tmp__0 = _value.__slice__(((0 : GoInt)), ((2 : GoInt)));
                            final __tmp__1 = _value.__slice__(((2 : GoInt)));
                            _p = __tmp__0;
                            _value = __tmp__1;
                        };
                        if (_p == (("pm" : GoString))) {
                            _pmSet = true;
                        } else if (_p == (("am" : GoString))) {
                            _amSet = true;
                        } else {
                            _err = _errBad;
                        };
                        break;
                    } else if (_std & _stdMask == _stdISO8601TZ || _std & _stdMask == _stdISO8601ColonTZ || _std & _stdMask == _stdISO8601SecondsTZ || _std & _stdMask == _stdISO8601ShortTZ || _std & _stdMask == _stdISO8601ColonSecondsTZ || _std & _stdMask == _stdNumTZ || _std & _stdMask == _stdNumShortTZ || _std & _stdMask == _stdNumColonTZ || _std & _stdMask == _stdNumSecondsTz || _std & _stdMask == _stdNumColonSecondsTZ) {
                        if ((_std == _stdISO8601TZ || _std == _stdISO8601ShortTZ || _std == _stdISO8601ColonTZ) && _value.length >= ((1 : GoInt)) && _value[((0 : GoInt))] == (("Z".code : GoRune))) {
                            _value = _value.__slice__(((1 : GoInt)));
                            _z = utc;
                            break;
                        };
                        var _sign:GoString = (("" : GoString)), _hour:GoString = (("" : GoString)), _min:GoString = (("" : GoString)), _seconds:GoString = (("" : GoString));
                        if (_std == _stdISO8601ColonTZ || _std == _stdNumColonTZ) {
                            if (_value.length < ((6 : GoInt))) {
                                _err = _errBad;
                                break;
                            };
                            if (_value[((3 : GoInt))] != ((":".code : GoRune))) {
                                _err = _errBad;
                                break;
                            };
                            {
                                final __tmp__0 = _value.__slice__(((0 : GoInt)), ((1 : GoInt)));
                                final __tmp__1 = _value.__slice__(((1 : GoInt)), ((3 : GoInt)));
                                final __tmp__2 = _value.__slice__(((4 : GoInt)), ((6 : GoInt)));
                                final __tmp__3 = "00";
                                final __tmp__4 = _value.__slice__(((6 : GoInt)));
                                _sign = __tmp__0;
                                _hour = __tmp__1;
                                _min = __tmp__2;
                                _seconds = __tmp__3;
                                _value = __tmp__4;
                            };
                        } else if (_std == _stdNumShortTZ || _std == _stdISO8601ShortTZ) {
                            if (_value.length < ((3 : GoInt))) {
                                _err = _errBad;
                                break;
                            };
                            {
                                final __tmp__0 = _value.__slice__(((0 : GoInt)), ((1 : GoInt)));
                                final __tmp__1 = _value.__slice__(((1 : GoInt)), ((3 : GoInt)));
                                final __tmp__2 = "00";
                                final __tmp__3 = "00";
                                final __tmp__4 = _value.__slice__(((3 : GoInt)));
                                _sign = __tmp__0;
                                _hour = __tmp__1;
                                _min = __tmp__2;
                                _seconds = __tmp__3;
                                _value = __tmp__4;
                            };
                        } else if (_std == _stdISO8601ColonSecondsTZ || _std == _stdNumColonSecondsTZ) {
                            if (_value.length < ((9 : GoInt))) {
                                _err = _errBad;
                                break;
                            };
                            if (_value[((3 : GoInt))] != ((":".code : GoRune)) || _value[((6 : GoInt))] != ((":".code : GoRune))) {
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
                        } else if (_std == _stdISO8601SecondsTZ || _std == _stdNumSecondsTz) {
                            if (_value.length < ((7 : GoInt))) {
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
                            if (_value.length < ((5 : GoInt))) {
                                _err = _errBad;
                                break;
                            };
                            {
                                final __tmp__0 = _value.__slice__(((0 : GoInt)), ((1 : GoInt)));
                                final __tmp__1 = _value.__slice__(((1 : GoInt)), ((3 : GoInt)));
                                final __tmp__2 = _value.__slice__(((3 : GoInt)), ((5 : GoInt)));
                                final __tmp__3 = "00";
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
                        _zoneOffset = (_hr * ((60 : GoInt)) + _mm) * ((60 : GoInt)) + _ss;
                        if (_sign[((0 : GoInt))] == (("+".code : GoRune))) {} else if (_sign[((0 : GoInt))] == (("-".code : GoRune))) {
                            _zoneOffset = -_zoneOffset;
                        } else {
                            _err = _errBad;
                        };
                        break;
                    } else if (_std & _stdMask == _stdTZ) {
                        if (_value.length >= ((3 : GoInt)) && _value.__slice__(((0 : GoInt)), ((3 : GoInt))) == (("UTC" : GoString))) {
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
                    } else if (_std & _stdMask == _stdFracSecond0) {
                        var _ndigit:GoInt = ((1 : GoInt)) + ((_std >> _stdArgShift));
                        if (_value.length < _ndigit) {
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
                    } else if (_std & _stdMask == _stdFracSecond9) {
                        if (_value.length < ((2 : GoInt)) || !_commaOrPeriod(_value[((0 : GoInt))]) || _value[((1 : GoInt))] < (("0".code : GoRune)) || (("9".code : GoRune)) < _value[((1 : GoInt))]) {
                            break;
                        };
                        var _i:GoInt = ((0 : GoInt));
                        while (_i < ((9 : GoInt)) && _i + ((1 : GoInt)) < _value.length && (("0".code : GoRune)) <= _value[_i + ((1 : GoInt))] && _value[_i + ((1 : GoInt))] <= (("9".code : GoRune))) {
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
            if (_rangeErrString != (("" : GoString))) {
                return { _0 : new Time().__copy__(), _1 : Go.pointer(new ParseError(_alayout, _avalue, _stdstr, _value, ((": " : GoString)) + _rangeErrString + ((" out of range" : GoString)))).value };
            };
            if (_err != null) {
                return { _0 : new Time().__copy__(), _1 : Go.pointer(new ParseError(_alayout, _avalue, _stdstr, _value, "")).value };
            };
        };
        if (_pmSet && _hour < ((12 : GoInt))) {
            _hour = _hour + (((12 : GoInt)));
        } else if (_amSet && _hour == ((12 : GoInt))) {
            _hour = ((0 : GoInt));
        };
        if (_yday >= ((0 : GoInt))) {
            var _d:GoInt = ((0 : GoInt));
            var _m:GoInt = ((0 : GoInt));
            if (_isLeap(_year)) {
                if (_yday == ((31 : GoUnTypedInt)) + ((29 : GoUnTypedInt))) {
                    _m = february.__t__;
                    _d = ((29 : GoInt));
                } else if (_yday > ((31 : GoUnTypedInt)) + ((29 : GoUnTypedInt))) {
                    _yday--;
                };
            };
            if (_yday < ((1 : GoInt)) || _yday > ((365 : GoInt))) {
                return { _0 : new Time().__copy__(), _1 : Go.pointer(new ParseError(_alayout, _avalue, "", _value, ": day-of-year out of range")).value };
            };
            if (_m == ((0 : GoInt))) {
                _m = (_yday - ((1 : GoInt))) / ((31 : GoInt)) + ((1 : GoInt));
                if (((_daysBefore[_m] : GoInt)) < _yday) {
                    _m++;
                };
                _d = _yday - ((_daysBefore[_m - ((1 : GoInt))] : GoInt));
            };
            if (_month >= ((0 : GoInt)) && _month != _m) {
                return { _0 : new Time().__copy__(), _1 : Go.pointer(new ParseError(_alayout, _avalue, "", _value, ": day-of-year does not match month")).value };
            };
            _month = _m;
            if (_day >= ((0 : GoInt)) && _day != _d) {
                return { _0 : new Time().__copy__(), _1 : Go.pointer(new ParseError(_alayout, _avalue, "", _value, ": day-of-year does not match day")).value };
            };
            _day = _d;
        } else {
            if (_month < ((0 : GoInt))) {
                _month = january.__t__;
            };
            if (_day < ((0 : GoInt))) {
                _day = ((1 : GoInt));
            };
        };
        if (_day < ((1 : GoInt)) || _day > _daysIn(new Month(_month), _year)) {
            return { _0 : new Time().__copy__(), _1 : Go.pointer(new ParseError(_alayout, _avalue, "", _value, ": day out of range")).value };
        };
        if (_z != null && !_z.isNil()) {
            return { _0 : date(_year, new Month(_month), _day, _hour, _min, _sec, _nsec, _z).__copy__(), _1 : ((null : stdgo.Error)) };
        };
        if (_zoneOffset != -((1 : GoUnTypedInt))) {
            var _t:Time = date(_year, new Month(_month), _day, _hour, _min, _sec, _nsec, utc).__copy__();
            _t._addSec(-((_zoneOffset : GoInt64)));
            var __tmp__ = _local.value._lookup(_t._unixSec()), _name:GoString = __tmp__._0, _offset:GoInt = __tmp__._1, _:GoInt64 = __tmp__._2, _:GoInt64 = __tmp__._3, _:Bool = __tmp__._4;
            if (_offset == _zoneOffset && (_zoneName == (("" : GoString)) || _name == _zoneName)) {
                _t._setLoc(_local);
                return { _0 : _t.__copy__(), _1 : ((null : stdgo.Error)) };
            };
            _t._setLoc(fixedZone(_zoneName, _zoneOffset));
            return { _0 : _t.__copy__(), _1 : ((null : stdgo.Error)) };
        };
        if (_zoneName != (("" : GoString))) {
            var _t:Time = date(_year, new Month(_month), _day, _hour, _min, _sec, _nsec, utc).__copy__();
            var __tmp__ = _local.value._lookupName(_zoneName, _t._unixSec()), _offset:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _t._addSec(-((_offset : GoInt64)));
                _t._setLoc(_local);
                return { _0 : _t.__copy__(), _1 : ((null : stdgo.Error)) };
            };
            if (_zoneName.length > ((3 : GoInt)) && _zoneName.__slice__(0, ((3 : GoInt))) == (("GMT" : GoString))) {
                {
                    var __tmp__ = _atoi(_zoneName.__slice__(((3 : GoInt))));
                    _offset = __tmp__._0;
                };
                _offset = _offset * (((3600 : GoInt)));
            };
            _t._setLoc(fixedZone(_zoneName, _offset));
            return { _0 : _t.__copy__(), _1 : ((null : stdgo.Error)) };
        };
        return { _0 : date(_year, new Month(_month), _day, _hour, _min, _sec, _nsec, _defaultLocation).__copy__(), _1 : ((null : stdgo.Error)) };
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
        if (_value.length < ((3 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : false };
        };
        if (_value.length >= ((4 : GoInt)) && (_value.__slice__(0, ((4 : GoInt))) == (("ChST" : GoString)) || _value.__slice__(0, ((4 : GoInt))) == (("MeST" : GoString)))) {
            return { _0 : ((4 : GoInt)), _1 : true };
        };
        if (_value.__slice__(0, ((3 : GoInt))) == (("GMT" : GoString))) {
            _length = _parseGMT(_value);
            return { _0 : _length, _1 : true };
        };
        if (_value[((0 : GoInt))] == (("+".code : GoRune)) || _value[((0 : GoInt))] == (("-".code : GoRune))) {
            _length = _parseSignedOffset(_value);
            var _ok:Bool = _length > ((0 : GoInt));
            return { _0 : _length, _1 : _ok };
        };
        var _nUpper:GoInt = ((0 : GoInt));
        {
            _nUpper = ((0 : GoInt));
            Go.cfor(_nUpper < ((6 : GoInt)), _nUpper++, {
                if (_nUpper >= _value.length) {
                    break;
                };
                {
                    var _c:GoUInt8 = _value[_nUpper];
                    if (_c < (("A".code : GoRune)) || (("Z".code : GoRune)) < _c) {
                        break;
                    };
                };
            });
        };
        if (_nUpper == ((0 : GoInt)) || _nUpper == ((1 : GoInt)) || _nUpper == ((2 : GoInt)) || _nUpper == ((6 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : false };
        } else if (_nUpper == ((5 : GoInt))) {
            if (_value[((4 : GoInt))] == (("T".code : GoRune))) {
                return { _0 : ((5 : GoInt)), _1 : true };
            };
        } else if (_nUpper == ((4 : GoInt))) {
            if (_value[((3 : GoInt))] == (("T".code : GoRune)) || _value.__slice__(0, ((4 : GoInt))) == (("WITA" : GoString))) {
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
        if (_value.length == ((0 : GoInt))) {
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
        var _sign:GoUInt8 = _value[((0 : GoInt))];
        if (_sign != (("-".code : GoRune)) && _sign != (("+".code : GoRune))) {
            return ((0 : GoInt));
        };
        var __tmp__ = _leadingInt(_value.__slice__(((1 : GoInt)))), _x:GoInt64 = __tmp__._0, _rem:GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null || _value.__slice__(((1 : GoInt))) == _rem) {
            return ((0 : GoInt));
        };
        if (_sign == (("-".code : GoRune))) {
            _x = -_x;
        };
        if (_x < -((23 : GoUnTypedInt)) || ((23 : GoInt64)) < _x) {
            return ((0 : GoInt));
        };
        return _value.length - _rem.length;
    }
function _commaOrPeriod(_b:GoByte):Bool {
        return _b == ((".".code : GoRune)) || _b == ((",".code : GoRune));
    }
function _parseNanoseconds(_value:GoString, _nbytes:GoInt):{ var _0 : GoInt; var _1 : GoString; var _2 : Error; } {
        var _ns:GoInt = ((0 : GoInt)), _rangeErrString:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        if (!_commaOrPeriod(_value[((0 : GoInt))])) {
            _err = _errBad;
            return { _0 : _ns, _1 : _rangeErrString, _2 : _err };
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
        if (_ns < ((0 : GoInt)) || ((1e+09 : GoInt)) <= _ns) {
            _rangeErrString = "fractional second";
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
function _leadingInt(_s:GoString):{ var _0 : GoInt64; var _1 : GoString; var _2 : Error; } {
        var _x:GoInt64 = ((0 : GoInt64)), _rem:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        var _i:GoInt = ((0 : GoInt));
        Go.cfor(_i < _s.length, _i++, {
            var _c:GoUInt8 = _s[_i];
            if (_c < (("0".code : GoRune)) || _c > (("9".code : GoRune))) {
                break;
            };
            if (_x > ((((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt))) - ((1 : GoUnTypedInt))) / ((10 : GoUnTypedInt))) {
                return { _0 : ((0 : GoInt64)), _1 : "", _2 : _errLeadingInt };
            };
            _x = _x * ((10 : GoInt64)) + ((_c : GoInt64)) - (("0".code : GoRune));
            if (_x < ((0 : GoInt64))) {
                return { _0 : ((0 : GoInt64)), _1 : "", _2 : _errLeadingInt };
            };
        });
        return { _0 : _x, _1 : _s.__slice__(_i), _2 : ((null : stdgo.Error)) };
    }
/**
    // leadingFraction consumes the leading [0-9]* from s.
    // It is used only for fractions, so does not return an error on overflow,
    // it just stops accumulating precision.
**/
function _leadingFraction(_s:GoString):{ var _0 : GoInt64; var _1 : GoFloat64; var _2 : GoString; } {
        var _x:GoInt64 = ((0 : GoInt64)), _scale:GoFloat64 = ((0 : GoFloat64)), _rem:GoString = (("" : GoString));
        var _i:GoInt = ((0 : GoInt));
        _scale = ((1 : GoFloat64));
        var _overflow:Bool = false;
        Go.cfor(_i < _s.length, _i++, {
            var _c:GoUInt8 = _s[_i];
            if (_c < (("0".code : GoRune)) || _c > (("9".code : GoRune))) {
                break;
            };
            if (_overflow) {
                continue;
            };
            if (_x > ((((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt))) - ((1 : GoUnTypedInt))) / ((10 : GoUnTypedInt))) {
                _overflow = true;
                continue;
            };
            var _y:GoInt64 = _x * ((10 : GoInt64)) + ((_c : GoInt64)) - (("0".code : GoRune));
            if (_y < ((0 : GoInt64))) {
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
        var _d:GoInt64 = ((0 : GoInt64));
        var _neg:Bool = false;
        if (_s != (("" : GoString))) {
            var _c:GoUInt8 = _s[((0 : GoInt))];
            if (_c == (("-".code : GoRune)) || _c == (("+".code : GoRune))) {
                _neg = _c == (("-".code : GoRune));
                _s = _s.__slice__(((1 : GoInt)));
            };
        };
        if (_s == (("0" : GoString))) {
            return { _0 : new Duration(((0 : GoInt64))), _1 : ((null : stdgo.Error)) };
        };
        if (_s == (("" : GoString))) {
            return { _0 : new Duration(((0 : GoInt64))), _1 : stdgo.errors.Errors.new_((("time: invalid duration " : GoString)) + _quote(_orig)) };
        };
        while (_s != (("" : GoString))) {
            var _v:GoInt64 = ((0 : GoInt64)), _f:GoInt64 = ((0 : GoInt64)), _scale:GoFloat64 = ((1 : GoFloat64));
            var _err:Error = ((null : stdgo.Error));
            if (!(_s[((0 : GoInt))] == ((".".code : GoRune)) || (("0".code : GoRune)) <= _s[((0 : GoInt))] && _s[((0 : GoInt))] <= (("9".code : GoRune)))) {
                return { _0 : new Duration(((0 : GoInt64))), _1 : stdgo.errors.Errors.new_((("time: invalid duration " : GoString)) + _quote(_orig)) };
            };
            var _pl:GoInt = _s.length;
            {
                var __tmp__ = _leadingInt(_s);
                _v = __tmp__._0;
                _s = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : new Duration(((0 : GoInt64))), _1 : stdgo.errors.Errors.new_((("time: invalid duration " : GoString)) + _quote(_orig)) };
            };
            var _pre:Bool = _pl != _s.length;
            var _post:Bool = false;
            if (_s != (("" : GoString)) && _s[((0 : GoInt))] == ((".".code : GoRune))) {
                _s = _s.__slice__(((1 : GoInt)));
                var _pl:GoInt = _s.length;
                {
                    var __tmp__ = _leadingFraction(_s);
                    _f = __tmp__._0;
                    _scale = __tmp__._1;
                    _s = __tmp__._2;
                };
                _post = _pl != _s.length;
            };
            if (!_pre && !_post) {
                return { _0 : new Duration(((0 : GoInt64))), _1 : stdgo.errors.Errors.new_((("time: invalid duration " : GoString)) + _quote(_orig)) };
            };
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _s.length, _i++, {
                var _c:GoUInt8 = _s[_i];
                if (_c == ((".".code : GoRune)) || (("0".code : GoRune)) <= _c && _c <= (("9".code : GoRune))) {
                    break;
                };
            });
            if (_i == ((0 : GoInt))) {
                return { _0 : new Duration(((0 : GoInt64))), _1 : stdgo.errors.Errors.new_((("time: missing unit in duration " : GoString)) + _quote(_orig)) };
            };
            var _u:GoString = _s.__slice__(0, _i);
            _s = _s.__slice__(_i);
            var __tmp__ = _unitMap.exists(_u) ? { value : _unitMap[_u], ok : true } : { value : _unitMap.defaultValue(), ok : false }, _unit:GoInt64 = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (!_ok) {
                return { _0 : new Duration(((0 : GoInt64))), _1 : stdgo.errors.Errors.new_((("time: unknown unit " : GoString)) + _quote(_u) + ((" in duration " : GoString)) + _quote(_orig)) };
            };
            if (_v > ((((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt))) - ((1 : GoUnTypedInt))) / _unit) {
                return { _0 : new Duration(((0 : GoInt64))), _1 : stdgo.errors.Errors.new_((("time: invalid duration " : GoString)) + _quote(_orig)) };
            };
            _v = _v * (_unit);
            if (_f > ((0 : GoInt64))) {
                _v = _v + ((((((_f : GoFloat64)) * (((_unit : GoFloat64)) / _scale)) : GoInt64)));
                if (_v < ((0 : GoInt64))) {
                    return { _0 : new Duration(((0 : GoInt64))), _1 : stdgo.errors.Errors.new_((("time: invalid duration " : GoString)) + _quote(_orig)) };
                };
            };
            _d = _d + (_v);
            if (_d < ((0 : GoInt64))) {
                return { _0 : new Duration(((0 : GoInt64))), _1 : stdgo.errors.Errors.new_((("time: invalid duration " : GoString)) + _quote(_orig)) };
            };
        };
        if (_neg) {
            _d = -_d;
        };
        return { _0 : new Duration(_d), _1 : ((null : stdgo.Error)) };
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
        if (_d.__t__ <= ((0 : GoInt64))) {
            return _runtimeNano();
        };
        var _t:GoInt64 = _runtimeNano() + _d.__t__;
        if (_t < ((0 : GoInt64))) {
            _t = (((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt))) - ((1 : GoUnTypedInt));
        };
        return _t;
    }
function _startTimer(arg0:Pointer<T_runtimeTimer>):Void {}
function _stopTimer(arg0:Pointer<T_runtimeTimer>):Bool throw "not implemeneted";
function _resetTimer(arg0:Pointer<T_runtimeTimer>, arg1:GoInt64):Bool throw "not implemeneted";
function _modTimer(_t:Pointer<T_runtimeTimer>, _when:GoInt64, _period:GoInt64, _f:(AnyInterface, GoUIntptr) -> Void, _arg:AnyInterface, _seq:GoUIntptr):Void {}
/**
    // NewTimer creates a new Timer that will send
    // the current time on its channel after at least duration d.
**/
function newTimer(_d:Duration):Pointer<Timer> {
        var _c:Chan<Time> = new Chan<Time>(((((1 : GoInt)) : GoInt)).toBasic(), () -> new Time());
        var _t:Pointer<Timer> = Go.pointer((({ c : _c, _r : (({ _when : _when(_d), _f : _sendTime, _arg : Go.toInterface(_c), _pp : 0, _period : 0, _seq : 0, _nextwhen : 0, _status : 0 } : T_runtimeTimer)).__copy__() } : Timer)));
        _startTimer(Go.pointer(_t.value._r));
        return _t;
    }
function _sendTime(_c:AnyInterface, _seq:GoUIntptr):Void {
        {
            ((_c.value : Chan<Time>)).send(now());
            null;
        };
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
        return newTimer(_d).value.c;
    }
/**
    // AfterFunc waits for the duration to elapse and then calls f
    // in its own goroutine. It returns a Timer that can
    // be used to cancel the call using its Stop method.
**/
function afterFunc(_d:Duration, _f:() -> Void):Pointer<Timer> {
        var _t:Pointer<Timer> = Go.pointer((({ _r : (({ _when : _when(_d), _f : _goFunc, _arg : Go.toInterface(_f), _pp : 0, _period : 0, _seq : 0, _nextwhen : 0, _status : 0 } : T_runtimeTimer)).__copy__(), c : new Chan<Time>(0, () -> new Time(), true) } : Timer)));
        _startTimer(Go.pointer(_t.value._r));
        return _t;
    }
function _goFunc(_arg:AnyInterface, _seq:GoUIntptr):Void {
        Go.routine(((_arg.value : () -> Void))());
    }
/**
    // for testing: whatever interrupts a sleep
**/
function _interrupt():Void {
        stdgo.syscall.Syscall.kill(stdgo.syscall.Syscall.getpid(), stdgo.syscall.Syscall.sigchld);
    }
function _open(_name:GoString):{ var _0 : GoUIntptr; var _1 : Error; } {
        var __tmp__ = stdgo.syscall.Syscall.open(_name, stdgo.syscall.Syscall.o_RDONLY, ((0 : GoUInt32))), _fd:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
        var _whence:GoInt = _seekStart;
        if (_off < ((0 : GoInt))) {
            _whence = _seekEnd;
        };
        {
            var __tmp__ = stdgo.syscall.Syscall.seek(((_fd : GoInt)), ((_off : GoInt64)), _whence), _:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        while (_buf.length > ((0 : GoInt))) {
            var __tmp__ = stdgo.syscall.Syscall.read(((_fd : GoInt)), _buf), _m:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_m <= ((0 : GoInt))) {
                if (_err == null) {
                    return stdgo.errors.Errors.new_("short read");
                };
                return _err;
            };
            _buf = _buf.__slice__(_m);
        };
        return ((null : stdgo.Error));
    }
/**
    // NewTicker returns a new Ticker containing a channel that will send
    // the time on the channel after each tick. The period of the ticks is
    // specified by the duration argument. The ticker will adjust the time
    // interval or drop ticks to make up for slow receivers.
    // The duration d must be greater than zero; if not, NewTicker will
    // panic. Stop the ticker to release associated resources.
**/
function newTicker(_d:Duration):Pointer<Ticker> {
        if (_d.__t__ <= ((0 : GoInt64))) {
            throw stdgo.errors.Errors.new_("non-positive interval for NewTicker");
        };
        var _c:Chan<Time> = new Chan<Time>(((((1 : GoInt)) : GoInt)).toBasic(), () -> new Time());
    var _t:Pointer<Ticker> = Go.pointer((({ c : _c, _r : (({ _when : _when(_d), _period : _d.__t__, _f : _sendTime, _arg : Go.toInterface(_c), _pp : 0, _seq : 0, _nextwhen : 0, _status : 0 } : T_runtimeTimer)).__copy__() } : Ticker)));
        _startTimer(Go.pointer(_t.value._r));
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
        if (_d.__t__ <= ((0 : GoInt64))) {
            return new Chan<Time>(0, () -> new Time(), true);
        };
        return newTicker(_d).value.c;
    }
/**
    // absWeekday is like Weekday but operates on an absolute time.
**/
function _absWeekday(_abs:GoUInt64):Weekday {
        var _sec:GoUInt64 = (_abs + monday.__t__ * _secondsPerDay) % _secondsPerWeek;
        return new Weekday((((_sec : GoInt)) / _secondsPerDay));
    }
/**
    // absClock is like clock but operates on an absolute time.
**/
function _absClock(_abs:GoUInt64):{ var _0 : GoInt; var _1 : GoInt; var _2 : GoInt; } {
        var _hour:GoInt = ((0 : GoInt)), _min:GoInt = ((0 : GoInt)), _sec:GoInt = ((0 : GoInt));
        _sec = (((_abs % _secondsPerDay) : GoInt));
        _hour = _sec / _secondsPerHour;
        _sec = _sec - (_hour * _secondsPerHour);
        _min = _sec / _secondsPerMinute;
        _sec = _sec - (_min * _secondsPerMinute);
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
        var _w:GoInt = _buf.length;
        var _print:Bool = false;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _prec, _i++, {
                var _digit:GoUInt64 = _v % ((10 : GoUInt64));
                _print = _print || _digit != ((0 : GoUInt64));
                if (_print) {
                    _w--;
                    _buf[_w] = ((_digit : GoByte)) + (("0".code : GoRune));
                };
                _v = _v / (((10 : GoUInt64)));
            });
        };
        if (_print) {
            _w--;
            _buf[_w] = ((".".code : GoRune));
        };
        return { _0 : _w, _1 : _v };
    }
/**
    // fmtInt formats v into the tail of buf.
    // It returns the index where the output begins.
**/
function _fmtInt(_buf:Slice<GoByte>, _v:GoUInt64):GoInt {
        var _w:GoInt = _buf.length;
        if (_v == ((0 : GoUInt64))) {
            _w--;
            _buf[_w] = (("0".code : GoRune));
        } else {
            while (_v > ((0 : GoUInt64))) {
                _w--;
                _buf[_w] = (((_v % ((10 : GoUInt64))) : GoByte)) + (("0".code : GoRune));
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
        return _x.__t__ + _x.__t__ < _y.__t__;
    }
/**
    // Since returns the time elapsed since t.
    // It is shorthand for time.Now().Sub(t).
**/
function since(_t:Time):Duration {
        var _now:Time = new Time();
        if (_t._wall & _hasMonotonic != ((0 : GoUInt64))) {
            _now = new Time(_hasMonotonic, _runtimeNano() - _startNano, new Pointer<Location>().nil()).__copy__();
        } else {
            _now = now().__copy__();
        };
        return _now.sub(_t.__copy__());
    }
/**
    // Until returns the duration until t.
    // It is shorthand for t.Sub(time.Now()).
**/
function until(_t:Time):Duration {
        var _now:Time = new Time();
        if (_t._wall & _hasMonotonic != ((0 : GoUInt64))) {
            _now = new Time(_hasMonotonic, _runtimeNano() - _startNano, new Pointer<Location>().nil()).__copy__();
        } else {
            _now = now().__copy__();
        };
        return _t.sub(_now.__copy__());
    }
/**
    // absDate is like date but operates on an absolute time.
**/
function _absDate(_abs:GoUInt64, _full:Bool):{ var _0 : GoInt; var _1 : Month; var _2 : GoInt; var _3 : GoInt; } {
        var _year:GoInt = ((0 : GoInt)), _month:Month = new Month(), _day:GoInt = ((0 : GoInt)), _yday:GoInt = ((0 : GoInt));
        var _d:GoUInt64 = _abs / _secondsPerDay;
        var _n:GoUInt64 = _d / _daysPer400Years;
        var _y:GoUInt64 = ((400 : GoUInt64)) * _n;
        _d = _d - (_daysPer400Years * _n);
        _n = _d / _daysPer100Years;
        _n = _n - ((_n >> ((2 : GoUnTypedInt))));
        _y = _y + (((100 : GoUInt64)) * _n);
        _d = _d - (_daysPer100Years * _n);
        _n = _d / _daysPer4Years;
        _y = _y + (((4 : GoUInt64)) * _n);
        _d = _d - (_daysPer4Years * _n);
        _n = _d / ((365 : GoUInt64));
        _n = _n - ((_n >> ((2 : GoUnTypedInt))));
        _y = _y + (_n);
        _d = _d - (((365 : GoUInt64)) * _n);
        _year = (((((_y : GoInt64)) + _absoluteZeroYear) : GoInt));
        _yday = ((_d : GoInt));
        if (!_full) {
            return { _0 : _year, _1 : _month, _2 : _day, _3 : _yday };
        };
        _day = _yday;
        if (_isLeap(_year)) {
            if (_day > ((31 : GoUnTypedInt)) + ((29 : GoUnTypedInt)) - ((1 : GoUnTypedInt))) {
                _day--;
            } else if (_day == ((31 : GoUnTypedInt)) + ((29 : GoUnTypedInt)) - ((1 : GoUnTypedInt))) {
                _month = february;
                _day = ((29 : GoInt));
                return { _0 : _year, _1 : _month, _2 : _day, _3 : _yday };
            };
        };
        _month = new Month((_day / ((31 : GoInt))));
        var _end:GoInt = ((_daysBefore[new Month(_month.__t__ + ((1 : GoInt))).__t__] : GoInt));
        var _begin:GoInt = ((0 : GoInt));
        if (_day >= _end) {
            _month.__t__++;
            _begin = _end;
        } else {
            _begin = ((_daysBefore[_month.__t__] : GoInt));
        };
        _month.__t__++;
        _day = _day - _begin + ((1 : GoInt));
        return { _0 : _year, _1 : _month, _2 : _day, _3 : _yday };
    }
function _daysIn(_m:Month, _year:GoInt):GoInt {
        if (_m.__t__ == february.__t__ && _isLeap(_year)) {
            return ((29 : GoInt));
        };
        return (((_daysBefore[_m.__t__] - _daysBefore[new Month(_m.__t__ - ((1 : GoInt))).__t__]) : GoInt));
    }
/**
    // daysSinceEpoch takes a year and returns the number of days from
    // the absolute epoch to the start of that year.
    // This is basically (year - zeroYear) * 365, but accounting for leap days.
**/
function _daysSinceEpoch(_year:GoInt):GoUInt64 {
        var _y:GoUInt64 = (((((_year : GoInt64)) - _absoluteZeroYear) : GoUInt64));
        var _n:GoUInt64 = _y / ((400 : GoUInt64));
        _y = _y - (((400 : GoUInt64)) * _n);
        var _d:GoUInt64 = _daysPer400Years * _n;
        _n = _y / ((100 : GoUInt64));
        _y = _y - (((100 : GoUInt64)) * _n);
        _d = _d + (_daysPer100Years * _n);
        _n = _y / ((4 : GoUInt64));
        _y = _y - (((4 : GoUInt64)) * _n);
        _d = _d + (_daysPer4Years * _n);
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
        _sec = _sec + (_unixToInternal - _minWall);
        if ((((_sec : GoUInt64)) >> ((33 : GoUnTypedInt))) != ((0 : GoUInt64))) {
            return new Time(((_nsec : GoUInt64)), _sec + _minWall, local).__copy__();
        };
        return new Time(_hasMonotonic | (((_sec : GoUInt64)) << _nsecShift) | ((_nsec : GoUInt64)), _mono, local).__copy__();
    }
function _unixTime(_sec:GoInt64, _nsec:GoInt32):Time {
        return new Time(((_nsec : GoUInt64)), _sec + _unixToInternal, local).__copy__();
    }
/**
    // Unix returns the local Time corresponding to the given Unix time,
    // sec seconds and nsec nanoseconds since January 1, 1970 UTC.
    // It is valid to pass nsec outside the range [0, 999999999].
    // Not all sec values have a corresponding time value. One such
    // value is 1<<63-1 (the largest int64 value).
**/
function unix(_sec:GoInt64, _nsec:GoInt64):Time {
        if (_nsec < ((0 : GoInt64)) || _nsec >= ((1e+09 : GoInt64))) {
            var _n:GoInt64 = _nsec / ((1e+09 : GoInt64));
            _sec = _sec + (_n);
            _nsec = _nsec - (_n * ((1e+09 : GoInt64)));
            if (_nsec < ((0 : GoInt64))) {
                _nsec = _nsec + (((1e+09 : GoInt64)));
                _sec--;
            };
        };
        return _unixTime(_sec, ((_nsec : GoInt32))).__copy__();
    }
/**
    // UnixMilli returns the local Time corresponding to the given Unix time,
    // msec milliseconds since January 1, 1970 UTC.
**/
function unixMilli(_msec:GoInt64):Time {
        return unix(_msec / ((1000 : GoInt64)), (_msec % ((1000 : GoInt64))) * ((1e+06 : GoInt64))).__copy__();
    }
/**
    // UnixMicro returns the local Time corresponding to the given Unix time,
    // usec microseconds since January 1, 1970 UTC.
**/
function unixMicro(_usec:GoInt64):Time {
        return unix(_usec / ((1e+06 : GoInt64)), (_usec % ((1e+06 : GoInt64))) * ((1000 : GoInt64))).__copy__();
    }
function _isLeap(_year:GoInt):Bool {
        return _year % ((4 : GoInt)) == ((0 : GoInt)) && (_year % ((100 : GoInt)) != ((0 : GoInt)) || _year % ((400 : GoInt)) == ((0 : GoInt)));
    }
/**
    // norm returns nhi, nlo such that
    //	hi * base + lo == nhi * base + nlo
    //	0 <= nlo < base
**/
function _norm(_hi:GoInt, _lo:GoInt, _base:GoInt):{ var _0 : GoInt; var _1 : GoInt; } {
        var _nhi:GoInt = ((0 : GoInt)), _nlo:GoInt = ((0 : GoInt));
        if (_lo < ((0 : GoInt))) {
            var _n:GoInt = (-_lo - ((1 : GoInt))) / _base + ((1 : GoInt));
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
function date(_year:GoInt, _month:Month, _day:GoInt, _hour:GoInt, _min:GoInt, _sec:GoInt, _nsec:GoInt, _loc:Pointer<Location>):Time {
        if (_loc == null || _loc.isNil()) {
            throw "time: missing Location in call to Date";
        };
        var _m:GoInt = _month.__t__ - ((1 : GoInt));
        {
            var __tmp__ = _norm(_year, _m, ((12 : GoInt)));
            _year = __tmp__._0;
            _m = __tmp__._1;
        };
        _month = new Month(new Month(_m).__t__ + ((1 : GoInt)));
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
        _d = _d + (((_daysBefore[new Month(_month.__t__ - ((1 : GoInt))).__t__] : GoUInt64)));
        if (_isLeap(_year) && _month.__t__ >= march.__t__) {
            _d++;
        };
        _d = _d + ((((_day - ((1 : GoInt))) : GoUInt64)));
        var _abs:GoUInt64 = _d * _secondsPerDay;
        _abs = _abs + ((((_hour * _secondsPerHour + _min * _secondsPerMinute + _sec) : GoUInt64)));
        var _unix:GoInt64 = ((_abs : GoInt64)) + (_absoluteToInternal + _internalToUnix);
        var __tmp__ = _loc.value._lookup(_unix), _:GoString = __tmp__._0, _offset:GoInt = __tmp__._1, _start:GoInt64 = __tmp__._2, _end:GoInt64 = __tmp__._3, _:Bool = __tmp__._4;
        if (_offset != ((0 : GoInt))) {
            {
                var _utc:GoInt64 = _unix - ((_offset : GoInt64));
                if (_utc < _start) {
                    {
                        var __tmp__ = _loc.value._lookup(_start - ((1 : GoInt64)));
                        _offset = __tmp__._1;
                    };
                } else if (_utc >= _end) {
                    {
                        var __tmp__ = _loc.value._lookup(_end);
                        _offset = __tmp__._1;
                    };
                };
            };
            _unix = _unix - (((_offset : GoInt64)));
        };
        var _t:Time = _unixTime(_unix, ((_nsec : GoInt32))).__copy__();
        _t._setLoc(_loc);
        return _t.__copy__();
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
                if (_d.__t__ < second.__t__ && new Duration(second.__t__ % (new Duration(_d.__t__ + _d.__t__)).__t__).__t__ == ((0 : GoInt64))) {
                    _qmod2 = (((_nsec / _d.__t__) : GoInt)) & ((1 : GoInt));
                    _r = new Duration((_nsec % _d.__t__));
                    break;
                } else if (new Duration(_d.__t__ % second.__t__).__t__ == ((0 : GoInt64))) {
                    var _d1:GoInt64 = new Duration(_d.__t__ / second.__t__).__t__;
                    _qmod2 = (((_sec / _d1) : GoInt)) & ((1 : GoInt));
                    _r = new Duration(new Duration(new Duration((_sec % _d1)).__t__ * second.__t__).__t__ + new Duration(_nsec).__t__);
                    break;
                } else {
                    var _sec:GoUInt64 = ((_sec : GoUInt64));
                    var _tmp:GoUInt64 = ((_sec >> ((32 : GoUnTypedInt)))) * ((1e+09 : GoUInt64));
                    var _u1:GoUInt64 = (_tmp >> ((32 : GoUnTypedInt)));
                    var _u0:GoUInt64 = (_tmp << ((32 : GoUnTypedInt)));
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
                    var _d1:GoUInt64 = _d.__t__;
                    while ((_d1 >> ((63 : GoUnTypedInt))) != ((1 : GoUInt64))) {
                        _d1 = (_d1 << (((1 : GoUnTypedInt))));
                    };
                    var _d0:GoUInt64 = ((((0 : GoUInt64)) : GoUInt64));
                    while (true) {
                        _qmod2 = ((0 : GoInt));
                        if (_u1 > _d1 || _u1 == _d1 && _u0 >= _d0) {
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
                        if (_d1 == ((0 : GoUInt64)) && _d0 == _d.__t__) {
                            break;
                        };
                        _d0 = (_d0 >> (((1 : GoUnTypedInt))));
                        _d0 = _d0 | (((_d1 & ((1 : GoUInt64))) << ((63 : GoUnTypedInt))));
                        _d1 = (_d1 >> (((1 : GoUnTypedInt))));
                    };
                    _r = new Duration(_u0);
                };
                break;
            };
        };
        if (_neg && _r.__t__ != ((0 : GoInt64))) {
            _qmod2 = _qmod2 ^ (((1 : GoInt)));
            _r = new Duration(_d.__t__ - _r.__t__);
        };
        return { _0 : _qmod2, _1 : _r };
    }
/**
    // FixedZone returns a Location that always uses
    // the given zone name and offset (seconds east of UTC).
**/
function fixedZone(_name:GoString, _offset:GoInt):Pointer<Location> {
        var _l:Pointer<Location> = Go.pointer((({ _name : _name, _zone : new Slice<T_zone>(new T_zone(_name, _offset, false).__copy__()), _tx : new Slice<T_zoneTrans>(new T_zoneTrans(_alpha, ((0 : GoUInt8)), false, false).__copy__()), _cacheStart : _alpha, _cacheEnd : _omega, _extend : "", _cacheZone : new Pointer<T_zone>().nil() } : Location)));
        _l.value._cacheZone = Go.pointer(_l.value._zone[((0 : GoInt))]);
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
            return { _0 : "", _1 : ((0 : GoInt)), _2 : ((0 : GoInt64)), _3 : ((0 : GoInt64)), _4 : false, _5 : false };
        };
        _stdOffset = -_stdOffset;
        if (_s.length == ((0 : GoInt)) || _s[((0 : GoInt))] == ((",".code : GoRune))) {
            return { _0 : _stdName, _1 : _stdOffset, _2 : _initEnd, _3 : _omega, _4 : false, _5 : true };
        };
        {
            var __tmp__ = _tzsetName(_s);
            _dstName = __tmp__._0;
            _s = __tmp__._1;
            _ok = __tmp__._2;
        };
        if (_ok) {
            if (_s.length == ((0 : GoInt)) || _s[((0 : GoInt))] == ((",".code : GoRune))) {
                _dstOffset = _stdOffset + _secondsPerHour;
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
            return { _0 : "", _1 : ((0 : GoInt)), _2 : ((0 : GoInt64)), _3 : ((0 : GoInt64)), _4 : false, _5 : false };
        };
        if (_s.length == ((0 : GoInt))) {
            _s = ",M3.2.0,M11.1.0";
        };
        if (_s[((0 : GoInt))] != ((",".code : GoRune)) && _s[((0 : GoInt))] != ((";".code : GoRune))) {
            return { _0 : "", _1 : ((0 : GoInt)), _2 : ((0 : GoInt64)), _3 : ((0 : GoInt64)), _4 : false, _5 : false };
        };
        _s = _s.__slice__(((1 : GoInt)));
        var _startRule:T_rule = new T_rule(), _endRule:T_rule = new T_rule();
        {
            var __tmp__ = _tzsetRule(_s);
            _startRule = __tmp__._0.__copy__();
            _s = __tmp__._1;
            _ok = __tmp__._2;
        };
        if (!_ok || _s.length == ((0 : GoInt)) || _s[((0 : GoInt))] != ((",".code : GoRune))) {
            return { _0 : "", _1 : ((0 : GoInt)), _2 : ((0 : GoInt64)), _3 : ((0 : GoInt64)), _4 : false, _5 : false };
        };
        _s = _s.__slice__(((1 : GoInt)));
        {
            var __tmp__ = _tzsetRule(_s);
            _endRule = __tmp__._0.__copy__();
            _s = __tmp__._1;
            _ok = __tmp__._2;
        };
        if (!_ok || _s.length > ((0 : GoInt))) {
            return { _0 : "", _1 : ((0 : GoInt)), _2 : ((0 : GoInt64)), _3 : ((0 : GoInt64)), _4 : false, _5 : false };
        };
        var __tmp__ = _absDate((((_sec + _unixToInternal + _internalToAbsolute) : GoUInt64)), false), _year:GoInt = __tmp__._0, _:Month = __tmp__._1, _:GoInt = __tmp__._2, _yday:GoInt = __tmp__._3;
        var _ysec:GoInt64 = (((_yday * _secondsPerDay) : GoInt64)) + _sec % _secondsPerDay;
        var _d:GoUInt64 = _daysSinceEpoch(_year);
        var _abs:GoInt64 = (((_d * _secondsPerDay) : GoInt64));
        _abs = _abs + (_absoluteToInternal + _internalToUnix);
        var _startSec:GoInt64 = ((_tzruleTime(_year, _startRule.__copy__(), _stdOffset) : GoInt64));
        var _endSec:GoInt64 = ((_tzruleTime(_year, _endRule.__copy__(), _dstOffset) : GoInt64));
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
            return { _0 : _stdName, _1 : _stdOffset, _2 : _endSec + _abs, _3 : _abs + ((365 : GoUnTypedInt)) * _secondsPerDay, _4 : _stdIsDST, _5 : true };
        } else {
            return { _0 : _dstName, _1 : _dstOffset, _2 : _startSec + _abs, _3 : _endSec + _abs, _4 : _dstIsDST, _5 : true };
        };
    }
/**
    // tzsetName returns the timezone name at the start of the tzset string s,
    // and the remainder of s, and reports whether the parsing is OK.
**/
function _tzsetName(_s:GoString):{ var _0 : GoString; var _1 : GoString; var _2 : Bool; } {
        if (_s.length == ((0 : GoInt))) {
            return { _0 : "", _1 : "", _2 : false };
        };
        if (_s[((0 : GoInt))] != (("<".code : GoRune))) {
            {
                var _i;
                var _r;
                for (_obj in _s.keyValueIterator()) {
                    _i = _obj.key;
                    _r = _obj.value;
                    if (_r == (("0".code : GoRune)) || _r == (("1".code : GoRune)) || _r == (("2".code : GoRune)) || _r == (("3".code : GoRune)) || _r == (("4".code : GoRune)) || _r == (("5".code : GoRune)) || _r == (("6".code : GoRune)) || _r == (("7".code : GoRune)) || _r == (("8".code : GoRune)) || _r == (("9".code : GoRune)) || _r == ((",".code : GoRune)) || _r == (("-".code : GoRune)) || _r == (("+".code : GoRune))) {
                        if (_i < ((3 : GoInt))) {
                            return { _0 : "", _1 : "", _2 : false };
                        };
                        return { _0 : _s.__slice__(0, _i), _1 : _s.__slice__(_i), _2 : true };
                    };
                };
            };
            if (_s.length < ((3 : GoInt))) {
                return { _0 : "", _1 : "", _2 : false };
            };
            return { _0 : _s, _1 : "", _2 : true };
        } else {
            {
                var _i;
                var _r;
                for (_obj in _s.keyValueIterator()) {
                    _i = _obj.key;
                    _r = _obj.value;
                    if (_r == ((">".code : GoRune))) {
                        return { _0 : _s.__slice__(((1 : GoInt)), _i), _1 : _s.__slice__(_i + ((1 : GoInt))), _2 : true };
                    };
                };
            };
            return { _0 : "", _1 : "", _2 : false };
        };
    }
/**
    // tzsetOffset returns the timezone offset at the start of the tzset string s,
    // and the remainder of s, and reports whether the parsing is OK.
    // The timezone offset is returned as a number of seconds.
**/
function _tzsetOffset(_s:GoString):{ var _0 : GoInt; var _1 : GoString; var _2 : Bool; } {
        var _offset:GoInt = ((0 : GoInt)), _rest:GoString = (("" : GoString)), _ok:Bool = false;
        if (_s.length == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : "", _2 : false };
        };
        var _neg:Bool = false;
        if (_s[((0 : GoInt))] == (("+".code : GoRune))) {
            _s = _s.__slice__(((1 : GoInt)));
        } else if (_s[((0 : GoInt))] == (("-".code : GoRune))) {
            _s = _s.__slice__(((1 : GoInt)));
            _neg = true;
        };
        var _hours:GoInt = ((0 : GoInt));
        {
            var __tmp__ = _tzsetNum(_s, ((0 : GoInt)), ((24 : GoUnTypedInt)) * ((7 : GoUnTypedInt)));
            _hours = __tmp__._0;
            _s = __tmp__._1;
            _ok = __tmp__._2;
        };
        if (!_ok) {
            return { _0 : ((0 : GoInt)), _1 : "", _2 : false };
        };
        var _off:GoInt = _hours * _secondsPerHour;
        if (_s.length == ((0 : GoInt)) || _s[((0 : GoInt))] != ((":".code : GoRune))) {
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
            return { _0 : ((0 : GoInt)), _1 : "", _2 : false };
        };
        _off = _off + (_mins * _secondsPerMinute);
        if (_s.length == ((0 : GoInt)) || _s[((0 : GoInt))] != ((":".code : GoRune))) {
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
            return { _0 : ((0 : GoInt)), _1 : "", _2 : false };
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
        if (_s.length == ((0 : GoInt))) {
            return { _0 : new T_rule().__copy__(), _1 : "", _2 : false };
        };
        var _ok:Bool = false;
        if (_s[((0 : GoInt))] == (("J".code : GoRune))) {
            var _jday:GoInt = ((0 : GoInt));
            {
                var __tmp__ = _tzsetNum(_s.__slice__(((1 : GoInt))), ((1 : GoInt)), ((365 : GoInt)));
                _jday = __tmp__._0;
                _s = __tmp__._1;
                _ok = __tmp__._2;
            };
            if (!_ok) {
                return { _0 : new T_rule().__copy__(), _1 : "", _2 : false };
            };
            _r._kind = _ruleJulian;
            _r._day = _jday;
        } else if (_s[((0 : GoInt))] == (("M".code : GoRune))) {
            var _mon:GoInt = ((0 : GoInt));
            {
                var __tmp__ = _tzsetNum(_s.__slice__(((1 : GoInt))), ((1 : GoInt)), ((12 : GoInt)));
                _mon = __tmp__._0;
                _s = __tmp__._1;
                _ok = __tmp__._2;
            };
            if (!_ok || _s.length == ((0 : GoInt)) || _s[((0 : GoInt))] != ((".".code : GoRune))) {
                return { _0 : new T_rule().__copy__(), _1 : "", _2 : false };
            };
            var _week:GoInt = ((0 : GoInt));
            {
                var __tmp__ = _tzsetNum(_s.__slice__(((1 : GoInt))), ((1 : GoInt)), ((5 : GoInt)));
                _week = __tmp__._0;
                _s = __tmp__._1;
                _ok = __tmp__._2;
            };
            if (!_ok || _s.length == ((0 : GoInt)) || _s[((0 : GoInt))] != ((".".code : GoRune))) {
                return { _0 : new T_rule().__copy__(), _1 : "", _2 : false };
            };
            var _day:GoInt = ((0 : GoInt));
            {
                var __tmp__ = _tzsetNum(_s.__slice__(((1 : GoInt))), ((0 : GoInt)), ((6 : GoInt)));
                _day = __tmp__._0;
                _s = __tmp__._1;
                _ok = __tmp__._2;
            };
            if (!_ok) {
                return { _0 : new T_rule().__copy__(), _1 : "", _2 : false };
            };
            _r._kind = _ruleMonthWeekDay;
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
                return { _0 : new T_rule().__copy__(), _1 : "", _2 : false };
            };
            _r._kind = _ruleDOY;
            _r._day = _day;
        };
        if (_s.length == ((0 : GoInt)) || _s[((0 : GoInt))] != (("/".code : GoRune))) {
            _r._time = ((2 : GoUnTypedInt)) * _secondsPerHour;
            return { _0 : _r.__copy__(), _1 : _s, _2 : true };
        };
        var __tmp__ = _tzsetOffset(_s.__slice__(((1 : GoInt)))), _offset:GoInt = __tmp__._0, _s:GoString = __tmp__._1, _ok:Bool = __tmp__._2;
        if (!_ok) {
            return { _0 : new T_rule().__copy__(), _1 : "", _2 : false };
        };
        _r._time = _offset;
        return { _0 : _r.__copy__(), _1 : _s, _2 : true };
    }
/**
    // tzsetNum parses a number from a tzset string.
    // It returns the number, and the remainder of the string, and reports success.
    // The number must be between min and max.
**/
function _tzsetNum(_s:GoString, _min:GoInt, _max:GoInt):{ var _0 : GoInt; var _1 : GoString; var _2 : Bool; } {
        var _num:GoInt = ((0 : GoInt)), _rest:GoString = (("" : GoString)), _ok:Bool = false;
        if (_s.length == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : "", _2 : false };
        };
        _num = ((0 : GoInt));
        {
            var _i;
            var _r;
            for (_obj in _s.keyValueIterator()) {
                _i = _obj.key;
                _r = _obj.value;
                if (_r < (("0".code : GoRune)) || _r > (("9".code : GoRune))) {
                    if (_i == ((0 : GoInt)) || _num < _min) {
                        return { _0 : ((0 : GoInt)), _1 : "", _2 : false };
                    };
                    return { _0 : _num, _1 : _s.__slice__(_i), _2 : true };
                };
                _num = _num * (((10 : GoInt)));
                _num = _num + (((_r : GoInt)) - (("0".code : GoRune)));
                if (_num > _max) {
                    return { _0 : ((0 : GoInt)), _1 : "", _2 : false };
                };
            };
        };
        if (_num < _min) {
            return { _0 : ((0 : GoInt)), _1 : "", _2 : false };
        };
        return { _0 : _num, _1 : "", _2 : true };
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
                if (_r._kind.__t__ == _ruleJulian.__t__) {
                    _s = (_r._day - ((1 : GoInt))) * _secondsPerDay;
                    if (_isLeap(_year) && _r._day >= ((60 : GoInt))) {
                        _s = _s + (_secondsPerDay);
                    };
                    break;
                } else if (_r._kind.__t__ == _ruleDOY.__t__) {
                    _s = _r._day * _secondsPerDay;
                    break;
                } else if (_r._kind.__t__ == _ruleMonthWeekDay.__t__) {
                    var _m1:GoInt = (_r._mon + ((9 : GoInt))) % ((12 : GoInt)) + ((1 : GoInt));
                    var _yy0:GoInt = _year;
                    if (_r._mon <= ((2 : GoInt))) {
                        _yy0--;
                    };
                    var _yy1:GoInt = _yy0 / ((100 : GoInt));
                    var _yy2:GoInt = _yy0 % ((100 : GoInt));
                    var _dow:GoInt = ((((26 : GoInt)) * _m1 - ((2 : GoInt))) / ((10 : GoInt)) + ((1 : GoInt)) + _yy2 + _yy2 / ((4 : GoInt)) + _yy1 / ((4 : GoInt)) - ((2 : GoInt)) * _yy1) % ((7 : GoInt));
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
                            if (_d + ((7 : GoInt)) >= _daysIn(new Month(_r._mon), _year)) {
                                break;
                            };
                            _d = _d + (((7 : GoInt)));
                        });
                    };
                    _d = _d + (((_daysBefore[_r._mon - ((1 : GoInt))] : GoInt)));
                    if (_isLeap(_year) && _r._mon > ((2 : GoInt))) {
                        _d++;
                    };
                    _s = _d * _secondsPerDay;
                    break;
                };
                break;
            };
        };
        return _s + _r._time - _off;
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
    // The time zone database needed by LoadLocation may not be
    // present on all systems, especially non-Unix systems.
    // LoadLocation looks in the directory or uncompressed zip file
    // named by the ZONEINFO environment variable, if any, then looks in
    // known installation locations on Unix systems,
    // and finally looks in $GOROOT/lib/time/zoneinfo.zip.
**/
function loadLocation(_name:GoString):{ var _0 : Pointer<Location>; var _1 : Error; } {
        if (_name == (("" : GoString)) || _name == (("UTC" : GoString))) {
            return { _0 : utc, _1 : ((null : stdgo.Error)) };
        };
        if (_name == (("Local" : GoString))) {
            return { _0 : local, _1 : ((null : stdgo.Error)) };
        };
        if (_containsDotDot(_name) || _name[((0 : GoInt))] == (("/".code : GoRune)) || _name[((0 : GoInt))] == (("\\".code : GoRune))) {
            return { _0 : new Pointer<Location>().nil(), _1 : _errLocation };
        };
        _zoneinfoOnce.do_(function():Void {
            var __tmp__ = stdgo.syscall.Syscall.getenv("ZONEINFO"), _env:GoString = __tmp__._0, _:Bool = __tmp__._1;
            _zoneinfo = Go.pointer(_env);
        });
        var _firstErr:Error = ((null : stdgo.Error));
        if (_zoneinfo.value != (("" : GoString))) {
            {
                var __tmp__ = _loadTzinfoFromDirOrZip(_zoneinfo.value, _name), _zoneData:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    {
                        var __tmp__ = loadLocationFromTZData(_name, _zoneData), _z:Pointer<Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err == null) {
                            return { _0 : _z, _1 : ((null : stdgo.Error)) };
                        };
                    };
                    _firstErr = _err;
                } else if (Go.toInterface(_err) != Go.toInterface(stdgo.syscall.Syscall.enoent.__t__)) {
                    _firstErr = _err;
                };
            };
        };
        {
            var __tmp__ = _loadLocation(_name, _zoneSources), _z:Pointer<Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                return { _0 : _z, _1 : ((null : stdgo.Error)) };
            } else if (_firstErr == null) {
                _firstErr = _err;
            };
        };
        return { _0 : new Pointer<Location>().nil(), _1 : _firstErr };
    }
/**
    // containsDotDot reports whether s contains "..".
**/
function _containsDotDot(_s:GoString):Bool {
        if (_s.length < ((2 : GoInt))) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _s.length - ((1 : GoInt)), _i++, {
                if (_s[_i] == ((".".code : GoRune)) && _s[_i + ((1 : GoInt))] == ((".".code : GoRune))) {
                    return true;
                };
            });
        };
        return false;
    }
function _initLocal():Void {
        _localLoc._name = "Local";
        var _z:T_zone = new T_zone().__copy__();
        var _d:stdgo.syscall.js.Js.Value = stdgo.syscall.js.Js.global().get("Date").new_();
        var _offset:GoInt = _d.call("getTimezoneOffset").int() * -((1 : GoUnTypedInt));
        _z._offset = _offset * ((60 : GoInt));
        _z._name = "UTC";
        if (_offset < ((0 : GoInt))) {
            _z._name = _z._name + ("-");
            _offset = _offset * (-((1 : GoUnTypedInt)));
        } else {
            _z._name = _z._name + ("+");
        };
        _z._name = _z._name + (_itoa(_offset / ((60 : GoInt))));
        var _min:GoInt = _offset % ((60 : GoInt));
        if (_min != ((0 : GoInt))) {
            _z._name = _z._name + (((":" : GoString)) + _itoa(_min));
        };
        _localLoc._zone = new Slice<T_zone>(_z.__copy__());
    }
/**
    // itoa is like strconv.Itoa but only works for values of i in range [0,99].
    // It panics if i is out of range.
**/
function _itoa(_i:GoInt):GoString {
        if (_i < ((10 : GoInt))) {
            return _digits.__slice__(_i, _i + ((1 : GoInt)));
        };
        return _smallsString.__slice__(_i * ((2 : GoInt)), _i * ((2 : GoInt)) + ((2 : GoInt)));
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
            Go.cfor(_i < _p.length, _i++, {
                if (_p[_i] == ((0 : GoUInt8))) {
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
function loadLocationFromTZData(_name:GoString, _data:Slice<GoByte>):{ var _0 : Pointer<Location>; var _1 : Error; } {
        var _d:T_dataIO = new T_dataIO(_data, false).__copy__();
        {
            var _magic:Slice<GoUInt8> = _d._read(((4 : GoInt)));
            if (((_magic : GoString)) != (("TZif" : GoString))) {
                return { _0 : new Pointer<Location>().nil(), _1 : _badData };
            };
        };
        var _version:GoInt = ((0 : GoInt));
        var _p:Slice<GoByte> = new Slice<GoUInt8>().nil();
        {
            _p = _d._read(((16 : GoInt)));
            if (_p.length != ((16 : GoInt))) {
                return { _0 : new Pointer<Location>().nil(), _1 : _badData };
            } else {
                if (_p[((0 : GoInt))] == ((0 : GoUInt8))) {
                    _version = ((1 : GoInt));
                } else if (_p[((0 : GoInt))] == (("2".code : GoRune))) {
                    _version = ((2 : GoInt));
                } else if (_p[((0 : GoInt))] == (("3".code : GoRune))) {
                    _version = ((3 : GoInt));
                } else {
                    return { _0 : new Pointer<Location>().nil(), _1 : _badData };
                };
            };
        };
        final nutclocal:GoUnTypedInt = (0 : GoUnTypedInt), nstdWall:GoUnTypedInt = (1 : GoUnTypedInt), nleap:GoUnTypedInt = (2 : GoUnTypedInt), ntime:GoUnTypedInt = (3 : GoUnTypedInt), nzone:GoUnTypedInt = (4 : GoUnTypedInt), nchar:GoUnTypedInt = (5 : GoUnTypedInt);
        var _n:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 6) ((0 : GoInt))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((6 : GoInt)), _i++, {
                var __tmp__ = _d._big4(), _nn:GoUInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    return { _0 : new Pointer<Location>().nil(), _1 : _badData };
                };
                if (((((_nn : GoInt)) : GoUInt32)) != _nn) {
                    return { _0 : new Pointer<Location>().nil(), _1 : _badData };
                };
                _n[_i] = ((_nn : GoInt));
            });
        };
        var _is64:Bool = false;
        if (_version > ((1 : GoInt))) {
            var _skip:GoInt = _n[ntime] * ((4 : GoInt)) + _n[ntime] + _n[nzone] * ((6 : GoInt)) + _n[nchar] + _n[nleap] * ((8 : GoInt)) + _n[nstdWall] + _n[nutclocal];
            _skip = _skip + (((4 : GoUnTypedInt)) + ((16 : GoUnTypedInt)));
            _d._read(_skip);
            _is64 = true;
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((6 : GoInt)), _i++, {
                    var __tmp__ = _d._big4(), _nn:GoUInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        return { _0 : new Pointer<Location>().nil(), _1 : _badData };
                    };
                    if (((((_nn : GoInt)) : GoUInt32)) != _nn) {
                        return { _0 : new Pointer<Location>().nil(), _1 : _badData };
                    };
                    _n[_i] = ((_nn : GoInt));
                });
            };
        };
        var _size:GoInt = ((4 : GoInt));
        if (_is64) {
            _size = ((8 : GoInt));
        };
        var _txtimes:T_dataIO = new T_dataIO(_d._read(_n[ntime] * _size), false).__copy__();
        var _txzones:Slice<GoUInt8> = _d._read(_n[ntime]);
        var _zonedata:T_dataIO = new T_dataIO(_d._read(_n[nzone] * ((6 : GoInt))), false).__copy__();
        var _abbrev:Slice<GoUInt8> = _d._read(_n[nchar]);
        _d._read(_n[nleap] * (_size + ((4 : GoInt))));
        var _isstd:Slice<GoUInt8> = _d._read(_n[nstdWall]);
        var _isutc:Slice<GoUInt8> = _d._read(_n[nutclocal]);
        if (_d._error) {
            return { _0 : new Pointer<Location>().nil(), _1 : _badData };
        };
        var _extend:GoString = (("" : GoString));
        var _rest:Slice<GoUInt8> = _d._rest();
        if (_rest.length > ((2 : GoInt)) && _rest[((0 : GoInt))] == (("\n".code : GoRune)) && _rest[_rest.length - ((1 : GoInt))] == (("\n".code : GoRune))) {
            _extend = ((_rest.__slice__(((1 : GoInt)), _rest.length - ((1 : GoInt))) : GoString));
        };
        var _nzone:GoInt = _n[nzone];
        if (_nzone == ((0 : GoInt))) {
            return { _0 : new Pointer<Location>().nil(), _1 : _badData };
        };
        var _zones:Slice<T_zone> = new Slice<T_zone>(...[for (i in 0 ... ((_nzone : GoInt)).toBasic()) new T_zone()]);
        {
            var _i;
            for (_obj in _zones.keyValueIterator()) {
                _i = _obj.key;
                var _ok:Bool = false;
                var _n:GoUInt32 = ((0 : GoUInt32));
                {
                    {
                        var __tmp__ = _zonedata._big4();
                        _n = __tmp__._0;
                        _ok = __tmp__._1;
                    };
                    if (!_ok) {
                        return { _0 : new Pointer<Location>().nil(), _1 : _badData };
                    };
                };
                if (((((_n : GoInt)) : GoUInt32)) != _n) {
                    return { _0 : new Pointer<Location>().nil(), _1 : _badData };
                };
                _zones[_i]._offset = ((((_n : GoInt32)) : GoInt));
                var _b:GoByte = ((0 : GoUInt8));
                {
                    {
                        var __tmp__ = _zonedata._byte();
                        _b = __tmp__._0;
                        _ok = __tmp__._1;
                    };
                    if (!_ok) {
                        return { _0 : new Pointer<Location>().nil(), _1 : _badData };
                    };
                };
                _zones[_i]._isDST = _b != ((0 : GoUInt8));
                {
                    {
                        var __tmp__ = _zonedata._byte();
                        _b = __tmp__._0;
                        _ok = __tmp__._1;
                    };
                    if (!_ok || ((_b : GoInt)) >= _abbrev.length) {
                        return { _0 : new Pointer<Location>().nil(), _1 : _badData };
                    };
                };
                _zones[_i]._name = _byteString(_abbrev.__slice__(_b));
                if (stdgo.runtime.Runtime.goos == (("aix" : GoString)) && _name.length > ((8 : GoInt)) && (_name.__slice__(0, ((8 : GoInt))) == (("Etc/GMT+" : GoString)) || _name.__slice__(0, ((8 : GoInt))) == (("Etc/GMT-" : GoString)))) {
                    if (_name != (("Etc/GMT+0" : GoString))) {
                        _zones[_i]._name = _name.__slice__(((4 : GoInt)));
                    };
                };
            };
        };
        var _tx:Slice<T_zoneTrans> = new Slice<T_zoneTrans>(...[for (i in 0 ... ((_n[ntime] : GoInt)).toBasic()) new T_zoneTrans()]);
        {
            var _i;
            for (_obj in _tx.keyValueIterator()) {
                _i = _obj.key;
                var _n:GoInt64 = ((0 : GoInt64));
                if (!_is64) {
                    {
                        var __tmp__ = _txtimes._big4(), _n4:GoUInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (!_ok) {
                            return { _0 : new Pointer<Location>().nil(), _1 : _badData };
                        } else {
                            _n = ((((_n4 : GoInt32)) : GoInt64));
                        };
                    };
                } else {
                    {
                        var __tmp__ = _txtimes._big8(), _n8:GoUInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (!_ok) {
                            return { _0 : new Pointer<Location>().nil(), _1 : _badData };
                        } else {
                            _n = ((_n8 : GoInt64));
                        };
                    };
                };
                _tx[_i]._when = _n;
                if (((_txzones[_i] : GoInt)) >= _zones.length) {
                    return { _0 : new Pointer<Location>().nil(), _1 : _badData };
                };
                _tx[_i]._index = _txzones[_i];
                if (_i < _isstd.length) {
                    _tx[_i]._isstd = _isstd[_i] != ((0 : GoUInt8));
                };
                if (_i < _isutc.length) {
                    _tx[_i]._isutc = _isutc[_i] != ((0 : GoUInt8));
                };
            };
        };
        if (_tx.length == ((0 : GoInt))) {
            _tx = _tx.__append__((({ _when : _alpha, _index : ((0 : GoUInt8)), _isstd : false, _isutc : false } : T_zoneTrans)).__copy__());
        };
        var _l:Pointer<Location> = Go.pointer((({ _zone : _zones, _tx : _tx, _name : _name, _extend : _extend, _cacheStart : 0, _cacheEnd : 0, _cacheZone : new Pointer<T_zone>().nil() } : Location)));
        var __tmp__ = _now(), _sec:GoInt64 = __tmp__._0, _:GoInt32 = __tmp__._1, _:GoInt64 = __tmp__._2;
        {
            var _i;
            for (_obj in _tx.keyValueIterator()) {
                _i = _obj.key;
                if (_tx[_i]._when <= _sec && (_i + ((1 : GoInt)) == _tx.length || _sec < _tx[_i + ((1 : GoInt))]._when)) {
                    _l.value._cacheStart = _tx[_i]._when;
                    _l.value._cacheEnd = _omega;
                    _l.value._cacheZone = Go.pointer(_l.value._zone[_tx[_i]._index]);
                    if (_i + ((1 : GoInt)) < _tx.length) {
                        _l.value._cacheEnd = _tx[_i + ((1 : GoInt))]._when;
                    } else if (_l.value._extend != (("" : GoString))) {
                        {
                            var __tmp__ = _tzset(_l.value._extend, _l.value._cacheEnd, _sec), _name:GoString = __tmp__._0, _offset:GoInt = __tmp__._1, _estart:GoInt64 = __tmp__._2, _eend:GoInt64 = __tmp__._3, _isDST:Bool = __tmp__._4, _ok:Bool = __tmp__._5;
                            if (_ok) {
                                _l.value._cacheStart = _estart;
                                _l.value._cacheEnd = _eend;
                                {
                                    var _zoneIdx:GoInt = _findZone(_l.value._zone, _name, _offset, _isDST);
                                    if (_zoneIdx != -((1 : GoUnTypedInt))) {
                                        _l.value._cacheZone = Go.pointer(_l.value._zone[_zoneIdx]);
                                    } else {
                                        _l.value._cacheZone = Go.pointer((({ _name : _name, _offset : _offset, _isDST : _isDST } : T_zone)));
                                    };
                                };
                            };
                        };
                    };
                    break;
                };
            };
        };
        return { _0 : _l, _1 : ((null : stdgo.Error)) };
    }
function _findZone(_zones:Slice<T_zone>, _name:GoString, _offset:GoInt, _isDST:Bool):GoInt {
        {
            var _i;
            var _z;
            for (_obj in _zones.keyValueIterator()) {
                _i = _obj.key;
                _z = _obj.value;
                if (_z._name == _name && _z._offset == _offset && _z._isDST == _isDST) {
                    return _i;
                };
            };
        };
        return -((1 : GoUnTypedInt));
    }
/**
    // loadTzinfoFromDirOrZip returns the contents of the file with the given name
    // in dir. dir can either be an uncompressed zip file, or a directory.
**/
function _loadTzinfoFromDirOrZip(_dir:GoString, _name:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        if (_dir.length > ((4 : GoInt)) && _dir.__slice__(_dir.length - ((4 : GoInt))) == ((".zip" : GoString))) {
            return _loadTzinfoFromZip(_dir, _name);
        };
        if (_dir != (("" : GoString))) {
            _name = _dir + (("/" : GoString)) + _name;
        };
        return _readFile(_name);
    }
/**
    // get4 returns the little-endian 32-bit value in b.
**/
function _get4(_b:Slice<GoByte>):GoInt {
        if (_b.length < ((4 : GoInt))) {
            return ((0 : GoInt));
        };
        return ((_b[((0 : GoInt))] : GoInt)) | (((_b[((1 : GoInt))] : GoInt)) << ((8 : GoUnTypedInt))) | (((_b[((2 : GoInt))] : GoInt)) << ((16 : GoUnTypedInt))) | (((_b[((3 : GoInt))] : GoInt)) << ((24 : GoUnTypedInt)));
    }
/**
    // get2 returns the little-endian 16-bit value in b.
**/
function _get2(_b:Slice<GoByte>):GoInt {
        if (_b.length < ((2 : GoInt))) {
            return ((0 : GoInt));
        };
        return ((_b[((0 : GoInt))] : GoInt)) | (((_b[((1 : GoInt))] : GoInt)) << ((8 : GoUnTypedInt)));
    }
/**
    // loadTzinfoFromZip returns the contents of the file with the given name
    // in the given uncompressed zip file.
**/
function _loadTzinfoFromZip(_zipfile:GoString, _name:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var __tmp__ = _open(_zipfile), _fd:GoUIntptr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : _err };
        };
        try {
            {
                var a0 = _fd;
                deferstack.unshift(() -> _closefd(a0));
            };
            final _zecheader:GoUnTypedInt = ((101010256 : GoUnTypedInt)), _zcheader:GoUnTypedInt = ((33639248 : GoUnTypedInt)), _ztailsize:GoUnTypedInt = ((22 : GoUnTypedInt)), _zheadersize:GoUnTypedInt = ((30 : GoUnTypedInt)), _zheader:GoUnTypedInt = ((67324752 : GoUnTypedInt));
            var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_ztailsize : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var _err:stdgo.Error = _preadn(_fd, _buf, -_ztailsize);
                if (_err != null || _get4(_buf) != _zecheader) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : new Slice<GoUInt8>().nil(), _1 : stdgo.errors.Errors.new_((("corrupt zip file " : GoString)) + _zipfile) };
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
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : new Slice<GoUInt8>().nil(), _1 : stdgo.errors.Errors.new_((("corrupt zip file " : GoString)) + _zipfile) };
                    };
                };
            };
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _n, _i++, {
                    if (_get4(_buf) != _zcheader) {
                        break;
                    };
                    var _meth:GoInt = _get2(_buf.__slice__(((10 : GoInt))));
                    var _size:GoInt = _get4(_buf.__slice__(((24 : GoInt))));
                    var _namelen:GoInt = _get2(_buf.__slice__(((28 : GoInt))));
                    var _xlen:GoInt = _get2(_buf.__slice__(((30 : GoInt))));
                    var _fclen:GoInt = _get2(_buf.__slice__(((32 : GoInt))));
                    var _off:GoInt = _get4(_buf.__slice__(((42 : GoInt))));
                    var _zname:Slice<GoUInt8> = _buf.__slice__(((46 : GoInt)), ((46 : GoInt)) + _namelen);
                    _buf = _buf.__slice__(((46 : GoInt)) + _namelen + _xlen + _fclen);
                    if (((_zname : GoString)) != _name) {
                        continue;
                    };
                    if (_meth != ((0 : GoInt))) {
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return { _0 : new Slice<GoUInt8>().nil(), _1 : stdgo.errors.Errors.new_((("unsupported compression for " : GoString)) + _name + ((" in " : GoString)) + _zipfile) };
                        };
                    };
                    _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((_zheadersize + _namelen : GoInt)).toBasic()) ((0 : GoUInt8))]);
                    {
                        var _err:stdgo.Error = _preadn(_fd, _buf, _off);
                        if (_err != null || _get4(_buf) != _zheader || _get2(_buf.__slice__(((8 : GoInt)))) != _meth || _get2(_buf.__slice__(((26 : GoInt)))) != _namelen || ((_buf.__slice__(((30 : GoInt)), ((30 : GoInt)) + _namelen) : GoString)) != _name) {
                            {
                                for (defer in deferstack) {
                                    defer();
                                };
                                return { _0 : new Slice<GoUInt8>().nil(), _1 : stdgo.errors.Errors.new_((("corrupt zip file " : GoString)) + _zipfile) };
                            };
                        };
                    };
                    _xlen = _get2(_buf.__slice__(((28 : GoInt))));
                    _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt8))]);
                    {
                        var _err:stdgo.Error = _preadn(_fd, _buf, _off + ((30 : GoInt)) + _namelen + _xlen);
                        if (_err != null) {
                            {
                                for (defer in deferstack) {
                                    defer();
                                };
                                return { _0 : new Slice<GoUInt8>().nil(), _1 : stdgo.errors.Errors.new_((("corrupt zip file " : GoString)) + _zipfile) };
                            };
                        };
                    };
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : _buf, _1 : ((null : stdgo.Error)) };
                    };
                });
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return { _0 : new Slice<GoUInt8>().nil(), _1 : stdgo.syscall.Syscall.enoent };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : new Slice<GoUInt8>().nil(), _1 : ((null : stdgo.Error)) };
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
        if (_source.length >= ((6 : GoInt)) && _source.__slice__(_source.length - ((6 : GoInt))) == (("tzdata" : GoString))) {
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
function _loadLocation(_name:GoString, _sources:Slice<GoString>):{ var _0 : Pointer<Location>; var _1 : Error; } {
        var _z:Pointer<Location> = new Pointer<Location>().nil(), _firstErr:Error = ((null : stdgo.Error));
        for (_source in _sources) {
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
            if (_firstErr == null && Go.toInterface(_err) != Go.toInterface(stdgo.syscall.Syscall.enoent.__t__)) {
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
            if (_firstErr == null && Go.toInterface(_err) != Go.toInterface(stdgo.syscall.Syscall.enoent.__t__)) {
                _firstErr = _err;
            };
        };
        if (_firstErr != null) {
            return { _0 : new Pointer<Location>().nil(), _1 : _firstErr };
        };
        return { _0 : new Pointer<Location>().nil(), _1 : stdgo.errors.Errors.new_((("unknown time zone " : GoString)) + _name) };
    }
/**
    // readFile reads and returns the content of the named file.
    // It is a trivial implementation of os.ReadFile, reimplemented
    // here to avoid depending on io/ioutil or os.
    // It returns an error if name exceeds maxFileSize bytes.
**/
function _readFile(_name:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var __tmp__ = _open(_name), _f:GoUIntptr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : _err };
        };
        try {
            {
                var a0 = _f;
                deferstack.unshift(() -> _closefd(a0));
            };
            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 4096) ((0 : GoUInt8))]), _ret:Slice<GoByte> = new Slice<GoUInt8>().nil(), _n:GoInt = ((0 : GoInt));
            while (true) {
                {
                    var __tmp__ = _read(_f, _buf.__slice__(0));
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_n > ((0 : GoInt))) {
                    _ret = _ret.__append__(..._buf.__slice__(0, _n).toArray());
                };
                if (_n == ((0 : GoInt)) || _err != null) {
                    break;
                };
                if (_ret.length > _maxFileSize) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : new Slice<GoUInt8>().nil(), _1 : new T_fileSizeError(_name) };
                    };
                };
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return { _0 : _ret, _1 : _err };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : new Slice<GoUInt8>().nil(), _1 : ((null : stdgo.Error)) };
            };
        };
    }
class ParseError_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
}
class Timer_extension_fields {
    public function stop(__tmp__):Bool return __tmp__.stop();
    public function reset(__tmp__, _d:Duration):Bool return __tmp__.reset(_d);
}
class Ticker_extension_fields {
    public function stop(__tmp__):Void __tmp__.stop();
    public function reset(__tmp__, _d:Duration):Void __tmp__.reset(_d);
}
class Time_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
    public function format(__tmp__, _layout:GoString):GoString return __tmp__.format(_layout);
    public function appendFormat(__tmp__, _b:Slice<GoByte>, _layout:GoString):Slice<GoByte> return __tmp__.appendFormat(_b, _layout);
    public function _nsec(__tmp__):GoInt32 return __tmp__._nsec();
    public function _sec(__tmp__):GoInt64 return __tmp__._sec();
    public function _unixSec(__tmp__):GoInt64 return __tmp__._unixSec();
    public function _addSec(__tmp__, _d:GoInt64):Void __tmp__._addSec(_d);
    public function _setLoc(__tmp__, _loc:Pointer<Location>):Void __tmp__._setLoc(_loc);
    public function _stripMono(__tmp__):Void __tmp__._stripMono();
    public function _setMono(__tmp__, _m:GoInt64):Void __tmp__._setMono(_m);
    public function _mono(__tmp__):GoInt64 return __tmp__._mono();
    public function after(__tmp__, _u:Time):Bool return __tmp__.after(_u);
    public function before(__tmp__, _u:Time):Bool return __tmp__.before(_u);
    public function equal(__tmp__, _u:Time):Bool return __tmp__.equal(_u);
    public function isZero(__tmp__):Bool return __tmp__.isZero();
    public function _abs(__tmp__):GoUInt64 return __tmp__._abs();
    public function _locabs(__tmp__):{ var _0 : GoString; var _1 : GoInt; var _2 : GoUInt64; } return __tmp__._locabs();
    public function date(__tmp__):{ var _0 : GoInt; var _1 : Month; var _2 : GoInt; } return __tmp__.date();
    public function year(__tmp__):GoInt return __tmp__.year();
    public function month(__tmp__):Month return __tmp__.month();
    public function day(__tmp__):GoInt return __tmp__.day();
    public function weekday(__tmp__):Weekday return __tmp__.weekday();
    public function isoweek(__tmp__):{ var _0 : GoInt; var _1 : GoInt; } return __tmp__.isoweek();
    public function clock(__tmp__):{ var _0 : GoInt; var _1 : GoInt; var _2 : GoInt; } return __tmp__.clock();
    public function hour(__tmp__):GoInt return __tmp__.hour();
    public function minute(__tmp__):GoInt return __tmp__.minute();
    public function second(__tmp__):GoInt return __tmp__.second();
    public function nanosecond(__tmp__):GoInt return __tmp__.nanosecond();
    public function yearDay(__tmp__):GoInt return __tmp__.yearDay();
    public function add(__tmp__, _d:Duration):Time return __tmp__.add(_d);
    public function sub(__tmp__, _u:Time):Duration return __tmp__.sub(_u);
    public function addDate(__tmp__, _years:GoInt, _months:GoInt, _days:GoInt):Time return __tmp__.addDate(_years, _months, _days);
    public function _date(__tmp__, _full:Bool):{ var _0 : GoInt; var _1 : Month; var _2 : GoInt; var _3 : GoInt; } return __tmp__._date(_full);
    public function utc(__tmp__):Time return __tmp__.utc();
    public function local(__tmp__):Time return __tmp__.local();
    public function in_(__tmp__, _loc:Pointer<Location>):Time return __tmp__.in_(_loc);
    public function location(__tmp__):Pointer<Location> return __tmp__.location();
    public function zone(__tmp__):{ var _0 : GoString; var _1 : GoInt; } return __tmp__.zone();
    public function unix(__tmp__):GoInt64 return __tmp__.unix();
    public function unixMilli(__tmp__):GoInt64 return __tmp__.unixMilli();
    public function unixMicro(__tmp__):GoInt64 return __tmp__.unixMicro();
    public function unixNano(__tmp__):GoInt64 return __tmp__.unixNano();
    public function marshalBinary(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.marshalBinary();
    public function unmarshalBinary(__tmp__, _data:Slice<GoByte>):Error return __tmp__.unmarshalBinary(_data);
    public function gobEncode(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.gobEncode();
    public function gobDecode(__tmp__, _data:Slice<GoByte>):Error return __tmp__.gobDecode(_data);
    public function marshalJSON(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.marshalJSON();
    public function unmarshalJSON(__tmp__, _data:Slice<GoByte>):Error return __tmp__.unmarshalJSON(_data);
    public function marshalText(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.marshalText();
    public function unmarshalText(__tmp__, _data:Slice<GoByte>):Error return __tmp__.unmarshalText(_data);
    public function isDST(__tmp__):Bool return __tmp__.isDST();
    public function truncate(__tmp__, _d:Duration):Time return __tmp__.truncate(_d);
    public function round(__tmp__, _d:Duration):Time return __tmp__.round(_d);
}
class Month_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class Weekday_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class Duration_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function nanoseconds(__tmp__):GoInt64 return __tmp__.nanoseconds();
    public function microseconds(__tmp__):GoInt64 return __tmp__.microseconds();
    public function milliseconds(__tmp__):GoInt64 return __tmp__.milliseconds();
    public function seconds(__tmp__):GoFloat64 return __tmp__.seconds();
    public function minutes(__tmp__):GoFloat64 return __tmp__.minutes();
    public function hours(__tmp__):GoFloat64 return __tmp__.hours();
    public function truncate(__tmp__, _m:Duration):Duration return __tmp__.truncate(_m);
    public function round(__tmp__, _m:Duration):Duration return __tmp__.round(_m);
}
class Location_extension_fields {
    public function _get(__tmp__):Pointer<Location> return __tmp__._get();
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function _lookup(__tmp__, _sec:GoInt64):{ var _0 : GoString; var _1 : GoInt; var _2 : GoInt64; var _3 : GoInt64; var _4 : Bool; } return __tmp__._lookup(_sec);
    public function _lookupFirstZone(__tmp__):GoInt return __tmp__._lookupFirstZone();
    public function _firstZoneUsed(__tmp__):Bool return __tmp__._firstZoneUsed();
    public function _lookupName(__tmp__, _name:GoString, _unix:GoInt64):{ var _0 : GoInt; var _1 : Bool; } return __tmp__._lookupName(_name, _unix);
}
class T_fileSizeError_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
}
class T_dataIO_extension_fields {
    public function _read(__tmp__, _n:GoInt):Slice<GoByte> return __tmp__._read(_n);
    public function _big4(__tmp__):{ var _0 : GoUInt32; var _1 : Bool; } return __tmp__._big4();
    public function _big8(__tmp__):{ var _0 : GoUInt64; var _1 : Bool; } return __tmp__._big8();
    public function _byte(__tmp__):{ var _0 : GoByte; var _1 : Bool; } return __tmp__._byte();
    public function _rest(__tmp__):Slice<GoByte> return __tmp__._rest();
}
