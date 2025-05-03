package stdgo.time;
var ruleJulian : RuleKind = 0i64;
var ruleDOY : RuleKind = 1i64;
var ruleMonthWeekDay : RuleKind = 2i64;
var unixToInternal : stdgo.GoInt64 = 62135596800i64;
var layout : stdgo.GoString = ("01/02 03:04:05PM \'06 -0700" : stdgo.GoString);
var aNSIC : stdgo.GoString = ("Mon Jan _2 15:04:05 2006" : stdgo.GoString);
var unixDate : stdgo.GoString = ("Mon Jan _2 15:04:05 MST 2006" : stdgo.GoString);
var rubyDate : stdgo.GoString = ("Mon Jan 02 15:04:05 -0700 2006" : stdgo.GoString);
var rFC822 : stdgo.GoString = ("02 Jan 06 15:04 MST" : stdgo.GoString);
var rFC822Z : stdgo.GoString = ("02 Jan 06 15:04 -0700" : stdgo.GoString);
var rFC850 : stdgo.GoString = ("Monday, 02-Jan-06 15:04:05 MST" : stdgo.GoString);
var rFC1123 : stdgo.GoString = ("Mon, 02 Jan 2006 15:04:05 MST" : stdgo.GoString);
var rFC1123Z : stdgo.GoString = ("Mon, 02 Jan 2006 15:04:05 -0700" : stdgo.GoString);
var rFC3339 : stdgo.GoString = ("2006-01-02T15:04:05Z07:00" : stdgo.GoString);
var rFC3339Nano : stdgo.GoString = ("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString);
var kitchen : stdgo.GoString = ("3:04PM" : stdgo.GoString);
var stamp : stdgo.GoString = ("Jan _2 15:04:05" : stdgo.GoString);
var stampMilli : stdgo.GoString = ("Jan _2 15:04:05.000" : stdgo.GoString);
var stampMicro : stdgo.GoString = ("Jan _2 15:04:05.000000" : stdgo.GoString);
var stampNano : stdgo.GoString = ("Jan _2 15:04:05.000000000" : stdgo.GoString);
var dateTime : stdgo.GoString = ("2006-01-02 15:04:05" : stdgo.GoString);
var dateOnly : stdgo.GoString = ("2006-01-02" : stdgo.GoString);
var timeOnly : stdgo.GoString = ("15:04:05" : stdgo.GoString);
var january : Month = 1i64;
var february : Month = 2i64;
var march : Month = 3i64;
var april : Month = 4i64;
var may : Month = 5i64;
var june : Month = 6i64;
var july : Month = 7i64;
var august : Month = 8i64;
var september : Month = 9i64;
var october : Month = 10i64;
var november : Month = 11i64;
var december : Month = 12i64;
var sunday : Weekday = 0i64;
var monday : Weekday = 1i64;
var tuesday : Weekday = 2i64;
var wednesday : Weekday = 3i64;
var thursday : Weekday = 4i64;
var friday : Weekday = 5i64;
var saturday : Weekday = 6i64;
var nanosecond : Duration = 1i64;
var microsecond : Duration = 1000i64;
var millisecond : Duration = 1000000i64;
var second : Duration = 1000000000i64;
var minute : Duration = 60000000000i64;
var hour : Duration = 3600000000000i64;
var uTC(get, set) : stdgo.Ref<stdgo._internal.time.Time_location.Location>;
private function get_uTC():stdgo.Ref<stdgo._internal.time.Time_location.Location> return stdgo._internal.time.Time_utc.uTC;
private function set_uTC(v:stdgo.Ref<stdgo._internal.time.Time_location.Location>):stdgo.Ref<stdgo._internal.time.Time_location.Location> {
        stdgo._internal.time.Time_utc.uTC = v;
        return v;
    }
var local(get, set) : stdgo.Ref<stdgo._internal.time.Time_location.Location>;
private function get_local():stdgo.Ref<stdgo._internal.time.Time_location.Location> return stdgo._internal.time.Time_local.local;
private function set_local(v:stdgo.Ref<stdgo._internal.time.Time_location.Location>):stdgo.Ref<stdgo._internal.time.Time_location.Location> {
        stdgo._internal.time.Time_local.local = v;
        return v;
    }
var gorootZoneSource(get, set) : stdgo.GoString -> stdgo.Tuple<stdgo.GoString, Bool>;
private function get_gorootZoneSource():stdgo.GoString -> stdgo.Tuple<stdgo.GoString, Bool> return stdgo._internal.time.Time_gorootzonesource.gorootZoneSource;
private function set_gorootZoneSource(v:stdgo.GoString -> stdgo.Tuple<stdgo.GoString, Bool>):stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : Bool; } {
        stdgo._internal.time.Time_gorootzonesource.gorootZoneSource = v;
        return v;
    }
