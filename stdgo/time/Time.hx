package stdgo.time;
final ruleJulian : RuleKind = stdgo._internal.time.Time_ruleJulian.ruleJulian;
final ruleDOY : RuleKind = stdgo._internal.time.Time_ruleDOY.ruleDOY;
final ruleMonthWeekDay : RuleKind = stdgo._internal.time.Time_ruleMonthWeekDay.ruleMonthWeekDay;
final unixToInternal : haxe.Int64 = stdgo._internal.time.Time_unixToInternal.unixToInternal;
final layout : String = stdgo._internal.time.Time_layout.layout;
final aNSIC : String = stdgo._internal.time.Time_aNSIC.aNSIC;
final unixDate : String = stdgo._internal.time.Time_unixDate.unixDate;
final rubyDate : String = stdgo._internal.time.Time_rubyDate.rubyDate;
final rFC822 : String = stdgo._internal.time.Time_rFC822.rFC822;
final rFC822Z : String = stdgo._internal.time.Time_rFC822Z.rFC822Z;
final rFC850 : String = stdgo._internal.time.Time_rFC850.rFC850;
final rFC1123 : String = stdgo._internal.time.Time_rFC1123.rFC1123;
final rFC1123Z : String = stdgo._internal.time.Time_rFC1123Z.rFC1123Z;
final rFC3339 : String = stdgo._internal.time.Time_rFC3339.rFC3339;
final rFC3339Nano : String = stdgo._internal.time.Time_rFC3339Nano.rFC3339Nano;
final kitchen : String = stdgo._internal.time.Time_kitchen.kitchen;
final stamp : String = stdgo._internal.time.Time_stamp.stamp;
final stampMilli : String = stdgo._internal.time.Time_stampMilli.stampMilli;
final stampMicro : String = stdgo._internal.time.Time_stampMicro.stampMicro;
final stampNano : String = stdgo._internal.time.Time_stampNano.stampNano;
final dateTime : String = stdgo._internal.time.Time_dateTime.dateTime;
final dateOnly : String = stdgo._internal.time.Time_dateOnly.dateOnly;
final timeOnly : String = stdgo._internal.time.Time_timeOnly.timeOnly;
final january : Month = stdgo._internal.time.Time_january.january;
final february = stdgo._internal.time.Time_february.february;
final march = stdgo._internal.time.Time_march.march;
final april = stdgo._internal.time.Time_april.april;
final may = stdgo._internal.time.Time_may.may;
final june = stdgo._internal.time.Time_june.june;
final july = stdgo._internal.time.Time_july.july;
final august = stdgo._internal.time.Time_august.august;
final september = stdgo._internal.time.Time_september.september;
final october = stdgo._internal.time.Time_october.october;
final november = stdgo._internal.time.Time_november.november;
final december = stdgo._internal.time.Time_december.december;
final sunday : Weekday = stdgo._internal.time.Time_sunday.sunday;
final monday = stdgo._internal.time.Time_monday.monday;
final tuesday = stdgo._internal.time.Time_tuesday.tuesday;
final wednesday = stdgo._internal.time.Time_wednesday.wednesday;
final thursday = stdgo._internal.time.Time_thursday.thursday;
final friday = stdgo._internal.time.Time_friday.friday;
final saturday = stdgo._internal.time.Time_saturday.saturday;
final nanosecond : Duration = stdgo._internal.time.Time_nanosecond.nanosecond;
final microsecond : Duration = stdgo._internal.time.Time_microsecond.microsecond;
final millisecond : Duration = stdgo._internal.time.Time_millisecond.millisecond;
final second : Duration = stdgo._internal.time.Time_second.second;
final minute : Duration = stdgo._internal.time.Time_minute.minute;
final hour : Duration = stdgo._internal.time.Time_hour.hour;
var uTC(get, set) : Location;
private function get_uTC():Location return stdgo._internal.time.Time_uTC.uTC;
private function set_uTC(v:Location):Location {
        stdgo._internal.time.Time_uTC.uTC = v;
        return v;
    }
var local(get, set) : Location;
private function get_local():Location return stdgo._internal.time.Time_local.local;
private function set_local(v:Location):Location {
        stdgo._internal.time.Time_local.local = v;
        return v;
    }
var gorootZoneSource(get, set) : stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : Bool; };
private function get_gorootZoneSource():stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : Bool; } return _0 -> stdgo._internal.time.Time_gorootZoneSource.gorootZoneSource(_0);
private function set_gorootZoneSource(v:stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : Bool; }):stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : Bool; } {
        stdgo._internal.time.Time_gorootZoneSource.gorootZoneSource = v;
        return v;
    }
var parseTimeZone(get, set) : stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : Bool; };
private function get_parseTimeZone():stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : Bool; } return _0 -> stdgo._internal.time.Time_parseTimeZone.parseTimeZone(_0);
private function set_parseTimeZone(v:stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : Bool; }):stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : Bool; } {
        stdgo._internal.time.Time_parseTimeZone.parseTimeZone = v;
        return v;
    }
