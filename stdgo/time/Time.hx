package stdgo.time;
final ruleJulian : stdgo._internal.time.Time.RuleKind = stdgo._internal.time.Time.ruleJulian;
final ruleDOY : stdgo._internal.time.Time.RuleKind = stdgo._internal.time.Time.ruleDOY;
final ruleMonthWeekDay : stdgo._internal.time.Time.RuleKind = stdgo._internal.time.Time.ruleMonthWeekDay;
final unixToInternal : haxe.Int64 = stdgo._internal.time.Time.unixToInternal;
final layout : String = stdgo._internal.time.Time.layout;
final ansic : String = stdgo._internal.time.Time.ansic;
final unixDate : String = stdgo._internal.time.Time.unixDate;
final rubyDate : String = stdgo._internal.time.Time.rubyDate;
final rfc822 : String = stdgo._internal.time.Time.rfc822;
final rfc822z : String = stdgo._internal.time.Time.rfc822z;
final rfc850 : String = stdgo._internal.time.Time.rfc850;
final rfc1123 : String = stdgo._internal.time.Time.rfc1123;
final rfc1123z : String = stdgo._internal.time.Time.rfc1123z;
final rfc3339 : String = stdgo._internal.time.Time.rfc3339;
final rfc3339nano : String = stdgo._internal.time.Time.rfc3339nano;
final kitchen : String = stdgo._internal.time.Time.kitchen;
final stamp : String = stdgo._internal.time.Time.stamp;
final stampMilli : String = stdgo._internal.time.Time.stampMilli;
final stampMicro : String = stdgo._internal.time.Time.stampMicro;
final stampNano : String = stdgo._internal.time.Time.stampNano;
final dateTime : String = stdgo._internal.time.Time.dateTime;
final dateOnly : String = stdgo._internal.time.Time.dateOnly;
final timeOnly : String = stdgo._internal.time.Time.timeOnly;
final january : stdgo._internal.time.Time.Month = stdgo._internal.time.Time.january;
final february = stdgo._internal.time.Time.february;
final march = stdgo._internal.time.Time.march;
final april = stdgo._internal.time.Time.april;
final may = stdgo._internal.time.Time.may;
final june = stdgo._internal.time.Time.june;
final july = stdgo._internal.time.Time.july;
final august = stdgo._internal.time.Time.august;
final september = stdgo._internal.time.Time.september;
final october = stdgo._internal.time.Time.october;
final november = stdgo._internal.time.Time.november;
final december = stdgo._internal.time.Time.december;
final sunday : stdgo._internal.time.Time.Weekday = stdgo._internal.time.Time.sunday;
final monday = stdgo._internal.time.Time.monday;
final tuesday = stdgo._internal.time.Time.tuesday;
final wednesday = stdgo._internal.time.Time.wednesday;
final thursday = stdgo._internal.time.Time.thursday;
final friday = stdgo._internal.time.Time.friday;
final saturday = stdgo._internal.time.Time.saturday;
final nanosecond : stdgo._internal.time.Time.Duration = stdgo._internal.time.Time.nanosecond;
final microsecond : stdgo._internal.time.Time.Duration = stdgo._internal.time.Time.microsecond;
final millisecond : stdgo._internal.time.Time.Duration = stdgo._internal.time.Time.millisecond;
final second : stdgo._internal.time.Time.Duration = stdgo._internal.time.Time.second;
final minute : stdgo._internal.time.Time.Duration = stdgo._internal.time.Time.minute;
final hour : stdgo._internal.time.Time.Duration = stdgo._internal.time.Time.hour;
var utc(get, set) : stdgo._internal.time.Time.Location;
private function get_utc():stdgo._internal.time.Time.Location return stdgo._internal.time.Time.utc;
private function set_utc(v:stdgo._internal.time.Time.Location):stdgo._internal.time.Time.Location {
        stdgo._internal.time.Time.utc = v;
        return v;
    }
var local(get, set) : stdgo._internal.time.Time.Location;
private function get_local():stdgo._internal.time.Time.Location return stdgo._internal.time.Time.local;
private function set_local(v:stdgo._internal.time.Time.Location):stdgo._internal.time.Time.Location {
        stdgo._internal.time.Time.local = v;
        return v;
    }
var gorootZoneSource(get, set) : stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : Bool; };
private function get_gorootZoneSource():stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : Bool; } return _0 -> stdgo._internal.time.Time.gorootZoneSource(_0);
private function set_gorootZoneSource(v:stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : Bool; }):stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : Bool; } {
        stdgo._internal.time.Time.gorootZoneSource = v;
        return v;
    }
var parseTimeZone(get, set) : stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : Bool; };
private function get_parseTimeZone():stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : Bool; } return _0 -> stdgo._internal.time.Time.parseTimeZone(_0);
private function set_parseTimeZone(v:stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : Bool; }):stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : Bool; } {
        stdgo._internal.time.Time.parseTimeZone = v;
        return v;
    }
var setMono(get, set) : (stdgo.Ref<stdgo._internal.time.Time.Time>, stdgo.GoInt64) -> Void;
private function get_setMono():(stdgo.Ref<stdgo._internal.time.Time.Time>, stdgo.GoInt64) -> Void return (_0, _1) -> stdgo._internal.time.Time.setMono(_0, _1);
private function set_setMono(v:(stdgo.Ref<stdgo._internal.time.Time.Time>, stdgo.GoInt64) -> Void):(stdgo.Ref<stdgo._internal.time.Time.Time>, stdgo.GoInt64) -> Void {
        stdgo._internal.time.Time.setMono = v;
        return v;
    }
var getMono(get, set) : stdgo.Ref<stdgo._internal.time.Time.Time> -> stdgo.GoInt64;
private function get_getMono():stdgo.Ref<stdgo._internal.time.Time.Time> -> stdgo.GoInt64 return _0 -> stdgo._internal.time.Time.getMono(_0);
private function set_getMono(v:stdgo.Ref<stdgo._internal.time.Time.Time> -> stdgo.GoInt64):stdgo.Ref<stdgo._internal.time.Time.Time> -> stdgo.GoInt64 {
        stdgo._internal.time.Time.getMono = v;
        return v;
    }
var errLocation(get, set) : stdgo.Error;
private function get_errLocation():stdgo.Error return stdgo._internal.time.Time.errLocation;
private function set_errLocation(v:stdgo.Error):stdgo.Error {
        stdgo._internal.time.Time.errLocation = v;
        return v;
    }
var readFile(get, set) : stdgo.GoString -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
private function get_readFile():stdgo.GoString -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return _0 -> stdgo._internal.time.Time.readFile(_0);
private function set_readFile(v:stdgo.GoString -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; }):stdgo.GoString -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        stdgo._internal.time.Time.readFile = v;
        return v;
    }
var loadTzinfo(get, set) : (stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
private function get_loadTzinfo():(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return (_0, _1) -> stdgo._internal.time.Time.loadTzinfo(_0, _1);
private function set_loadTzinfo(v:(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; }):(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        stdgo._internal.time.Time.loadTzinfo = v;
        return v;
    }
var nextStdChunk(get, set) : stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; };
private function get_nextStdChunk():stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } return _0 -> stdgo._internal.time.Time.nextStdChunk(_0);
private function set_nextStdChunk(v:stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; }):stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } {
        stdgo._internal.time.Time.nextStdChunk = v;
        return v;
    }