var parseTimeZone(get, set) : stdgo.GoString -> stdgo.Tuple<stdgo.GoInt, Bool>;
private function get_parseTimeZone():stdgo.GoString -> stdgo.Tuple<stdgo.GoInt, Bool> return stdgo._internal.time.Time_parsetimezone.parseTimeZone;
private function set_parseTimeZone(v:stdgo.GoString -> stdgo.Tuple<stdgo.GoInt, Bool>):stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : Bool; } {
        stdgo._internal.time.Time_parsetimezone.parseTimeZone = v;
        return v;
    }
var setMono(get, set) : (stdgo.Ref<stdgo._internal.time.Time_time.Time>, stdgo.GoInt64) -> Void;
private function get_setMono():(stdgo.Ref<stdgo._internal.time.Time_time.Time>, stdgo.GoInt64) -> Void return stdgo._internal.time.Time_setmono.setMono;
private function set_setMono(v:(stdgo.Ref<stdgo._internal.time.Time_time.Time>, stdgo.GoInt64) -> Void):(stdgo.Ref<stdgo._internal.time.Time_time.Time>, stdgo.GoInt64) -> Void {
        stdgo._internal.time.Time_setmono.setMono = v;
        return v;
    }
var getMono(get, set) : stdgo.Ref<stdgo._internal.time.Time_time.Time> -> stdgo.GoInt64;
private function get_getMono():stdgo.Ref<stdgo._internal.time.Time_time.Time> -> stdgo.GoInt64 return stdgo._internal.time.Time_getmono.getMono;
private function set_getMono(v:stdgo.Ref<stdgo._internal.time.Time_time.Time> -> stdgo.GoInt64):stdgo.Ref<stdgo._internal.time.Time_time.Time> -> stdgo.GoInt64 {
        stdgo._internal.time.Time_getmono.getMono = v;
        return v;
    }
var errLocation(get, set) : stdgo.Error;
private function get_errLocation():stdgo.Error return stdgo._internal.time.Time_errlocation.errLocation;
private function set_errLocation(v:stdgo.Error):stdgo.Error {
        stdgo._internal.time.Time_errlocation.errLocation = v;
        return v;
    }
var readFile(get, set) : stdgo.GoString -> stdgo.Tuple<stdgo.Slice<stdgo.GoUInt8>, stdgo.Error>;
private function get_readFile():stdgo.GoString -> stdgo.Tuple<stdgo.Slice<stdgo.GoUInt8>, stdgo.Error> return stdgo._internal.time.Time_readfile.readFile;
private function set_readFile(v:stdgo.GoString -> stdgo.Tuple<stdgo.Slice<stdgo.GoUInt8>, stdgo.Error>):stdgo.GoString -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        stdgo._internal.time.Time_readfile.readFile = v;
        return v;
    }
var loadTzinfo(get, set) : (stdgo.GoString, stdgo.GoString) -> stdgo.Tuple<stdgo.Slice<stdgo.GoUInt8>, stdgo.Error>;
private function get_loadTzinfo():(stdgo.GoString, stdgo.GoString) -> stdgo.Tuple<stdgo.Slice<stdgo.GoUInt8>, stdgo.Error> return stdgo._internal.time.Time_loadtzinfo.loadTzinfo;
private function set_loadTzinfo(v:(stdgo.GoString, stdgo.GoString) -> stdgo.Tuple<stdgo.Slice<stdgo.GoUInt8>, stdgo.Error>):(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        stdgo._internal.time.Time_loadtzinfo.loadTzinfo = v;
        return v;
    }
var nextStdChunk(get, set) : stdgo.GoString -> stdgo.Tuple.Tuple3<stdgo.GoString, stdgo.GoInt, stdgo.GoString>;
private function get_nextStdChunk():stdgo.GoString -> stdgo.Tuple.Tuple3<stdgo.GoString, stdgo.GoInt, stdgo.GoString> return stdgo._internal.time.Time_nextstdchunk.nextStdChunk;
private function set_nextStdChunk(v:stdgo.GoString -> stdgo.Tuple.Tuple3<stdgo.GoString, stdgo.GoInt, stdgo.GoString>):stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } {
        stdgo._internal.time.Time_nextstdchunk.nextStdChunk = v;
        return v;
    }