var setMono(get, set) : (stdgo.Ref<stdgo._internal.time.Time_Time.Time>, stdgo.GoInt64) -> Void;
private function get_setMono():(stdgo.Ref<stdgo._internal.time.Time_Time.Time>, stdgo.GoInt64) -> Void return (_0, _1) -> stdgo._internal.time.Time_setMono.setMono(_0, _1);
private function set_setMono(v:(stdgo.Ref<stdgo._internal.time.Time_Time.Time>, stdgo.GoInt64) -> Void):(stdgo.Ref<stdgo._internal.time.Time_Time.Time>, stdgo.GoInt64) -> Void {
        stdgo._internal.time.Time_setMono.setMono = v;
        return v;
    }
var getMono(get, set) : stdgo.Ref<stdgo._internal.time.Time_Time.Time> -> stdgo.GoInt64;
private function get_getMono():stdgo.Ref<stdgo._internal.time.Time_Time.Time> -> stdgo.GoInt64 return _0 -> stdgo._internal.time.Time_getMono.getMono(_0);
private function set_getMono(v:stdgo.Ref<stdgo._internal.time.Time_Time.Time> -> stdgo.GoInt64):stdgo.Ref<stdgo._internal.time.Time_Time.Time> -> stdgo.GoInt64 {
        stdgo._internal.time.Time_getMono.getMono = v;
        return v;
    }
var errLocation(get, set) : stdgo.Error;
private function get_errLocation():stdgo.Error return stdgo._internal.time.Time_errLocation.errLocation;
private function set_errLocation(v:stdgo.Error):stdgo.Error {
        stdgo._internal.time.Time_errLocation.errLocation = v;
        return v;
    }
var readFile(get, set) : stdgo.GoString -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
private function get_readFile():stdgo.GoString -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return _0 -> stdgo._internal.time.Time_readFile.readFile(_0);
private function set_readFile(v:stdgo.GoString -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; }):stdgo.GoString -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        stdgo._internal.time.Time_readFile.readFile = v;
        return v;
    }
var loadTzinfo(get, set) : (stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
private function get_loadTzinfo():(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return (_0, _1) -> stdgo._internal.time.Time_loadTzinfo.loadTzinfo(_0, _1);
private function set_loadTzinfo(v:(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; }):(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        stdgo._internal.time.Time_loadTzinfo.loadTzinfo = v;
        return v;
    }
var nextStdChunk(get, set) : stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; };
private function get_nextStdChunk():stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } return _0 -> stdgo._internal.time.Time_nextStdChunk.nextStdChunk(_0);
private function set_nextStdChunk(v:stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; }):stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } {
        stdgo._internal.time.Time_nextStdChunk.nextStdChunk = v;
        return v;
    }
var tzset(get, set) : (stdgo.GoString, stdgo.GoInt64, stdgo.GoInt64) -> { var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; };
private function get_tzset():(stdgo.GoString, stdgo.GoInt64, stdgo.GoInt64) -> { var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; } return (_0, _1, _2) -> stdgo._internal.time.Time_tzset.tzset(_0, _1, _2);
private function set_tzset(v:(stdgo.GoString, stdgo.GoInt64, stdgo.GoInt64) -> { var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; }):(stdgo.GoString, stdgo.GoInt64, stdgo.GoInt64) -> { var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; } {
        stdgo._internal.time.Time_tzset.tzset = v;
        return v;
    }
var tzsetName(get, set) : stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; };
private function get_tzsetName():stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } return _0 -> stdgo._internal.time.Time_tzsetName.tzsetName(_0);
private function set_tzsetName(v:stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; }):stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } {
        stdgo._internal.time.Time_tzsetName.tzsetName = v;
        return v;
    }
var tzsetOffset(get, set) : stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; };
private function get_tzsetOffset():stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } return _0 -> stdgo._internal.time.Time_tzsetOffset.tzsetOffset(_0);
private function set_tzsetOffset(v:stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; }):stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } {
        stdgo._internal.time.Time_tzsetOffset.tzsetOffset = v;
        return v;
    }
var stdChunkNames(get, set) : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>;
private function get_stdChunkNames():stdgo.GoMap<stdgo.GoInt, stdgo.GoString> return stdgo._internal.time.Time_stdChunkNames.stdChunkNames;
private function set_stdChunkNames(v:stdgo.GoMap<stdgo.GoInt, stdgo.GoString>):stdgo.GoMap<stdgo.GoInt, stdgo.GoString> {
        stdgo._internal.time.Time_stdChunkNames.stdChunkNames = v;
        return v;
    }
var quote(get, set) : stdgo.GoString -> stdgo.GoString;
private function get_quote():stdgo.GoString -> stdgo.GoString return _0 -> stdgo._internal.time.Time_quote.quote(_0);
private function set_quote(v:stdgo.GoString -> stdgo.GoString):stdgo.GoString -> stdgo.GoString {
        stdgo._internal.time.Time_quote.quote = v;
        return v;
    }
var appendInt(get, set) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt, stdgo.GoInt) -> stdgo.Slice<stdgo.GoUInt8>;
private function get_appendInt():(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt, stdgo.GoInt) -> stdgo.Slice<stdgo.GoUInt8> return (_0, _1, _2) -> stdgo._internal.time.Time_appendInt.appendInt([for (i in _0) i], _1, _2);
private function set_appendInt(v:(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt, stdgo.GoInt) -> stdgo.Slice<stdgo.GoUInt8>):(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt, stdgo.GoInt) -> stdgo.Slice<stdgo.GoUInt8> {
        stdgo._internal.time.Time_appendInt.appendInt = v;
        return v;
    }