var tzset(get, set) : (stdgo.GoString, stdgo.GoInt64, stdgo.GoInt64) -> { var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; };
private function get_tzset():(stdgo.GoString, stdgo.GoInt64, stdgo.GoInt64) -> { var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; } return (_0, _1, _2) -> stdgo._internal.time.Time.tzset(_0, _1, _2);
private function set_tzset(v:(stdgo.GoString, stdgo.GoInt64, stdgo.GoInt64) -> { var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; }):(stdgo.GoString, stdgo.GoInt64, stdgo.GoInt64) -> { var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; } {
        stdgo._internal.time.Time.tzset = v;
        return v;
    }
var tzsetName(get, set) : stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; };
private function get_tzsetName():stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } return _0 -> stdgo._internal.time.Time.tzsetName(_0);
private function set_tzsetName(v:stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; }):stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } {
        stdgo._internal.time.Time.tzsetName = v;
        return v;
    }
var tzsetOffset(get, set) : stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; };
private function get_tzsetOffset():stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } return _0 -> stdgo._internal.time.Time.tzsetOffset(_0);
private function set_tzsetOffset(v:stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; }):stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } {
        stdgo._internal.time.Time.tzsetOffset = v;
        return v;
    }
var stdChunkNames(get, set) : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>;
private function get_stdChunkNames():stdgo.GoMap<stdgo.GoInt, stdgo.GoString> return stdgo._internal.time.Time.stdChunkNames;
private function set_stdChunkNames(v:stdgo.GoMap<stdgo.GoInt, stdgo.GoString>):stdgo.GoMap<stdgo.GoInt, stdgo.GoString> {
        stdgo._internal.time.Time.stdChunkNames = v;
        return v;
    }
var quote(get, set) : stdgo.GoString -> stdgo.GoString;
private function get_quote():stdgo.GoString -> stdgo.GoString return _0 -> stdgo._internal.time.Time.quote(_0);
private function set_quote(v:stdgo.GoString -> stdgo.GoString):stdgo.GoString -> stdgo.GoString {
        stdgo._internal.time.Time.quote = v;
        return v;
    }
var appendInt(get, set) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt, stdgo.GoInt) -> stdgo.Slice<stdgo.GoUInt8>;
private function get_appendInt():(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt, stdgo.GoInt) -> stdgo.Slice<stdgo.GoUInt8> return (_0, _1, _2) -> stdgo._internal.time.Time.appendInt([for (i in _0) i], _1, _2);
private function set_appendInt(v:(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt, stdgo.GoInt) -> stdgo.Slice<stdgo.GoUInt8>):(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt, stdgo.GoInt) -> stdgo.Slice<stdgo.GoUInt8> {
        stdgo._internal.time.Time.appendInt = v;
        return v;
    }
var appendFormatAny(get, set) : (stdgo._internal.time.Time.Time, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoString) -> stdgo.Slice<stdgo.GoUInt8>;
private function get_appendFormatAny():(stdgo._internal.time.Time.Time, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoString) -> stdgo.Slice<stdgo.GoUInt8> return (_0, _1, _2) -> stdgo._internal.time.Time.appendFormatAny(_0, [for (i in _1) i], _2);
private function set_appendFormatAny(v:(stdgo._internal.time.Time.Time, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoString) -> stdgo.Slice<stdgo.GoUInt8>):(stdgo._internal.time.Time.Time, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoString) -> stdgo.Slice<stdgo.GoUInt8> {
        stdgo._internal.time.Time.appendFormatAny = v;
        return v;
    }
var appendFormatRFC3339(get, set) : (stdgo._internal.time.Time.Time, stdgo.Slice<stdgo.GoUInt8>, Bool) -> stdgo.Slice<stdgo.GoUInt8>;
private function get_appendFormatRFC3339():(stdgo._internal.time.Time.Time, stdgo.Slice<stdgo.GoUInt8>, Bool) -> stdgo.Slice<stdgo.GoUInt8> return (_0, _1, _2) -> stdgo._internal.time.Time.appendFormatRFC3339(_0, [for (i in _1) i], _2);
private function set_appendFormatRFC3339(v:(stdgo._internal.time.Time.Time, stdgo.Slice<stdgo.GoUInt8>, Bool) -> stdgo.Slice<stdgo.GoUInt8>):(stdgo._internal.time.Time.Time, stdgo.Slice<stdgo.GoUInt8>, Bool) -> stdgo.Slice<stdgo.GoUInt8> {
        stdgo._internal.time.Time.appendFormatRFC3339 = v;
        return v;
    }
var parseAny(get, set) : (stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.time.Time.Location>, stdgo.Ref<stdgo._internal.time.Time.Location>) -> { var _0 : stdgo._internal.time.Time.Time; var _1 : stdgo.Error; };
private function get_parseAny():(stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.time.Time.Location>, stdgo.Ref<stdgo._internal.time.Time.Location>) -> { var _0 : stdgo._internal.time.Time.Time; var _1 : stdgo.Error; } return (_0, _1, _2, _3) -> stdgo._internal.time.Time.parseAny(_0, _1, _2, _3);
private function set_parseAny(v:(stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.time.Time.Location>, stdgo.Ref<stdgo._internal.time.Time.Location>) -> { var _0 : stdgo._internal.time.Time.Time; var _1 : stdgo.Error; }):(stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.time.Time.Location>, stdgo.Ref<stdgo._internal.time.Time.Location>) -> { var _0 : stdgo._internal.time.Time.Time; var _1 : stdgo.Error; } {
        stdgo._internal.time.Time.parseAny = v;
        return v;
    }
var parseRFC3339(get, set) : (stdgo.GoString, stdgo.Ref<stdgo._internal.time.Time.Location>) -> { var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; };
private function get_parseRFC3339():(stdgo.GoString, stdgo.Ref<stdgo._internal.time.Time.Location>) -> { var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } return (_0, _1) -> stdgo._internal.time.Time.parseRFC3339(_0, _1);
private function set_parseRFC3339(v:(stdgo.GoString, stdgo.Ref<stdgo._internal.time.Time.Location>) -> { var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; }):(stdgo.GoString, stdgo.Ref<stdgo._internal.time.Time.Location>) -> { var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } {
        stdgo._internal.time.Time.parseRFC3339 = v;
        return v;
    }
var disablePlatformSources(get, set) : () -> (() -> Void);
private function get_disablePlatformSources():() -> (() -> Void) return () -> stdgo._internal.time.Time.disablePlatformSources();
private function set_disablePlatformSources(v:() -> (() -> Void)):() -> (() -> Void) {
        stdgo._internal.time.Time.disablePlatformSources = v;
        return v;
    }
var interrupt(get, set) : () -> Void;
private function get_interrupt():() -> Void return () -> stdgo._internal.time.Time.interrupt();
private function set_interrupt(v:() -> Void):() -> Void {
        stdgo._internal.time.Time.interrupt = v;
        return v;
    }
var daysIn(get, set) : (stdgo._internal.time.Time.Month, stdgo.GoInt) -> stdgo.GoInt;
private function get_daysIn():(stdgo._internal.time.Time.Month, stdgo.GoInt) -> stdgo.GoInt return (_0, _1) -> stdgo._internal.time.Time.daysIn(_0, _1);
private function set_daysIn(v:(stdgo._internal.time.Time.Month, stdgo.GoInt) -> stdgo.GoInt):(stdgo._internal.time.Time.Month, stdgo.GoInt) -> stdgo.GoInt {
        stdgo._internal.time.Time.daysIn = v;
        return v;
    }