var tzset(get, set) : (stdgo.GoString, stdgo.GoInt64, stdgo.GoInt64) -> stdgo.Tuple.Tuple6<stdgo.GoString, stdgo.GoInt, stdgo.GoInt64, stdgo.GoInt64, Bool, Bool>;
private function get_tzset():(stdgo.GoString, stdgo.GoInt64, stdgo.GoInt64) -> stdgo.Tuple.Tuple6<stdgo.GoString, stdgo.GoInt, stdgo.GoInt64, stdgo.GoInt64, Bool, Bool> return stdgo._internal.time.Time_tzset.tzset;
private function set_tzset(v:(stdgo.GoString, stdgo.GoInt64, stdgo.GoInt64) -> stdgo.Tuple.Tuple6<stdgo.GoString, stdgo.GoInt, stdgo.GoInt64, stdgo.GoInt64, Bool, Bool>):(stdgo.GoString, stdgo.GoInt64, stdgo.GoInt64) -> { var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; } {
        stdgo._internal.time.Time_tzset.tzset = v;
        return v;
    }
var tzsetName(get, set) : stdgo.GoString -> stdgo.Tuple.Tuple3<stdgo.GoString, stdgo.GoString, Bool>;
private function get_tzsetName():stdgo.GoString -> stdgo.Tuple.Tuple3<stdgo.GoString, stdgo.GoString, Bool> return stdgo._internal.time.Time_tzsetname.tzsetName;
private function set_tzsetName(v:stdgo.GoString -> stdgo.Tuple.Tuple3<stdgo.GoString, stdgo.GoString, Bool>):stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } {
        stdgo._internal.time.Time_tzsetname.tzsetName = v;
        return v;
    }
var tzsetOffset(get, set) : stdgo.GoString -> stdgo.Tuple.Tuple3<stdgo.GoInt, stdgo.GoString, Bool>;
private function get_tzsetOffset():stdgo.GoString -> stdgo.Tuple.Tuple3<stdgo.GoInt, stdgo.GoString, Bool> return stdgo._internal.time.Time_tzsetoffset.tzsetOffset;
private function set_tzsetOffset(v:stdgo.GoString -> stdgo.Tuple.Tuple3<stdgo.GoInt, stdgo.GoString, Bool>):stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } {
        stdgo._internal.time.Time_tzsetoffset.tzsetOffset = v;
        return v;
    }
var stdChunkNames(get, set) : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>;
private function get_stdChunkNames():stdgo.GoMap<stdgo.GoInt, stdgo.GoString> return stdgo._internal.time.Time_stdchunknames.stdChunkNames;
private function set_stdChunkNames(v:stdgo.GoMap<stdgo.GoInt, stdgo.GoString>):stdgo.GoMap<stdgo.GoInt, stdgo.GoString> {
        stdgo._internal.time.Time_stdchunknames.stdChunkNames = v;
        return v;
    }
var quote(get, set) : stdgo.GoString -> stdgo.GoString;
private function get_quote():stdgo.GoString -> stdgo.GoString return stdgo._internal.time.Time_quote.quote;
private function set_quote(v:stdgo.GoString -> stdgo.GoString):stdgo.GoString -> stdgo.GoString {
        stdgo._internal.time.Time_quote.quote = v;
        return v;
    }
var appendInt(get, set) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt, stdgo.GoInt) -> stdgo.Slice<stdgo.GoUInt8>;
private function get_appendInt():(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt, stdgo.GoInt) -> stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.time.Time_appendint.appendInt;
private function set_appendInt(v:(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt, stdgo.GoInt) -> stdgo.Slice<stdgo.GoUInt8>):(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt, stdgo.GoInt) -> stdgo.Slice<stdgo.GoUInt8> {
        stdgo._internal.time.Time_appendint.appendInt = v;
        return v;
    }
var appendFormatAny(get, set) : (Time_, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoString) -> stdgo.Slice<stdgo.GoUInt8>;
private function get_appendFormatAny():(Time_, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoString) -> stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.time.Time_appendformatany.appendFormatAny;
private function set_appendFormatAny(v:(Time_, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoString) -> stdgo.Slice<stdgo.GoUInt8>):(stdgo._internal.time.Time_time.Time, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoString) -> stdgo.Slice<stdgo.GoUInt8> {
        stdgo._internal.time.Time_appendformatany.appendFormatAny = v;
        return v;
    }