var appendFormatAny(get, set) : (stdgo._internal.time.Time_Time.Time, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoString) -> stdgo.Slice<stdgo.GoUInt8>;
private function get_appendFormatAny():(stdgo._internal.time.Time_Time.Time, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoString) -> stdgo.Slice<stdgo.GoUInt8> return (_0, _1, _2) -> stdgo._internal.time.Time_appendFormatAny.appendFormatAny(_0, [for (i in _1) i], _2);
private function set_appendFormatAny(v:(stdgo._internal.time.Time_Time.Time, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoString) -> stdgo.Slice<stdgo.GoUInt8>):(stdgo._internal.time.Time_Time.Time, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoString) -> stdgo.Slice<stdgo.GoUInt8> {
        stdgo._internal.time.Time_appendFormatAny.appendFormatAny = v;
        return v;
    }
var appendFormatRFC3339(get, set) : (stdgo._internal.time.Time_Time.Time, stdgo.Slice<stdgo.GoUInt8>, Bool) -> stdgo.Slice<stdgo.GoUInt8>;
private function get_appendFormatRFC3339():(stdgo._internal.time.Time_Time.Time, stdgo.Slice<stdgo.GoUInt8>, Bool) -> stdgo.Slice<stdgo.GoUInt8> return (_0, _1, _2) -> stdgo._internal.time.Time_appendFormatRFC3339.appendFormatRFC3339(_0, [for (i in _1) i], _2);
private function set_appendFormatRFC3339(v:(stdgo._internal.time.Time_Time.Time, stdgo.Slice<stdgo.GoUInt8>, Bool) -> stdgo.Slice<stdgo.GoUInt8>):(stdgo._internal.time.Time_Time.Time, stdgo.Slice<stdgo.GoUInt8>, Bool) -> stdgo.Slice<stdgo.GoUInt8> {
        stdgo._internal.time.Time_appendFormatRFC3339.appendFormatRFC3339 = v;
        return v;
    }
var parseAny(get, set) : (stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.time.Time_Location.Location>, stdgo.Ref<stdgo._internal.time.Time_Location.Location>) -> { var _0 : stdgo._internal.time.Time_Time.Time; var _1 : stdgo.Error; };
private function get_parseAny():(stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.time.Time_Location.Location>, stdgo.Ref<stdgo._internal.time.Time_Location.Location>) -> { var _0 : stdgo._internal.time.Time_Time.Time; var _1 : stdgo.Error; } return (_0, _1, _2, _3) -> stdgo._internal.time.Time_parseAny.parseAny(_0, _1, _2, _3);
private function set_parseAny(v:(stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.time.Time_Location.Location>, stdgo.Ref<stdgo._internal.time.Time_Location.Location>) -> { var _0 : stdgo._internal.time.Time_Time.Time; var _1 : stdgo.Error; }):(stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.time.Time_Location.Location>, stdgo.Ref<stdgo._internal.time.Time_Location.Location>) -> { var _0 : stdgo._internal.time.Time_Time.Time; var _1 : stdgo.Error; } {
        stdgo._internal.time.Time_parseAny.parseAny = v;
        return v;
    }