var minMonoTime(get, set) : stdgo._internal.time.Time.Time;
private function get_minMonoTime():stdgo._internal.time.Time.Time return stdgo._internal.time.Time.minMonoTime;
private function set_minMonoTime(v:stdgo._internal.time.Time.Time):stdgo._internal.time.Time.Time {
        stdgo._internal.time.Time.minMonoTime = v;
        return v;
    }
var maxMonoTime(get, set) : stdgo._internal.time.Time.Time;
private function get_maxMonoTime():stdgo._internal.time.Time.Time return stdgo._internal.time.Time.maxMonoTime;
private function set_maxMonoTime(v:stdgo._internal.time.Time.Time):stdgo._internal.time.Time.Time {
        stdgo._internal.time.Time.maxMonoTime = v;
        return v;
    }
var notMonoNegativeTime(get, set) : stdgo._internal.time.Time.Time;
private function get_notMonoNegativeTime():stdgo._internal.time.Time.Time return stdgo._internal.time.Time.notMonoNegativeTime;
private function set_notMonoNegativeTime(v:stdgo._internal.time.Time.Time):stdgo._internal.time.Time.Time {
        stdgo._internal.time.Time.notMonoNegativeTime = v;
        return v;
    }
@:structInit abstract Rule(stdgo._internal.time.Time.Rule) from stdgo._internal.time.Time.Rule to stdgo._internal.time.Time.Rule {
    public var kind(get, set) : stdgo._internal.time.Time.RuleKind;
    function get_kind():stdgo._internal.time.Time.RuleKind return this.kind;
    function set_kind(v:stdgo._internal.time.Time.RuleKind):stdgo._internal.time.Time.RuleKind {
        this.kind = v;
        return v;
    }
    public var day(get, set) : StdTypes.Int;
    function get_day():StdTypes.Int return this.day;
    function set_day(v:StdTypes.Int):StdTypes.Int {
        this.day = v;
        return v;
    }
    public var week(get, set) : StdTypes.Int;
    function get_week():StdTypes.Int return this.week;
    function set_week(v:StdTypes.Int):StdTypes.Int {
        this.week = v;
        return v;
    }
    public var mon(get, set) : StdTypes.Int;
    function get_mon():StdTypes.Int return this.mon;
    function set_mon(v:StdTypes.Int):StdTypes.Int {
        this.mon = v;
        return v;
    }
    public var time(get, set) : StdTypes.Int;
    function get_time():StdTypes.Int return this.time;
    function set_time(v:StdTypes.Int):StdTypes.Int {
        this.time = v;
        return v;
    }
    public function new(?kind:stdgo._internal.time.Time.RuleKind, ?day:StdTypes.Int, ?week:StdTypes.Int, ?mon:StdTypes.Int, ?time:StdTypes.Int) this = new stdgo._internal.time.Time.Rule(kind, day, week, mon, time);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.time.Time.ParseError_static_extension) abstract ParseError(stdgo._internal.time.Time.ParseError) from stdgo._internal.time.Time.ParseError to stdgo._internal.time.Time.ParseError {
    public var layout(get, set) : String;
    function get_layout():String return this.layout;
    function set_layout(v:String):String {
        this.layout = v;
        return v;
    }
    public var value(get, set) : String;
    function get_value():String return this.value;
    function set_value(v:String):String {
        this.value = v;
        return v;
    }
    public var layoutElem(get, set) : String;
    function get_layoutElem():String return this.layoutElem;
    function set_layoutElem(v:String):String {
        this.layoutElem = v;
        return v;
    }
    public var valueElem(get, set) : String;
    function get_valueElem():String return this.valueElem;
    function set_valueElem(v:String):String {
        this.valueElem = v;
        return v;
    }
    public var message(get, set) : String;
    function get_message():String return this.message;
    function set_message(v:String):String {
        this.message = v;
        return v;
    }
    public function new(?layout:String, ?value:String, ?layoutElem:String, ?valueElem:String, ?message:String) this = new stdgo._internal.time.Time.ParseError(layout, value, layoutElem, valueElem, message);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_runtimeTimer(stdgo._internal.time.Time.T_runtimeTimer) from stdgo._internal.time.Time.T_runtimeTimer to stdgo._internal.time.Time.T_runtimeTimer {
    public var _pp(get, set) : stdgo.GoUIntptr;
    function get__pp():stdgo.GoUIntptr return this._pp;
    function set__pp(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this._pp = v;
        return v;
    }
    public var _when(get, set) : haxe.Int64;
    function get__when():haxe.Int64 return this._when;
    function set__when(v:haxe.Int64):haxe.Int64 {
        this._when = v;
        return v;
    }
    public var _period(get, set) : haxe.Int64;
    function get__period():haxe.Int64 return this._period;
    function set__period(v:haxe.Int64):haxe.Int64 {
        this._period = v;
        return v;
    }
    public var _f(get, set) : (stdgo.AnyInterface, stdgo.GoUIntptr) -> Void;
    function get__f():(stdgo.AnyInterface, stdgo.GoUIntptr) -> Void return (_0, _1) -> this._f(_0, _1);
    function set__f(v:(stdgo.AnyInterface, stdgo.GoUIntptr) -> Void):(stdgo.AnyInterface, stdgo.GoUIntptr) -> Void {
        this._f = v;
        return v;
    }
    public var _arg(get, set) : stdgo.AnyInterface;
    function get__arg():stdgo.AnyInterface return this._arg;
    function set__arg(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._arg = v;
        return v;
    }
    public var _seq(get, set) : stdgo.GoUIntptr;
    function get__seq():stdgo.GoUIntptr return this._seq;
    function set__seq(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this._seq = v;
        return v;
    }
    public var _nextwhen(get, set) : haxe.Int64;
    function get__nextwhen():haxe.Int64 return this._nextwhen;
    function set__nextwhen(v:haxe.Int64):haxe.Int64 {
        this._nextwhen = v;
        return v;
    }
    public var _status(get, set) : std.UInt;
    function get__status():std.UInt return this._status;
    function set__status(v:std.UInt):std.UInt {
        this._status = v;
        return v;
    }
    public function new(?_pp:stdgo.GoUIntptr, ?_when:haxe.Int64, ?_period:haxe.Int64, ?_f:(stdgo.AnyInterface, stdgo.GoUIntptr) -> Void, ?_arg:stdgo.AnyInterface, ?_seq:stdgo.GoUIntptr, ?_nextwhen:haxe.Int64, ?_status:std.UInt) this = new stdgo._internal.time.Time.T_runtimeTimer(_pp, _when, _period, _f, _arg, _seq, _nextwhen, _status);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.time.Time.Time_r_static_extension) abstract Timer(stdgo._internal.time.Time.Timer) from stdgo._internal.time.Time.Timer to stdgo._internal.time.Time.Timer {
    public var c(get, set) : stdgo.Chan<stdgo._internal.time.Time.Time>;
    function get_c():stdgo.Chan<stdgo._internal.time.Time.Time> return this.c;
    function set_c(v:stdgo.Chan<stdgo._internal.time.Time.Time>):stdgo.Chan<stdgo._internal.time.Time.Time> {
        this.c = v;
        return v;
    }
    public var _r(get, set) : stdgo._internal.time.Time.T_runtimeTimer;
    function get__r():stdgo._internal.time.Time.T_runtimeTimer return this._r;
    function set__r(v:stdgo._internal.time.Time.T_runtimeTimer):stdgo._internal.time.Time.T_runtimeTimer {
        this._r = v;
        return v;
    }
    public function new(?c:stdgo.Chan<stdgo._internal.time.Time.Time>, ?_r:stdgo._internal.time.Time.T_runtimeTimer) this = new stdgo._internal.time.Time.Timer(c, _r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.time.Time.Ticker_static_extension) abstract Ticker(stdgo._internal.time.Time.Ticker) from stdgo._internal.time.Time.Ticker to stdgo._internal.time.Time.Ticker {
    public var c(get, set) : stdgo.Chan<stdgo._internal.time.Time.Time>;
    function get_c():stdgo.Chan<stdgo._internal.time.Time.Time> return this.c;
    function set_c(v:stdgo.Chan<stdgo._internal.time.Time.Time>):stdgo.Chan<stdgo._internal.time.Time.Time> {
        this.c = v;
        return v;
    }
    public var _r(get, set) : stdgo._internal.time.Time.T_runtimeTimer;
    function get__r():stdgo._internal.time.Time.T_runtimeTimer return this._r;
    function set__r(v:stdgo._internal.time.Time.T_runtimeTimer):stdgo._internal.time.Time.T_runtimeTimer {
        this._r = v;
        return v;
    }
    public function new(?c:stdgo.Chan<stdgo._internal.time.Time.Time>, ?_r:stdgo._internal.time.Time.T_runtimeTimer) this = new stdgo._internal.time.Time.Ticker(c, _r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.time.Time.Time__static_extension) abstract Time_(stdgo._internal.time.Time.Time) from stdgo._internal.time.Time.Time to stdgo._internal.time.Time.Time {
    public var _wall(get, set) : haxe.UInt64;
    function get__wall():haxe.UInt64 return this._wall;
    function set__wall(v:haxe.UInt64):haxe.UInt64 {
        this._wall = v;
        return v;
    }
    public var _ext(get, set) : haxe.Int64;
    function get__ext():haxe.Int64 return this._ext;
    function set__ext(v:haxe.Int64):haxe.Int64 {
        this._ext = v;
        return v;
    }
    public var _loc(get, set) : stdgo._internal.time.Time.Location;
    function get__loc():stdgo._internal.time.Time.Location return this._loc;
    function set__loc(v:stdgo._internal.time.Time.Location):stdgo._internal.time.Time.Location {
        this._loc = v;
        return v;
    }
    public function new(?_wall:haxe.UInt64, ?_ext:haxe.Int64, ?_loc:stdgo._internal.time.Time.Location) this = new stdgo._internal.time.Time.Time(_wall, _ext, _loc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.time.Time.Location_static_extension) abstract Location(stdgo._internal.time.Time.Location) from stdgo._internal.time.Time.Location to stdgo._internal.time.Time.Location {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var _zone(get, set) : Array<stdgo._internal.time.Time.T_zone>;
    function get__zone():Array<stdgo._internal.time.Time.T_zone> return [for (i in this._zone) i];
    function set__zone(v:Array<stdgo._internal.time.Time.T_zone>):Array<stdgo._internal.time.Time.T_zone> {
        this._zone = ([for (i in v) i] : stdgo.Slice<stdgo._internal.time.Time.T_zone>);
        return v;
    }
    public var _tx(get, set) : Array<stdgo._internal.time.Time.T_zoneTrans>;
    function get__tx():Array<stdgo._internal.time.Time.T_zoneTrans> return [for (i in this._tx) i];
    function set__tx(v:Array<stdgo._internal.time.Time.T_zoneTrans>):Array<stdgo._internal.time.Time.T_zoneTrans> {
        this._tx = ([for (i in v) i] : stdgo.Slice<stdgo._internal.time.Time.T_zoneTrans>);
        return v;
    }
    public var _extend(get, set) : String;
    function get__extend():String return this._extend;
    function set__extend(v:String):String {
        this._extend = v;
        return v;
    }
    public var _cacheStart(get, set) : haxe.Int64;
    function get__cacheStart():haxe.Int64 return this._cacheStart;
    function set__cacheStart(v:haxe.Int64):haxe.Int64 {
        this._cacheStart = v;
        return v;
    }
    public var _cacheEnd(get, set) : haxe.Int64;
    function get__cacheEnd():haxe.Int64 return this._cacheEnd;
    function set__cacheEnd(v:haxe.Int64):haxe.Int64 {
        this._cacheEnd = v;
        return v;
    }
    public var _cacheZone(get, set) : stdgo._internal.time.Time.T_zone;
    function get__cacheZone():stdgo._internal.time.Time.T_zone return this._cacheZone;
    function set__cacheZone(v:stdgo._internal.time.Time.T_zone):stdgo._internal.time.Time.T_zone {
        this._cacheZone = v;
        return v;
    }
    public function new(?_name:String, ?_zone:Array<stdgo._internal.time.Time.T_zone>, ?_tx:Array<stdgo._internal.time.Time.T_zoneTrans>, ?_extend:String, ?_cacheStart:haxe.Int64, ?_cacheEnd:haxe.Int64, ?_cacheZone:stdgo._internal.time.Time.T_zone) this = new stdgo._internal.time.Time.Location(_name, ([for (i in _zone) i] : stdgo.Slice<stdgo._internal.time.Time.T_zone>), ([for (i in _tx) i] : stdgo.Slice<stdgo._internal.time.Time.T_zoneTrans>), _extend, _cacheStart, _cacheEnd, _cacheZone);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_zone(stdgo._internal.time.Time.T_zone) from stdgo._internal.time.Time.T_zone to stdgo._internal.time.Time.T_zone {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var _offset(get, set) : StdTypes.Int;
    function get__offset():StdTypes.Int return this._offset;
    function set__offset(v:StdTypes.Int):StdTypes.Int {
        this._offset = v;
        return v;
    }
    public var _isDST(get, set) : Bool;
    function get__isDST():Bool return this._isDST;
    function set__isDST(v:Bool):Bool {
        this._isDST = v;
        return v;
    }
    public function new(?_name:String, ?_offset:StdTypes.Int, ?_isDST:Bool) this = new stdgo._internal.time.Time.T_zone(_name, _offset, _isDST);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_zoneTrans(stdgo._internal.time.Time.T_zoneTrans) from stdgo._internal.time.Time.T_zoneTrans to stdgo._internal.time.Time.T_zoneTrans {
    public var _when(get, set) : haxe.Int64;
    function get__when():haxe.Int64 return this._when;
    function set__when(v:haxe.Int64):haxe.Int64 {
        this._when = v;
        return v;
    }
    public var _index(get, set) : std.UInt;
    function get__index():std.UInt return this._index;
    function set__index(v:std.UInt):std.UInt {
        this._index = v;
        return v;
    }
    public var _isstd(get, set) : Bool;
    function get__isstd():Bool return this._isstd;
    function set__isstd(v:Bool):Bool {
        this._isstd = v;
        return v;
    }
    public var _isutc(get, set) : Bool;
    function get__isutc():Bool return this._isutc;
    function set__isutc(v:Bool):Bool {
        this._isutc = v;
        return v;
    }
    public function new(?_when:haxe.Int64, ?_index:std.UInt, ?_isstd:Bool, ?_isutc:Bool) this = new stdgo._internal.time.Time.T_zoneTrans(_when, _index, _isstd, _isutc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_rule(stdgo._internal.time.Time.T_rule) from stdgo._internal.time.Time.T_rule to stdgo._internal.time.Time.T_rule {
    public var _kind(get, set) : stdgo._internal.time.Time.T_ruleKind;
    function get__kind():stdgo._internal.time.Time.T_ruleKind return this._kind;
    function set__kind(v:stdgo._internal.time.Time.T_ruleKind):stdgo._internal.time.Time.T_ruleKind {
        this._kind = v;
        return v;
    }
    public var _day(get, set) : StdTypes.Int;
    function get__day():StdTypes.Int return this._day;
    function set__day(v:StdTypes.Int):StdTypes.Int {
        this._day = v;
        return v;
    }
    public var _week(get, set) : StdTypes.Int;
    function get__week():StdTypes.Int return this._week;
    function set__week(v:StdTypes.Int):StdTypes.Int {
        this._week = v;
        return v;
    }
    public var _mon(get, set) : StdTypes.Int;
    function get__mon():StdTypes.Int return this._mon;
    function set__mon(v:StdTypes.Int):StdTypes.Int {
        this._mon = v;
        return v;
    }
    public var _time(get, set) : StdTypes.Int;
    function get__time():StdTypes.Int return this._time;
    function set__time(v:StdTypes.Int):StdTypes.Int {
        this._time = v;
        return v;
    }
    public function new(?_kind:stdgo._internal.time.Time.T_ruleKind, ?_day:StdTypes.Int, ?_week:StdTypes.Int, ?_mon:StdTypes.Int, ?_time:StdTypes.Int) this = new stdgo._internal.time.Time.T_rule(_kind, _day, _week, _mon, _time);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.time.Time.T_dataIO_static_extension) abstract T_dataIO(stdgo._internal.time.Time.T_dataIO) from stdgo._internal.time.Time.T_dataIO to stdgo._internal.time.Time.T_dataIO {
    public var _p(get, set) : Array<std.UInt>;
    function get__p():Array<std.UInt> return [for (i in this._p) i];
    function set__p(v:Array<std.UInt>):Array<std.UInt> {
        this._p = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _error(get, set) : Bool;
    function get__error():Bool return this._error;
    function set__error(v:Bool):Bool {
        this._error = v;
        return v;
    }
    public function new(?_p:Array<std.UInt>, ?_error:Bool) this = new stdgo._internal.time.Time.T_dataIO(([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>), _error);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef RuleKind = stdgo._internal.time.Time.RuleKind;
typedef Month = stdgo._internal.time.Time.Month;
typedef Weekday = stdgo._internal.time.Time.Weekday;
typedef Duration = stdgo._internal.time.Time.Duration;
typedef T_ruleKind = stdgo._internal.time.Time.T_ruleKind;
typedef T_fileSizeError = stdgo._internal.time.Time.T_fileSizeError;
class ParseError_static_extension {
    static public function error(e:ParseError):String {
        return stdgo._internal.time.Time.ParseError_static_extension.error(e);
    }
}
class Time_r_static_extension {
    static public function reset(t:Timer, d:Duration):Bool {
        return stdgo._internal.time.Time.Timer_static_extension.reset(t, d);
    }
    static public function stop(t:Timer):Bool {
        return stdgo._internal.time.Time.Timer_static_extension.stop(t);
    }
}
class Ticker_static_extension {
    static public function reset(t:Ticker, d:Duration):Void {
        stdgo._internal.time.Time.Ticker_static_extension.reset(t, d);
    }
    static public function stop(t:Ticker):Void {
        stdgo._internal.time.Time.Ticker_static_extension.stop(t);
    }
}
class Time__static_extension {
    static public function round(t:Time_, d:Duration):Time_ {
        return stdgo._internal.time.Time.Time_static_extension.round(t, d);
    }
    static public function truncate(t:Time_, d:Duration):Time_ {
        return stdgo._internal.time.Time.Time_static_extension.truncate(t, d);
    }
    static public function isDST(t:Time_):Bool {
        return stdgo._internal.time.Time.Time_static_extension.isDST(t);
    }
    static public function unmarshalText(t:Time_, data:Array<StdTypes.Int>):stdgo.Error {
        final data = ([for (i in data) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.time.Time.Time_static_extension.unmarshalText(t, data);
    }
    static public function marshalText(t:Time_):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.time.Time.Time_static_extension.marshalText(t);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function unmarshalJSON(t:Time_, data:Array<StdTypes.Int>):stdgo.Error {
        final data = ([for (i in data) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.time.Time.Time_static_extension.unmarshalJSON(t, data);
    }
    static public function marshalJSON(t:Time_):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.time.Time.Time_static_extension.marshalJSON(t);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function gobDecode(t:Time_, data:Array<StdTypes.Int>):stdgo.Error {
        final data = ([for (i in data) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.time.Time.Time_static_extension.gobDecode(t, data);
    }
    static public function gobEncode(t:Time_):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.time.Time.Time_static_extension.gobEncode(t);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function unmarshalBinary(t:Time_, data:Array<StdTypes.Int>):stdgo.Error {
        final data = ([for (i in data) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.time.Time.Time_static_extension.unmarshalBinary(t, data);
    }
    static public function marshalBinary(t:Time_):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.time.Time.Time_static_extension.marshalBinary(t);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function unixNano(t:Time_):haxe.Int64 {
        return stdgo._internal.time.Time.Time_static_extension.unixNano(t);
    }
    static public function unixMicro(t:Time_):haxe.Int64 {
        return stdgo._internal.time.Time.Time_static_extension.unixMicro(t);
    }
    static public function unixMilli(t:Time_):haxe.Int64 {
        return stdgo._internal.time.Time.Time_static_extension.unixMilli(t);
    }
    static public function unix(t:Time_):haxe.Int64 {
        return stdgo._internal.time.Time.Time_static_extension.unix(t);
    }
    static public function zoneBounds(t:Time_):stdgo.Tuple<Time_, Time_> {
        return {
            final obj = stdgo._internal.time.Time.Time_static_extension.zoneBounds(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function zone(t:Time_):stdgo.Tuple<String, StdTypes.Int> {
        return {
            final obj = stdgo._internal.time.Time.Time_static_extension.zone(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function location(t:Time_):Location {
        return stdgo._internal.time.Time.Time_static_extension.location(t);
    }
    static public function in_(t:Time_, loc:Location):Time_ {
        return stdgo._internal.time.Time.Time_static_extension.in_(t, loc);
    }
    static public function local(t:Time_):Time_ {
        return stdgo._internal.time.Time.Time_static_extension.local(t);
    }
    static public function utc(t:Time_):Time_ {
        return stdgo._internal.time.Time.Time_static_extension.utc(t);
    }
    static public function _date(t:Time_, full:Bool):stdgo.Tuple.Tuple4<StdTypes.Int, Month, StdTypes.Int, StdTypes.Int> {
        return {
            final obj = stdgo._internal.time.Time.Time_static_extension._date(t, full);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function addDate(t:Time_, years:StdTypes.Int, months:StdTypes.Int, days:StdTypes.Int):Time_ {
        return stdgo._internal.time.Time.Time_static_extension.addDate(t, years, months, days);
    }
    static public function sub(t:Time_, u:Time_):Duration {
        return stdgo._internal.time.Time.Time_static_extension.sub(t, u);
    }
    static public function add(t:Time_, d:Duration):Time_ {
        return stdgo._internal.time.Time.Time_static_extension.add(t, d);
    }
    static public function yearDay(t:Time_):StdTypes.Int {
        return stdgo._internal.time.Time.Time_static_extension.yearDay(t);
    }
    static public function nanosecond(t:Time_):StdTypes.Int {
        return stdgo._internal.time.Time.Time_static_extension.nanosecond(t);
    }
    static public function second(t:Time_):StdTypes.Int {
        return stdgo._internal.time.Time.Time_static_extension.second(t);
    }
    static public function minute(t:Time_):StdTypes.Int {
        return stdgo._internal.time.Time.Time_static_extension.minute(t);
    }
    static public function hour(t:Time_):StdTypes.Int {
        return stdgo._internal.time.Time.Time_static_extension.hour(t);
    }
    static public function clock(t:Time_):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, StdTypes.Int> {
        return {
            final obj = stdgo._internal.time.Time.Time_static_extension.clock(t);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function isoweek(t:Time_):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        return {
            final obj = stdgo._internal.time.Time.Time_static_extension.isoweek(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function weekday(t:Time_):Weekday {
        return stdgo._internal.time.Time.Time_static_extension.weekday(t);
    }
    static public function day(t:Time_):StdTypes.Int {
        return stdgo._internal.time.Time.Time_static_extension.day(t);
    }
    static public function month(t:Time_):Month {
        return stdgo._internal.time.Time.Time_static_extension.month(t);
    }
    static public function year(t:Time_):StdTypes.Int {
        return stdgo._internal.time.Time.Time_static_extension.year(t);
    }
    static public function date(t:Time_):stdgo.Tuple.Tuple3<StdTypes.Int, Month, StdTypes.Int> {
        return {
            final obj = stdgo._internal.time.Time.Time_static_extension.date(t);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _locabs(t:Time_):stdgo.Tuple.Tuple3<String, StdTypes.Int, haxe.UInt64> {
        return {
            final obj = stdgo._internal.time.Time.Time_static_extension._locabs(t);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _abs(t:Time_):haxe.UInt64 {
        return stdgo._internal.time.Time.Time_static_extension._abs(t);
    }
    static public function isZero(t:Time_):Bool {
        return stdgo._internal.time.Time.Time_static_extension.isZero(t);
    }
    static public function equal(t:Time_, u:Time_):Bool {
        return stdgo._internal.time.Time.Time_static_extension.equal(t, u);
    }
    static public function compare(t:Time_, u:Time_):StdTypes.Int {
        return stdgo._internal.time.Time.Time_static_extension.compare(t, u);
    }
    static public function before(t:Time_, u:Time_):Bool {
        return stdgo._internal.time.Time.Time_static_extension.before(t, u);
    }
    static public function after(t:Time_, u:Time_):Bool {
        return stdgo._internal.time.Time.Time_static_extension.after(t, u);
    }
    static public function _mono(t:Time_):haxe.Int64 {
        return stdgo._internal.time.Time.Time_static_extension._mono(t);
    }
    static public function _setMono(t:Time_, m:haxe.Int64):Void {
        stdgo._internal.time.Time.Time_static_extension._setMono(t, m);
    }
    static public function _stripMono(t:Time_):Void {
        stdgo._internal.time.Time.Time_static_extension._stripMono(t);
    }
    static public function _setLoc(t:Time_, loc:Location):Void {
        stdgo._internal.time.Time.Time_static_extension._setLoc(t, loc);
    }
    static public function _addSec(t:Time_, d:haxe.Int64):Void {
        stdgo._internal.time.Time.Time_static_extension._addSec(t, d);
    }
    static public function _unixSec(t:Time_):haxe.Int64 {
        return stdgo._internal.time.Time.Time_static_extension._unixSec(t);
    }
    static public function _sec(t:Time_):haxe.Int64 {
        return stdgo._internal.time.Time.Time_static_extension._sec(t);
    }
    static public function _nsec(t:Time_):StdTypes.Int {
        return stdgo._internal.time.Time.Time_static_extension._nsec(t);
    }
    static public function _appendStrictRFC3339(t:Time_, b:Array<StdTypes.Int>):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.time.Time.Time_static_extension._appendStrictRFC3339(t, b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _appendFormatRFC3339(t:Time_, b:Array<StdTypes.Int>, nanos:Bool):Array<StdTypes.Int> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.time.Time.Time_static_extension._appendFormatRFC3339(t, b, nanos)) i];
    }
    static public function _appendFormat(t:Time_, b:Array<StdTypes.Int>, layout:String):Array<StdTypes.Int> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.time.Time.Time_static_extension._appendFormat(t, b, layout)) i];
    }
    static public function appendFormat(t:Time_, b:Array<StdTypes.Int>, layout:String):Array<StdTypes.Int> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.time.Time.Time_static_extension.appendFormat(t, b, layout)) i];
    }
    static public function format(t:Time_, layout:String):String {
        return stdgo._internal.time.Time.Time_static_extension.format(t, layout);
    }
    static public function goString(t:Time_):String {
        return stdgo._internal.time.Time.Time_static_extension.goString(t);
    }
    static public function string(t:Time_):String {
        return stdgo._internal.time.Time.Time_static_extension.string(t);
    }
}
class Location_static_extension {
    static public function _lookupName(l:Location, name:String, unix:haxe.Int64):stdgo.Tuple<StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.time.Time.Location_static_extension._lookupName(l, name, unix);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _firstZoneUsed(l:Location):Bool {
        return stdgo._internal.time.Time.Location_static_extension._firstZoneUsed(l);
    }
    static public function _lookupFirstZone(l:Location):StdTypes.Int {
        return stdgo._internal.time.Time.Location_static_extension._lookupFirstZone(l);
    }
    static public function _lookup(l:Location, sec:haxe.Int64):stdgo.Tuple.Tuple5<String, StdTypes.Int, haxe.Int64, haxe.Int64, Bool> {
        return {
            final obj = stdgo._internal.time.Time.Location_static_extension._lookup(l, sec);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    static public function string(l:Location):String {
        return stdgo._internal.time.Time.Location_static_extension.string(l);
    }
    static public function _get(l:Location):Location {
        return stdgo._internal.time.Time.Location_static_extension._get(l);
    }
}
class T_dataIO_static_extension {
    static public function _rest(d:T_dataIO):Array<StdTypes.Int> {
        return [for (i in stdgo._internal.time.Time.T_dataIO_static_extension._rest(d)) i];
    }
    static public function _byte(d:T_dataIO):stdgo.Tuple<StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.time.Time.T_dataIO_static_extension._byte(d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _big8(d:T_dataIO):stdgo.Tuple<haxe.UInt64, Bool> {
        return {
            final obj = stdgo._internal.time.Time.T_dataIO_static_extension._big8(d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _big4(d:T_dataIO):stdgo.Tuple<std.UInt, Bool> {
        return {
            final obj = stdgo._internal.time.Time.T_dataIO_static_extension._big4(d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _read(d:T_dataIO, n:StdTypes.Int):Array<StdTypes.Int> {
        return [for (i in stdgo._internal.time.Time.T_dataIO_static_extension._read(d, n)) i];
    }
}
class Month_static_extension {
    static public function string(m:Month):String {
        return stdgo._internal.time.Time.Month_static_extension.string(m);
    }
}
class Weekday_static_extension {
    static public function string(d:Weekday):String {
        return stdgo._internal.time.Time.Weekday_static_extension.string(d);
    }
}
class Duration_static_extension {
    static public function abs(d:Duration):Duration {
        return stdgo._internal.time.Time.Duration_static_extension.abs(d);
    }
    static public function round(d:Duration, m:Duration):Duration {
        return stdgo._internal.time.Time.Duration_static_extension.round(d, m);
    }
    static public function truncate(d:Duration, m:Duration):Duration {
        return stdgo._internal.time.Time.Duration_static_extension.truncate(d, m);
    }
    static public function hours(d:Duration):StdTypes.Float {
        return stdgo._internal.time.Time.Duration_static_extension.hours(d);
    }
    static public function minutes(d:Duration):StdTypes.Float {
        return stdgo._internal.time.Time.Duration_static_extension.minutes(d);
    }
    static public function seconds(d:Duration):StdTypes.Float {
        return stdgo._internal.time.Time.Duration_static_extension.seconds(d);
    }
    static public function milliseconds(d:Duration):haxe.Int64 {
        return stdgo._internal.time.Time.Duration_static_extension.milliseconds(d);
    }
    static public function microseconds(d:Duration):haxe.Int64 {
        return stdgo._internal.time.Time.Duration_static_extension.microseconds(d);
    }
    static public function nanoseconds(d:Duration):haxe.Int64 {
        return stdgo._internal.time.Time.Duration_static_extension.nanoseconds(d);
    }
    static public function string(d:Duration):String {
        return stdgo._internal.time.Time.Duration_static_extension.string(d);
    }
}
class T_fileSizeError_static_extension {
    static public function error(f:T_fileSizeError):String {
        return stdgo._internal.time.Time.T_fileSizeError_static_extension.error(f);
    }
}
/**
    Package time provides functionality for measuring and displaying time.
    
    The calendrical calculations always assume a Gregorian calendar, with
    no leap seconds.
    
    # Monotonic Clocks
    
    Operating systems provide both a “wall clock,” which is subject to
    changes for clock synchronization, and a “monotonic clock,” which is
    not. The general rule is that the wall clock is for telling time and
    the monotonic clock is for measuring time. Rather than split the API,
    in this package the Time returned by time.Now contains both a wall
    clock reading and a monotonic clock reading; later time-telling
    operations use the wall clock reading, but later time-measuring
    operations, specifically comparisons and subtractions, use the
    monotonic clock reading.
    
    For example, this code always computes a positive elapsed time of
    approximately 20 milliseconds, even if the wall clock is changed during
    the operation being timed:
    
    	start := time.Now()
    	... operation that takes 20 milliseconds ...
    	t := time.Now()
    	elapsed := t.Sub(start)
    
    Other idioms, such as time.Since(start), time.Until(deadline), and
    time.Now().Before(deadline), are similarly robust against wall clock
    resets.
    
    The rest of this section gives the precise details of how operations
    use monotonic clocks, but understanding those details is not required
    to use this package.
    
    The Time returned by time.Now contains a monotonic clock reading.
    If Time t has a monotonic clock reading, t.Add adds the same duration to
    both the wall clock and monotonic clock readings to compute the result.
    Because t.AddDate(y, m, d), t.Round(d), and t.Truncate(d) are wall time
    computations, they always strip any monotonic clock reading from their results.
    Because t.In, t.Local, and t.UTC are used for their effect on the interpretation
    of the wall time, they also strip any monotonic clock reading from their results.
    The canonical way to strip a monotonic clock reading is to use t = t.Round(0).
    
    If Times t and u both contain monotonic clock readings, the operations
    t.After(u), t.Before(u), t.Equal(u), t.Compare(u), and t.Sub(u) are carried out
    using the monotonic clock readings alone, ignoring the wall clock
    readings. If either t or u contains no monotonic clock reading, these
    operations fall back to using the wall clock readings.
    
    On some systems the monotonic clock will stop if the computer goes to sleep.
    On such a system, t.Sub(u) may not accurately reflect the actual
    time that passed between t and u.
    
    Because the monotonic clock reading has no meaning outside
    the current process, the serialized forms generated by t.GobEncode,
    t.MarshalBinary, t.MarshalJSON, and t.MarshalText omit the monotonic
    clock reading, and t.Format provides no format for it. Similarly, the
    constructors time.Date, time.Parse, time.ParseInLocation, and time.Unix,
    as well as the unmarshalers t.GobDecode, t.UnmarshalBinary.
    t.UnmarshalJSON, and t.UnmarshalText always create times with
    no monotonic clock reading.
    
    The monotonic clock reading exists only in Time values. It is not
    a part of Duration values or the Unix times returned by t.Unix and
    friends.
    
    Note that the Go == operator compares not just the time instant but
    also the Location and the monotonic clock reading. See the
    documentation for the Time type for a discussion of equality
    testing for Time values.
    
    For debugging, the result of t.String does include the monotonic
    clock reading if present. If t != u because of different monotonic clock readings,
    that difference will be visible when printing t.String() and u.String().
**/
class Time {
    static public function resetLocalOnceForTest():Void {
        stdgo._internal.time.Time.resetLocalOnceForTest();
    }
    static public function forceUSPacificForTesting():Void {
        stdgo._internal.time.Time.forceUSPacificForTesting();
    }
    static public function zoneinfoForTesting():stdgo.Pointer<String> {
        return stdgo._internal.time.Time.zoneinfoForTesting();
    }
    static public function resetZoneinfoForTesting():Void {
        stdgo._internal.time.Time.resetZoneinfoForTesting();
    }
    static public function loadFromEmbeddedTZData(zone:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.time.Time.loadFromEmbeddedTZData(zone);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function tzsetRule(s:String):stdgo.Tuple.Tuple3<Rule, String, Bool> {
        return {
            final obj = stdgo._internal.time.Time.tzsetRule(s);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        Parse parses a formatted string and returns the time value it represents.
        See the documentation for the constant called Layout to see how to
        represent the format. The second argument must be parseable using
        the format string (layout) provided as the first argument.
        
        The example for Time.Format demonstrates the working of the layout string
        in detail and is a good reference.
        
        When parsing (only), the input may contain a fractional second
        field immediately after the seconds field, even if the layout does not
        signify its presence. In that case either a comma or a decimal point
        followed by a maximal series of digits is parsed as a fractional second.
        Fractional seconds are truncated to nanosecond precision.
        
        Elements omitted from the layout are assumed to be zero or, when
        zero is impossible, one, so parsing "3:04pm" returns the time
        corresponding to Jan 1, year 0, 15:04:00 UTC (note that because the year is
        0, this time is before the zero Time).
        Years must be in the range 0000..9999. The day of the week is checked
        for syntax but it is otherwise ignored.
        
        For layouts specifying the two-digit year 06, a value NN >= 69 will be treated
        as 19NN and a value NN < 69 will be treated as 20NN.
        
        The remainder of this comment describes the handling of time zones.
        
        In the absence of a time zone indicator, Parse returns a time in UTC.
        
        When parsing a time with a zone offset like -0700, if the offset corresponds
        to a time zone used by the current location (Local), then Parse uses that
        location and zone in the returned time. Otherwise it records the time as
        being in a fabricated location with time fixed at the given zone offset.
        
        When parsing a time with a zone abbreviation like MST, if the zone abbreviation
        has a defined offset in the current location, then that offset is used.
        The zone abbreviation "UTC" is recognized as UTC regardless of location.
        If the zone abbreviation is unknown, Parse records the time as being
        in a fabricated location with the given zone abbreviation and a zero offset.
        This choice means that such a time can be parsed and reformatted with the
        same layout losslessly, but the exact instant used in the representation will
        differ by the actual zone offset. To avoid such problems, prefer time layouts
        that use a numeric zone offset, or use ParseInLocation.
    **/
    static public function parse(layout:String, value:String):stdgo.Tuple<Time_, stdgo.Error> {
        return {
            final obj = stdgo._internal.time.Time.parse(layout, value);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParseInLocation is like Parse but differs in two important ways.
        First, in the absence of time zone information, Parse interprets a time as UTC;
        ParseInLocation interprets the time as in the given location.
        Second, when given a zone offset or abbreviation, Parse tries to match it
        against the Local location; ParseInLocation uses the given location.
    **/
    static public function parseInLocation(layout:String, value:String, loc:Location):stdgo.Tuple<Time_, stdgo.Error> {
        return {
            final obj = stdgo._internal.time.Time.parseInLocation(layout, value, loc);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParseDuration parses a duration string.
        A duration string is a possibly signed sequence of
        decimal numbers, each with optional fraction and a unit suffix,
        such as "300ms", "-1.5h" or "2h45m".
        Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h".
    **/
    static public function parseDuration(s:String):stdgo.Tuple<Duration, stdgo.Error> {
        return {
            final obj = stdgo._internal.time.Time.parseDuration(s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Test that a runtimeTimer with a period that would overflow when on
        expiration does not throw or cause other timers to hang.
        
        This test has to be in internal_test.go since it fiddles with
        unexported data structures.
    **/
    static public function checkRuntimeTimerPeriodOverflow():Void {
        stdgo._internal.time.Time.checkRuntimeTimerPeriodOverflow();
    }
    /**
        Sleep pauses the current goroutine for at least the duration d.
        A negative or zero duration causes Sleep to return immediately.
    **/
    static public function sleep(d:Duration):Void {
        stdgo._internal.time.Time.sleep(d);
    }
    /**
        NewTimer creates a new Timer that will send
        the current time on its channel after at least duration d.
    **/
    static public function newTimer(d:Duration):Timer {
        return stdgo._internal.time.Time.newTimer(d);
    }
    /**
        After waits for the duration to elapse and then sends the current time
        on the returned channel.
        It is equivalent to NewTimer(d).C.
        The underlying Timer is not recovered by the garbage collector
        until the timer fires. If efficiency is a concern, use NewTimer
        instead and call Timer.Stop if the timer is no longer needed.
    **/
    static public function after(d:Duration):stdgo.Chan<Time> {
        return stdgo._internal.time.Time.after(d);
    }
    /**
        AfterFunc waits for the duration to elapse and then calls f
        in its own goroutine. It returns a Timer that can
        be used to cancel the call using its Stop method.
    **/
    static public function afterFunc(d:Duration, f:() -> Void):Timer {
        final f = f;
        return stdgo._internal.time.Time.afterFunc(d, f);
    }
    /**
        NewTicker returns a new Ticker containing a channel that will send
        the current time on the channel after each tick. The period of the
        ticks is specified by the duration argument. The ticker will adjust
        the time interval or drop ticks to make up for slow receivers.
        The duration d must be greater than zero; if not, NewTicker will
        panic. Stop the ticker to release associated resources.
    **/
    static public function newTicker(d:Duration):Ticker {
        return stdgo._internal.time.Time.newTicker(d);
    }
    /**
        Tick is a convenience wrapper for NewTicker providing access to the ticking
        channel only. While Tick is useful for clients that have no need to shut down
        the Ticker, be aware that without a way to shut it down the underlying
        Ticker cannot be recovered by the garbage collector; it "leaks".
        Unlike NewTicker, Tick will return nil if d <= 0.
    **/
    static public function tick(d:Duration):stdgo.Chan<Time> {
        return stdgo._internal.time.Time.tick(d);
    }
    /**
        Since returns the time elapsed since t.
        It is shorthand for time.Now().Sub(t).
    **/
    static public function since(t:Time_):Duration {
        return stdgo._internal.time.Time.since(t);
    }
    /**
        Until returns the duration until t.
        It is shorthand for t.Sub(time.Now()).
    **/
    static public function until(t:Time_):Duration {
        return stdgo._internal.time.Time.until(t);
    }
    /**
        Now returns the current local time.
    **/
    static public function now():Time_ {
        return stdgo._internal.time.Time.now();
    }
    /**
        Unix returns the local Time corresponding to the given Unix time,
        sec seconds and nsec nanoseconds since January 1, 1970 UTC.
        It is valid to pass nsec outside the range [0, 999999999].
        Not all sec values have a corresponding time value. One such
        value is 1<<63-1 (the largest int64 value).
    **/
    static public function unix(sec:haxe.Int64, nsec:haxe.Int64):Time_ {
        return stdgo._internal.time.Time.unix(sec, nsec);
    }
    /**
        UnixMilli returns the local Time corresponding to the given Unix time,
        msec milliseconds since January 1, 1970 UTC.
    **/
    static public function unixMilli(msec:haxe.Int64):Time_ {
        return stdgo._internal.time.Time.unixMilli(msec);
    }
    /**
        UnixMicro returns the local Time corresponding to the given Unix time,
        usec microseconds since January 1, 1970 UTC.
    **/
    static public function unixMicro(usec:haxe.Int64):Time_ {
        return stdgo._internal.time.Time.unixMicro(usec);
    }
    /**
        Date returns the Time corresponding to
        
        	yyyy-mm-dd hh:mm:ss + nsec nanoseconds
        
        in the appropriate zone for that time in the given location.
        
        The month, day, hour, min, sec, and nsec values may be outside
        their usual ranges and will be normalized during the conversion.
        For example, October 32 converts to November 1.
        
        A daylight savings time transition skips or repeats times.
        For example, in the United States, March 13, 2011 2:15am never occurred,
        while November 6, 2011 1:15am occurred twice. In such cases, the
        choice of time zone, and therefore the time, is not well-defined.
        Date returns a time that is correct in one of the two zones involved
        in the transition, but it does not guarantee which.
        
        Date panics if loc is nil.
    **/
    static public function date(year:StdTypes.Int, month:Month, day:StdTypes.Int, hour:StdTypes.Int, min:StdTypes.Int, sec:StdTypes.Int, nsec:StdTypes.Int, loc:Location):Time_ {
        return stdgo._internal.time.Time.date(year, month, day, hour, min, sec, nsec, loc);
    }
    /**
        FixedZone returns a Location that always uses
        the given zone name and offset (seconds east of UTC).
    **/
    static public function fixedZone(name:String, offset:StdTypes.Int):Location {
        return stdgo._internal.time.Time.fixedZone(name, offset);
    }
    /**
        LoadLocation returns the Location with the given name.
        
        If the name is "" or "UTC", LoadLocation returns UTC.
        If the name is "Local", LoadLocation returns Local.
        
        Otherwise, the name is taken to be a location name corresponding to a file
        in the IANA Time Zone database, such as "America/New_York".
        
        LoadLocation looks for the IANA Time Zone database in the following
        locations in order:
        
          - the directory or uncompressed zip file named by the ZONEINFO environment variable
          - on a Unix system, the system standard installation location
          - $GOROOT/lib/time/zoneinfo.zip
          - the time/tzdata package, if it was imported
    **/
    static public function loadLocation(name:String):stdgo.Tuple<Location, stdgo.Error> {
        return {
            final obj = stdgo._internal.time.Time.loadLocation(name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        LoadLocationFromTZData returns a Location with the given name
        initialized from the IANA Time Zone database-formatted data.
        The data should be in the format of a standard IANA time zone file
        (for example, the content of /etc/localtime on Unix systems).
    **/
    static public function loadLocationFromTZData(name:String, data:Array<StdTypes.Int>):stdgo.Tuple<Location, stdgo.Error> {
        final data = ([for (i in data) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.time.Time.loadLocationFromTZData(name, data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