var appendFormatRFC3339(get, set) : (Time_, stdgo.Slice<stdgo.GoUInt8>, Bool) -> stdgo.Slice<stdgo.GoUInt8>;
private function get_appendFormatRFC3339():(Time_, stdgo.Slice<stdgo.GoUInt8>, Bool) -> stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.time.Time_appendformatrfc3339.appendFormatRFC3339;
private function set_appendFormatRFC3339(v:(Time_, stdgo.Slice<stdgo.GoUInt8>, Bool) -> stdgo.Slice<stdgo.GoUInt8>):(stdgo._internal.time.Time_time.Time, stdgo.Slice<stdgo.GoUInt8>, Bool) -> stdgo.Slice<stdgo.GoUInt8> {
        stdgo._internal.time.Time_appendformatrfc3339.appendFormatRFC3339 = v;
        return v;
    }
var parseAny(get, set) : (stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.time.Time_location.Location>, stdgo.Ref<stdgo._internal.time.Time_location.Location>) -> stdgo.Tuple<Time_, stdgo.Error>;
private function get_parseAny():(stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.time.Time_location.Location>, stdgo.Ref<stdgo._internal.time.Time_location.Location>) -> stdgo.Tuple<Time_, stdgo.Error> return stdgo._internal.time.Time_parseany.parseAny;
private function set_parseAny(v:(stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.time.Time_location.Location>, stdgo.Ref<stdgo._internal.time.Time_location.Location>) -> stdgo.Tuple<Time_, stdgo.Error>):(stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.time.Time_location.Location>, stdgo.Ref<stdgo._internal.time.Time_location.Location>) -> { var _0 : stdgo._internal.time.Time_time.Time; var _1 : stdgo.Error; } {
        stdgo._internal.time.Time_parseany.parseAny = v;
        return v;
    }
var parseRFC3339(get, set) : (stdgo.GoString, stdgo.Ref<stdgo._internal.time.Time_location.Location>) -> stdgo.Tuple<Time_, Bool>;
private function get_parseRFC3339():(stdgo.GoString, stdgo.Ref<stdgo._internal.time.Time_location.Location>) -> stdgo.Tuple<Time_, Bool> return stdgo._internal.time.Time_parserfc3339.parseRFC3339;
private function set_parseRFC3339(v:(stdgo.GoString, stdgo.Ref<stdgo._internal.time.Time_location.Location>) -> stdgo.Tuple<Time_, Bool>):(stdgo.GoString, stdgo.Ref<stdgo._internal.time.Time_location.Location>) -> { var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } {
        stdgo._internal.time.Time_parserfc3339.parseRFC3339 = v;
        return v;
    }
var disablePlatformSources(get, set) : () -> (() -> Void);
private function get_disablePlatformSources():() -> (() -> Void) return stdgo._internal.time.Time_disableplatformsources.disablePlatformSources;
private function set_disablePlatformSources(v:() -> (() -> Void)):() -> (() -> Void) {
        stdgo._internal.time.Time_disableplatformsources.disablePlatformSources = v;
        return v;
    }
var interrupt(get, set) : () -> Void;
private function get_interrupt():() -> Void return stdgo._internal.time.Time_interrupt.interrupt;
private function set_interrupt(v:() -> Void):() -> Void {
        stdgo._internal.time.Time_interrupt.interrupt = v;
        return v;
    }
var daysIn(get, set) : (Month, stdgo.GoInt) -> stdgo.GoInt;
private function get_daysIn():(Month, stdgo.GoInt) -> stdgo.GoInt return stdgo._internal.time.Time_daysin.daysIn;
private function set_daysIn(v:(Month, stdgo.GoInt) -> stdgo.GoInt):(stdgo._internal.time.Time_month.Month, stdgo.GoInt) -> stdgo.GoInt {
        stdgo._internal.time.Time_daysin.daysIn = v;
        return v;
    }
var minMonoTime(get, set) : Time_;
private function get_minMonoTime():Time_ return stdgo._internal.time.Time_minmonotime.minMonoTime;
private function set_minMonoTime(v:Time_):stdgo._internal.time.Time_time.Time {
        stdgo._internal.time.Time_minmonotime.minMonoTime = v;
        return v;
    }
var maxMonoTime(get, set) : Time_;
private function get_maxMonoTime():Time_ return stdgo._internal.time.Time_maxmonotime.maxMonoTime;
private function set_maxMonoTime(v:Time_):stdgo._internal.time.Time_time.Time {
        stdgo._internal.time.Time_maxmonotime.maxMonoTime = v;
        return v;
    }