var parseRFC3339(get, set) : (stdgo.GoString, stdgo.Ref<stdgo._internal.time.Time_Location.Location>) -> { var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; };
private function get_parseRFC3339():(stdgo.GoString, stdgo.Ref<stdgo._internal.time.Time_Location.Location>) -> { var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return (_0, _1) -> stdgo._internal.time.Time_parseRFC3339.parseRFC3339(_0, _1);
private function set_parseRFC3339(v:(stdgo.GoString, stdgo.Ref<stdgo._internal.time.Time_Location.Location>) -> { var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; }):(stdgo.GoString, stdgo.Ref<stdgo._internal.time.Time_Location.Location>) -> { var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } {
        stdgo._internal.time.Time_parseRFC3339.parseRFC3339 = v;
        return v;
    }
var disablePlatformSources(get, set) : () -> (() -> Void);
private function get_disablePlatformSources():() -> (() -> Void) return () -> stdgo._internal.time.Time_disablePlatformSources.disablePlatformSources();
private function set_disablePlatformSources(v:() -> (() -> Void)):() -> (() -> Void) {
        stdgo._internal.time.Time_disablePlatformSources.disablePlatformSources = v;
        return v;
    }
var interrupt(get, set) : () -> Void;
private function get_interrupt():() -> Void return () -> stdgo._internal.time.Time_interrupt.interrupt();
private function set_interrupt(v:() -> Void):() -> Void {
        stdgo._internal.time.Time_interrupt.interrupt = v;
        return v;
    }
var daysIn(get, set) : (stdgo._internal.time.Time_Month.Month, stdgo.GoInt) -> stdgo.GoInt;
private function get_daysIn():(stdgo._internal.time.Time_Month.Month, stdgo.GoInt) -> stdgo.GoInt return (_0, _1) -> stdgo._internal.time.Time_daysIn.daysIn(_0, _1);
private function set_daysIn(v:(stdgo._internal.time.Time_Month.Month, stdgo.GoInt) -> stdgo.GoInt):(stdgo._internal.time.Time_Month.Month, stdgo.GoInt) -> stdgo.GoInt {
        stdgo._internal.time.Time_daysIn.daysIn = v;
        return v;
    }
var minMonoTime(get, set) : Time_;
private function get_minMonoTime():Time_ return stdgo._internal.time.Time_minMonoTime.minMonoTime;
private function set_minMonoTime(v:Time_):Time_ {
        stdgo._internal.time.Time_minMonoTime.minMonoTime = v;
        return v;
    }
var maxMonoTime(get, set) : Time_;
private function get_maxMonoTime():Time_ return stdgo._internal.time.Time_maxMonoTime.maxMonoTime;
private function set_maxMonoTime(v:Time_):Time_ {
        stdgo._internal.time.Time_maxMonoTime.maxMonoTime = v;
        return v;
    }
var notMonoNegativeTime(get, set) : Time_;
private function get_notMonoNegativeTime():Time_ return stdgo._internal.time.Time_notMonoNegativeTime.notMonoNegativeTime;
private function set_notMonoNegativeTime(v:Time_):Time_ {
        stdgo._internal.time.Time_notMonoNegativeTime.notMonoNegativeTime = v;
        return v;
    }
@:structInit abstract Rule(stdgo._internal.time.Time_Rule.Rule) from stdgo._internal.time.Time_Rule.Rule to stdgo._internal.time.Time_Rule.Rule {
    public var kind(get, set) : RuleKind;
    function get_kind():RuleKind return this.kind;
    function set_kind(v:RuleKind):RuleKind {
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
    public function new(?kind:RuleKind, ?day:StdTypes.Int, ?week:StdTypes.Int, ?mon:StdTypes.Int, ?time:StdTypes.Int) this = new stdgo._internal.time.Time_Rule.Rule(kind, day, week, mon, time);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.time.Time.ParseError_static_extension) abstract ParseError(stdgo._internal.time.Time_ParseError.ParseError) from stdgo._internal.time.Time_ParseError.ParseError to stdgo._internal.time.Time_ParseError.ParseError {
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
    public function new(?layout:String, ?value:String, ?layoutElem:String, ?valueElem:String, ?message:String) this = new stdgo._internal.time.Time_ParseError.ParseError(layout, value, layoutElem, valueElem, message);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_runtimeTimer(stdgo._internal.time.Time_T_runtimeTimer.T_runtimeTimer) from stdgo._internal.time.Time_T_runtimeTimer.T_runtimeTimer to stdgo._internal.time.Time_T_runtimeTimer.T_runtimeTimer {
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
    public function new(?_pp:stdgo.GoUIntptr, ?_when:haxe.Int64, ?_period:haxe.Int64, ?_f:(stdgo.AnyInterface, stdgo.GoUIntptr) -> Void, ?_arg:stdgo.AnyInterface, ?_seq:stdgo.GoUIntptr, ?_nextwhen:haxe.Int64, ?_status:std.UInt) this = new stdgo._internal.time.Time_T_runtimeTimer.T_runtimeTimer(_pp, _when, _period, _f, _arg, _seq, _nextwhen, _status);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.time.Time.Timer_static_extension) abstract Timer(stdgo._internal.time.Time_Timer.Timer) from stdgo._internal.time.Time_Timer.Timer to stdgo._internal.time.Time_Timer.Timer {
    public var c(get, set) : stdgo.Chan<stdgo._internal.time.Time_Time.Time>;
    function get_c():stdgo.Chan<stdgo._internal.time.Time_Time.Time> return this.c;
    function set_c(v:stdgo.Chan<stdgo._internal.time.Time_Time.Time>):stdgo.Chan<stdgo._internal.time.Time_Time.Time> {
        this.c = v;
        return v;
    }
    public var _r(get, set) : T_runtimeTimer;
    function get__r():T_runtimeTimer return this._r;
    function set__r(v:T_runtimeTimer):T_runtimeTimer {
        this._r = v;
        return v;
    }
    public function new(?c:stdgo.Chan<stdgo._internal.time.Time_Time.Time>, ?_r:T_runtimeTimer) this = new stdgo._internal.time.Time_Timer.Timer(c, _r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.time.Time.Ticker_static_extension) abstract Ticker(stdgo._internal.time.Time_Ticker.Ticker) from stdgo._internal.time.Time_Ticker.Ticker to stdgo._internal.time.Time_Ticker.Ticker {
    public var c(get, set) : stdgo.Chan<stdgo._internal.time.Time_Time.Time>;
    function get_c():stdgo.Chan<stdgo._internal.time.Time_Time.Time> return this.c;
    function set_c(v:stdgo.Chan<stdgo._internal.time.Time_Time.Time>):stdgo.Chan<stdgo._internal.time.Time_Time.Time> {
        this.c = v;
        return v;
    }
    public var _r(get, set) : T_runtimeTimer;
    function get__r():T_runtimeTimer return this._r;
    function set__r(v:T_runtimeTimer):T_runtimeTimer {
        this._r = v;
        return v;
    }
    public function new(?c:stdgo.Chan<stdgo._internal.time.Time_Time.Time>, ?_r:T_runtimeTimer) this = new stdgo._internal.time.Time_Ticker.Ticker(c, _r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.time.Time.Time_static_extension) abstract Time_(stdgo._internal.time.Time_Time.Time) from stdgo._internal.time.Time_Time.Time to stdgo._internal.time.Time_Time.Time {
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
    public var _loc(get, set) : Location;
    function get__loc():Location return this._loc;
    function set__loc(v:Location):Location {
        this._loc = v;
        return v;
    }
    public function new(?_wall:haxe.UInt64, ?_ext:haxe.Int64, ?_loc:Location) this = new stdgo._internal.time.Time_Time.Time(_wall, _ext, _loc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.time.Time.Location_static_extension) abstract Location(stdgo._internal.time.Time_Location.Location) from stdgo._internal.time.Time_Location.Location to stdgo._internal.time.Time_Location.Location {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var _zone(get, set) : Array<T_zone>;
    function get__zone():Array<T_zone> return [for (i in this._zone) i];
    function set__zone(v:Array<T_zone>):Array<T_zone> {
        this._zone = ([for (i in v) i] : stdgo.Slice<stdgo._internal.time.Time_T_zone.T_zone>);
        return v;
    }
    public var _tx(get, set) : Array<T_zoneTrans>;
    function get__tx():Array<T_zoneTrans> return [for (i in this._tx) i];
    function set__tx(v:Array<T_zoneTrans>):Array<T_zoneTrans> {
        this._tx = ([for (i in v) i] : stdgo.Slice<stdgo._internal.time.Time_T_zoneTrans.T_zoneTrans>);
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
    public var _cacheZone(get, set) : T_zone;
    function get__cacheZone():T_zone return this._cacheZone;
    function set__cacheZone(v:T_zone):T_zone {
        this._cacheZone = v;
        return v;
    }
    public function new(?_name:String, ?_zone:Array<T_zone>, ?_tx:Array<T_zoneTrans>, ?_extend:String, ?_cacheStart:haxe.Int64, ?_cacheEnd:haxe.Int64, ?_cacheZone:T_zone) this = new stdgo._internal.time.Time_Location.Location(_name, ([for (i in _zone) i] : stdgo.Slice<stdgo._internal.time.Time_T_zone.T_zone>), ([for (i in _tx) i] : stdgo.Slice<stdgo._internal.time.Time_T_zoneTrans.T_zoneTrans>), _extend, _cacheStart, _cacheEnd, _cacheZone);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_zone(stdgo._internal.time.Time_T_zone.T_zone) from stdgo._internal.time.Time_T_zone.T_zone to stdgo._internal.time.Time_T_zone.T_zone {
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
    public function new(?_name:String, ?_offset:StdTypes.Int, ?_isDST:Bool) this = new stdgo._internal.time.Time_T_zone.T_zone(_name, _offset, _isDST);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_zoneTrans(stdgo._internal.time.Time_T_zoneTrans.T_zoneTrans) from stdgo._internal.time.Time_T_zoneTrans.T_zoneTrans to stdgo._internal.time.Time_T_zoneTrans.T_zoneTrans {
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
    public function new(?_when:haxe.Int64, ?_index:std.UInt, ?_isstd:Bool, ?_isutc:Bool) this = new stdgo._internal.time.Time_T_zoneTrans.T_zoneTrans(_when, _index, _isstd, _isutc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_rule(stdgo._internal.time.Time_T_rule.T_rule) from stdgo._internal.time.Time_T_rule.T_rule to stdgo._internal.time.Time_T_rule.T_rule {
    public var _kind(get, set) : T_ruleKind;
    function get__kind():T_ruleKind return this._kind;
    function set__kind(v:T_ruleKind):T_ruleKind {
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
    public function new(?_kind:T_ruleKind, ?_day:StdTypes.Int, ?_week:StdTypes.Int, ?_mon:StdTypes.Int, ?_time:StdTypes.Int) this = new stdgo._internal.time.Time_T_rule.T_rule(_kind, _day, _week, _mon, _time);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.time.Time.T_dataIO_static_extension) abstract T_dataIO(stdgo._internal.time.Time_T_dataIO.T_dataIO) from stdgo._internal.time.Time_T_dataIO.T_dataIO to stdgo._internal.time.Time_T_dataIO.T_dataIO {
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
    public function new(?_p:Array<std.UInt>, ?_error:Bool) this = new stdgo._internal.time.Time_T_dataIO.T_dataIO(([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>), _error);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef RuleKind = stdgo._internal.time.Time_RuleKind.RuleKind;
typedef Month = stdgo._internal.time.Time_Month.Month;
typedef Weekday = stdgo._internal.time.Time_Weekday.Weekday;
typedef Duration = stdgo._internal.time.Time_Duration.Duration;
typedef T_ruleKind = stdgo._internal.time.Time_T_ruleKind.T_ruleKind;
typedef T_fileSizeError = stdgo._internal.time.Time_T_fileSizeError.T_fileSizeError;
typedef ParseErrorPointer = stdgo._internal.time.Time_ParseErrorPointer.ParseErrorPointer;
class ParseError_static_extension {
    static public function error(_e:ParseError):String {
        return stdgo._internal.time.Time_ParseError_static_extension.ParseError_static_extension.error(_e);
    }
}
typedef TimerPointer = stdgo._internal.time.Time_TimerPointer.TimerPointer;
class Timer_static_extension {
    static public function reset(_t:Timer, _d:Duration):Bool {
        return stdgo._internal.time.Time_Timer_static_extension.Timer_static_extension.reset(_t, _d);
    }
    static public function stop(_t:Timer):Bool {
        return stdgo._internal.time.Time_Timer_static_extension.Timer_static_extension.stop(_t);
    }
}
typedef TickerPointer = stdgo._internal.time.Time_TickerPointer.TickerPointer;
class Ticker_static_extension {
    static public function reset(_t:Ticker, _d:Duration):Void {
        stdgo._internal.time.Time_Ticker_static_extension.Ticker_static_extension.reset(_t, _d);
    }
    static public function stop(_t:Ticker):Void {
        stdgo._internal.time.Time_Ticker_static_extension.Ticker_static_extension.stop(_t);
    }
}
typedef TimePointer = stdgo._internal.time.Time_TimePointer.TimePointer;
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
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.unmarshalText(_t, _data);
    }
    static public function marshalText(_t:Time_):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.time.Time_Time_static_extension.Time_static_extension.marshalText(_t);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function unmarshalJSON(_t:Time_, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.unmarshalJSON(_t, _data);
    }
    static public function marshalJSON(_t:Time_):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.time.Time_Time_static_extension.Time_static_extension.marshalJSON(_t);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function gobDecode(_t:Time_, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.gobDecode(_t, _data);
    }
    static public function gobEncode(_t:Time_):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.time.Time_Time_static_extension.Time_static_extension.gobEncode(_t);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function unmarshalBinary(_t:Time_, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
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
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension._mono(_t);
    }
    static public function _setMono(_t:Time_, _m:haxe.Int64):Void {
        stdgo._internal.time.Time_Time_static_extension.Time_static_extension._setMono(_t, _m);
    }
    static public function _stripMono(_t:Time_):Void {
        stdgo._internal.time.Time_Time_static_extension.Time_static_extension._stripMono(_t);
    }
    static public function _setLoc(_t:Time_, _loc:Location):Void {
        stdgo._internal.time.Time_Time_static_extension.Time_static_extension._setLoc(_t, _loc);
    }
    static public function _addSec(_t:Time_, _d:haxe.Int64):Void {
        stdgo._internal.time.Time_Time_static_extension.Time_static_extension._addSec(_t, _d);
    }
    static public function _unixSec(_t:Time_):haxe.Int64 {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension._unixSec(_t);
    }
    static public function _sec(_t:Time_):haxe.Int64 {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension._sec(_t);
    }
    static public function _nsec(_t:Time_):StdTypes.Int {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension._nsec(_t);
    }
    static public function _appendStrictRFC3339(_t:Time_, _b:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.time.Time_Time_static_extension.Time_static_extension._appendStrictRFC3339(_t, _b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _appendFormatRFC3339(_t:Time_, _b:Array<std.UInt>, _nanos:Bool):Array<std.UInt> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.time.Time_Time_static_extension.Time_static_extension._appendFormatRFC3339(_t, _b, _nanos)) i];
    }
    static public function _appendFormat(_t:Time_, _b:Array<std.UInt>, _layout:String):Array<std.UInt> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.time.Time_Time_static_extension.Time_static_extension._appendFormat(_t, _b, _layout)) i];
    }
    static public function appendFormat(_t:Time_, _b:Array<std.UInt>, _layout:String):Array<std.UInt> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.time.Time_Time_static_extension.Time_static_extension.appendFormat(_t, _b, _layout)) i];
    }
    static public function format(_t:Time_, _layout:String):String {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.format(_t, _layout);
    }
    static public function goString(_t:Time_):String {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.goString(_t);
    }
    static public function string(_t:Time_):String {
        return stdgo._internal.time.Time_Time_static_extension.Time_static_extension.string(_t);
    }
}
typedef LocationPointer = stdgo._internal.time.Time_LocationPointer.LocationPointer;
class Location_static_extension {
    static public function _lookupName(_l:Location, _name:String, _unix:haxe.Int64):stdgo.Tuple<StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.time.Time_Location_static_extension.Location_static_extension._lookupName(_l, _name, _unix);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _firstZoneUsed(_l:Location):Bool {
        return stdgo._internal.time.Time_Location_static_extension.Location_static_extension._firstZoneUsed(_l);
    }
    static public function _lookupFirstZone(_l:Location):StdTypes.Int {
        return stdgo._internal.time.Time_Location_static_extension.Location_static_extension._lookupFirstZone(_l);
    }
    static public function _lookup(_l:Location, _sec:haxe.Int64):stdgo.Tuple.Tuple5<String, StdTypes.Int, haxe.Int64, haxe.Int64, Bool> {
        return {
            final obj = stdgo._internal.time.Time_Location_static_extension.Location_static_extension._lookup(_l, _sec);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    static public function string(_l:Location):String {
        return stdgo._internal.time.Time_Location_static_extension.Location_static_extension.string(_l);
    }
    static public function _get(_l:Location):Location {
        return stdgo._internal.time.Time_Location_static_extension.Location_static_extension._get(_l);
    }
}
typedef T_dataIOPointer = stdgo._internal.time.Time_T_dataIOPointer.T_dataIOPointer;
class T_dataIO_static_extension {
    static public function _rest(_d:T_dataIO):Array<std.UInt> {
        return [for (i in stdgo._internal.time.Time_T_dataIO_static_extension.T_dataIO_static_extension._rest(_d)) i];
    }
    static public function _byte(_d:T_dataIO):stdgo.Tuple<std.UInt, Bool> {
        return {
            final obj = stdgo._internal.time.Time_T_dataIO_static_extension.T_dataIO_static_extension._byte(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _big8(_d:T_dataIO):stdgo.Tuple<haxe.UInt64, Bool> {
        return {
            final obj = stdgo._internal.time.Time_T_dataIO_static_extension.T_dataIO_static_extension._big8(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _big4(_d:T_dataIO):stdgo.Tuple<std.UInt, Bool> {
        return {
            final obj = stdgo._internal.time.Time_T_dataIO_static_extension.T_dataIO_static_extension._big4(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _read(_d:T_dataIO, _n:StdTypes.Int):Array<std.UInt> {
        return [for (i in stdgo._internal.time.Time_T_dataIO_static_extension.T_dataIO_static_extension._read(_d, _n)) i];
    }
}
typedef MonthPointer = stdgo._internal.time.Time_MonthPointer.MonthPointer;
class Month_static_extension {
    static public function string(_m:Month):String {
        return stdgo._internal.time.Time_Month_static_extension.Month_static_extension.string(_m);
    }
}
typedef WeekdayPointer = stdgo._internal.time.Time_WeekdayPointer.WeekdayPointer;
class Weekday_static_extension {
    static public function string(_d:Weekday):String {
        return stdgo._internal.time.Time_Weekday_static_extension.Weekday_static_extension.string(_d);
    }
}
typedef DurationPointer = stdgo._internal.time.Time_DurationPointer.DurationPointer;
class Duration_static_extension {
    static public function abs(_d:Duration):Duration {
        return stdgo._internal.time.Time_Duration_static_extension.Duration_static_extension.abs(_d);
    }
    static public function round(_d:Duration, _m:Duration):Duration {
        return stdgo._internal.time.Time_Duration_static_extension.Duration_static_extension.round(_d, _m);
    }
    static public function truncate(_d:Duration, _m:Duration):Duration {
        return stdgo._internal.time.Time_Duration_static_extension.Duration_static_extension.truncate(_d, _m);
    }
    static public function hours(_d:Duration):StdTypes.Float {
        return stdgo._internal.time.Time_Duration_static_extension.Duration_static_extension.hours(_d);
    }
    static public function minutes(_d:Duration):StdTypes.Float {
        return stdgo._internal.time.Time_Duration_static_extension.Duration_static_extension.minutes(_d);
    }
    static public function seconds(_d:Duration):StdTypes.Float {
        return stdgo._internal.time.Time_Duration_static_extension.Duration_static_extension.seconds(_d);
    }
    static public function milliseconds(_d:Duration):haxe.Int64 {
        return stdgo._internal.time.Time_Duration_static_extension.Duration_static_extension.milliseconds(_d);
    }
    static public function microseconds(_d:Duration):haxe.Int64 {
        return stdgo._internal.time.Time_Duration_static_extension.Duration_static_extension.microseconds(_d);
    }
    static public function nanoseconds(_d:Duration):haxe.Int64 {
        return stdgo._internal.time.Time_Duration_static_extension.Duration_static_extension.nanoseconds(_d);
    }
    static public function string(_d:Duration):String {
        return stdgo._internal.time.Time_Duration_static_extension.Duration_static_extension.string(_d);
    }
}
typedef T_fileSizeErrorPointer = stdgo._internal.time.Time_T_fileSizeErrorPointer.T_fileSizeErrorPointer;
class T_fileSizeError_static_extension {
    static public function error(_f:T_fileSizeError):String {
        return stdgo._internal.time.Time_T_fileSizeError_static_extension.T_fileSizeError_static_extension.error(_f);
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
        stdgo._internal.time.Time_resetLocalOnceForTest.resetLocalOnceForTest();
    }
    static public function forceUSPacificForTesting():Void {
        stdgo._internal.time.Time_forceUSPacificForTesting.forceUSPacificForTesting();
    }
    static public function zoneinfoForTesting():stdgo.Pointer<String> {
        return stdgo._internal.time.Time_zoneinfoForTesting.zoneinfoForTesting();
    }
    static public function resetZoneinfoForTesting():Void {
        stdgo._internal.time.Time_resetZoneinfoForTesting.resetZoneinfoForTesting();
    }
    static public function loadFromEmbeddedTZData(_zone:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.time.Time_loadFromEmbeddedTZData.loadFromEmbeddedTZData(_zone);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function tzsetRule(_s:String):stdgo.Tuple.Tuple3<Rule, String, Bool> {
        return {
            final obj = stdgo._internal.time.Time_tzsetRule.tzsetRule(_s);
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
    static public function parse(_layout:String, _value:String):stdgo.Tuple<Time_, stdgo.Error> {
        return {
            final obj = stdgo._internal.time.Time_parse.parse(_layout, _value);
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
    static public function parseInLocation(_layout:String, _value:String, _loc:Location):stdgo.Tuple<Time_, stdgo.Error> {
        return {
            final obj = stdgo._internal.time.Time_parseInLocation.parseInLocation(_layout, _value, _loc);
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
    static public function parseDuration(_s:String):stdgo.Tuple<Duration, stdgo.Error> {
        return {
            final obj = stdgo._internal.time.Time_parseDuration.parseDuration(_s);
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
        stdgo._internal.time.Time_checkRuntimeTimerPeriodOverflow.checkRuntimeTimerPeriodOverflow();
    }
    /**
        Sleep pauses the current goroutine for at least the duration d.
        A negative or zero duration causes Sleep to return immediately.
    **/
    static public function sleep(_d:Duration):Void {
        stdgo._internal.time.Time_sleep.sleep(_d);
    }
    /**
        NewTimer creates a new Timer that will send
        the current time on its channel after at least duration d.
    **/
    static public function newTimer(_d:Duration):Timer {
        return stdgo._internal.time.Time_newTimer.newTimer(_d);
    }
    /**
        After waits for the duration to elapse and then sends the current time
        on the returned channel.
        It is equivalent to NewTimer(d).C.
        The underlying Timer is not recovered by the garbage collector
        until the timer fires. If efficiency is a concern, use NewTimer
        instead and call Timer.Stop if the timer is no longer needed.
    **/
    static public function after(_d:Duration):stdgo.Chan<stdgo._internal.time.Time_Time.Time> {
        return stdgo._internal.time.Time_after.after(_d);
    }
    /**
        AfterFunc waits for the duration to elapse and then calls f
        in its own goroutine. It returns a Timer that can
        be used to cancel the call using its Stop method.
    **/
    static public function afterFunc(_d:Duration, _f:() -> Void):Timer {
        final _f = _f;
        return stdgo._internal.time.Time_afterFunc.afterFunc(_d, _f);
    }
    /**
        NewTicker returns a new Ticker containing a channel that will send
        the current time on the channel after each tick. The period of the
        ticks is specified by the duration argument. The ticker will adjust
        the time interval or drop ticks to make up for slow receivers.
        The duration d must be greater than zero; if not, NewTicker will
        panic. Stop the ticker to release associated resources.
    **/
    static public function newTicker(_d:Duration):Ticker {
        return stdgo._internal.time.Time_newTicker.newTicker(_d);
    }
    /**
        Tick is a convenience wrapper for NewTicker providing access to the ticking
        channel only. While Tick is useful for clients that have no need to shut down
        the Ticker, be aware that without a way to shut it down the underlying
        Ticker cannot be recovered by the garbage collector; it "leaks".
        Unlike NewTicker, Tick will return nil if d <= 0.
    **/
    static public function tick(_d:Duration):stdgo.Chan<stdgo._internal.time.Time_Time.Time> {
        return stdgo._internal.time.Time_tick.tick(_d);
    }
    /**
        Since returns the time elapsed since t.
        It is shorthand for time.Now().Sub(t).
    **/
    static public function since(_t:Time_):Duration {
        return stdgo._internal.time.Time_since.since(_t);
    }
    /**
        Until returns the duration until t.
        It is shorthand for t.Sub(time.Now()).
    **/
    static public function until(_t:Time_):Duration {
        return stdgo._internal.time.Time_until.until(_t);
    }
    /**
        Now returns the current local time.
    **/
    static public function now():Time_ {
        return stdgo._internal.time.Time_now.now();
    }
    /**
        Unix returns the local Time corresponding to the given Unix time,
        sec seconds and nsec nanoseconds since January 1, 1970 UTC.
        It is valid to pass nsec outside the range [0, 999999999].
        Not all sec values have a corresponding time value. One such
        value is 1<<63-1 (the largest int64 value).
    **/
    static public function unix(_sec:haxe.Int64, _nsec:haxe.Int64):Time_ {
        return stdgo._internal.time.Time_unix.unix(_sec, _nsec);
    }
    /**
        UnixMilli returns the local Time corresponding to the given Unix time,
        msec milliseconds since January 1, 1970 UTC.
    **/
    static public function unixMilli(_msec:haxe.Int64):Time_ {
        return stdgo._internal.time.Time_unixMilli.unixMilli(_msec);
    }
    /**
        UnixMicro returns the local Time corresponding to the given Unix time,
        usec microseconds since January 1, 1970 UTC.
    **/
    static public function unixMicro(_usec:haxe.Int64):Time_ {
        return stdgo._internal.time.Time_unixMicro.unixMicro(_usec);
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
    static public function date(_year:StdTypes.Int, _month:Month, _day:StdTypes.Int, _hour:StdTypes.Int, _min:StdTypes.Int, _sec:StdTypes.Int, _nsec:StdTypes.Int, _loc:Location):Time_ {
        return stdgo._internal.time.Time_date.date(_year, _month, _day, _hour, _min, _sec, _nsec, _loc);
    }
    /**
        FixedZone returns a Location that always uses
        the given zone name and offset (seconds east of UTC).
    **/
    static public function fixedZone(_name:String, _offset:StdTypes.Int):Location {
        return stdgo._internal.time.Time_fixedZone.fixedZone(_name, _offset);
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
    static public function loadLocation(_name:String):stdgo.Tuple<Location, stdgo.Error> {
        return {
            final obj = stdgo._internal.time.Time_loadLocation.loadLocation(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        LoadLocationFromTZData returns a Location with the given name
        initialized from the IANA Time Zone database-formatted data.
        The data should be in the format of a standard IANA time zone file
        (for example, the content of /etc/localtime on Unix systems).
    **/
    static public function loadLocationFromTZData(_name:String, _data:Array<std.UInt>):stdgo.Tuple<Location, stdgo.Error> {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.time.Time_loadLocationFromTZData.loadLocationFromTZData(_name, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