var notMonoNegativeTime(get, set) : Time_;
private function get_notMonoNegativeTime():Time_ return stdgo._internal.time.Time_notmononegativetime.notMonoNegativeTime;
private function set_notMonoNegativeTime(v:Time_):stdgo._internal.time.Time_time.Time {
        stdgo._internal.time.Time_notmononegativetime.notMonoNegativeTime = v;
        return v;
    }
typedef Rule = stdgo._internal.time.Time_rule.Rule;
typedef ParseError = stdgo._internal.time.Time_parseerror.ParseError;
typedef Timer = stdgo._internal.time.Time_timer.Timer;
typedef Ticker = stdgo._internal.time.Time_ticker.Ticker;
typedef Time_ = stdgo._internal.time.Time_time.Time;
typedef Location = stdgo._internal.time.Time_location.Location;
typedef RuleKind = stdgo._internal.time.Time_rulekind.RuleKind;
typedef Month = stdgo._internal.time.Time_month.Month;
typedef Weekday = stdgo._internal.time.Time_weekday.Weekday;
typedef Duration = stdgo._internal.time.Time_duration.Duration;
typedef RulePointer = stdgo._internal.time.Time_rulepointer.RulePointer;
typedef ParseErrorPointer = stdgo._internal.time.Time_parseerrorpointer.ParseErrorPointer;
typedef TimerPointer = stdgo._internal.time.Time_timerpointer.TimerPointer;
typedef TickerPointer = stdgo._internal.time.Time_tickerpointer.TickerPointer;
typedef TimePointer = stdgo._internal.time.Time_timepointer.TimePointer;
typedef LocationPointer = stdgo._internal.time.Time_locationpointer.LocationPointer;
typedef RuleKindPointer = stdgo._internal.time.Time_rulekindpointer.RuleKindPointer;
typedef MonthPointer = stdgo._internal.time.Time_monthpointer.MonthPointer;
typedef WeekdayPointer = stdgo._internal.time.Time_weekdaypointer.WeekdayPointer;
typedef DurationPointer = stdgo._internal.time.Time_durationpointer.DurationPointer;
/**
    * Package time provides functionality for measuring and displaying time.
    * 
    * The calendrical calculations always assume a Gregorian calendar, with
    * no leap seconds.
    * 
    * # Monotonic Clocks
    * 
    * Operating systems provide both a “wall clock,” which is subject to
    * changes for clock synchronization, and a “monotonic clock,” which is
    * not. The general rule is that the wall clock is for telling time and
    * the monotonic clock is for measuring time. Rather than split the API,
    * in this package the Time returned by time.Now contains both a wall
    * clock reading and a monotonic clock reading; later time-telling
    * operations use the wall clock reading, but later time-measuring
    * operations, specifically comparisons and subtractions, use the
    * monotonic clock reading.
    * 
    * For example, this code always computes a positive elapsed time of
    * approximately 20 milliseconds, even if the wall clock is changed during
    * the operation being timed:
    * 
    * 	start := time.Now()
    * 	... operation that takes 20 milliseconds ...
    * 	t := time.Now()
    * 	elapsed := t.Sub(start)
    * 
    * Other idioms, such as time.Since(start), time.Until(deadline), and
    * time.Now().Before(deadline), are similarly robust against wall clock
    * resets.
    * 
    * The rest of this section gives the precise details of how operations
    * use monotonic clocks, but understanding those details is not required
    * to use this package.
    * 
    * The Time returned by time.Now contains a monotonic clock reading.
    * If Time t has a monotonic clock reading, t.Add adds the same duration to
    * both the wall clock and monotonic clock readings to compute the result.
    * Because t.AddDate(y, m, d), t.Round(d), and t.Truncate(d) are wall time
    * computations, they always strip any monotonic clock reading from their results.
    * Because t.In, t.Local, and t.UTC are used for their effect on the interpretation
    * of the wall time, they also strip any monotonic clock reading from their results.
    * The canonical way to strip a monotonic clock reading is to use t = t.Round(0).
    * 
    * If Times t and u both contain monotonic clock readings, the operations
    * t.After(u), t.Before(u), t.Equal(u), t.Compare(u), and t.Sub(u) are carried out
    * using the monotonic clock readings alone, ignoring the wall clock
    * readings. If either t or u contains no monotonic clock reading, these
    * operations fall back to using the wall clock readings.
    * 
    * On some systems the monotonic clock will stop if the computer goes to sleep.
    * On such a system, t.Sub(u) may not accurately reflect the actual
    * time that passed between t and u.
    * 
    * Because the monotonic clock reading has no meaning outside
    * the current process, the serialized forms generated by t.GobEncode,
    * t.MarshalBinary, t.MarshalJSON, and t.MarshalText omit the monotonic
    * clock reading, and t.Format provides no format for it. Similarly, the
    * constructors time.Date, time.Parse, time.ParseInLocation, and time.Unix,
    * as well as the unmarshalers t.GobDecode, t.UnmarshalBinary.
    * t.UnmarshalJSON, and t.UnmarshalText always create times with
    * no monotonic clock reading.
    * 
    * The monotonic clock reading exists only in Time values. It is not
    * a part of Duration values or the Unix times returned by t.Unix and
    * friends.
    * 
    * Note that the Go == operator compares not just the time instant but
    * also the Location and the monotonic clock reading. See the
    * documentation for the Time type for a discussion of equality
    * testing for Time values.
    * 
    * For debugging, the result of t.String does include the monotonic
    * clock reading if present. If t != u because of different monotonic clock readings,
    * that difference will be visible when printing t.String() and u.String().
**/
class Time {
    static public inline function resetLocalOnceForTest():Void stdgo._internal.time.Time_resetlocaloncefortest.resetLocalOnceForTest();
    static public inline function forceUSPacificForTesting():Void stdgo._internal.time.Time_forceuspacificfortesting.forceUSPacificForTesting();
    static public inline function zoneinfoForTesting():stdgo.Pointer<stdgo.GoString> return stdgo._internal.time.Time_zoneinfofortesting.zoneinfoForTesting();
    static public inline function resetZoneinfoForTesting():Void stdgo._internal.time.Time_resetzoneinfofortesting.resetZoneinfoForTesting();
    static public inline function loadFromEmbeddedTZData(_zone:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return stdgo._internal.time.Time_loadfromembeddedtzdata.loadFromEmbeddedTZData(_zone);
    static public inline function tzsetRule(_s:stdgo.GoString):{ var _0 : stdgo._internal.time.Time_rule.Rule; var _1 : stdgo.GoString; var _2 : Bool; } return stdgo._internal.time.Time_tzsetrule.tzsetRule(_s);
    /**
        * Parse parses a formatted string and returns the time value it represents.
        * See the documentation for the constant called Layout to see how to
        * represent the format. The second argument must be parseable using
        * the format string (layout) provided as the first argument.
        * 
        * The example for Time.Format demonstrates the working of the layout string
        * in detail and is a good reference.
        * 
        * When parsing (only), the input may contain a fractional second
        * field immediately after the seconds field, even if the layout does not
        * signify its presence. In that case either a comma or a decimal point
        * followed by a maximal series of digits is parsed as a fractional second.
        * Fractional seconds are truncated to nanosecond precision.
        * 
        * Elements omitted from the layout are assumed to be zero or, when
        * zero is impossible, one, so parsing "3:04pm" returns the time
        * corresponding to Jan 1, year 0, 15:04:00 UTC (note that because the year is
        * 0, this time is before the zero Time).
        * Years must be in the range 0000..9999. The day of the week is checked
        * for syntax but it is otherwise ignored.
        * 
        * For layouts specifying the two-digit year 06, a value NN >= 69 will be treated
        * as 19NN and a value NN < 69 will be treated as 20NN.
        * 
        * The remainder of this comment describes the handling of time zones.
        * 
        * In the absence of a time zone indicator, Parse returns a time in UTC.
        * 
        * When parsing a time with a zone offset like -0700, if the offset corresponds
        * to a time zone used by the current location (Local), then Parse uses that
        * location and zone in the returned time. Otherwise it records the time as
        * being in a fabricated location with time fixed at the given zone offset.
        * 
        * When parsing a time with a zone abbreviation like MST, if the zone abbreviation
        * has a defined offset in the current location, then that offset is used.
        * The zone abbreviation "UTC" is recognized as UTC regardless of location.
        * If the zone abbreviation is unknown, Parse records the time as being
        * in a fabricated location with the given zone abbreviation and a zero offset.
        * This choice means that such a time can be parsed and reformatted with the
        * same layout losslessly, but the exact instant used in the representation will
        * differ by the actual zone offset. To avoid such problems, prefer time layouts
        * that use a numeric zone offset, or use ParseInLocation.
    **/
    static public inline function parse(_layout:stdgo.GoString, _value:stdgo.GoString):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : stdgo.Error; } return stdgo._internal.time.Time_parse.parse(_layout, _value);
    /**
        * ParseInLocation is like Parse but differs in two important ways.
        * First, in the absence of time zone information, Parse interprets a time as UTC;
        * ParseInLocation interprets the time as in the given location.
        * Second, when given a zone offset or abbreviation, Parse tries to match it
        * against the Local location; ParseInLocation uses the given location.
    **/
    static public inline function parseInLocation(_layout:stdgo.GoString, _value:stdgo.GoString, _loc:stdgo.Ref<stdgo._internal.time.Time_location.Location>):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : stdgo.Error; } return stdgo._internal.time.Time_parseinlocation.parseInLocation(_layout, _value, _loc);
    /**
        * ParseDuration parses a duration string.
        * A duration string is a possibly signed sequence of
        * decimal numbers, each with optional fraction and a unit suffix,
        * such as "300ms", "-1.5h" or "2h45m".
        * Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h".
    **/
    static public inline function parseDuration(_s:stdgo.GoString):{ var _0 : stdgo._internal.time.Time_duration.Duration; var _1 : stdgo.Error; } return stdgo._internal.time.Time_parseduration.parseDuration(_s);
    /**
        * Test that a runtimeTimer with a period that would overflow when on
        * expiration does not throw or cause other timers to hang.
        * 
        * This test has to be in internal_test.go since it fiddles with
        * unexported data structures.
    **/
    static public inline function checkRuntimeTimerPeriodOverflow():Void stdgo._internal.time.Time_checkruntimetimerperiodoverflow.checkRuntimeTimerPeriodOverflow();
    /**
        * Sleep pauses the current goroutine for at least the duration d.
        * A negative or zero duration causes Sleep to return immediately.
    **/
    static public inline function sleep(_d:Duration):Void stdgo._internal.time.Time_sleep.sleep(_d);
    /**
        * NewTimer creates a new Timer that will send
        * the current time on its channel after at least duration d.
    **/
    static public inline function newTimer(_d:Duration):stdgo.Ref<stdgo._internal.time.Time_timer.Timer> return stdgo._internal.time.Time_newtimer.newTimer(_d);
    /**
        * After waits for the duration to elapse and then sends the current time
        * on the returned channel.
        * It is equivalent to NewTimer(d).C.
        * The underlying Timer is not recovered by the garbage collector
        * until the timer fires. If efficiency is a concern, use NewTimer
        * instead and call Timer.Stop if the timer is no longer needed.
    **/
    static public inline function after(_d:Duration):stdgo.Chan<stdgo._internal.time.Time_time.Time> return stdgo._internal.time.Time_after.after(_d);
    /**
        * AfterFunc waits for the duration to elapse and then calls f
        * in its own goroutine. It returns a Timer that can
        * be used to cancel the call using its Stop method.
    **/
    static public inline function afterFunc(_d:Duration, _f:() -> Void):stdgo.Ref<stdgo._internal.time.Time_timer.Timer> return stdgo._internal.time.Time_afterfunc.afterFunc(_d, _f);
    /**
        * NewTicker returns a new Ticker containing a channel that will send
        * the current time on the channel after each tick. The period of the
        * ticks is specified by the duration argument. The ticker will adjust
        * the time interval or drop ticks to make up for slow receivers.
        * The duration d must be greater than zero; if not, NewTicker will
        * panic. Stop the ticker to release associated resources.
    **/
    static public inline function newTicker(_d:Duration):stdgo.Ref<stdgo._internal.time.Time_ticker.Ticker> return stdgo._internal.time.Time_newticker.newTicker(_d);
    /**
        * Tick is a convenience wrapper for NewTicker providing access to the ticking
        * channel only. While Tick is useful for clients that have no need to shut down
        * the Ticker, be aware that without a way to shut it down the underlying
        * Ticker cannot be recovered by the garbage collector; it "leaks".
        * Unlike NewTicker, Tick will return nil if d <= 0.
    **/
    static public inline function tick(_d:Duration):stdgo.Chan<stdgo._internal.time.Time_time.Time> return stdgo._internal.time.Time_tick.tick(_d);
    /**
        * Since returns the time elapsed since t.
        * It is shorthand for time.Now().Sub(t).
    **/
    static public inline function since(_t:Time_):stdgo._internal.time.Time_duration.Duration return stdgo._internal.time.Time_since.since(_t);
    /**
        * Until returns the duration until t.
        * It is shorthand for t.Sub(time.Now()).
    **/
    static public inline function until(_t:Time_):stdgo._internal.time.Time_duration.Duration return stdgo._internal.time.Time_until.until(_t);
    /**
        * Now returns the current local time.
    **/
    static public inline function now():stdgo._internal.time.Time_time.Time return stdgo._internal.time.Time_now.now();
    /**
        * Unix returns the local Time corresponding to the given Unix time,
        * sec seconds and nsec nanoseconds since January 1, 1970 UTC.
        * It is valid to pass nsec outside the range [0, 999999999].
        * Not all sec values have a corresponding time value. One such
        * value is 1<<63-1 (the largest int64 value).
    **/
    static public inline function unix(_sec:stdgo.GoInt64, _nsec:stdgo.GoInt64):stdgo._internal.time.Time_time.Time return stdgo._internal.time.Time_unix.unix(_sec, _nsec);
    /**
        * UnixMilli returns the local Time corresponding to the given Unix time,
        * msec milliseconds since January 1, 1970 UTC.
    **/
    static public inline function unixMilli(_msec:stdgo.GoInt64):stdgo._internal.time.Time_time.Time return stdgo._internal.time.Time_unixmilli.unixMilli(_msec);
    /**
        * UnixMicro returns the local Time corresponding to the given Unix time,
        * usec microseconds since January 1, 1970 UTC.
    **/
    static public inline function unixMicro(_usec:stdgo.GoInt64):stdgo._internal.time.Time_time.Time return stdgo._internal.time.Time_unixmicro.unixMicro(_usec);
    /**
        * Date returns the Time corresponding to
        * 
        * 	yyyy-mm-dd hh:mm:ss + nsec nanoseconds
        * 
        * in the appropriate zone for that time in the given location.
        * 
        * The month, day, hour, min, sec, and nsec values may be outside
        * their usual ranges and will be normalized during the conversion.
        * For example, October 32 converts to November 1.
        * 
        * A daylight savings time transition skips or repeats times.
        * For example, in the United States, March 13, 2011 2:15am never occurred,
        * while November 6, 2011 1:15am occurred twice. In such cases, the
        * choice of time zone, and therefore the time, is not well-defined.
        * Date returns a time that is correct in one of the two zones involved
        * in the transition, but it does not guarantee which.
        * 
        * Date panics if loc is nil.
    **/
    static public inline function date(_year:stdgo.GoInt, _month:Month, _day:stdgo.GoInt, _hour:stdgo.GoInt, _min:stdgo.GoInt, _sec:stdgo.GoInt, _nsec:stdgo.GoInt, _loc:stdgo.Ref<stdgo._internal.time.Time_location.Location>):stdgo._internal.time.Time_time.Time return stdgo._internal.time.Time_date.date(_year, _month, _day, _hour, _min, _sec, _nsec, _loc);
    /**
        * FixedZone returns a Location that always uses
        * the given zone name and offset (seconds east of UTC).
    **/
    static public inline function fixedZone(_name:stdgo.GoString, _offset:stdgo.GoInt):stdgo.Ref<stdgo._internal.time.Time_location.Location> return stdgo._internal.time.Time_fixedzone.fixedZone(_name, _offset);
    /**
        * LoadLocation returns the Location with the given name.
        * 
        * If the name is "" or "UTC", LoadLocation returns UTC.
        * If the name is "Local", LoadLocation returns Local.
        * 
        * Otherwise, the name is taken to be a location name corresponding to a file
        * in the IANA Time Zone database, such as "America/New_York".
        * 
        * LoadLocation looks for the IANA Time Zone database in the following
        * locations in order:
        * 
        *   - the directory or uncompressed zip file named by the ZONEINFO environment variable
        *   - on a Unix system, the system standard installation location
        *   - $GOROOT/lib/time/zoneinfo.zip
        *   - the time/tzdata package, if it was imported
    **/
    static public inline function loadLocation(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.time.Time_location.Location>; var _1 : stdgo.Error; } return stdgo._internal.time.Time_loadlocation.loadLocation(_name);
    /**
        * LoadLocationFromTZData returns a Location with the given name
        * initialized from the IANA Time Zone database-formatted data.
        * The data should be in the format of a standard IANA time zone file
        * (for example, the content of /etc/localtime on Unix systems).
    **/
    static public inline function loadLocationFromTZData(_name:stdgo.GoString, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.time.Time_location.Location>; var _1 : stdgo.Error; } return stdgo._internal.time.Time_loadlocationfromtzdata.loadLocationFromTZData(_name, _data);
}
