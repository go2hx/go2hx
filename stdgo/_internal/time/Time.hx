package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
private var __go2hxdoc__package : Bool;
final ruleJulian : stdgo._internal.time.Time.RuleKind = ((0 : stdgo._internal.time.Time.T_ruleKind) : RuleKind);
final ruleDOY : stdgo._internal.time.Time.RuleKind = ((1 : stdgo._internal.time.Time.T_ruleKind) : RuleKind);
final ruleMonthWeekDay : stdgo._internal.time.Time.RuleKind = ((2 : stdgo._internal.time.Time.T_ruleKind) : RuleKind);
final unixToInternal : stdgo.GoInt64 = (62135596800i64 : stdgo.GoInt64);
final layout : stdgo.GoString = ("01/02 03:04:05PM \'06 -0700" : stdgo.GoString);
final ansic : stdgo.GoString = ("Mon Jan _2 15:04:05 2006" : stdgo.GoString);
final unixDate : stdgo.GoString = ("Mon Jan _2 15:04:05 MST 2006" : stdgo.GoString);
final rubyDate : stdgo.GoString = ("Mon Jan 02 15:04:05 -0700 2006" : stdgo.GoString);
final rfc822 : stdgo.GoString = ("02 Jan 06 15:04 MST" : stdgo.GoString);
final rfc822z : stdgo.GoString = ("02 Jan 06 15:04 -0700" : stdgo.GoString);
final rfc850 : stdgo.GoString = ("Monday, 02-Jan-06 15:04:05 MST" : stdgo.GoString);
final rfc1123 : stdgo.GoString = ("Mon, 02 Jan 2006 15:04:05 MST" : stdgo.GoString);
final rfc1123z : stdgo.GoString = ("Mon, 02 Jan 2006 15:04:05 -0700" : stdgo.GoString);
final rfc3339 : stdgo.GoString = ("2006-01-02T15:04:05Z07:00" : stdgo.GoString);
final rfc3339nano : stdgo.GoString = ("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString);
final kitchen : stdgo.GoString = ("3:04PM" : stdgo.GoString);
final stamp : stdgo.GoString = ("Jan _2 15:04:05" : stdgo.GoString);
final stampMilli : stdgo.GoString = ("Jan _2 15:04:05.000" : stdgo.GoString);
final stampMicro : stdgo.GoString = ("Jan _2 15:04:05.000000" : stdgo.GoString);
final stampNano : stdgo.GoString = ("Jan _2 15:04:05.000000000" : stdgo.GoString);
final dateTime : stdgo.GoString = ("2006-01-02 15:04:05" : stdgo.GoString);
final dateOnly : stdgo.GoString = ("2006-01-02" : stdgo.GoString);
final timeOnly : stdgo.GoString = ("15:04:05" : stdgo.GoString);
final _stdLongMonth : stdgo.GoUInt64 = (267i64 : stdgo.GoUInt64);
final _stdMonth = (267i64 : stdgo.GoUInt64);
final _stdNumMonth = (267i64 : stdgo.GoUInt64);
final _stdZeroMonth = (267i64 : stdgo.GoUInt64);
final _stdLongWeekDay = (267i64 : stdgo.GoUInt64);
final _stdWeekDay = (267i64 : stdgo.GoUInt64);
final _stdDay = (267i64 : stdgo.GoUInt64);
final _stdUnderDay = (267i64 : stdgo.GoUInt64);
final _stdZeroDay = (267i64 : stdgo.GoUInt64);
final _stdUnderYearDay = (267i64 : stdgo.GoUInt64);
final _stdZeroYearDay = (267i64 : stdgo.GoUInt64);
final _stdHour : stdgo.GoUInt64 = (530i64 : stdgo.GoUInt64);
final _stdHour12 = (530i64 : stdgo.GoUInt64);
final _stdZeroHour12 = (530i64 : stdgo.GoUInt64);
final _stdMinute = (530i64 : stdgo.GoUInt64);
final _stdZeroMinute = (530i64 : stdgo.GoUInt64);
final _stdSecond = (530i64 : stdgo.GoUInt64);
final _stdZeroSecond = (530i64 : stdgo.GoUInt64);
final _stdLongYear : stdgo.GoUInt64 = (276i64 : stdgo.GoUInt64);
final _stdYear = (276i64 : stdgo.GoUInt64);
final _stdPM : stdgo.GoUInt64 = (534i64 : stdgo.GoUInt64);
final _stdpm = (534i64 : stdgo.GoUInt64);
final _stdTZ : stdgo.GoUInt64 = (35i64 : stdgo.GoUInt64);
final _stdISO8601TZ = (35i64 : stdgo.GoUInt64);
final _stdISO8601SecondsTZ = (35i64 : stdgo.GoUInt64);
final _stdISO8601ShortTZ = (35i64 : stdgo.GoUInt64);
final _stdISO8601ColonTZ = (35i64 : stdgo.GoUInt64);
final _stdISO8601ColonSecondsTZ = (35i64 : stdgo.GoUInt64);
final _stdNumTZ = (35i64 : stdgo.GoUInt64);
final _stdNumSecondsTz = (35i64 : stdgo.GoUInt64);
final _stdNumShortTZ = (35i64 : stdgo.GoUInt64);
final _stdNumColonTZ = (35i64 : stdgo.GoUInt64);
final _stdNumColonSecondsTZ = (35i64 : stdgo.GoUInt64);
final _stdFracSecond0 = (35i64 : stdgo.GoUInt64);
final _stdFracSecond9 = (35i64 : stdgo.GoUInt64);
final _stdNeedDate : stdgo.GoUInt64 = (256i64 : stdgo.GoUInt64);
final _stdNeedClock : stdgo.GoUInt64 = (512i64 : stdgo.GoUInt64);
final _stdArgShift : stdgo.GoUInt64 = (16i64 : stdgo.GoUInt64);
final _stdSeparatorShift : stdgo.GoUInt64 = (28i64 : stdgo.GoUInt64);
final _stdMask : stdgo.GoUInt64 = (65535i64 : stdgo.GoUInt64);
final _lowerhex : stdgo.GoString = ("0123456789abcdef" : stdgo.GoString);
final _runeSelf : stdgo.GoUInt64 = (128i64 : stdgo.GoUInt64);
final _runeError : stdgo.GoInt32 = (65533 : stdgo.GoInt32);
final _hasMonotonic : stdgo.GoUInt64 = (-9223372036854775808i64 : stdgo.GoUInt64);
final _maxWall : stdgo.GoInt64 = (68043243391i64 : stdgo.GoInt64);
final _minWall : stdgo.GoInt64 = (59453308800i64 : stdgo.GoInt64);
final _nsecMask : stdgo.GoUInt64 = (1073741823i64 : stdgo.GoUInt64);
final _nsecShift : stdgo.GoUInt64 = (30i64 : stdgo.GoUInt64);
final january : stdgo._internal.time.Time.Month = (12 : stdgo._internal.time.Time.Month);
final february = (12 : stdgo._internal.time.Time.Month);
final march = (12 : stdgo._internal.time.Time.Month);
final april = (12 : stdgo._internal.time.Time.Month);
final may = (12 : stdgo._internal.time.Time.Month);
final june = (12 : stdgo._internal.time.Time.Month);
final july = (12 : stdgo._internal.time.Time.Month);
final august = (12 : stdgo._internal.time.Time.Month);
final september = (12 : stdgo._internal.time.Time.Month);
final october = (12 : stdgo._internal.time.Time.Month);
final november = (12 : stdgo._internal.time.Time.Month);
final december = (12 : stdgo._internal.time.Time.Month);
final sunday : stdgo._internal.time.Time.Weekday = (6 : stdgo._internal.time.Time.Weekday);
final monday = (6 : stdgo._internal.time.Time.Weekday);
final tuesday = (6 : stdgo._internal.time.Time.Weekday);
final wednesday = (6 : stdgo._internal.time.Time.Weekday);
final thursday = (6 : stdgo._internal.time.Time.Weekday);
final friday = (6 : stdgo._internal.time.Time.Weekday);
final saturday = (6 : stdgo._internal.time.Time.Weekday);
final _absoluteZeroYear : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final _internalYear : stdgo.GoUInt64 = (1i64 : stdgo.GoUInt64);
final _absoluteToInternal : stdgo.GoInt64 = (-9223371966579724800i64 : stdgo.GoInt64);
final _internalToAbsolute : stdgo.GoInt64 = (9223371966579724800i64 : stdgo.GoInt64);
final _unixToInternal : stdgo.GoInt64 = (62135596800i64 : stdgo.GoInt64);
final _internalToUnix : stdgo.GoInt64 = (-62135596800i64 : stdgo.GoInt64);
final _wallToInternal : stdgo.GoInt64 = (59453308800i64 : stdgo.GoInt64);
final _minDuration : stdgo._internal.time.Time.Duration = (-9223372036854775808i64 : stdgo._internal.time.Time.Duration);
final _maxDuration : stdgo._internal.time.Time.Duration = (9223372036854775807i64 : stdgo._internal.time.Time.Duration);
final nanosecond : stdgo._internal.time.Time.Duration = (1i64 : stdgo._internal.time.Time.Duration);
final microsecond : stdgo._internal.time.Time.Duration = (1000i64 : stdgo._internal.time.Time.Duration);
final millisecond : stdgo._internal.time.Time.Duration = (1000000i64 : stdgo._internal.time.Time.Duration);
final second : stdgo._internal.time.Time.Duration = (1000000000i64 : stdgo._internal.time.Time.Duration);
final minute : stdgo._internal.time.Time.Duration = (60000000000i64 : stdgo._internal.time.Time.Duration);
final hour : stdgo._internal.time.Time.Duration = (3600000000000i64 : stdgo._internal.time.Time.Duration);
final _secondsPerMinute : stdgo.GoUInt64 = (60i64 : stdgo.GoUInt64);
final _secondsPerHour : stdgo.GoUInt64 = (3600i64 : stdgo.GoUInt64);
final _secondsPerDay : stdgo.GoUInt64 = (86400i64 : stdgo.GoUInt64);
final _secondsPerWeek : stdgo.GoUInt64 = (604800i64 : stdgo.GoUInt64);
final _daysPer400Years : stdgo.GoUInt64 = (146097i64 : stdgo.GoUInt64);
final _daysPer100Years : stdgo.GoUInt64 = (36524i64 : stdgo.GoUInt64);
final _daysPer4Years : stdgo.GoUInt64 = (1461i64 : stdgo.GoUInt64);
final _timeBinaryVersionV1 : stdgo.GoUInt8 = (2 : stdgo.GoUInt8);
final _timeBinaryVersionV2 = (2 : stdgo.GoUInt8);
final _alpha : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final _omega : stdgo.GoUInt64 = (9223372036854775807i64 : stdgo.GoUInt64);
var _localLoc : Location = ({} : stdgo._internal.time.Time.Location);
var _localOnce : stdgo._internal.sync.Sync.Once = ({} : stdgo._internal.sync.Sync.Once);
var _unnamedFixedZones : stdgo.Slice<stdgo.Ref<Location>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.time.Time.Location>>);
var _unnamedFixedZonesOnce : stdgo._internal.sync.Sync.Once = ({} : stdgo._internal.sync.Sync.Once);
final _ruleJulian : stdgo._internal.time.Time.T_ruleKind = (2 : stdgo._internal.time.Time.T_ruleKind);
final _ruleDOY = (2 : stdgo._internal.time.Time.T_ruleKind);
final _ruleMonthWeekDay = (2 : stdgo._internal.time.Time.T_ruleKind);
var _zoneinfo : stdgo.Pointer<stdgo.GoString> = (null : stdgo.Pointer<stdgo.GoString>);
var _zoneinfoOnce : stdgo._internal.sync.Sync.Once = ({} : stdgo._internal.sync.Sync.Once);
var _loadFromEmbeddedTZData : (_zipname:stdgo.GoString) -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; } = null;
final _maxFileSize : stdgo.GoUInt64 = (10485760i64 : stdgo.GoUInt64);
final _seekStart : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final _seekCurrent : stdgo.GoUInt64 = (1i64 : stdgo.GoUInt64);
final _seekEnd : stdgo.GoUInt64 = (2i64 : stdgo.GoUInt64);
var _loadTzinfoFromTzdata : (_file:stdgo.GoString, _name:stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } = null;
var _std0x : stdgo.GoArray<stdgo.GoInt> = (new stdgo.GoArray<stdgo.GoInt>(6, 6, ...[(260 : stdgo.GoInt), (265 : stdgo.GoInt), (526 : stdgo.GoInt), (528 : stdgo.GoInt), (530 : stdgo.GoInt), (276 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>);
var _longDayNames : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(7, 7, ...[("Sunday" : stdgo.GoString), ("Monday" : stdgo.GoString), ("Tuesday" : stdgo.GoString), ("Wednesday" : stdgo.GoString), ("Thursday" : stdgo.GoString), ("Friday" : stdgo.GoString), ("Saturday" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _shortDayNames : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(7, 7, ...[("Sun" : stdgo.GoString), ("Mon" : stdgo.GoString), ("Tue" : stdgo.GoString), ("Wed" : stdgo.GoString), ("Thu" : stdgo.GoString), ("Fri" : stdgo.GoString), ("Sat" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _shortMonthNames : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(12, 12, ...[
("Jan" : stdgo.GoString),
("Feb" : stdgo.GoString),
("Mar" : stdgo.GoString),
("Apr" : stdgo.GoString),
("May" : stdgo.GoString),
("Jun" : stdgo.GoString),
("Jul" : stdgo.GoString),
("Aug" : stdgo.GoString),
("Sep" : stdgo.GoString),
("Oct" : stdgo.GoString),
("Nov" : stdgo.GoString),
("Dec" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _longMonthNames : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(12, 12, ...[
("January" : stdgo.GoString),
("February" : stdgo.GoString),
("March" : stdgo.GoString),
("April" : stdgo.GoString),
("May" : stdgo.GoString),
("June" : stdgo.GoString),
("July" : stdgo.GoString),
("August" : stdgo.GoString),
("September" : stdgo.GoString),
("October" : stdgo.GoString),
("November" : stdgo.GoString),
("December" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _errAtoi : stdgo.Error = stdgo._internal.errors.Errors.new_(("time: invalid number" : stdgo.GoString));
var _errBad : stdgo.Error = stdgo._internal.errors.Errors.new_(("bad value for field" : stdgo.GoString));
var _errLeadingInt : stdgo.Error = stdgo._internal.errors.Errors.new_(("time: bad [0-9]*" : stdgo.GoString));
var _unitMap : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64> = ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.GoUInt64>();
        x.__defaultValue__ = () -> (0 : stdgo.GoUInt64);
        @:mergeBlock {
            x.set(("ns" : stdgo.GoString), ((1i64 : stdgo._internal.time.Time.Duration) : stdgo.GoUInt64));
            x.set(("us" : stdgo.GoString), ((1000i64 : stdgo._internal.time.Time.Duration) : stdgo.GoUInt64));
            x.set(("µs" : stdgo.GoString), ((1000i64 : stdgo._internal.time.Time.Duration) : stdgo.GoUInt64));
            x.set(("μs" : stdgo.GoString), ((1000i64 : stdgo._internal.time.Time.Duration) : stdgo.GoUInt64));
            x.set(("ms" : stdgo.GoString), ((1000000i64 : stdgo._internal.time.Time.Duration) : stdgo.GoUInt64));
            x.set(("s" : stdgo.GoString), ((1000000000i64 : stdgo._internal.time.Time.Duration) : stdgo.GoUInt64));
            x.set(("m" : stdgo.GoString), ((60000000000i64 : stdgo._internal.time.Time.Duration) : stdgo.GoUInt64));
            x.set(("h" : stdgo.GoString), ((3600000000000i64 : stdgo._internal.time.Time.Duration) : stdgo.GoUInt64));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64>);
var _daysBefore : stdgo.GoArray<stdgo.GoInt32> = (new stdgo.GoArray<stdgo.GoInt32>(13, 13, ...[
(0 : stdgo.GoInt32),
(31 : stdgo.GoInt32),
(59 : stdgo.GoInt32),
(90 : stdgo.GoInt32),
(120 : stdgo.GoInt32),
(151 : stdgo.GoInt32),
(181 : stdgo.GoInt32),
(212 : stdgo.GoInt32),
(243 : stdgo.GoInt32),
(273 : stdgo.GoInt32),
(304 : stdgo.GoInt32),
(334 : stdgo.GoInt32),
(365 : stdgo.GoInt32)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt32>);
var _startNano : stdgo.GoInt64 = (_runtimeNano() - (1i64 : stdgo.GoInt64) : stdgo.GoInt64);
var _utcLoc : stdgo._internal.time.Time.Location = ({ _name : ("UTC" : stdgo.GoString) } : stdgo._internal.time.Time.Location);
var utc : stdgo.Ref<stdgo._internal.time.Time.Location> = (stdgo.Go.setRef(_utcLoc) : stdgo.Ref<stdgo._internal.time.Time.Location>);
var local : stdgo.Ref<stdgo._internal.time.Time.Location> = (stdgo.Go.setRef(_localLoc) : stdgo.Ref<stdgo._internal.time.Time.Location>);
var _errLocation : stdgo.Error = stdgo._internal.errors.Errors.new_(("time: invalid location name" : stdgo.GoString));
var _platformZoneSources : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("/usr/share/zoneinfo/" : stdgo.GoString), ("/usr/share/lib/zoneinfo/" : stdgo.GoString), ("/usr/lib/locale/TZ/" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _errBadData : stdgo.Error = stdgo._internal.errors.Errors.new_(("malformed time zone information" : stdgo.GoString));
var gorootZoneSource : stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : Bool; } = _gorootZoneSource;
var parseTimeZone : stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : Bool; } = _parseTimeZone;
var setMono : (stdgo.Ref<stdgo._internal.time.Time.Time>, stdgo.GoInt64) -> Void = Time_static_extension._setMono;
var getMono : stdgo.Ref<stdgo._internal.time.Time.Time> -> stdgo.GoInt64 = Time_static_extension._mono;
var errLocation : stdgo.Error = _errLocation;
var readFile : stdgo.GoString -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = _readFile;
var loadTzinfo : (stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = _loadTzinfo;
var nextStdChunk : stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = _nextStdChunk;
var tzset : (stdgo.GoString, stdgo.GoInt64, stdgo.GoInt64) -> { var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; } = _tzset;
var tzsetName : stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = _tzsetName;
var tzsetOffset : stdgo.GoString -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } = _tzsetOffset;
var stdChunkNames : stdgo.GoMap<stdgo.GoInt, stdgo.GoString> = ({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        @:mergeBlock {
            x.set((0 : stdgo.GoInt), stdgo.Go.str());
            x.set((257 : stdgo.GoInt), ("January" : stdgo.GoString));
            x.set((258 : stdgo.GoInt), ("Jan" : stdgo.GoString));
            x.set((259 : stdgo.GoInt), ("1" : stdgo.GoString));
            x.set((260 : stdgo.GoInt), ("01" : stdgo.GoString));
            x.set((261 : stdgo.GoInt), ("Monday" : stdgo.GoString));
            x.set((262 : stdgo.GoInt), ("Mon" : stdgo.GoString));
            x.set((263 : stdgo.GoInt), ("2" : stdgo.GoString));
            x.set((264 : stdgo.GoInt), ("_2" : stdgo.GoString));
            x.set((265 : stdgo.GoInt), ("02" : stdgo.GoString));
            x.set((266 : stdgo.GoInt), ("__2" : stdgo.GoString));
            x.set((267 : stdgo.GoInt), ("002" : stdgo.GoString));
            x.set((524 : stdgo.GoInt), ("15" : stdgo.GoString));
            x.set((525 : stdgo.GoInt), ("3" : stdgo.GoString));
            x.set((526 : stdgo.GoInt), ("03" : stdgo.GoString));
            x.set((527 : stdgo.GoInt), ("4" : stdgo.GoString));
            x.set((528 : stdgo.GoInt), ("04" : stdgo.GoString));
            x.set((529 : stdgo.GoInt), ("5" : stdgo.GoString));
            x.set((530 : stdgo.GoInt), ("05" : stdgo.GoString));
            x.set((275 : stdgo.GoInt), ("2006" : stdgo.GoString));
            x.set((276 : stdgo.GoInt), ("06" : stdgo.GoString));
            x.set((533 : stdgo.GoInt), ("PM" : stdgo.GoString));
            x.set((534 : stdgo.GoInt), ("pm" : stdgo.GoString));
            x.set((23 : stdgo.GoInt), ("MST" : stdgo.GoString));
            x.set((24 : stdgo.GoInt), ("Z0700" : stdgo.GoString));
            x.set((25 : stdgo.GoInt), ("Z070000" : stdgo.GoString));
            x.set((26 : stdgo.GoInt), ("Z07" : stdgo.GoString));
            x.set((27 : stdgo.GoInt), ("Z07:00" : stdgo.GoString));
            x.set((28 : stdgo.GoInt), ("Z07:00:00" : stdgo.GoString));
            x.set((29 : stdgo.GoInt), ("-0700" : stdgo.GoString));
            x.set((30 : stdgo.GoInt), ("-070000" : stdgo.GoString));
            x.set((31 : stdgo.GoInt), ("-07" : stdgo.GoString));
            x.set((32 : stdgo.GoInt), ("-07:00" : stdgo.GoString));
            x.set((33 : stdgo.GoInt), ("-07:00:00" : stdgo.GoString));
            x.set((65570 : stdgo.GoInt), (".0" : stdgo.GoString));
            x.set((131106 : stdgo.GoInt), (".00" : stdgo.GoString));
            x.set((196642 : stdgo.GoInt), (".000" : stdgo.GoString));
            x.set((262178 : stdgo.GoInt), (".0000" : stdgo.GoString));
            x.set((327714 : stdgo.GoInt), (".00000" : stdgo.GoString));
            x.set((393250 : stdgo.GoInt), (".000000" : stdgo.GoString));
            x.set((458786 : stdgo.GoInt), (".0000000" : stdgo.GoString));
            x.set((524322 : stdgo.GoInt), (".00000000" : stdgo.GoString));
            x.set((589858 : stdgo.GoInt), (".000000000" : stdgo.GoString));
            x.set((65571 : stdgo.GoInt), (".9" : stdgo.GoString));
            x.set((131107 : stdgo.GoInt), (".99" : stdgo.GoString));
            x.set((196643 : stdgo.GoInt), (".999" : stdgo.GoString));
            x.set((262179 : stdgo.GoInt), (".9999" : stdgo.GoString));
            x.set((327715 : stdgo.GoInt), (".99999" : stdgo.GoString));
            x.set((393251 : stdgo.GoInt), (".999999" : stdgo.GoString));
            x.set((458787 : stdgo.GoInt), (".9999999" : stdgo.GoString));
            x.set((524323 : stdgo.GoInt), (".99999999" : stdgo.GoString));
            x.set((589859 : stdgo.GoInt), (".999999999" : stdgo.GoString));
        };
        x;
    } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>);
var quote : stdgo.GoString -> stdgo.GoString = _quote;
var appendInt : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt, stdgo.GoInt) -> stdgo.Slice<stdgo.GoUInt8> = _appendInt;
var appendFormatAny : (stdgo._internal.time.Time.Time, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoString) -> stdgo.Slice<stdgo.GoUInt8> = Time_static_extension._appendFormat;
var appendFormatRFC3339 : (stdgo._internal.time.Time.Time, stdgo.Slice<stdgo.GoUInt8>, Bool) -> stdgo.Slice<stdgo.GoUInt8> = Time_static_extension._appendFormatRFC3339;
var parseAny : (stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.time.Time.Location>, stdgo.Ref<stdgo._internal.time.Time.Location>) -> { var _0 : stdgo._internal.time.Time.Time; var _1 : stdgo.Error; } = _parse;
var parseRFC3339 : (stdgo.GoString, stdgo.Ref<stdgo._internal.time.Time.Location>) -> { var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } = function(s:stdgo.GoString, local:stdgo.Ref<stdgo._internal.time.Time.Location>):{ var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } return _parseRFC3339(("" : stdgo.GoString), s, local);
var _origPlatformZoneSources : stdgo.Slice<stdgo.GoString> = _platformZoneSources;
var disablePlatformSources : () -> (() -> Void) = _disablePlatformSources;
var interrupt : () -> Void = _interrupt;
var daysIn : (stdgo._internal.time.Time.Month, stdgo.GoInt) -> stdgo.GoInt = _daysIn;
var minMonoTime : stdgo._internal.time.Time.Time = ({ _wall : (-9223372036854775808i64 : stdgo.GoUInt64), _ext : (-9223372036854775808i64 : stdgo.GoInt64), _loc : utc } : stdgo._internal.time.Time.Time);
var maxMonoTime : stdgo._internal.time.Time.Time = ({ _wall : (-9223372036854775808i64 : stdgo.GoUInt64), _ext : (9223372036854775807i64 : stdgo.GoInt64), _loc : utc } : stdgo._internal.time.Time.Time);
var notMonoNegativeTime : stdgo._internal.time.Time.Time = ({ _wall : (0i64 : stdgo.GoUInt64), _ext : (-9223372036854775758i64 : stdgo.GoInt64) } : stdgo._internal.time.Time.Time);
final __0 : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
@:structInit class Rule {
    public var kind : stdgo._internal.time.Time.RuleKind = ((0 : stdgo.GoInt) : stdgo._internal.time.Time.RuleKind);
    public var day : stdgo.GoInt = 0;
    public var week : stdgo.GoInt = 0;
    public var mon : stdgo.GoInt = 0;
    public var time : stdgo.GoInt = 0;
    public function new(?kind:stdgo._internal.time.Time.RuleKind, ?day:stdgo.GoInt, ?week:stdgo.GoInt, ?mon:stdgo.GoInt, ?time:stdgo.GoInt) {
        if (kind != null) this.kind = kind;
        if (day != null) this.day = day;
        if (week != null) this.week = week;
        if (mon != null) this.mon = mon;
        if (time != null) this.time = time;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Rule(kind, day, week, mon, time);
    }
}
@:structInit @:using(stdgo._internal.time.Time.ParseError_static_extension) class ParseError {
    public var layout : stdgo.GoString = "";
    public var value : stdgo.GoString = "";
    public var layoutElem : stdgo.GoString = "";
    public var valueElem : stdgo.GoString = "";
    public var message : stdgo.GoString = "";
    public function new(?layout:stdgo.GoString, ?value:stdgo.GoString, ?layoutElem:stdgo.GoString, ?valueElem:stdgo.GoString, ?message:stdgo.GoString) {
        if (layout != null) this.layout = layout;
        if (value != null) this.value = value;
        if (layoutElem != null) this.layoutElem = layoutElem;
        if (valueElem != null) this.valueElem = valueElem;
        if (message != null) this.message = message;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ParseError(layout, value, layoutElem, valueElem, message);
    }
}
@:structInit @:private class T_runtimeTimer {
    public var _pp : stdgo.GoUIntptr = 0;
    public var _when : stdgo.GoInt64 = 0;
    public var _period : stdgo.GoInt64 = 0;
    public var _f : (stdgo.AnyInterface, stdgo.GoUIntptr) -> Void = null;
    public var _arg : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _seq : stdgo.GoUIntptr = 0;
    public var _nextwhen : stdgo.GoInt64 = 0;
    public var _status : stdgo.GoUInt32 = 0;
    public function new(?_pp:stdgo.GoUIntptr, ?_when:stdgo.GoInt64, ?_period:stdgo.GoInt64, ?_f:(stdgo.AnyInterface, stdgo.GoUIntptr) -> Void, ?_arg:stdgo.AnyInterface, ?_seq:stdgo.GoUIntptr, ?_nextwhen:stdgo.GoInt64, ?_status:stdgo.GoUInt32) {
        if (_pp != null) this._pp = _pp;
        if (_when != null) this._when = _when;
        if (_period != null) this._period = _period;
        if (_f != null) this._f = _f;
        if (_arg != null) this._arg = _arg;
        if (_seq != null) this._seq = _seq;
        if (_nextwhen != null) this._nextwhen = _nextwhen;
        if (_status != null) this._status = _status;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_runtimeTimer(_pp, _when, _period, _f, _arg, _seq, _nextwhen, _status);
    }
}
@:structInit @:using(stdgo._internal.time.Time.Timer_static_extension) class Timer {
    public var c : stdgo.Chan<stdgo._internal.time.Time.Time> = (null : stdgo.Chan<stdgo._internal.time.Time.Time>);
    public var _r : stdgo._internal.time.Time.T_runtimeTimer = ({} : stdgo._internal.time.Time.T_runtimeTimer);
    public function new(?c:stdgo.Chan<stdgo._internal.time.Time.Time>, ?_r:stdgo._internal.time.Time.T_runtimeTimer) {
        if (c != null) this.c = c;
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Timer(c, _r);
    }
}
@:structInit @:using(stdgo._internal.time.Time.Ticker_static_extension) class Ticker {
    public var c : stdgo.Chan<stdgo._internal.time.Time.Time> = (null : stdgo.Chan<stdgo._internal.time.Time.Time>);
    public var _r : stdgo._internal.time.Time.T_runtimeTimer = ({} : stdgo._internal.time.Time.T_runtimeTimer);
    public function new(?c:stdgo.Chan<stdgo._internal.time.Time.Time>, ?_r:stdgo._internal.time.Time.T_runtimeTimer) {
        if (c != null) this.c = c;
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Ticker(c, _r);
    }
}
@:structInit @:using(stdgo._internal.time.Time.Time_static_extension) class Time {
    public var _wall : stdgo.GoUInt64 = 0;
    public var _ext : stdgo.GoInt64 = 0;
    public var _loc : stdgo.Ref<stdgo._internal.time.Time.Location> = (null : stdgo.Ref<stdgo._internal.time.Time.Location>);
    public function new(?_wall:stdgo.GoUInt64, ?_ext:stdgo.GoInt64, ?_loc:stdgo.Ref<stdgo._internal.time.Time.Location>) {
        if (_wall != null) this._wall = _wall;
        if (_ext != null) this._ext = _ext;
        if (_loc != null) this._loc = _loc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Time(_wall, _ext, _loc);
    }
}
@:structInit @:using(stdgo._internal.time.Time.Location_static_extension) class Location {
    public var _name : stdgo.GoString = "";
    public var _zone : stdgo.Slice<stdgo._internal.time.Time.T_zone> = (null : stdgo.Slice<stdgo._internal.time.Time.T_zone>);
    public var _tx : stdgo.Slice<stdgo._internal.time.Time.T_zoneTrans> = (null : stdgo.Slice<stdgo._internal.time.Time.T_zoneTrans>);
    public var _extend : stdgo.GoString = "";
    public var _cacheStart : stdgo.GoInt64 = 0;
    public var _cacheEnd : stdgo.GoInt64 = 0;
    public var _cacheZone : stdgo.Ref<stdgo._internal.time.Time.T_zone> = (null : stdgo.Ref<stdgo._internal.time.Time.T_zone>);
    public function new(?_name:stdgo.GoString, ?_zone:stdgo.Slice<stdgo._internal.time.Time.T_zone>, ?_tx:stdgo.Slice<stdgo._internal.time.Time.T_zoneTrans>, ?_extend:stdgo.GoString, ?_cacheStart:stdgo.GoInt64, ?_cacheEnd:stdgo.GoInt64, ?_cacheZone:stdgo.Ref<stdgo._internal.time.Time.T_zone>) {
        if (_name != null) this._name = _name;
        if (_zone != null) this._zone = _zone;
        if (_tx != null) this._tx = _tx;
        if (_extend != null) this._extend = _extend;
        if (_cacheStart != null) this._cacheStart = _cacheStart;
        if (_cacheEnd != null) this._cacheEnd = _cacheEnd;
        if (_cacheZone != null) this._cacheZone = _cacheZone;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Location(_name, _zone, _tx, _extend, _cacheStart, _cacheEnd, _cacheZone);
    }
}
@:structInit @:private class T_zone {
    public var _name : stdgo.GoString = "";
    public var _offset : stdgo.GoInt = 0;
    public var _isDST : Bool = false;
    public function new(?_name:stdgo.GoString, ?_offset:stdgo.GoInt, ?_isDST:Bool) {
        if (_name != null) this._name = _name;
        if (_offset != null) this._offset = _offset;
        if (_isDST != null) this._isDST = _isDST;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_zone(_name, _offset, _isDST);
    }
}
@:structInit @:private class T_zoneTrans {
    public var _when : stdgo.GoInt64 = 0;
    public var _index : stdgo.GoUInt8 = 0;
    public var _isstd : Bool = false;
    public var _isutc : Bool = false;
    public function new(?_when:stdgo.GoInt64, ?_index:stdgo.GoUInt8, ?_isstd:Bool, ?_isutc:Bool) {
        if (_when != null) this._when = _when;
        if (_index != null) this._index = _index;
        if (_isstd != null) this._isstd = _isstd;
        if (_isutc != null) this._isutc = _isutc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_zoneTrans(_when, _index, _isstd, _isutc);
    }
}
@:structInit @:private class T_rule {
    public var _kind : stdgo._internal.time.Time.T_ruleKind = ((0 : stdgo.GoInt) : stdgo._internal.time.Time.T_ruleKind);
    public var _day : stdgo.GoInt = 0;
    public var _week : stdgo.GoInt = 0;
    public var _mon : stdgo.GoInt = 0;
    public var _time : stdgo.GoInt = 0;
    public function new(?_kind:stdgo._internal.time.Time.T_ruleKind, ?_day:stdgo.GoInt, ?_week:stdgo.GoInt, ?_mon:stdgo.GoInt, ?_time:stdgo.GoInt) {
        if (_kind != null) this._kind = _kind;
        if (_day != null) this._day = _day;
        if (_week != null) this._week = _week;
        if (_mon != null) this._mon = _mon;
        if (_time != null) this._time = _time;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_rule(_kind, _day, _week, _mon, _time);
    }
}
@:structInit @:private @:using(stdgo._internal.time.Time.T_dataIO_static_extension) class T_dataIO {
    public var _p : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _error : Bool = false;
    public function new(?_p:stdgo.Slice<stdgo.GoUInt8>, ?_error:Bool) {
        if (_p != null) this._p = _p;
        if (_error != null) this._error = _error;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dataIO(_p, _error);
    }
}
@:named typedef RuleKind = stdgo.GoInt;
@:named @:using(stdgo._internal.time.Time.Month_static_extension) typedef Month = stdgo.GoInt;
@:named @:using(stdgo._internal.time.Time.Weekday_static_extension) typedef Weekday = stdgo.GoInt;
@:named @:using(stdgo._internal.time.Time.Duration_static_extension) typedef Duration = stdgo.GoInt64;
@:named typedef T_ruleKind = stdgo.GoInt;
@:named @:using(stdgo._internal.time.Time.T_fileSizeError_static_extension) typedef T_fileSizeError = stdgo.GoString;
function resetLocalOnceForTest():Void {
        _localOnce = (new stdgo._internal.sync.Sync.Once() : stdgo._internal.sync.Sync.Once);
        _localLoc = (new stdgo._internal.time.Time.Location() : stdgo._internal.time.Time.Location);
    }
function forceUSPacificForTesting():Void {}
function zoneinfoForTesting():stdgo.Pointer<stdgo.GoString> {
        return _zoneinfo;
    }
function resetZoneinfoForTesting():Void {
        _zoneinfo = (null : stdgo.Pointer<stdgo.GoString>);
        _zoneinfoOnce = (new stdgo._internal.sync.Sync.Once() : stdgo._internal.sync.Sync.Once);
    }
function loadFromEmbeddedTZData(_zone:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        return _loadFromEmbeddedTZData(_zone?.__copy__());
    }
function tzsetRule(_s:stdgo.GoString):{ var _0 : Rule; var _1 : stdgo.GoString; var _2 : Bool; } {
        var __tmp__ = _tzsetRule(_s?.__copy__()), _r:stdgo._internal.time.Time.T_rule = __tmp__._0, _rs:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
        var _rr:stdgo._internal.time.Time.Rule = ({ kind : (_r._kind : RuleKind), day : _r._day, week : _r._week, mon : _r._mon, time : _r._time } : stdgo._internal.time.Time.Rule);
        return { _0 : _rr?.__copy__(), _1 : _rs?.__copy__(), _2 : _ok };
    }
function _startsWithLowerCase(_str:stdgo.GoString):Bool {
        if ((_str.length) == ((0 : stdgo.GoInt))) {
            return false;
        };
        var _c:stdgo.GoUInt8 = _str[(0 : stdgo.GoInt)];
        return (((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool);
    }
function _nextStdChunk(_layout:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } {
        var _prefix:stdgo.GoString = ("" : stdgo.GoString), _std:stdgo.GoInt = (0 : stdgo.GoInt), _suffix:stdgo.GoString = ("" : stdgo.GoString);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_layout.length) : Bool), _i++, {
                {
                    var _c:stdgo.GoInt = (_layout[(_i : stdgo.GoInt)] : stdgo.GoInt);
                    {
                        final __value__ = _c;
                        if (__value__ == ((74 : stdgo.GoInt))) {
                            if ((((_layout.length) >= (_i + (3 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("Jan" : stdgo.GoString)) : Bool)) {
                                if ((((_layout.length) >= (_i + (7 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (7 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("January" : stdgo.GoString)) : Bool)) {
                                    return { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : (257 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (7 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                                };
                                if (!_startsWithLowerCase((_layout.__slice__((_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__())) {
                                    return { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : (258 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                                };
                            };
                        } else if (__value__ == ((77 : stdgo.GoInt))) {
                            if (((_layout.length) >= (_i + (3 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                                if ((_layout.__slice__(_i, (_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == (("Mon" : stdgo.GoString))) {
                                    if ((((_layout.length) >= (_i + (6 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("Monday" : stdgo.GoString)) : Bool)) {
                                        return { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : (261 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                                    };
                                    if (!_startsWithLowerCase((_layout.__slice__((_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__())) {
                                        return { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : (262 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                                    };
                                };
                                if ((_layout.__slice__(_i, (_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == (("MST" : stdgo.GoString))) {
                                    return { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : (23 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                                };
                            };
                        } else if (__value__ == ((48 : stdgo.GoInt))) {
                            if (((((_layout.length) >= (_i + (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((49 : stdgo.GoUInt8) <= _layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool) : Bool) && (_layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] <= (54 : stdgo.GoUInt8) : Bool) : Bool)) {
                                return { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : _std0x[((_layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] - (49 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)], _2 : (_layout.__slice__((_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                            };
                            if (((((_layout.length) >= (_i + (3 : stdgo.GoInt) : stdgo.GoInt) : Bool) && _layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (_layout[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] == (50 : stdgo.GoUInt8)) : Bool)) {
                                return { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : (267 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                            };
                        } else if (__value__ == ((49 : stdgo.GoInt))) {
                            if ((((_layout.length) >= (_i + (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) && (_layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (53 : stdgo.GoUInt8)) : Bool)) {
                                return { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : (524 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                            };
                            return { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : (259 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                        } else if (__value__ == ((50 : stdgo.GoInt))) {
                            if ((((_layout.length) >= (_i + (4 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("2006" : stdgo.GoString)) : Bool)) {
                                return { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : (275 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                            };
                            return { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : (263 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                        } else if (__value__ == ((95 : stdgo.GoInt))) {
                            if ((((_layout.length) >= (_i + (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) && (_layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (50 : stdgo.GoUInt8)) : Bool)) {
                                if ((((_layout.length) >= (_i + (5 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt), (_i + (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("2006" : stdgo.GoString)) : Bool)) {
                                    return { _0 : (_layout.__slice__((0 : stdgo.GoInt), (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _1 : (275 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                                };
                                return { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : (264 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                            };
                            if (((((_layout.length) >= (_i + (3 : stdgo.GoInt) : stdgo.GoInt) : Bool) && _layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == ((95 : stdgo.GoUInt8)) : Bool) && (_layout[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] == (50 : stdgo.GoUInt8)) : Bool)) {
                                return { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : (266 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                            };
                        } else if (__value__ == ((51 : stdgo.GoInt))) {
                            return { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : (525 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                        } else if (__value__ == ((52 : stdgo.GoInt))) {
                            return { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : (527 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                        } else if (__value__ == ((53 : stdgo.GoInt))) {
                            return { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : (529 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                        } else if (__value__ == ((80 : stdgo.GoInt))) {
                            if ((((_layout.length) >= (_i + (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) && (_layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (77 : stdgo.GoUInt8)) : Bool)) {
                                return { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : (533 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                            };
                        } else if (__value__ == ((112 : stdgo.GoInt))) {
                            if ((((_layout.length) >= (_i + (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) && (_layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (109 : stdgo.GoUInt8)) : Bool)) {
                                return { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : (534 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                            };
                        } else if (__value__ == ((45 : stdgo.GoInt))) {
                            if ((((_layout.length) >= (_i + (7 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (7 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("-070000" : stdgo.GoString)) : Bool)) {
                                return { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : (30 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (7 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                            };
                            if ((((_layout.length) >= (_i + (9 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (9 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("-07:00:00" : stdgo.GoString)) : Bool)) {
                                return { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : (33 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (9 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                            };
                            if ((((_layout.length) >= (_i + (5 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("-0700" : stdgo.GoString)) : Bool)) {
                                return { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : (29 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                            };
                            if ((((_layout.length) >= (_i + (6 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("-07:00" : stdgo.GoString)) : Bool)) {
                                return { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : (32 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                            };
                            if ((((_layout.length) >= (_i + (3 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("-07" : stdgo.GoString)) : Bool)) {
                                return { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : (31 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                            };
                        } else if (__value__ == ((90 : stdgo.GoInt))) {
                            if ((((_layout.length) >= (_i + (7 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (7 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("Z070000" : stdgo.GoString)) : Bool)) {
                                return { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : (25 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (7 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                            };
                            if ((((_layout.length) >= (_i + (9 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (9 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("Z07:00:00" : stdgo.GoString)) : Bool)) {
                                return { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : (28 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (9 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                            };
                            if ((((_layout.length) >= (_i + (5 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("Z0700" : stdgo.GoString)) : Bool)) {
                                return { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : (24 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                            };
                            if ((((_layout.length) >= (_i + (6 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("Z07:00" : stdgo.GoString)) : Bool)) {
                                return { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : (27 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                            };
                            if ((((_layout.length) >= (_i + (3 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("Z07" : stdgo.GoString)) : Bool)) {
                                return { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : (26 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                            };
                        } else if (__value__ == ((46 : stdgo.GoInt)) || __value__ == ((44 : stdgo.GoInt))) {
                            if ((((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_layout.length) : Bool) && (((_layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) || (_layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (57 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                                var _ch:stdgo.GoUInt8 = _layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)];
                                var _j:stdgo.GoInt = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                                while (((_j < (_layout.length) : Bool) && (_layout[(_j : stdgo.GoInt)] == _ch) : Bool)) {
                                    _j++;
                                };
                                if (!_isDigit(("" : stdgo.GoString), _layout?.__copy__(), _j)) {
                                    var _code:stdgo.GoInt = (34 : stdgo.GoInt);
                                    if (_layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == ((57 : stdgo.GoUInt8))) {
                                        _code = (35 : stdgo.GoInt);
                                    };
                                    var _std:stdgo.GoInt = _stdFracSecond(_code, (_j - ((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt), _c);
                                    return { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : _std, _2 : (_layout.__slice__(_j) : stdgo.GoString)?.__copy__() };
                                };
                            };
                        };
                    };
                };
            });
        };
        return { _0 : _layout?.__copy__(), _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.str()?.__copy__() };
    }
function _match(_s1:stdgo.GoString, _s2:stdgo.GoString):Bool {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s1.length) : Bool), _i++, {
                var _c1:stdgo.GoUInt8 = _s1[(_i : stdgo.GoInt)];
                var _c2:stdgo.GoUInt8 = _s2[(_i : stdgo.GoInt)];
                if (_c1 != (_c2)) {
                    _c1 = (_c1 | ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    _c2 = (_c2 | ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    if (((_c1 != (_c2) || (_c1 < (97 : stdgo.GoUInt8) : Bool) : Bool) || (_c1 > (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        return false;
                    };
                };
            });
        };
        return true;
    }
function _lookup(_tab:stdgo.Slice<stdgo.GoString>, _val:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        for (_i => _v in _tab) {
            if ((((_val.length) >= (_v.length) : Bool) && _match((_val.__slice__((0 : stdgo.GoInt), (_v.length)) : stdgo.GoString)?.__copy__(), _v?.__copy__()) : Bool)) {
                return { _0 : _i, _1 : (_val.__slice__((_v.length)) : stdgo.GoString)?.__copy__(), _2 : (null : stdgo.Error) };
            };
        };
        return { _0 : (-1 : stdgo.GoInt), _1 : _val?.__copy__(), _2 : _errBad };
    }
function _appendInt(_b:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoInt, _width:stdgo.GoInt):stdgo.Slice<stdgo.GoByte> {
        var _u:stdgo.GoUInt = (_x : stdgo.GoUInt);
        if ((_x < (0 : stdgo.GoInt) : Bool)) {
            _b = (_b.__append__((45 : stdgo.GoUInt8)));
            _u = (-_x : stdgo.GoUInt);
        };
        var _utod:stdgo.GoUInt -> stdgo.GoUInt8 = function(_u:stdgo.GoUInt):stdgo.GoByte {
            return ((48 : stdgo.GoUInt8) + (_u : stdgo.GoByte) : stdgo.GoUInt8);
        };
        if (((_width == (2 : stdgo.GoInt)) && (_u < (100u32 : stdgo.GoUInt) : Bool) : Bool)) {
            return (_b.__append__(_utod((_u / (10u32 : stdgo.GoUInt) : stdgo.GoUInt)), _utod((_u % (10u32 : stdgo.GoUInt) : stdgo.GoUInt))));
        } else if (((_width == (4 : stdgo.GoInt)) && (_u < (10000u32 : stdgo.GoUInt) : Bool) : Bool)) {
            return (_b.__append__(_utod((_u / (1000u32 : stdgo.GoUInt) : stdgo.GoUInt)), _utod(((_u / (100u32 : stdgo.GoUInt) : stdgo.GoUInt) % (10u32 : stdgo.GoUInt) : stdgo.GoUInt)), _utod(((_u / (10u32 : stdgo.GoUInt) : stdgo.GoUInt) % (10u32 : stdgo.GoUInt) : stdgo.GoUInt)), _utod((_u % (10u32 : stdgo.GoUInt) : stdgo.GoUInt))));
        };
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        if (_u == ((0u32 : stdgo.GoUInt))) {
            _n = (1 : stdgo.GoInt);
        };
        {
            var _u2:stdgo.GoUInt = _u;
            stdgo.Go.cfor((_u2 > (0u32 : stdgo.GoUInt) : Bool), _u2 = (_u2 / ((10u32 : stdgo.GoUInt)) : stdgo.GoUInt), {
                _n++;
            });
        };
        {
            var _pad:stdgo.GoInt = (_width - _n : stdgo.GoInt);
            stdgo.Go.cfor((_pad > (0 : stdgo.GoInt) : Bool), _pad--, {
                _b = (_b.__append__((48 : stdgo.GoUInt8)));
            });
        };
        if ((((_b.length) + _n : stdgo.GoInt) <= _b.capacity : Bool)) {
            _b = (_b.__slice__(0, ((_b.length) + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            _b = (_b.__append__(...((new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        };
        var _i:stdgo.GoInt = ((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        while (((_u >= (10u32 : stdgo.GoUInt) : Bool) && (_i > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _q:stdgo.GoUInt = (_u / (10u32 : stdgo.GoUInt) : stdgo.GoUInt);
            _b[(_i : stdgo.GoInt)] = _utod((_u - (_q * (10u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt));
            _u = _q;
            _i--;
        };
        _b[(_i : stdgo.GoInt)] = _utod(_u);
        return _b;
    }
macro function _atoi<T_bytes>(__generic__0:haxe.macro.Expr.ExprOf<T_bytes>, _s:haxe.macro.Expr.ExprOf<T_bytes>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; }>;
function _stdFracSecond(_code:stdgo.GoInt, _n:stdgo.GoInt, _c:stdgo.GoInt):stdgo.GoInt {
        if (_c == ((46 : stdgo.GoInt))) {
            return (_code | ((((_n & (4095 : stdgo.GoInt) : stdgo.GoInt)) << (16i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt);
        };
        return ((_code | ((((_n & (4095 : stdgo.GoInt) : stdgo.GoInt)) << (16i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt) | (268435456 : stdgo.GoInt) : stdgo.GoInt);
    }
function _digitsLen(_std:stdgo.GoInt):stdgo.GoInt {
        return (((_std >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt)) & (4095 : stdgo.GoInt) : stdgo.GoInt);
    }
function _separator(_std:stdgo.GoInt):stdgo.GoByte {
        if (((_std >> (28i64 : stdgo.GoUInt64) : stdgo.GoInt)) == ((0 : stdgo.GoInt))) {
            return (46 : stdgo.GoUInt8);
        };
        return (44 : stdgo.GoUInt8);
    }
function _appendNano(_b:stdgo.Slice<stdgo.GoByte>, _nanosec:stdgo.GoInt, _std:stdgo.GoInt):stdgo.Slice<stdgo.GoByte> {
        var _trim:Bool = (_std & (65535 : stdgo.GoInt) : stdgo.GoInt) == ((35 : stdgo.GoInt));
        var _n:stdgo.GoInt = _digitsLen(_std);
        if ((_trim && (((_n == (0 : stdgo.GoInt)) || (_nanosec == (0 : stdgo.GoInt)) : Bool)) : Bool)) {
            return _b;
        };
        var _dot:stdgo.GoUInt8 = _separator(_std);
        _b = (_b.__append__(_dot));
        _b = _appendInt(_b, _nanosec, (9 : stdgo.GoInt));
        if ((_n < (9 : stdgo.GoInt) : Bool)) {
            _b = (_b.__slice__(0, (((_b.length) - (9 : stdgo.GoInt) : stdgo.GoInt) + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if (_trim) {
            while ((((_b.length) > (0 : stdgo.GoInt) : Bool) && (_b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) : Bool)) {
                _b = (_b.__slice__(0, ((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            if ((((_b.length) > (0 : stdgo.GoInt) : Bool) && (_b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == _dot) : Bool)) {
                _b = (_b.__slice__(0, ((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        return _b;
    }
function _newParseError(_layout:stdgo.GoString, _value:stdgo.GoString, _layoutElem:stdgo.GoString, _valueElem:stdgo.GoString, _message:stdgo.GoString):stdgo.Ref<ParseError> {
        var _valueCopy:stdgo.GoString = _cloneString(_value?.__copy__())?.__copy__();
        var _valueElemCopy:stdgo.GoString = _cloneString(_valueElem?.__copy__())?.__copy__();
        return (stdgo.Go.setRef((new stdgo._internal.time.Time.ParseError(_layout?.__copy__(), _valueCopy?.__copy__(), _layoutElem?.__copy__(), _valueElemCopy?.__copy__(), _message?.__copy__()) : stdgo._internal.time.Time.ParseError)) : stdgo.Ref<stdgo._internal.time.Time.ParseError>);
    }
function _cloneString(_s:stdgo.GoString):stdgo.GoString {
        return ((_s : stdgo.Slice<stdgo.GoByte>) : stdgo.GoString)?.__copy__();
    }
function _quote(_s:stdgo.GoString):stdgo.GoString {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((1 : stdgo.GoInt).toBasic(), ((_s.length) + (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _buf[(0 : stdgo.GoInt)] = (34 : stdgo.GoUInt8);
        for (_i => _c in _s) {
            if (((_c >= (128 : stdgo.GoInt32) : Bool) || (_c < (32 : stdgo.GoInt32) : Bool) : Bool)) {
                var _width:stdgo.GoInt = (0 : stdgo.GoInt);
                if (_c == ((65533 : stdgo.GoInt32))) {
                    _width = (1 : stdgo.GoInt);
                    if ((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && ((_s.__slice__(_i, (_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ((65533 : stdgo.GoInt32) : stdgo.GoString)) : Bool)) {
                        _width = (3 : stdgo.GoInt);
                    };
                } else {
                    _width = ((_c : stdgo.GoString).length);
                };
                {
                    var _j:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < _width : Bool), _j++, {
                        _buf = (_buf.__append__(...(("\\x" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                        _buf = (_buf.__append__(("0123456789abcdef" : stdgo.GoString)[((_s[(_i + _j : stdgo.GoInt)] >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)]));
                        _buf = (_buf.__append__(("0123456789abcdef" : stdgo.GoString)[((_s[(_i + _j : stdgo.GoInt)] & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)]));
                    });
                };
            } else {
                if (((_c == (34 : stdgo.GoInt32)) || (_c == (92 : stdgo.GoInt32)) : Bool)) {
                    _buf = (_buf.__append__((92 : stdgo.GoUInt8)));
                };
                _buf = (_buf.__append__(...((_c : stdgo.GoString) : Array<stdgo.GoUInt8>)));
            };
        };
        _buf = (_buf.__append__((34 : stdgo.GoUInt8)));
        return (_buf : stdgo.GoString)?.__copy__();
    }
macro function _isDigit<T_bytes>(__generic__0:haxe.macro.Expr.ExprOf<T_bytes>, _s:haxe.macro.Expr.ExprOf<T_bytes>, _i:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Bool>;
function _getnum(_s:stdgo.GoString, _fixed:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        if (!_isDigit(("" : stdgo.GoString), _s?.__copy__(), (0 : stdgo.GoInt))) {
            return { _0 : (0 : stdgo.GoInt), _1 : _s?.__copy__(), _2 : _errBad };
        };
        if (!_isDigit(("" : stdgo.GoString), _s?.__copy__(), (1 : stdgo.GoInt))) {
            if (_fixed) {
                return { _0 : (0 : stdgo.GoInt), _1 : _s?.__copy__(), _2 : _errBad };
            };
            return { _0 : ((_s[(0 : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt), _1 : (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _2 : (null : stdgo.Error) };
        };
        return { _0 : ((((_s[(0 : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt) * (10 : stdgo.GoInt) : stdgo.GoInt) + ((_s[(1 : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt) : stdgo.GoInt), _1 : (_s.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _2 : (null : stdgo.Error) };
    }
function _getnum3(_s:stdgo.GoString, _fixed:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), _i:stdgo.GoInt = __1, _n:stdgo.GoInt = __0;
        {
            _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor(((_i < (3 : stdgo.GoInt) : Bool) && _isDigit(("" : stdgo.GoString), _s?.__copy__(), _i) : Bool), _i++, {
                _n = ((_n * (10 : stdgo.GoInt) : stdgo.GoInt) + ((_s[(_i : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt) : stdgo.GoInt);
            });
        };
        if (((_i == (0 : stdgo.GoInt)) || (_fixed && _i != ((3 : stdgo.GoInt)) : Bool) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : _s?.__copy__(), _2 : _errBad };
        };
        return { _0 : _n, _1 : (_s.__slice__(_i) : stdgo.GoString)?.__copy__(), _2 : (null : stdgo.Error) };
    }
function _cutspace(_s:stdgo.GoString):stdgo.GoString {
        while ((((_s.length) > (0 : stdgo.GoInt) : Bool) && (_s[(0 : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) : Bool)) {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return _s?.__copy__();
    }
function _skip(_value:stdgo.GoString, _prefix:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        while (((_prefix.length) > (0 : stdgo.GoInt) : Bool)) {
            if (_prefix[(0 : stdgo.GoInt)] == ((32 : stdgo.GoUInt8))) {
                if ((((_value.length) > (0 : stdgo.GoInt) : Bool) && (_value[(0 : stdgo.GoInt)] != (32 : stdgo.GoUInt8)) : Bool)) {
                    return { _0 : _value?.__copy__(), _1 : _errBad };
                };
                _prefix = _cutspace(_prefix?.__copy__())?.__copy__();
                _value = _cutspace(_value?.__copy__())?.__copy__();
                continue;
            };
            if (((_value.length == (0 : stdgo.GoInt)) || (_value[(0 : stdgo.GoInt)] != _prefix[(0 : stdgo.GoInt)]) : Bool)) {
                return { _0 : _value?.__copy__(), _1 : _errBad };
            };
            _prefix = (_prefix.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            _value = (_value.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return { _0 : _value?.__copy__(), _1 : (null : stdgo.Error) };
    }
function parse(_layout:stdgo.GoString, _value:stdgo.GoString):{ var _0 : Time; var _1 : stdgo.Error; } {
        if (((_layout == ("2006-01-02T15:04:05Z07:00" : stdgo.GoString)) || (_layout == ("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString)) : Bool)) {
            {
                var __tmp__ = _parseRFC3339(("" : stdgo.GoString), _value?.__copy__(), local), _t:stdgo._internal.time.Time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
                };
            };
        };
        return _parse(_layout?.__copy__(), _value?.__copy__(), utc, local);
    }
function parseInLocation(_layout:stdgo.GoString, _value:stdgo.GoString, _loc:stdgo.Ref<Location>):{ var _0 : Time; var _1 : stdgo.Error; } {
        if (((_layout == ("2006-01-02T15:04:05Z07:00" : stdgo.GoString)) || (_layout == ("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString)) : Bool)) {
            {
                var __tmp__ = _parseRFC3339(("" : stdgo.GoString), _value?.__copy__(), _loc), _t:stdgo._internal.time.Time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
                };
            };
        };
        return _parse(_layout?.__copy__(), _value?.__copy__(), _loc, _loc);
    }
function _parse(_layout:stdgo.GoString, _value:stdgo.GoString, _defaultLocation:stdgo.Ref<Location>, _local:stdgo.Ref<Location>):{ var _0 : Time; var _1 : stdgo.Error; } {
        var __0:stdgo.GoString = _layout?.__copy__(), __1:stdgo.GoString = _value?.__copy__(), _avalue:stdgo.GoString = __1, _alayout:stdgo.GoString = __0;
        var _rangeErrString:stdgo.GoString = stdgo.Go.str()?.__copy__();
        var _amSet:Bool = false;
        var _pmSet:Bool = false;
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (-1 : stdgo.GoInt), __2:stdgo.GoInt = (-1 : stdgo.GoInt), __3:stdgo.GoInt = (-1 : stdgo.GoInt), __4:stdgo.GoInt = (0 : stdgo.GoInt), __5:stdgo.GoInt = (0 : stdgo.GoInt), __6:stdgo.GoInt = (0 : stdgo.GoInt), __7:stdgo.GoInt = (0 : stdgo.GoInt), __8:stdgo.Ref<Location> = (null : stdgo.Ref<stdgo._internal.time.Time.Location>), __9:stdgo.GoInt = (-1 : stdgo.GoInt), __10:stdgo.GoString = ("" : stdgo.GoString), _zoneName:stdgo.GoString = __10, _zoneOffset:stdgo.GoInt = __9, _z:stdgo.Ref<Location> = __8, _nsec:stdgo.GoInt = __7, _sec:stdgo.GoInt = __6, _min:stdgo.GoInt = __5, _hour:stdgo.GoInt = __4, _yday:stdgo.GoInt = __3, _day:stdgo.GoInt = __2, _month:stdgo.GoInt = __1, _year:stdgo.GoInt = __0;
        while (true) {
            var _err:stdgo.Error = (null : stdgo.Error);
            var __tmp__ = _nextStdChunk(_layout?.__copy__()), _prefix:stdgo.GoString = __tmp__._0, _std:stdgo.GoInt = __tmp__._1, _suffix:stdgo.GoString = __tmp__._2;
            var _stdstr:stdgo.GoString = (_layout.__slice__((_prefix.length), ((_layout.length) - (_suffix.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            {
                var __tmp__ = _skip(_value?.__copy__(), _prefix?.__copy__());
                _value = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time), _1 : stdgo.Go.asInterface(_newParseError(_alayout?.__copy__(), _avalue?.__copy__(), _prefix?.__copy__(), _value?.__copy__(), stdgo.Go.str()?.__copy__())) };
            };
            if (_std == ((0 : stdgo.GoInt))) {
                if ((_value.length) != ((0 : stdgo.GoInt))) {
                    return { _0 : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time), _1 : stdgo.Go.asInterface(_newParseError(_alayout?.__copy__(), _avalue?.__copy__(), stdgo.Go.str()?.__copy__(), _value?.__copy__(), ((": extra text: " : stdgo.GoString) + _quote(_value?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__())) };
                };
                break;
            };
            _layout = _suffix?.__copy__();
            var _p:stdgo.GoString = ("" : stdgo.GoString);
            var _hold:stdgo.GoString = _value?.__copy__();
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = (_std & (65535 : stdgo.GoInt) : stdgo.GoInt);
                        if (__value__ == ((276 : stdgo.GoInt))) {
                            if (((_value.length) < (2 : stdgo.GoInt) : Bool)) {
                                _err = _errBad;
                                break;
                            };
                            {
                                final __tmp__0 = (_value.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                final __tmp__1 = (_value.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                _p = __tmp__0;
                                _value = __tmp__1;
                            };
                            {
                                var __tmp__ = _atoi(("" : stdgo.GoString), _p?.__copy__());
                                _year = __tmp__._0;
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                break;
                            };
                            if ((_year >= (69 : stdgo.GoInt) : Bool)) {
                                _year = (_year + ((1900 : stdgo.GoInt)) : stdgo.GoInt);
                            } else {
                                _year = (_year + ((2000 : stdgo.GoInt)) : stdgo.GoInt);
                            };
                            break;
                        } else if (__value__ == ((275 : stdgo.GoInt))) {
                            if ((((_value.length) < (4 : stdgo.GoInt) : Bool) || !_isDigit(("" : stdgo.GoString), _value?.__copy__(), (0 : stdgo.GoInt)) : Bool)) {
                                _err = _errBad;
                                break;
                            };
                            {
                                final __tmp__0 = (_value.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                final __tmp__1 = (_value.__slice__((4 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                _p = __tmp__0;
                                _value = __tmp__1;
                            };
                            {
                                var __tmp__ = _atoi(("" : stdgo.GoString), _p?.__copy__());
                                _year = __tmp__._0;
                                _err = __tmp__._1;
                            };
                            break;
                        } else if (__value__ == ((258 : stdgo.GoInt))) {
                            {
                                var __tmp__ = _lookup(_shortMonthNames, _value?.__copy__());
                                _month = __tmp__._0;
                                _value = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            _month++;
                            break;
                        } else if (__value__ == ((257 : stdgo.GoInt))) {
                            {
                                var __tmp__ = _lookup(_longMonthNames, _value?.__copy__());
                                _month = __tmp__._0;
                                _value = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            _month++;
                            break;
                        } else if (__value__ == ((259 : stdgo.GoInt)) || __value__ == ((260 : stdgo.GoInt))) {
                            {
                                var __tmp__ = _getnum(_value?.__copy__(), _std == ((260 : stdgo.GoInt)));
                                _month = __tmp__._0;
                                _value = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (((_err == null) && (((_month <= (0 : stdgo.GoInt) : Bool) || ((12 : stdgo.GoInt) < _month : Bool) : Bool)) : Bool)) {
                                _rangeErrString = ("month" : stdgo.GoString);
                            };
                            break;
                        } else if (__value__ == ((262 : stdgo.GoInt))) {
                            {
                                var __tmp__ = _lookup(_shortDayNames, _value?.__copy__());
                                _value = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            break;
                        } else if (__value__ == ((261 : stdgo.GoInt))) {
                            {
                                var __tmp__ = _lookup(_longDayNames, _value?.__copy__());
                                _value = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            break;
                        } else if (__value__ == ((263 : stdgo.GoInt)) || __value__ == ((264 : stdgo.GoInt)) || __value__ == ((265 : stdgo.GoInt))) {
                            if (((_std == ((264 : stdgo.GoInt)) && ((_value.length) > (0 : stdgo.GoInt) : Bool) : Bool) && (_value[(0 : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) : Bool)) {
                                _value = (_value.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            };
                            {
                                var __tmp__ = _getnum(_value?.__copy__(), _std == ((265 : stdgo.GoInt)));
                                _day = __tmp__._0;
                                _value = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            break;
                        } else if (__value__ == ((266 : stdgo.GoInt)) || __value__ == ((267 : stdgo.GoInt))) {
                            {
                                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < (2 : stdgo.GoInt) : Bool), _i++, {
                                    if (((_std == ((266 : stdgo.GoInt)) && ((_value.length) > (0 : stdgo.GoInt) : Bool) : Bool) && (_value[(0 : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) : Bool)) {
                                        _value = (_value.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    };
                                });
                            };
                            {
                                var __tmp__ = _getnum3(_value?.__copy__(), _std == ((267 : stdgo.GoInt)));
                                _yday = __tmp__._0;
                                _value = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            break;
                        } else if (__value__ == ((524 : stdgo.GoInt))) {
                            {
                                var __tmp__ = _getnum(_value?.__copy__(), false);
                                _hour = __tmp__._0;
                                _value = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (((_hour < (0 : stdgo.GoInt) : Bool) || ((24 : stdgo.GoInt) <= _hour : Bool) : Bool)) {
                                _rangeErrString = ("hour" : stdgo.GoString);
                            };
                            break;
                        } else if (__value__ == ((525 : stdgo.GoInt)) || __value__ == ((526 : stdgo.GoInt))) {
                            {
                                var __tmp__ = _getnum(_value?.__copy__(), _std == ((526 : stdgo.GoInt)));
                                _hour = __tmp__._0;
                                _value = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (((_hour < (0 : stdgo.GoInt) : Bool) || ((12 : stdgo.GoInt) < _hour : Bool) : Bool)) {
                                _rangeErrString = ("hour" : stdgo.GoString);
                            };
                            break;
                        } else if (__value__ == ((527 : stdgo.GoInt)) || __value__ == ((528 : stdgo.GoInt))) {
                            {
                                var __tmp__ = _getnum(_value?.__copy__(), _std == ((528 : stdgo.GoInt)));
                                _min = __tmp__._0;
                                _value = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (((_min < (0 : stdgo.GoInt) : Bool) || ((60 : stdgo.GoInt) <= _min : Bool) : Bool)) {
                                _rangeErrString = ("minute" : stdgo.GoString);
                            };
                            break;
                        } else if (__value__ == ((529 : stdgo.GoInt)) || __value__ == ((530 : stdgo.GoInt))) {
                            {
                                var __tmp__ = _getnum(_value?.__copy__(), _std == ((530 : stdgo.GoInt)));
                                _sec = __tmp__._0;
                                _value = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                break;
                            };
                            if (((_sec < (0 : stdgo.GoInt) : Bool) || ((60 : stdgo.GoInt) <= _sec : Bool) : Bool)) {
                                _rangeErrString = ("second" : stdgo.GoString);
                                break;
                            };
                            if (((((_value.length) >= (2 : stdgo.GoInt) : Bool) && _commaOrPeriod(_value[(0 : stdgo.GoInt)]) : Bool) && _isDigit(("" : stdgo.GoString), _value?.__copy__(), (1 : stdgo.GoInt)) : Bool)) {
                                {
                                    var __tmp__ = _nextStdChunk(_layout?.__copy__());
                                    _std = __tmp__._1;
                                };
                                _std = (_std & ((65535 : stdgo.GoInt)) : stdgo.GoInt);
                                if (((_std == (34 : stdgo.GoInt)) || (_std == (35 : stdgo.GoInt)) : Bool)) {
                                    break;
                                };
                                var _n:stdgo.GoInt = (2 : stdgo.GoInt);
                                stdgo.Go.cfor(((_n < (_value.length) : Bool) && _isDigit(("" : stdgo.GoString), _value?.__copy__(), _n) : Bool), _n++, {});
                                {
                                    var __tmp__ = _parseNanoseconds(("" : stdgo.GoString), _value?.__copy__(), _n);
                                    _nsec = __tmp__._0;
                                    _rangeErrString = __tmp__._1?.__copy__();
                                    _err = __tmp__._2;
                                };
                                _value = (_value.__slice__(_n) : stdgo.GoString)?.__copy__();
                            };
                            break;
                        } else if (__value__ == ((533 : stdgo.GoInt))) {
                            if (((_value.length) < (2 : stdgo.GoInt) : Bool)) {
                                _err = _errBad;
                                break;
                            };
                            {
                                final __tmp__0 = (_value.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                final __tmp__1 = (_value.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                _p = __tmp__0;
                                _value = __tmp__1;
                            };
                            {
                                final __value__ = _p;
                                if (__value__ == (("PM" : stdgo.GoString))) {
                                    _pmSet = true;
                                } else if (__value__ == (("AM" : stdgo.GoString))) {
                                    _amSet = true;
                                } else {
                                    _err = _errBad;
                                };
                            };
                            break;
                        } else if (__value__ == ((534 : stdgo.GoInt))) {
                            if (((_value.length) < (2 : stdgo.GoInt) : Bool)) {
                                _err = _errBad;
                                break;
                            };
                            {
                                final __tmp__0 = (_value.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                final __tmp__1 = (_value.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                _p = __tmp__0;
                                _value = __tmp__1;
                            };
                            {
                                final __value__ = _p;
                                if (__value__ == (("pm" : stdgo.GoString))) {
                                    _pmSet = true;
                                } else if (__value__ == (("am" : stdgo.GoString))) {
                                    _amSet = true;
                                } else {
                                    _err = _errBad;
                                };
                            };
                            break;
                        } else if (__value__ == ((24 : stdgo.GoInt)) || __value__ == ((27 : stdgo.GoInt)) || __value__ == ((25 : stdgo.GoInt)) || __value__ == ((26 : stdgo.GoInt)) || __value__ == ((28 : stdgo.GoInt)) || __value__ == ((29 : stdgo.GoInt)) || __value__ == ((31 : stdgo.GoInt)) || __value__ == ((32 : stdgo.GoInt)) || __value__ == ((30 : stdgo.GoInt)) || __value__ == ((33 : stdgo.GoInt))) {
                            if ((((((_std == ((24 : stdgo.GoInt)) || _std == ((26 : stdgo.GoInt)) : Bool) || (_std == (27 : stdgo.GoInt)) : Bool)) && ((_value.length) >= (1 : stdgo.GoInt) : Bool) : Bool) && (_value[(0 : stdgo.GoInt)] == (90 : stdgo.GoUInt8)) : Bool)) {
                                _value = (_value.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                _z = utc;
                                break;
                            };
                            var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo.GoString = ("" : stdgo.GoString), __2:stdgo.GoString = ("" : stdgo.GoString), __3:stdgo.GoString = ("" : stdgo.GoString), _seconds:stdgo.GoString = __3, _min:stdgo.GoString = __2, _hour:stdgo.GoString = __1, _sign:stdgo.GoString = __0;
                            if (((_std == (27 : stdgo.GoInt)) || (_std == (32 : stdgo.GoInt)) : Bool)) {
                                if (((_value.length) < (6 : stdgo.GoInt) : Bool)) {
                                    _err = _errBad;
                                    break;
                                };
                                if (_value[(3 : stdgo.GoInt)] != ((58 : stdgo.GoUInt8))) {
                                    _err = _errBad;
                                    break;
                                };
                                {
                                    final __tmp__0 = (_value.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__1 = (_value.__slice__((1 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__2 = (_value.__slice__((4 : stdgo.GoInt), (6 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__3 = ("00" : stdgo.GoString);
                                    final __tmp__4 = (_value.__slice__((6 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    _sign = __tmp__0;
                                    _hour = __tmp__1;
                                    _min = __tmp__2;
                                    _seconds = __tmp__3;
                                    _value = __tmp__4;
                                };
                            } else if (((_std == (31 : stdgo.GoInt)) || (_std == (26 : stdgo.GoInt)) : Bool)) {
                                if (((_value.length) < (3 : stdgo.GoInt) : Bool)) {
                                    _err = _errBad;
                                    break;
                                };
                                {
                                    final __tmp__0 = (_value.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__1 = (_value.__slice__((1 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__2 = ("00" : stdgo.GoString);
                                    final __tmp__3 = ("00" : stdgo.GoString);
                                    final __tmp__4 = (_value.__slice__((3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    _sign = __tmp__0;
                                    _hour = __tmp__1;
                                    _min = __tmp__2;
                                    _seconds = __tmp__3;
                                    _value = __tmp__4;
                                };
                            } else if (((_std == (28 : stdgo.GoInt)) || (_std == (33 : stdgo.GoInt)) : Bool)) {
                                if (((_value.length) < (9 : stdgo.GoInt) : Bool)) {
                                    _err = _errBad;
                                    break;
                                };
                                if (((_value[(3 : stdgo.GoInt)] != (58 : stdgo.GoUInt8)) || (_value[(6 : stdgo.GoInt)] != (58 : stdgo.GoUInt8)) : Bool)) {
                                    _err = _errBad;
                                    break;
                                };
                                {
                                    final __tmp__0 = (_value.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__1 = (_value.__slice__((1 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__2 = (_value.__slice__((4 : stdgo.GoInt), (6 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__3 = (_value.__slice__((7 : stdgo.GoInt), (9 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__4 = (_value.__slice__((9 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    _sign = __tmp__0;
                                    _hour = __tmp__1;
                                    _min = __tmp__2;
                                    _seconds = __tmp__3;
                                    _value = __tmp__4;
                                };
                            } else if (((_std == (25 : stdgo.GoInt)) || (_std == (30 : stdgo.GoInt)) : Bool)) {
                                if (((_value.length) < (7 : stdgo.GoInt) : Bool)) {
                                    _err = _errBad;
                                    break;
                                };
                                {
                                    final __tmp__0 = (_value.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__1 = (_value.__slice__((1 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__2 = (_value.__slice__((3 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__3 = (_value.__slice__((5 : stdgo.GoInt), (7 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__4 = (_value.__slice__((7 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    _sign = __tmp__0;
                                    _hour = __tmp__1;
                                    _min = __tmp__2;
                                    _seconds = __tmp__3;
                                    _value = __tmp__4;
                                };
                            } else {
                                if (((_value.length) < (5 : stdgo.GoInt) : Bool)) {
                                    _err = _errBad;
                                    break;
                                };
                                {
                                    final __tmp__0 = (_value.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__1 = (_value.__slice__((1 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__2 = (_value.__slice__((3 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    final __tmp__3 = ("00" : stdgo.GoString);
                                    final __tmp__4 = (_value.__slice__((5 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    _sign = __tmp__0;
                                    _hour = __tmp__1;
                                    _min = __tmp__2;
                                    _seconds = __tmp__3;
                                    _value = __tmp__4;
                                };
                            };
                            var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), __2:stdgo.GoInt = (0 : stdgo.GoInt), _ss:stdgo.GoInt = __2, _mm:stdgo.GoInt = __1, _hr:stdgo.GoInt = __0;
                            {
                                var __tmp__ = _getnum(_hour?.__copy__(), true);
                                _hr = __tmp__._0;
                                _err = __tmp__._2;
                            };
                            if (_err == null) {
                                {
                                    var __tmp__ = _getnum(_min?.__copy__(), true);
                                    _mm = __tmp__._0;
                                    _err = __tmp__._2;
                                };
                            };
                            if (_err == null) {
                                {
                                    var __tmp__ = _getnum(_seconds?.__copy__(), true);
                                    _ss = __tmp__._0;
                                    _err = __tmp__._2;
                                };
                            };
                            _zoneOffset = (((((_hr * (60 : stdgo.GoInt) : stdgo.GoInt) + _mm : stdgo.GoInt)) * (60 : stdgo.GoInt) : stdgo.GoInt) + _ss : stdgo.GoInt);
                            {
                                final __value__ = _sign[(0 : stdgo.GoInt)];
                                if (__value__ == ((43 : stdgo.GoUInt8))) {} else if (__value__ == ((45 : stdgo.GoUInt8))) {
                                    _zoneOffset = -_zoneOffset;
                                } else {
                                    _err = _errBad;
                                };
                            };
                            break;
                        } else if (__value__ == ((23 : stdgo.GoInt))) {
                            if ((((_value.length) >= (3 : stdgo.GoInt) : Bool) && ((_value.__slice__((0 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.GoString) == ("UTC" : stdgo.GoString)) : Bool)) {
                                _z = utc;
                                _value = (_value.__slice__((3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                break;
                            };
                            var __tmp__ = _parseTimeZone(_value?.__copy__()), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (!_ok) {
                                _err = _errBad;
                                break;
                            };
                            {
                                final __tmp__0 = (_value.__slice__(0, _n) : stdgo.GoString)?.__copy__();
                                final __tmp__1 = (_value.__slice__(_n) : stdgo.GoString)?.__copy__();
                                _zoneName = __tmp__0;
                                _value = __tmp__1;
                            };
                            break;
                        } else if (__value__ == ((34 : stdgo.GoInt))) {
                            var _ndigit:stdgo.GoInt = ((1 : stdgo.GoInt) + _digitsLen(_std) : stdgo.GoInt);
                            if (((_value.length) < _ndigit : Bool)) {
                                _err = _errBad;
                                break;
                            };
                            {
                                var __tmp__ = _parseNanoseconds(("" : stdgo.GoString), _value?.__copy__(), _ndigit);
                                _nsec = __tmp__._0;
                                _rangeErrString = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            _value = (_value.__slice__(_ndigit) : stdgo.GoString)?.__copy__();
                            break;
                        } else if (__value__ == ((35 : stdgo.GoInt))) {
                            if ((((((_value.length) < (2 : stdgo.GoInt) : Bool) || !_commaOrPeriod(_value[(0 : stdgo.GoInt)]) : Bool) || (_value[(1 : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || ((57 : stdgo.GoUInt8) < _value[(1 : stdgo.GoInt)] : Bool) : Bool)) {
                                break;
                            };
                            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                            while (((((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_value.length) : Bool) && ((48 : stdgo.GoUInt8) <= _value[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool) : Bool) && (_value[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                                _i++;
                            };
                            {
                                var __tmp__ = _parseNanoseconds(("" : stdgo.GoString), _value?.__copy__(), ((1 : stdgo.GoInt) + _i : stdgo.GoInt));
                                _nsec = __tmp__._0;
                                _rangeErrString = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            _value = (_value.__slice__(((1 : stdgo.GoInt) + _i : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            break;
                        };
                    };
                    break;
                };
            };
            if (_rangeErrString != (stdgo.Go.str())) {
                return { _0 : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time), _1 : stdgo.Go.asInterface(_newParseError(_alayout?.__copy__(), _avalue?.__copy__(), _stdstr?.__copy__(), _value?.__copy__(), (((": " : stdgo.GoString) + _rangeErrString?.__copy__() : stdgo.GoString) + (" out of range" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__())) };
            };
            if (_err != null) {
                return { _0 : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time), _1 : stdgo.Go.asInterface(_newParseError(_alayout?.__copy__(), _avalue?.__copy__(), _stdstr?.__copy__(), _hold?.__copy__(), stdgo.Go.str()?.__copy__())) };
            };
        };
        if ((_pmSet && (_hour < (12 : stdgo.GoInt) : Bool) : Bool)) {
            _hour = (_hour + ((12 : stdgo.GoInt)) : stdgo.GoInt);
        } else if ((_amSet && (_hour == (12 : stdgo.GoInt)) : Bool)) {
            _hour = (0 : stdgo.GoInt);
        };
        if ((_yday >= (0 : stdgo.GoInt) : Bool)) {
            var _d:stdgo.GoInt = (0 : stdgo.GoInt);
            var _m:stdgo.GoInt = (0 : stdgo.GoInt);
            if (_isLeap(_year)) {
                if (_yday == ((60 : stdgo.GoInt))) {
                    _m = ((2 : stdgo._internal.time.Time.Month) : stdgo.GoInt);
                    _d = (29 : stdgo.GoInt);
                } else if ((_yday > (60 : stdgo.GoInt) : Bool)) {
                    _yday--;
                };
            };
            if (((_yday < (1 : stdgo.GoInt) : Bool) || (_yday > (365 : stdgo.GoInt) : Bool) : Bool)) {
                return { _0 : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time), _1 : stdgo.Go.asInterface(_newParseError(_alayout?.__copy__(), _avalue?.__copy__(), stdgo.Go.str()?.__copy__(), _value?.__copy__(), (": day-of-year out of range" : stdgo.GoString))) };
            };
            if (_m == ((0 : stdgo.GoInt))) {
                _m = ((((_yday - (1 : stdgo.GoInt) : stdgo.GoInt)) / (31 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
                if (((_daysBefore[(_m : stdgo.GoInt)] : stdgo.GoInt) < _yday : Bool)) {
                    _m++;
                };
                _d = (_yday - (_daysBefore[(_m - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
            };
            if (((_month >= (0 : stdgo.GoInt) : Bool) && (_month != _m) : Bool)) {
                return { _0 : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time), _1 : stdgo.Go.asInterface(_newParseError(_alayout?.__copy__(), _avalue?.__copy__(), stdgo.Go.str()?.__copy__(), _value?.__copy__(), (": day-of-year does not match month" : stdgo.GoString))) };
            };
            _month = _m;
            if (((_day >= (0 : stdgo.GoInt) : Bool) && (_day != _d) : Bool)) {
                return { _0 : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time), _1 : stdgo.Go.asInterface(_newParseError(_alayout?.__copy__(), _avalue?.__copy__(), stdgo.Go.str()?.__copy__(), _value?.__copy__(), (": day-of-year does not match day" : stdgo.GoString))) };
            };
            _day = _d;
        } else {
            if ((_month < (0 : stdgo.GoInt) : Bool)) {
                _month = ((1 : stdgo._internal.time.Time.Month) : stdgo.GoInt);
            };
            if ((_day < (0 : stdgo.GoInt) : Bool)) {
                _day = (1 : stdgo.GoInt);
            };
        };
        if (((_day < (1 : stdgo.GoInt) : Bool) || (_day > _daysIn((_month : Month), _year) : Bool) : Bool)) {
            return { _0 : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time), _1 : stdgo.Go.asInterface(_newParseError(_alayout?.__copy__(), _avalue?.__copy__(), stdgo.Go.str()?.__copy__(), _value?.__copy__(), (": day out of range" : stdgo.GoString))) };
        };
        if (_z != null && ((_z : Dynamic).__nil__ == null || !(_z : Dynamic).__nil__)) {
            return { _0 : date(_year, (_month : Month), _day, _hour, _min, _sec, _nsec, _z)?.__copy__(), _1 : (null : stdgo.Error) };
        };
        if (_zoneOffset != ((-1 : stdgo.GoInt))) {
            var _t:stdgo._internal.time.Time.Time = date(_year, (_month : Month), _day, _hour, _min, _sec, _nsec, utc)?.__copy__();
            _t._addSec(-(_zoneOffset : stdgo.GoInt64));
            var __tmp__ = _local._lookup(_t._unixSec()), _name:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1, __1:stdgo.GoInt64 = __tmp__._2, __2:stdgo.GoInt64 = __tmp__._3, __3:Bool = __tmp__._4;
            if (((_offset == _zoneOffset) && (((_zoneName == stdgo.Go.str()) || (_name == _zoneName) : Bool)) : Bool)) {
                _t._setLoc(_local);
                return { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
            };
            var _zoneNameCopy:stdgo.GoString = _cloneString(_zoneName?.__copy__())?.__copy__();
            _t._setLoc(fixedZone(_zoneNameCopy?.__copy__(), _zoneOffset));
            return { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
        };
        if (_zoneName != (stdgo.Go.str())) {
            var _t:stdgo._internal.time.Time.Time = date(_year, (_month : Month), _day, _hour, _min, _sec, _nsec, utc)?.__copy__();
            var __tmp__ = _local._lookupName(_zoneName?.__copy__(), _t._unixSec()), _offset:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _t._addSec(-(_offset : stdgo.GoInt64));
                _t._setLoc(_local);
                return { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
            };
            if ((((_zoneName.length) > (3 : stdgo.GoInt) : Bool) && ((_zoneName.__slice__(0, (3 : stdgo.GoInt)) : stdgo.GoString) == ("GMT" : stdgo.GoString)) : Bool)) {
                {
                    var __tmp__ = _atoi(("" : stdgo.GoString), (_zoneName.__slice__((3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                    _offset = __tmp__._0;
                };
                _offset = (_offset * ((3600 : stdgo.GoInt)) : stdgo.GoInt);
            };
            var _zoneNameCopy:stdgo.GoString = _cloneString(_zoneName?.__copy__())?.__copy__();
            _t._setLoc(fixedZone(_zoneNameCopy?.__copy__(), _offset));
            return { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
        };
        return { _0 : date(_year, (_month : Month), _day, _hour, _min, _sec, _nsec, _defaultLocation)?.__copy__(), _1 : (null : stdgo.Error) };
    }
function _parseTimeZone(_value:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _length:stdgo.GoInt = (0 : stdgo.GoInt), _ok:Bool = false;
        if (((_value.length) < (3 : stdgo.GoInt) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : false };
        };
        if ((((_value.length) >= (4 : stdgo.GoInt) : Bool) && ((((_value.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) == ("ChST" : stdgo.GoString)) || ((_value.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) == ("MeST" : stdgo.GoString)) : Bool)) : Bool)) {
            return { _0 : (4 : stdgo.GoInt), _1 : true };
        };
        if ((_value.__slice__(0, (3 : stdgo.GoInt)) : stdgo.GoString) == (("GMT" : stdgo.GoString))) {
            _length = _parseGMT(_value?.__copy__());
            return { _0 : _length, _1 : true };
        };
        if (((_value[(0 : stdgo.GoInt)] == (43 : stdgo.GoUInt8)) || (_value[(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) : Bool)) {
            _length = _parseSignedOffset(_value?.__copy__());
            var _ok:Bool = (_length > (0 : stdgo.GoInt) : Bool);
            return { _0 : _length, _1 : _ok };
        };
        var _nUpper:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            _nUpper = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_nUpper < (6 : stdgo.GoInt) : Bool), _nUpper++, {
                if ((_nUpper >= (_value.length) : Bool)) {
                    break;
                };
                {
                    var _c:stdgo.GoUInt8 = _value[(_nUpper : stdgo.GoInt)];
                    if (((_c < (65 : stdgo.GoUInt8) : Bool) || ((90 : stdgo.GoUInt8) < _c : Bool) : Bool)) {
                        break;
                    };
                };
            });
        };
        {
            final __value__ = _nUpper;
            if (__value__ == ((0 : stdgo.GoInt)) || __value__ == ((1 : stdgo.GoInt)) || __value__ == ((2 : stdgo.GoInt)) || __value__ == ((6 : stdgo.GoInt))) {
                return { _0 : (0 : stdgo.GoInt), _1 : false };
            } else if (__value__ == ((5 : stdgo.GoInt))) {
                if (_value[(4 : stdgo.GoInt)] == ((84 : stdgo.GoUInt8))) {
                    return { _0 : (5 : stdgo.GoInt), _1 : true };
                };
            } else if (__value__ == ((4 : stdgo.GoInt))) {
                if (((_value[(3 : stdgo.GoInt)] == (84 : stdgo.GoUInt8)) || ((_value.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) == ("WITA" : stdgo.GoString)) : Bool)) {
                    return { _0 : (4 : stdgo.GoInt), _1 : true };
                };
            } else if (__value__ == ((3 : stdgo.GoInt))) {
                return { _0 : (3 : stdgo.GoInt), _1 : true };
            };
        };
        return { _0 : (0 : stdgo.GoInt), _1 : false };
    }
function _parseGMT(_value:stdgo.GoString):stdgo.GoInt {
        _value = (_value.__slice__((3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        if ((_value.length) == ((0 : stdgo.GoInt))) {
            return (3 : stdgo.GoInt);
        };
        return ((3 : stdgo.GoInt) + _parseSignedOffset(_value?.__copy__()) : stdgo.GoInt);
    }
function _parseSignedOffset(_value:stdgo.GoString):stdgo.GoInt {
        var _sign:stdgo.GoUInt8 = _value[(0 : stdgo.GoInt)];
        if (((_sign != (45 : stdgo.GoUInt8)) && (_sign != (43 : stdgo.GoUInt8)) : Bool)) {
            return (0 : stdgo.GoInt);
        };
        var __tmp__ = _leadingInt(("" : stdgo.GoString), (_value.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), _x:stdgo.GoUInt64 = __tmp__._0, _rem:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (((_err != null) || ((_value.__slice__((1 : stdgo.GoInt)) : stdgo.GoString) == _rem) : Bool)) {
            return (0 : stdgo.GoInt);
        };
        if ((_x > (23i64 : stdgo.GoUInt64) : Bool)) {
            return (0 : stdgo.GoInt);
        };
        return ((_value.length) - (_rem.length) : stdgo.GoInt);
    }
function _commaOrPeriod(_b:stdgo.GoByte):Bool {
        return ((_b == (46 : stdgo.GoUInt8)) || (_b == (44 : stdgo.GoUInt8)) : Bool);
    }
macro function _parseNanoseconds<T_bytes>(__generic__0:haxe.macro.Expr.ExprOf<T_bytes>, _value:haxe.macro.Expr.ExprOf<T_bytes>, _nbytes:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; }>;
macro function _leadingInt<T_bytes>(__generic__0:haxe.macro.Expr.ExprOf<T_bytes>, _s:haxe.macro.Expr.ExprOf<T_bytes>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoUInt64; var _1 : T_bytes; var _2 : stdgo.Error; }>;
function _leadingFraction(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoFloat64; var _2 : stdgo.GoString; } {
        var _x:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _scale:stdgo.GoFloat64 = (0 : stdgo.GoFloat64), _rem:stdgo.GoString = ("" : stdgo.GoString);
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        _scale = (1 : stdgo.GoFloat64);
        var _overflow:Bool = false;
        stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
            var _c:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
            if (((_c < (48 : stdgo.GoUInt8) : Bool) || (_c > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                break;
            };
            if (_overflow) {
                continue;
            };
            if ((_x > (922337203685477580i64 : stdgo.GoUInt64) : Bool)) {
                _overflow = true;
                continue;
            };
            var _y:stdgo.GoUInt64 = (((_x * (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (_c : stdgo.GoUInt64) : stdgo.GoUInt64) - (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            if ((_y > (-9223372036854775808i64 : stdgo.GoUInt64) : Bool)) {
                _overflow = true;
                continue;
            };
            _x = _y;
            _scale = (_scale * (10 : stdgo.GoFloat64) : stdgo.GoFloat64);
        });
        return { _0 : _x, _1 : _scale, _2 : (_s.__slice__(_i) : stdgo.GoString)?.__copy__() };
    }
function parseDuration(_s:stdgo.GoString):{ var _0 : Duration; var _1 : stdgo.Error; } {
        var _orig:stdgo.GoString = _s?.__copy__();
        var _d:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _neg:Bool = false;
        if (_s != (stdgo.Go.str())) {
            var _c:stdgo.GoUInt8 = _s[(0 : stdgo.GoInt)];
            if (((_c == (45 : stdgo.GoUInt8)) || (_c == (43 : stdgo.GoUInt8)) : Bool)) {
                _neg = _c == ((45 : stdgo.GoUInt8));
                _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
        if (_s == (("0" : stdgo.GoString))) {
            return { _0 : (0i64 : stdgo._internal.time.Time.Duration), _1 : (null : stdgo.Error) };
        };
        if (_s == (stdgo.Go.str())) {
            return { _0 : (0i64 : stdgo._internal.time.Time.Duration), _1 : stdgo._internal.errors.Errors.new_((("time: invalid duration " : stdgo.GoString) + _quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        while (_s != (stdgo.Go.str())) {
            var __0:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __2:stdgo.GoFloat64 = (1 : stdgo.GoFloat64), _scale:stdgo.GoFloat64 = __2, _f:stdgo.GoUInt64 = __1, _v:stdgo.GoUInt64 = __0;
            var _err:stdgo.Error = (null : stdgo.Error);
            if (!(((_s[(0 : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) || (((48 : stdgo.GoUInt8) <= _s[(0 : stdgo.GoInt)] : Bool) && (_s[(0 : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) : Bool))) {
                return { _0 : (0i64 : stdgo._internal.time.Time.Duration), _1 : stdgo._internal.errors.Errors.new_((("time: invalid duration " : stdgo.GoString) + _quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
            var _pl:stdgo.GoInt = (_s.length);
            {
                var __tmp__ = _leadingInt(("" : stdgo.GoString), _s?.__copy__());
                _v = __tmp__._0;
                _s = __tmp__._1?.__copy__();
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : (0i64 : stdgo._internal.time.Time.Duration), _1 : stdgo._internal.errors.Errors.new_((("time: invalid duration " : stdgo.GoString) + _quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
            var _pre:Bool = _pl != ((_s.length));
            var _post:Bool = false;
            if (((_s != stdgo.Go.str()) && (_s[(0 : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                var _pl:stdgo.GoInt = (_s.length);
                {
                    var __tmp__ = _leadingFraction(_s?.__copy__());
                    _f = __tmp__._0;
                    _scale = __tmp__._1;
                    _s = __tmp__._2?.__copy__();
                };
                _post = _pl != ((_s.length));
            };
            if ((!_pre && !_post : Bool)) {
                return { _0 : (0i64 : stdgo._internal.time.Time.Duration), _1 : stdgo._internal.errors.Errors.new_((("time: invalid duration " : stdgo.GoString) + _quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                var _c:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                if (((_c == (46 : stdgo.GoUInt8)) || (((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                    break;
                };
            });
            if (_i == ((0 : stdgo.GoInt))) {
                return { _0 : (0i64 : stdgo._internal.time.Time.Duration), _1 : stdgo._internal.errors.Errors.new_((("time: missing unit in duration " : stdgo.GoString) + _quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
            var _u:stdgo.GoString = (_s.__slice__(0, _i) : stdgo.GoString)?.__copy__();
            _s = (_s.__slice__(_i) : stdgo.GoString)?.__copy__();
            var __tmp__ = (_unitMap != null && _unitMap.exists(_u?.__copy__()) ? { _0 : _unitMap[_u?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoUInt64), _1 : false }), _unit:stdgo.GoUInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return { _0 : (0i64 : stdgo._internal.time.Time.Duration), _1 : stdgo._internal.errors.Errors.new_((((("time: unknown unit " : stdgo.GoString) + _quote(_u?.__copy__())?.__copy__() : stdgo.GoString) + (" in duration " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
            if ((_v > ((-9223372036854775808i64 : stdgo.GoUInt64) / _unit : stdgo.GoUInt64) : Bool)) {
                return { _0 : (0i64 : stdgo._internal.time.Time.Duration), _1 : stdgo._internal.errors.Errors.new_((("time: invalid duration " : stdgo.GoString) + _quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
            _v = (_v * (_unit) : stdgo.GoUInt64);
            if ((_f > (0i64 : stdgo.GoUInt64) : Bool)) {
                _v = (_v + ((((_f : stdgo.GoFloat64) * (((_unit : stdgo.GoFloat64) / _scale : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                if ((_v > (-9223372036854775808i64 : stdgo.GoUInt64) : Bool)) {
                    return { _0 : (0i64 : stdgo._internal.time.Time.Duration), _1 : stdgo._internal.errors.Errors.new_((("time: invalid duration " : stdgo.GoString) + _quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
                };
            };
            _d = (_d + (_v) : stdgo.GoUInt64);
            if ((_d > (-9223372036854775808i64 : stdgo.GoUInt64) : Bool)) {
                return { _0 : (0i64 : stdgo._internal.time.Time.Duration), _1 : stdgo._internal.errors.Errors.new_((("time: invalid duration " : stdgo.GoString) + _quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
        };
        if (_neg) {
            return { _0 : -(_d : Duration), _1 : (null : stdgo.Error) };
        };
        if ((_d > (9223372036854775807i64 : stdgo.GoUInt64) : Bool)) {
            return { _0 : (0i64 : stdgo._internal.time.Time.Duration), _1 : stdgo._internal.errors.Errors.new_((("time: invalid duration " : stdgo.GoString) + _quote(_orig?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        return { _0 : (_d : Duration), _1 : (null : stdgo.Error) };
    }
macro function _parseRFC3339<T_bytes>(__generic__0:haxe.macro.Expr.ExprOf<T_bytes>, _s:haxe.macro.Expr.ExprOf<T_bytes>, _local:haxe.macro.Expr.ExprOf<stdgo.Ref<Location>>):haxe.macro.Expr.ExprOf<{ var _0 : Time; var _1 : Bool; }>;
function _parseStrictRFC3339(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : Time; var _1 : stdgo.Error; } {
        var __tmp__ = _parseRFC3339((null : stdgo.Slice<stdgo.GoUInt8>), _b, local), _t:stdgo._internal.time.Time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            var __tmp__ = parse(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), (_b : stdgo.GoString)?.__copy__()), _t:stdgo._internal.time.Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time), _1 : _err };
            };
            var _num2 = function(_b:stdgo.Slice<stdgo.GoByte>):stdgo.GoByte {
                return (((10 : stdgo.GoUInt8) * ((_b[(0 : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8) + ((_b[(1 : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
            if (true) {
                return { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
            } else if (_b[(12 : stdgo.GoInt)] == ((58 : stdgo.GoUInt8))) {
                return { _0 : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.time.Time.ParseError(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), (_b : stdgo.GoString)?.__copy__(), ("15" : stdgo.GoString), (((_b.__slice__((("2006-01-02T" : stdgo.GoString).length)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.time.Time.ParseError)) : stdgo.Ref<stdgo._internal.time.Time.ParseError>)) };
            } else if (_b[(("2006-01-02T15:04:05" : stdgo.GoString).length : stdgo.GoInt)] == ((44 : stdgo.GoUInt8))) {
                return { _0 : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.time.Time.ParseError(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), (_b : stdgo.GoString)?.__copy__(), ("." : stdgo.GoString), ("," : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.time.Time.ParseError)) : stdgo.Ref<stdgo._internal.time.Time.ParseError>)) };
            } else if (_b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((90 : stdgo.GoUInt8))) {
                if ((_num2((_b.__slice__(((_b.length) - (("07:00" : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) >= (24 : stdgo.GoUInt8) : Bool)) {
                    return { _0 : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.time.Time.ParseError(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), (_b : stdgo.GoString)?.__copy__(), ("Z07:00" : stdgo.GoString), ((_b.__slice__(((_b.length) - (("Z07:00" : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), (": timezone hour out of range" : stdgo.GoString)) : stdgo._internal.time.Time.ParseError)) : stdgo.Ref<stdgo._internal.time.Time.ParseError>)) };
                } else if ((_num2((_b.__slice__(((_b.length) - (("00" : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) >= (60 : stdgo.GoUInt8) : Bool)) {
                    return { _0 : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.time.Time.ParseError(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), (_b : stdgo.GoString)?.__copy__(), ("Z07:00" : stdgo.GoString), ((_b.__slice__(((_b.length) - (("Z07:00" : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), (": timezone minute out of range" : stdgo.GoString)) : stdgo._internal.time.Time.ParseError)) : stdgo.Ref<stdgo._internal.time.Time.ParseError>)) };
                };
            } else {
                return { _0 : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.time.Time.ParseError(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), (_b : stdgo.GoString)?.__copy__(), ("2006-01-02T15:04:05Z07:00" : stdgo.GoString), (_b : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.time.Time.ParseError)) : stdgo.Ref<stdgo._internal.time.Time.ParseError>)) };
            };
        };
        return { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
    }
function _initTestingZone():Void {
        var _sources = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("../../lib/time/zoneinfo.zip" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var __tmp__ = _loadLocation(("America/Los_Angeles" : stdgo.GoString), _sources), _z:stdgo.Ref<stdgo._internal.time.Time.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(((("cannot load America/Los_Angeles for testing: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString) + ("; you may want to use -tags=timetzdata" : stdgo.GoString)?.__copy__() : stdgo.GoString));
        };
        _z._name = ("Local" : stdgo.GoString);
        _localLoc = (_z : stdgo._internal.time.Time.Location)?.__copy__();
    }
function _disablePlatformSources():() -> Void {
        var _undo:() -> Void = null;
        _platformZoneSources = (null : stdgo.Slice<stdgo.GoString>);
        return function():Void {
            _platformZoneSources = _origPlatformZoneSources;
        };
    }
function _empty(_arg:stdgo.AnyInterface, _seq:stdgo.GoUIntptr):Void {}
function checkRuntimeTimerPeriodOverflow():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _r = (stdgo.Go.setRef(({ _when : _runtimeNano(), _period : (9223372036854775807i64 : stdgo.GoInt64), _f : _empty, _arg : (null : stdgo.AnyInterface) } : stdgo._internal.time.Time.T_runtimeTimer)) : stdgo.Ref<stdgo._internal.time.Time.T_runtimeTimer>);
            _startTimer(_r);
            {
                var _a0 = _r;
                __deferstack__.unshift(() -> _stopTimer(_a0));
            };
            after((25000000i64 : stdgo._internal.time.Time.Duration)).__get__();
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function sleep(_d:Duration):Void {
        final seconds = _d.toFloat() / 1000000000;
    }
function _when(_d:Duration):stdgo.GoInt64 {
        if ((_d <= (0i64 : stdgo._internal.time.Time.Duration) : Bool)) {
            return _runtimeNano();
        };
        var _t:stdgo.GoInt64 = (_runtimeNano() + (_d : stdgo.GoInt64) : stdgo.GoInt64);
        if ((_t < (0i64 : stdgo.GoInt64) : Bool)) {
            _t = (9223372036854775807i64 : stdgo.GoInt64);
        };
        return _t;
    }
function _startTimer(_0:stdgo.Ref<T_runtimeTimer>):Void {
        final t = _0;
        t._status = 1;
        var diff = (t._when - Time._runtimeNano()) / (1000 * 1000);
        if (diff > 1 << 31 - 1) return;
        if (diff < 0) diff = 0;
        final d = (diff : stdgo.GoInt).toBasic() + 1;
        final timer = new haxe.Timer(d);
        timer.run = () -> {
            timer.stop();
            t._status = 0;
            if (t._period != (0 : stdgo.GoInt64)) {
                t._when += t._period;
                _startTimer(t);
            };
            stdgo.Go.routine(() -> t._f(t._arg, 0));
        };
        t._pp = (timer : stdgo.GoUIntptr);
    }
function _stopTimer(_0:stdgo.Ref<T_runtimeTimer>):Bool {
        final t:Dynamic = _0;
        if ((t._pp : stdgo.GoUIntptr) != (0 : stdgo.GoUIntptr)) {
            final timer:haxe.Timer = t._pp;
            timer.stop();
        };
        final wasActive = t._status == 1;
        t._status = 0;
        return wasActive;
    }
function _resetTimer(_0:stdgo.Ref<T_runtimeTimer>, _1:stdgo.GoInt64):Bool {
        final t = _0;
        final when = _1;
        final wasActive = t._status == 1;
        return wasActive;
    }
function _modTimer(_t:stdgo.Ref<T_runtimeTimer>, _when:stdgo.GoInt64, _period:stdgo.GoInt64, _f:(stdgo.AnyInterface, stdgo.GoUIntptr) -> Void, _arg:stdgo.AnyInterface, _seq:stdgo.GoUIntptr):Void {
        _stopTimer(_t);
        _t._when = _when;
        _t._period = _period;
        _t._f = _f;
        _t._arg = _arg;
        _t._seq = _seq;
        _startTimer(_t);
    }
function newTimer(_d:Duration):stdgo.Ref<Timer> {
        var _c = (new stdgo.Chan<stdgo._internal.time.Time.Time>((1 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.time.Time.Time)) : stdgo.Chan<stdgo._internal.time.Time.Time>);
        var _t = (stdgo.Go.setRef(({ c : _c, _r : ({ _when : _when(_d), _f : _sendTime, _arg : stdgo.Go.toInterface(_c) } : stdgo._internal.time.Time.T_runtimeTimer) } : stdgo._internal.time.Time.Timer)) : stdgo.Ref<stdgo._internal.time.Time.Timer>);
        _startTimer((stdgo.Go.setRef(_t._r) : stdgo.Ref<stdgo._internal.time.Time.T_runtimeTimer>));
        return _t;
    }
function _sendTime(_c:stdgo.AnyInterface, _seq:stdgo.GoUIntptr):Void {
        {
            var __select__ = true;
            while (__select__) {
                if ((stdgo.Go.typeAssert((_c : stdgo.Chan<Time>)) : stdgo.Chan<Time>) != null && (stdgo.Go.typeAssert((_c : stdgo.Chan<Time>)) : stdgo.Chan<Time>).__isSend__()) {
                    __select__ = false;
                    {
                        (stdgo.Go.typeAssert((_c : stdgo.Chan<Time>)) : stdgo.Chan<Time>).__send__(now());
                        {};
                    };
                } else {
                    __select__ = false;
                    {};
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
    }
function after(_d:Duration):stdgo.Chan<Time> {
        return newTimer(_d).c;
    }
function afterFunc(_d:Duration, _f:() -> Void):stdgo.Ref<Timer> {
        var _t = (stdgo.Go.setRef(({ _r : ({ _when : _when(_d), _f : _goFunc, _arg : stdgo.Go.toInterface(_f) } : stdgo._internal.time.Time.T_runtimeTimer) } : stdgo._internal.time.Time.Timer)) : stdgo.Ref<stdgo._internal.time.Time.Timer>);
        _startTimer((stdgo.Go.setRef(_t._r) : stdgo.Ref<stdgo._internal.time.Time.T_runtimeTimer>));
        return _t;
    }
function _goFunc(_arg:stdgo.AnyInterface, _seq:stdgo.GoUIntptr):Void {
        stdgo.Go.routine(() -> (stdgo.Go.typeAssert((_arg : () -> Void)) : () -> Void)());
    }
function _interrupt():Void {
        if (true) {
            stdgo._internal.syscall.Syscall.kill(stdgo._internal.syscall.Syscall.getpid(), (1 : stdgo._internal.syscall.Syscall.Signal));
        };
    }
function _open(_name:stdgo.GoString):{ var _0 : stdgo.GoUIntptr; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.syscall.Syscall.open(_name?.__copy__(), (0 : stdgo.GoInt), (0u32 : stdgo.GoUInt32)), _fd:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (0 : stdgo.GoUIntptr), _1 : _err };
        };
        return { _0 : (_fd : stdgo.GoUIntptr), _1 : (null : stdgo.Error) };
    }
function _read(_fd:stdgo.GoUIntptr, _buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        return stdgo._internal.syscall.Syscall.read((_fd : stdgo.GoInt), _buf);
    }
function _closefd(_fd:stdgo.GoUIntptr):Void {
        stdgo._internal.syscall.Syscall.close((_fd : stdgo.GoInt));
    }
function _preadn(_fd:stdgo.GoUIntptr, _buf:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt):stdgo.Error {
        var _whence:stdgo.GoInt = (0 : stdgo.GoInt);
        if ((_off < (0 : stdgo.GoInt) : Bool)) {
            _whence = (2 : stdgo.GoInt);
        };
        {
            var __tmp__ = stdgo._internal.syscall.Syscall.seek((_fd : stdgo.GoInt), (_off : stdgo.GoInt64), _whence), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        while (((_buf.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.syscall.Syscall.read((_fd : stdgo.GoInt), _buf), _m:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_m <= (0 : stdgo.GoInt) : Bool)) {
                if (_err == null) {
                    return stdgo._internal.errors.Errors.new_(("short read" : stdgo.GoString));
                };
                return _err;
            };
            _buf = (_buf.__slice__(_m) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return (null : stdgo.Error);
    }
function newTicker(_d:Duration):stdgo.Ref<Ticker> {
        if ((_d <= (0i64 : stdgo._internal.time.Time.Duration) : Bool)) {
            throw stdgo.Go.toInterface(("non-positive interval for NewTicker" : stdgo.GoString));
        };
        var _c = (new stdgo.Chan<stdgo._internal.time.Time.Time>((1 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.time.Time.Time)) : stdgo.Chan<stdgo._internal.time.Time.Time>);
        var _t = (stdgo.Go.setRef(({ c : _c, _r : ({ _when : _when(_d), _period : (_d : stdgo.GoInt64), _f : _sendTime, _arg : stdgo.Go.toInterface(_c) } : stdgo._internal.time.Time.T_runtimeTimer) } : stdgo._internal.time.Time.Ticker)) : stdgo.Ref<stdgo._internal.time.Time.Ticker>);
        _startTimer((stdgo.Go.setRef(_t._r) : stdgo.Ref<stdgo._internal.time.Time.T_runtimeTimer>));
        return _t;
    }
function tick(_d:Duration):stdgo.Chan<Time> {
        if ((_d <= (0i64 : stdgo._internal.time.Time.Duration) : Bool)) {
            return (null : stdgo.Chan<stdgo._internal.time.Time.Time>);
        };
        return newTicker(_d).c;
    }
function _absWeekday(_abs:stdgo.GoUInt64):Weekday {
        var _sec:stdgo.GoUInt64 = (((_abs + (86400i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) % (604800i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        return (((_sec : stdgo.GoInt) / (86400 : stdgo.GoInt) : stdgo.GoInt) : Weekday);
    }
function _absClock(_abs:stdgo.GoUInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; } {
        var _hour:stdgo.GoInt = (0 : stdgo.GoInt), _min:stdgo.GoInt = (0 : stdgo.GoInt), _sec:stdgo.GoInt = (0 : stdgo.GoInt);
        _sec = ((_abs % (86400i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt);
        _hour = (_sec / (3600 : stdgo.GoInt) : stdgo.GoInt);
        _sec = (_sec - ((_hour * (3600 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        _min = (_sec / (60 : stdgo.GoInt) : stdgo.GoInt);
        _sec = (_sec - ((_min * (60 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        return { _0 : _hour, _1 : _min, _2 : _sec };
    }
function _fmtFrac(_buf:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt64, _prec:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoUInt64; } {
        var _nw:stdgo.GoInt = (0 : stdgo.GoInt), _nv:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _w:stdgo.GoInt = (_buf.length);
        var _print:Bool = false;
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _prec : Bool), _i++, {
                var _digit:stdgo.GoUInt64 = (_v % (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                _print = (_print || (_digit != (0i64 : stdgo.GoUInt64)) : Bool);
                if (_print) {
                    _w--;
                    _buf[(_w : stdgo.GoInt)] = ((_digit : stdgo.GoByte) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                };
                _v = (_v / ((10i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            });
        };
        if (_print) {
            _w--;
            _buf[(_w : stdgo.GoInt)] = (46 : stdgo.GoUInt8);
        };
        return { _0 : _w, _1 : _v };
    }
function _fmtInt(_buf:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt64):stdgo.GoInt {
        var _w:stdgo.GoInt = (_buf.length);
        if (_v == ((0i64 : stdgo.GoUInt64))) {
            _w--;
            _buf[(_w : stdgo.GoInt)] = (48 : stdgo.GoUInt8);
        } else {
            while ((_v > (0i64 : stdgo.GoUInt64) : Bool)) {
                _w--;
                _buf[(_w : stdgo.GoInt)] = (((_v % (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                _v = (_v / ((10i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            };
        };
        return _w;
    }
function _lessThanHalf(_x:Duration, _y:Duration):Bool {
        return (((_x : stdgo.GoUInt64) + (_x : stdgo.GoUInt64) : stdgo.GoUInt64) < (_y : stdgo.GoUInt64) : Bool);
    }
function since(_t:Time):Duration {
        var _now:Time = ({} : stdgo._internal.time.Time.Time);
        if ((_t._wall & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            _now = (new stdgo._internal.time.Time.Time((-9223372036854775808i64 : stdgo.GoUInt64), (_runtimeNano() - _startNano : stdgo.GoInt64), null) : stdgo._internal.time.Time.Time);
        } else {
            _now = now()?.__copy__();
        };
        return _now.sub(_t?.__copy__());
    }
function until(_t:Time):Duration {
        var _now:Time = ({} : stdgo._internal.time.Time.Time);
        if ((_t._wall & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            _now = (new stdgo._internal.time.Time.Time((-9223372036854775808i64 : stdgo.GoUInt64), (_runtimeNano() - _startNano : stdgo.GoInt64), null) : stdgo._internal.time.Time.Time);
        } else {
            _now = now()?.__copy__();
        };
        return _t.sub(_now?.__copy__());
    }
function _absDate(_abs:stdgo.GoUInt64, _full:Bool):{ var _0 : stdgo.GoInt; var _1 : Month; var _2 : stdgo.GoInt; var _3 : stdgo.GoInt; } {
        var _year:stdgo.GoInt = (0 : stdgo.GoInt), _month:Month = ((0 : stdgo.GoInt) : stdgo._internal.time.Time.Month), _day:stdgo.GoInt = (0 : stdgo.GoInt), _yday:stdgo.GoInt = (0 : stdgo.GoInt);
        var _d:stdgo.GoUInt64 = (_abs / (86400i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _n:stdgo.GoUInt64 = (_d / (146097i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _y:stdgo.GoUInt64 = ((400i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64);
        _d = (_d - (((146097i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _n = (_d / (36524i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _n = (_n - ((_n >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _y = (_y + (((100i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _d = (_d - (((36524i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _n = (_d / (1461i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _y = (_y + (((4i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _d = (_d - (((1461i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _n = (_d / (365i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _n = (_n - ((_n >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _y = (_y + (_n) : stdgo.GoUInt64);
        _d = (_d - (((365i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _year = (((_y : stdgo.GoInt64) + (-292277022399i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt);
        _yday = (_d : stdgo.GoInt);
        if (!_full) {
            return { _0 : _year, _1 : _month, _2 : _day, _3 : _yday };
        };
        _day = _yday;
        if (_isLeap(_year)) {
            if ((_day > (59 : stdgo.GoInt) : Bool)) {
                _day--;
            } else if (_day == ((59 : stdgo.GoInt))) {
                _month = (2 : stdgo._internal.time.Time.Month);
                _day = (29 : stdgo.GoInt);
                return { _0 : _year, _1 : _month, _2 : _day, _3 : _yday };
            };
        };
        _month = ((_day / (31 : stdgo.GoInt) : stdgo.GoInt) : Month);
        var _end:stdgo.GoInt = (_daysBefore[((_month + (1 : stdgo._internal.time.Time.Month) : stdgo._internal.time.Time.Month) : stdgo.GoInt)] : stdgo.GoInt);
        var _begin:stdgo.GoInt = (0 : stdgo.GoInt);
        if ((_day >= _end : Bool)) {
            _month++;
            _begin = _end;
        } else {
            _begin = (_daysBefore[(_month : stdgo.GoInt)] : stdgo.GoInt);
        };
        _month++;
        _day = ((_day - _begin : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        return { _0 : _year, _1 : _month, _2 : _day, _3 : _yday };
    }
function _daysIn(_m:Month, _year:stdgo.GoInt):stdgo.GoInt {
        if (((_m == (2 : stdgo._internal.time.Time.Month)) && _isLeap(_year) : Bool)) {
            return (29 : stdgo.GoInt);
        };
        return ((_daysBefore[(_m : stdgo.GoInt)] - _daysBefore[((_m - (1 : stdgo._internal.time.Time.Month) : stdgo._internal.time.Time.Month) : stdgo.GoInt)] : stdgo.GoInt32) : stdgo.GoInt);
    }
function _daysSinceEpoch(_year:stdgo.GoInt):stdgo.GoUInt64 {
        var _y:stdgo.GoUInt64 = (((_year : stdgo.GoInt64) - (-292277022399i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoUInt64);
        var _n:stdgo.GoUInt64 = (_y / (400i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _y = (_y - (((400i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var _d:stdgo.GoUInt64 = ((146097i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64);
        _n = (_y / (100i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _y = (_y - (((100i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _d = (_d + (((36524i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _n = (_y / (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _y = (_y - (((4i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _d = (_d + (((1461i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _n = _y;
        _d = (_d + (((365i64 : stdgo.GoUInt64) * _n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        return _d;
    }
function _now():{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt32; var _2 : stdgo.GoInt64; } {
        final n = _runtimeNano();
        return { _0 : n / 1000000000, _1 : n % 1000000000, _2 : n };
    }
function _runtimeNano():stdgo.GoInt64 {
        final x = ((Sys.time() * 1000000 * 1000) - Date.now().getTimezoneOffset() * 60000000000 : stdgo.GoInt64);
        return x;
    }
function now():Time {
        var __tmp__ = _now(), _sec:stdgo.GoInt64 = __tmp__._0, _nsec:stdgo.GoInt32 = __tmp__._1, _mono:stdgo.GoInt64 = __tmp__._2;
        _mono = (_mono - (_startNano) : stdgo.GoInt64);
        _sec = (_sec + ((2682288000i64 : stdgo.GoInt64)) : stdgo.GoInt64);
        if (((_sec : stdgo.GoUInt64) >> (33i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            return (new stdgo._internal.time.Time.Time((_nsec : stdgo.GoUInt64), (_sec + (59453308800i64 : stdgo.GoInt64) : stdgo.GoInt64), local) : stdgo._internal.time.Time.Time);
        };
        return (new stdgo._internal.time.Time.Time((((-9223372036854775808i64 : stdgo.GoUInt64) | ((_sec : stdgo.GoUInt64) << (30i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | (_nsec : stdgo.GoUInt64) : stdgo.GoUInt64), _mono, local) : stdgo._internal.time.Time.Time);
    }
function _unixTime(_sec:stdgo.GoInt64, _nsec:stdgo.GoInt32):Time {
        return (new stdgo._internal.time.Time.Time((_nsec : stdgo.GoUInt64), (_sec + (62135596800i64 : stdgo.GoInt64) : stdgo.GoInt64), local) : stdgo._internal.time.Time.Time);
    }
function unix(_sec:stdgo.GoInt64, _nsec:stdgo.GoInt64):Time {
        if (((_nsec < (0i64 : stdgo.GoInt64) : Bool) || (_nsec >= (1000000000i64 : stdgo.GoInt64) : Bool) : Bool)) {
            var _n:stdgo.GoInt64 = (_nsec / (1000000000i64 : stdgo.GoInt64) : stdgo.GoInt64);
            _sec = (_sec + (_n) : stdgo.GoInt64);
            _nsec = (_nsec - ((_n * (1000000000i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
            if ((_nsec < (0i64 : stdgo.GoInt64) : Bool)) {
                _nsec = (_nsec + ((1000000000i64 : stdgo.GoInt64)) : stdgo.GoInt64);
                _sec--;
            };
        };
        return _unixTime(_sec, (_nsec : stdgo.GoInt32))?.__copy__();
    }
function unixMilli(_msec:stdgo.GoInt64):Time {
        return unix((_msec / (1000i64 : stdgo.GoInt64) : stdgo.GoInt64), (((_msec % (1000i64 : stdgo.GoInt64) : stdgo.GoInt64)) * (1000000i64 : stdgo.GoInt64) : stdgo.GoInt64))?.__copy__();
    }
function unixMicro(_usec:stdgo.GoInt64):Time {
        return unix((_usec / (1000000i64 : stdgo.GoInt64) : stdgo.GoInt64), (((_usec % (1000000i64 : stdgo.GoInt64) : stdgo.GoInt64)) * (1000i64 : stdgo.GoInt64) : stdgo.GoInt64))?.__copy__();
    }
function _isLeap(_year:stdgo.GoInt):Bool {
        return (((_year % (4 : stdgo.GoInt) : stdgo.GoInt) == (0 : stdgo.GoInt)) && ((((_year % (100 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) || ((_year % (400 : stdgo.GoInt) : stdgo.GoInt) == (0 : stdgo.GoInt)) : Bool)) : Bool);
    }
function _norm(_hi:stdgo.GoInt, _lo:stdgo.GoInt, _base:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        var _nhi:stdgo.GoInt = (0 : stdgo.GoInt), _nlo:stdgo.GoInt = (0 : stdgo.GoInt);
        if ((_lo < (0 : stdgo.GoInt) : Bool)) {
            var _n:stdgo.GoInt = ((((-_lo - (1 : stdgo.GoInt) : stdgo.GoInt)) / _base : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
            _hi = (_hi - (_n) : stdgo.GoInt);
            _lo = (_lo + ((_n * _base : stdgo.GoInt)) : stdgo.GoInt);
        };
        if ((_lo >= _base : Bool)) {
            var _n:stdgo.GoInt = (_lo / _base : stdgo.GoInt);
            _hi = (_hi + (_n) : stdgo.GoInt);
            _lo = (_lo - ((_n * _base : stdgo.GoInt)) : stdgo.GoInt);
        };
        return { _0 : _hi, _1 : _lo };
    }
function date(_year:stdgo.GoInt, _month:Month, _day:stdgo.GoInt, _hour:stdgo.GoInt, _min:stdgo.GoInt, _sec:stdgo.GoInt, _nsec:stdgo.GoInt, _loc:stdgo.Ref<Location>):Time {
        if (_loc == null || (_loc : Dynamic).__nil__) {
            throw stdgo.Go.toInterface(("time: missing Location in call to Date" : stdgo.GoString));
        };
        var _m:stdgo.GoInt = ((_month : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
        {
            var __tmp__ = _norm(_year, _m, (12 : stdgo.GoInt));
            _year = __tmp__._0;
            _m = __tmp__._1;
        };
        _month = ((_m : Month) + (1 : stdgo._internal.time.Time.Month) : stdgo._internal.time.Time.Month);
        {
            var __tmp__ = _norm(_sec, _nsec, (1000000000 : stdgo.GoInt));
            _sec = __tmp__._0;
            _nsec = __tmp__._1;
        };
        {
            var __tmp__ = _norm(_min, _sec, (60 : stdgo.GoInt));
            _min = __tmp__._0;
            _sec = __tmp__._1;
        };
        {
            var __tmp__ = _norm(_hour, _min, (60 : stdgo.GoInt));
            _hour = __tmp__._0;
            _min = __tmp__._1;
        };
        {
            var __tmp__ = _norm(_day, _hour, (24 : stdgo.GoInt));
            _day = __tmp__._0;
            _hour = __tmp__._1;
        };
        var _d:stdgo.GoUInt64 = _daysSinceEpoch(_year);
        _d = (_d + ((_daysBefore[((_month - (1 : stdgo._internal.time.Time.Month) : stdgo._internal.time.Time.Month) : stdgo.GoInt)] : stdgo.GoUInt64)) : stdgo.GoUInt64);
        if ((_isLeap(_year) && (_month >= (3 : stdgo._internal.time.Time.Month) : Bool) : Bool)) {
            _d++;
        };
        _d = (_d + (((_day - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var _abs:stdgo.GoUInt64 = (_d * (86400i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _abs = (_abs + (((((_hour * (3600 : stdgo.GoInt) : stdgo.GoInt) + (_min * (60 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + _sec : stdgo.GoInt) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var _unix:stdgo.GoInt64 = ((_abs : stdgo.GoInt64) + (-9223372028715321600i64 : stdgo.GoInt64) : stdgo.GoInt64);
        var __tmp__ = _loc._lookup(_unix), __1:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1, _start:stdgo.GoInt64 = __tmp__._2, _end:stdgo.GoInt64 = __tmp__._3, __2:Bool = __tmp__._4;
        if (_offset != ((0 : stdgo.GoInt))) {
            var _utc:stdgo.GoInt64 = (_unix - (_offset : stdgo.GoInt64) : stdgo.GoInt64);
            if (((_utc < _start : Bool) || (_utc >= _end : Bool) : Bool)) {
                {
                    var __tmp__ = _loc._lookup(_utc);
                    _offset = __tmp__._1;
                };
            };
            _unix = (_unix - ((_offset : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        var _t:stdgo._internal.time.Time.Time = _unixTime(_unix, (_nsec : stdgo.GoInt32))?.__copy__();
        _t._setLoc(_loc);
        return _t?.__copy__();
    }
function _div(_t:Time, _d:Duration):{ var _0 : stdgo.GoInt; var _1 : Duration; } {
        var _qmod2:stdgo.GoInt = (0 : stdgo.GoInt), _r:Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration);
        var _neg:Bool = false;
        var _nsec:stdgo.GoInt32 = _t._nsec();
        var _sec:stdgo.GoInt64 = _t._sec();
        if ((_sec < (0i64 : stdgo.GoInt64) : Bool)) {
            _neg = true;
            _sec = -_sec;
            _nsec = -_nsec;
            if ((_nsec < (0 : stdgo.GoInt32) : Bool)) {
                _nsec = (_nsec + ((1000000000 : stdgo.GoInt32)) : stdgo.GoInt32);
                _sec--;
            };
        };
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                if (((_d < (1000000000i64 : stdgo._internal.time.Time.Duration) : Bool) && (((1000000000i64 : stdgo._internal.time.Time.Duration) % ((_d + _d : stdgo._internal.time.Time.Duration)) : stdgo._internal.time.Time.Duration) == (0i64 : stdgo._internal.time.Time.Duration)) : Bool)) {
                    _qmod2 = (((_nsec / (_d : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt) & (1 : stdgo.GoInt) : stdgo.GoInt);
                    _r = ((_nsec % (_d : stdgo.GoInt32) : stdgo.GoInt32) : Duration);
                    break;
                } else if ((_d % (1000000000i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration) == ((0i64 : stdgo._internal.time.Time.Duration))) {
                    var _d1:stdgo.GoInt64 = ((_d / (1000000000i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration) : stdgo.GoInt64);
                    _qmod2 = (((_sec / _d1 : stdgo.GoInt64) : stdgo.GoInt) & (1 : stdgo.GoInt) : stdgo.GoInt);
                    _r = ((((_sec % _d1 : stdgo.GoInt64) : Duration) * (1000000000i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration) + (_nsec : Duration) : stdgo._internal.time.Time.Duration);
                    break;
                } else {
                    var _sec:stdgo.GoUInt64 = (_sec : stdgo.GoUInt64);
                    var _tmp:stdgo.GoUInt64 = (((_sec >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) * (1000000000i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    var _u1:stdgo.GoUInt64 = (_tmp >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    var _u0:stdgo.GoUInt64 = (_tmp << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _tmp = (((_sec & (4294967295i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) * (1000000000i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    var __0:stdgo.GoUInt64 = _u0, __1:stdgo.GoUInt64 = (_u0 + _tmp : stdgo.GoUInt64), _u0:stdgo.GoUInt64 = __1, _u0x:stdgo.GoUInt64 = __0;
                    if ((_u0 < _u0x : Bool)) {
                        _u1++;
                    };
                    {
                        final __tmp__0 = _u0;
                        final __tmp__1 = (_u0 + (_nsec : stdgo.GoUInt64) : stdgo.GoUInt64);
                        _u0x = __tmp__0;
                        _u0 = __tmp__1;
                    };
                    if ((_u0 < _u0x : Bool)) {
                        _u1++;
                    };
                    var _d1:stdgo.GoUInt64 = (_d : stdgo.GoUInt64);
                    while ((_d1 >> (63i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((1i64 : stdgo.GoUInt64))) {
                        _d1 = (_d1 << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    };
                    var _d0:stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
                    while (true) {
                        _qmod2 = (0 : stdgo.GoInt);
                        if (((_u1 > _d1 : Bool) || (_u1 == (_d1) && (_u0 >= _d0 : Bool) : Bool) : Bool)) {
                            _qmod2 = (1 : stdgo.GoInt);
                            {
                                final __tmp__0 = _u0;
                                final __tmp__1 = (_u0 - _d0 : stdgo.GoUInt64);
                                _u0x = __tmp__0;
                                _u0 = __tmp__1;
                            };
                            if ((_u0 > _u0x : Bool)) {
                                _u1--;
                            };
                            _u1 = (_u1 - (_d1) : stdgo.GoUInt64);
                        };
                        if (((_d1 == (0i64 : stdgo.GoUInt64)) && (_d0 == (_d : stdgo.GoUInt64)) : Bool)) {
                            break;
                        };
                        _d0 = (_d0 >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                        _d0 = (_d0 | ((((_d1 & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) << (63i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                        _d1 = (_d1 >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    };
                    _r = (_u0 : Duration);
                };
                break;
            };
        };
        if ((_neg && (_r != (0i64 : stdgo._internal.time.Time.Duration)) : Bool)) {
            _qmod2 = (_qmod2 ^ ((1 : stdgo.GoInt)) : stdgo.GoInt);
            _r = (_d - _r : stdgo._internal.time.Time.Duration);
        };
        return { _0 : _qmod2, _1 : _r };
    }
function fixedZone(_name:stdgo.GoString, _offset:stdgo.GoInt):stdgo.Ref<Location> {
        {};
        {};
        var _hour:stdgo.GoInt = ((_offset / (60 : stdgo.GoInt) : stdgo.GoInt) / (60 : stdgo.GoInt) : stdgo.GoInt);
        if ((((_name == (stdgo.Go.str()) && ((-12 : stdgo.GoInt) <= _hour : Bool) : Bool) && (_hour <= (14 : stdgo.GoInt) : Bool) : Bool) && (((_hour * (60 : stdgo.GoInt) : stdgo.GoInt) * (60 : stdgo.GoInt) : stdgo.GoInt) == _offset) : Bool)) {
            _unnamedFixedZonesOnce.do_(function():Void {
                _unnamedFixedZones = (new stdgo.Slice<stdgo.Ref<stdgo._internal.time.Time.Location>>((27 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.time.Time.Location>>);
                {
                    var _hr:stdgo.GoInt = (-12 : stdgo.GoInt);
                    stdgo.Go.cfor((_hr <= (14 : stdgo.GoInt) : Bool), _hr++, {
                        _unnamedFixedZones[(_hr + (12 : stdgo.GoInt) : stdgo.GoInt)] = _fixedZone(stdgo.Go.str()?.__copy__(), ((_hr * (60 : stdgo.GoInt) : stdgo.GoInt) * (60 : stdgo.GoInt) : stdgo.GoInt));
                    });
                };
            });
            return _unnamedFixedZones[(_hour + (12 : stdgo.GoInt) : stdgo.GoInt)];
        };
        return _fixedZone(_name?.__copy__(), _offset);
    }
function _fixedZone(_name:stdgo.GoString, _offset:stdgo.GoInt):stdgo.Ref<Location> {
        var _l = (stdgo.Go.setRef(({ _name : _name?.__copy__(), _zone : (new stdgo.Slice<stdgo._internal.time.Time.T_zone>(1, 1, ...[(new stdgo._internal.time.Time.T_zone(_name?.__copy__(), _offset, false) : stdgo._internal.time.Time.T_zone)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.time.Time.T_zone)])) : stdgo.Slice<stdgo._internal.time.Time.T_zone>), _tx : (new stdgo.Slice<stdgo._internal.time.Time.T_zoneTrans>(1, 1, ...[(new stdgo._internal.time.Time.T_zoneTrans((-9223372036854775808i64 : stdgo.GoInt64), (0 : stdgo.GoUInt8), false, false) : stdgo._internal.time.Time.T_zoneTrans)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.time.Time.T_zoneTrans)])) : stdgo.Slice<stdgo._internal.time.Time.T_zoneTrans>), _cacheStart : (-9223372036854775808i64 : stdgo.GoInt64), _cacheEnd : (9223372036854775807i64 : stdgo.GoInt64) } : stdgo._internal.time.Time.Location)) : stdgo.Ref<stdgo._internal.time.Time.Location>);
        _l._cacheZone = (stdgo.Go.setRef(_l._zone[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.time.Time.T_zone>);
        return _l;
    }
function _tzset(_s:stdgo.GoString, _lastTxSec:stdgo.GoInt64, _sec:stdgo.GoInt64):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; var _5 : Bool; } {
        var _name:stdgo.GoString = ("" : stdgo.GoString), _offset:stdgo.GoInt = (0 : stdgo.GoInt), _start:stdgo.GoInt64 = (0 : stdgo.GoInt64), _end:stdgo.GoInt64 = (0 : stdgo.GoInt64), _isDST:Bool = false, _ok:Bool = false;
        var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo.GoString = ("" : stdgo.GoString), __2:stdgo.GoInt = (0 : stdgo.GoInt), __3:stdgo.GoInt = (0 : stdgo.GoInt), _dstOffset:stdgo.GoInt = __3, _stdOffset:stdgo.GoInt = __2, _dstName:stdgo.GoString = __1, _stdName:stdgo.GoString = __0;
        {
            var __tmp__ = _tzsetName(_s?.__copy__());
            _stdName = __tmp__._0?.__copy__();
            _s = __tmp__._1?.__copy__();
            _ok = __tmp__._2;
        };
        if (_ok) {
            {
                var __tmp__ = _tzsetOffset(_s?.__copy__());
                _stdOffset = __tmp__._0;
                _s = __tmp__._1?.__copy__();
                _ok = __tmp__._2;
            };
        };
        if (!_ok) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : (0 : stdgo.GoInt), _2 : (0i64 : stdgo.GoInt64), _3 : (0i64 : stdgo.GoInt64), _4 : false, _5 : false };
        };
        _stdOffset = -_stdOffset;
        if (((_s.length == (0 : stdgo.GoInt)) || (_s[(0 : stdgo.GoInt)] == (44 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : _stdName?.__copy__(), _1 : _stdOffset, _2 : _lastTxSec, _3 : (9223372036854775807i64 : stdgo.GoInt64), _4 : false, _5 : true };
        };
        {
            var __tmp__ = _tzsetName(_s?.__copy__());
            _dstName = __tmp__._0?.__copy__();
            _s = __tmp__._1?.__copy__();
            _ok = __tmp__._2;
        };
        if (_ok) {
            if (((_s.length == (0 : stdgo.GoInt)) || (_s[(0 : stdgo.GoInt)] == (44 : stdgo.GoUInt8)) : Bool)) {
                _dstOffset = (_stdOffset + (3600 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                {
                    var __tmp__ = _tzsetOffset(_s?.__copy__());
                    _dstOffset = __tmp__._0;
                    _s = __tmp__._1?.__copy__();
                    _ok = __tmp__._2;
                };
                _dstOffset = -_dstOffset;
            };
        };
        if (!_ok) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : (0 : stdgo.GoInt), _2 : (0i64 : stdgo.GoInt64), _3 : (0i64 : stdgo.GoInt64), _4 : false, _5 : false };
        };
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            _s = (",M3.2.0,M11.1.0" : stdgo.GoString);
        };
        if (((_s[(0 : stdgo.GoInt)] != (44 : stdgo.GoUInt8)) && (_s[(0 : stdgo.GoInt)] != (59 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : (0 : stdgo.GoInt), _2 : (0i64 : stdgo.GoInt64), _3 : (0i64 : stdgo.GoInt64), _4 : false, _5 : false };
        };
        _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        var __0:T_rule = ({} : stdgo._internal.time.Time.T_rule), __1:T_rule = ({} : stdgo._internal.time.Time.T_rule), _endRule:T_rule = __1, _startRule:T_rule = __0;
        {
            var __tmp__ = _tzsetRule(_s?.__copy__());
            _startRule = __tmp__._0?.__copy__();
            _s = __tmp__._1?.__copy__();
            _ok = __tmp__._2;
        };
        if (((!_ok || (_s.length) == ((0 : stdgo.GoInt)) : Bool) || (_s[(0 : stdgo.GoInt)] != (44 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : (0 : stdgo.GoInt), _2 : (0i64 : stdgo.GoInt64), _3 : (0i64 : stdgo.GoInt64), _4 : false, _5 : false };
        };
        _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        {
            var __tmp__ = _tzsetRule(_s?.__copy__());
            _endRule = __tmp__._0?.__copy__();
            _s = __tmp__._1?.__copy__();
            _ok = __tmp__._2;
        };
        if ((!_ok || ((_s.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : (0 : stdgo.GoInt), _2 : (0i64 : stdgo.GoInt64), _3 : (0i64 : stdgo.GoInt64), _4 : false, _5 : false };
        };
        var __tmp__ = _absDate((((_sec + (62135596800i64 : stdgo.GoInt64) : stdgo.GoInt64) + (9223371966579724800i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoUInt64), false), _year:stdgo.GoInt = __tmp__._0, __1:stdgo._internal.time.Time.Month = __tmp__._1, __2:stdgo.GoInt = __tmp__._2, _yday:stdgo.GoInt = __tmp__._3;
        var _ysec:stdgo.GoInt64 = (((_yday * (86400 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64) + (_sec % (86400i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
        var _d:stdgo.GoUInt64 = _daysSinceEpoch(_year);
        var _abs:stdgo.GoInt64 = ((_d * (86400i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64);
        _abs = (_abs + ((-9223372028715321600i64 : stdgo.GoInt64)) : stdgo.GoInt64);
        var _startSec:stdgo.GoInt64 = (_tzruleTime(_year, _startRule?.__copy__(), _stdOffset) : stdgo.GoInt64);
        var _endSec:stdgo.GoInt64 = (_tzruleTime(_year, _endRule?.__copy__(), _dstOffset) : stdgo.GoInt64);
        var __0:Bool = true, __1:Bool = false, _stdIsDST:Bool = __1, _dstIsDST:Bool = __0;
        if ((_endSec < _startSec : Bool)) {
            {
                final __tmp__0 = _endSec;
                final __tmp__1 = _startSec;
                _startSec = __tmp__0;
                _endSec = __tmp__1;
            };
            {
                final __tmp__0 = _dstName?.__copy__();
                final __tmp__1 = _stdName?.__copy__();
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
        if ((_ysec < _startSec : Bool)) {
            return { _0 : _stdName?.__copy__(), _1 : _stdOffset, _2 : _abs, _3 : (_startSec + _abs : stdgo.GoInt64), _4 : _stdIsDST, _5 : true };
        } else if ((_ysec >= _endSec : Bool)) {
            return { _0 : _stdName?.__copy__(), _1 : _stdOffset, _2 : (_endSec + _abs : stdgo.GoInt64), _3 : (_abs + (31536000i64 : stdgo.GoInt64) : stdgo.GoInt64), _4 : _stdIsDST, _5 : true };
        } else {
            return { _0 : _dstName?.__copy__(), _1 : _dstOffset, _2 : (_startSec + _abs : stdgo.GoInt64), _3 : (_endSec + _abs : stdgo.GoInt64), _4 : _dstIsDST, _5 : true };
        };
    }
function _tzsetName(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } {
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
        };
        if (_s[(0 : stdgo.GoInt)] != ((60 : stdgo.GoUInt8))) {
            for (_i => _r in _s) {
                {
                    final __value__ = _r;
                    if (__value__ == ((48 : stdgo.GoInt32)) || __value__ == ((49 : stdgo.GoInt32)) || __value__ == ((50 : stdgo.GoInt32)) || __value__ == ((51 : stdgo.GoInt32)) || __value__ == ((52 : stdgo.GoInt32)) || __value__ == ((53 : stdgo.GoInt32)) || __value__ == ((54 : stdgo.GoInt32)) || __value__ == ((55 : stdgo.GoInt32)) || __value__ == ((56 : stdgo.GoInt32)) || __value__ == ((57 : stdgo.GoInt32)) || __value__ == ((44 : stdgo.GoInt32)) || __value__ == ((45 : stdgo.GoInt32)) || __value__ == ((43 : stdgo.GoInt32))) {
                        if ((_i < (3 : stdgo.GoInt) : Bool)) {
                            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
                        };
                        return { _0 : (_s.__slice__(0, _i) : stdgo.GoString)?.__copy__(), _1 : (_s.__slice__(_i) : stdgo.GoString)?.__copy__(), _2 : true };
                    };
                };
            };
            if (((_s.length) < (3 : stdgo.GoInt) : Bool)) {
                return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
            };
            return { _0 : _s?.__copy__(), _1 : stdgo.Go.str()?.__copy__(), _2 : true };
        } else {
            for (_i => _r in _s) {
                if (_r == ((62 : stdgo.GoInt32))) {
                    return { _0 : (_s.__slice__((1 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : (_s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _2 : true };
                };
            };
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
        };
    }
function _tzsetOffset(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } {
        var _offset:stdgo.GoInt = (0 : stdgo.GoInt), _rest:stdgo.GoString = ("" : stdgo.GoString), _ok:Bool = false;
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
        };
        var _neg:Bool = false;
        if (_s[(0 : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        } else if (_s[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            _neg = true;
        };
        var _hours:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __tmp__ = _tzsetNum(_s?.__copy__(), (0 : stdgo.GoInt), (168 : stdgo.GoInt));
            _hours = __tmp__._0;
            _s = __tmp__._1?.__copy__();
            _ok = __tmp__._2;
        };
        if (!_ok) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
        };
        var _off:stdgo.GoInt = (_hours * (3600 : stdgo.GoInt) : stdgo.GoInt);
        if (((_s.length == (0 : stdgo.GoInt)) || (_s[(0 : stdgo.GoInt)] != (58 : stdgo.GoUInt8)) : Bool)) {
            if (_neg) {
                _off = -_off;
            };
            return { _0 : _off, _1 : _s?.__copy__(), _2 : true };
        };
        var _mins:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __tmp__ = _tzsetNum((_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (59 : stdgo.GoInt));
            _mins = __tmp__._0;
            _s = __tmp__._1?.__copy__();
            _ok = __tmp__._2;
        };
        if (!_ok) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
        };
        _off = (_off + ((_mins * (60 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        if (((_s.length == (0 : stdgo.GoInt)) || (_s[(0 : stdgo.GoInt)] != (58 : stdgo.GoUInt8)) : Bool)) {
            if (_neg) {
                _off = -_off;
            };
            return { _0 : _off, _1 : _s?.__copy__(), _2 : true };
        };
        var _secs:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __tmp__ = _tzsetNum((_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (59 : stdgo.GoInt));
            _secs = __tmp__._0;
            _s = __tmp__._1?.__copy__();
            _ok = __tmp__._2;
        };
        if (!_ok) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
        };
        _off = (_off + (_secs) : stdgo.GoInt);
        if (_neg) {
            _off = -_off;
        };
        return { _0 : _off, _1 : _s?.__copy__(), _2 : true };
    }
function _tzsetRule(_s:stdgo.GoString):{ var _0 : T_rule; var _1 : stdgo.GoString; var _2 : Bool; } {
        var _r:T_rule = ({} : stdgo._internal.time.Time.T_rule);
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return { _0 : (new stdgo._internal.time.Time.T_rule() : stdgo._internal.time.Time.T_rule), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
        };
        var _ok:Bool = false;
        if (_s[(0 : stdgo.GoInt)] == ((74 : stdgo.GoUInt8))) {
            var _jday:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var __tmp__ = _tzsetNum((_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (1 : stdgo.GoInt), (365 : stdgo.GoInt));
                _jday = __tmp__._0;
                _s = __tmp__._1?.__copy__();
                _ok = __tmp__._2;
            };
            if (!_ok) {
                return { _0 : (new stdgo._internal.time.Time.T_rule() : stdgo._internal.time.Time.T_rule), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
            };
            _r._kind = (0 : stdgo._internal.time.Time.T_ruleKind);
            _r._day = _jday;
        } else if (_s[(0 : stdgo.GoInt)] == ((77 : stdgo.GoUInt8))) {
            var _mon:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var __tmp__ = _tzsetNum((_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (1 : stdgo.GoInt), (12 : stdgo.GoInt));
                _mon = __tmp__._0;
                _s = __tmp__._1?.__copy__();
                _ok = __tmp__._2;
            };
            if (((!_ok || (_s.length) == ((0 : stdgo.GoInt)) : Bool) || (_s[(0 : stdgo.GoInt)] != (46 : stdgo.GoUInt8)) : Bool)) {
                return { _0 : (new stdgo._internal.time.Time.T_rule() : stdgo._internal.time.Time.T_rule), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
            };
            var _week:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var __tmp__ = _tzsetNum((_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (1 : stdgo.GoInt), (5 : stdgo.GoInt));
                _week = __tmp__._0;
                _s = __tmp__._1?.__copy__();
                _ok = __tmp__._2;
            };
            if (((!_ok || (_s.length) == ((0 : stdgo.GoInt)) : Bool) || (_s[(0 : stdgo.GoInt)] != (46 : stdgo.GoUInt8)) : Bool)) {
                return { _0 : (new stdgo._internal.time.Time.T_rule() : stdgo._internal.time.Time.T_rule), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
            };
            var _day:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var __tmp__ = _tzsetNum((_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (6 : stdgo.GoInt));
                _day = __tmp__._0;
                _s = __tmp__._1?.__copy__();
                _ok = __tmp__._2;
            };
            if (!_ok) {
                return { _0 : (new stdgo._internal.time.Time.T_rule() : stdgo._internal.time.Time.T_rule), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
            };
            _r._kind = (2 : stdgo._internal.time.Time.T_ruleKind);
            _r._day = _day;
            _r._week = _week;
            _r._mon = _mon;
        } else {
            var _day:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var __tmp__ = _tzsetNum(_s?.__copy__(), (0 : stdgo.GoInt), (365 : stdgo.GoInt));
                _day = __tmp__._0;
                _s = __tmp__._1?.__copy__();
                _ok = __tmp__._2;
            };
            if (!_ok) {
                return { _0 : (new stdgo._internal.time.Time.T_rule() : stdgo._internal.time.Time.T_rule), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
            };
            _r._kind = (1 : stdgo._internal.time.Time.T_ruleKind);
            _r._day = _day;
        };
        if (((_s.length == (0 : stdgo.GoInt)) || (_s[(0 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
            _r._time = (7200 : stdgo.GoInt);
            return { _0 : _r?.__copy__(), _1 : _s?.__copy__(), _2 : true };
        };
        var __tmp__ = _tzsetOffset((_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), _offset:stdgo.GoInt = __tmp__._0, _s:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
        if (!_ok) {
            return { _0 : (new stdgo._internal.time.Time.T_rule() : stdgo._internal.time.Time.T_rule), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
        };
        _r._time = _offset;
        return { _0 : _r?.__copy__(), _1 : _s?.__copy__(), _2 : true };
    }
function _tzsetNum(_s:stdgo.GoString, _min:stdgo.GoInt, _max:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } {
        var _num:stdgo.GoInt = (0 : stdgo.GoInt), _rest:stdgo.GoString = ("" : stdgo.GoString), _ok:Bool = false;
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
        };
        _num = (0 : stdgo.GoInt);
        for (_i => _r in _s) {
            if (((_r < (48 : stdgo.GoInt32) : Bool) || (_r > (57 : stdgo.GoInt32) : Bool) : Bool)) {
                if (((_i == (0 : stdgo.GoInt)) || (_num < _min : Bool) : Bool)) {
                    return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
                };
                return { _0 : _num, _1 : (_s.__slice__(_i) : stdgo.GoString)?.__copy__(), _2 : true };
            };
            _num = (_num * ((10 : stdgo.GoInt)) : stdgo.GoInt);
            _num = (_num + (((_r : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            if ((_num > _max : Bool)) {
                return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
            };
        };
        if ((_num < _min : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
        };
        return { _0 : _num, _1 : stdgo.Go.str()?.__copy__(), _2 : true };
    }
function _tzruleTime(_year:stdgo.GoInt, _r:T_rule, _off:stdgo.GoInt):stdgo.GoInt {
        var _s:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _r._kind;
                    if (__value__ == ((0 : stdgo._internal.time.Time.T_ruleKind))) {
                        _s = (((_r._day - (1 : stdgo.GoInt) : stdgo.GoInt)) * (86400 : stdgo.GoInt) : stdgo.GoInt);
                        if ((_isLeap(_year) && (_r._day >= (60 : stdgo.GoInt) : Bool) : Bool)) {
                            _s = (_s + ((86400 : stdgo.GoInt)) : stdgo.GoInt);
                        };
                        break;
                    } else if (__value__ == ((1 : stdgo._internal.time.Time.T_ruleKind))) {
                        _s = (_r._day * (86400 : stdgo.GoInt) : stdgo.GoInt);
                        break;
                    } else if (__value__ == ((2 : stdgo._internal.time.Time.T_ruleKind))) {
                        var _m1:stdgo.GoInt = ((((_r._mon + (9 : stdgo.GoInt) : stdgo.GoInt)) % (12 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
                        var _yy0:stdgo.GoInt = _year;
                        if ((_r._mon <= (2 : stdgo.GoInt) : Bool)) {
                            _yy0--;
                        };
                        var _yy1:stdgo.GoInt = (_yy0 / (100 : stdgo.GoInt) : stdgo.GoInt);
                        var _yy2:stdgo.GoInt = (_yy0 % (100 : stdgo.GoInt) : stdgo.GoInt);
                        var _dow:stdgo.GoInt = ((((((((((((26 : stdgo.GoInt) * _m1 : stdgo.GoInt) - (2 : stdgo.GoInt) : stdgo.GoInt)) / (10 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) + _yy2 : stdgo.GoInt) + (_yy2 / (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + (_yy1 / (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) - ((2 : stdgo.GoInt) * _yy1 : stdgo.GoInt) : stdgo.GoInt)) % (7 : stdgo.GoInt) : stdgo.GoInt);
                        if ((_dow < (0 : stdgo.GoInt) : Bool)) {
                            _dow = (_dow + ((7 : stdgo.GoInt)) : stdgo.GoInt);
                        };
                        var _d:stdgo.GoInt = (_r._day - _dow : stdgo.GoInt);
                        if ((_d < (0 : stdgo.GoInt) : Bool)) {
                            _d = (_d + ((7 : stdgo.GoInt)) : stdgo.GoInt);
                        };
                        {
                            var _i:stdgo.GoInt = (1 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < _r._week : Bool), _i++, {
                                if (((_d + (7 : stdgo.GoInt) : stdgo.GoInt) >= _daysIn((_r._mon : Month), _year) : Bool)) {
                                    break;
                                };
                                _d = (_d + ((7 : stdgo.GoInt)) : stdgo.GoInt);
                            });
                        };
                        _d = (_d + ((_daysBefore[(_r._mon - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt)) : stdgo.GoInt);
                        if ((_isLeap(_year) && (_r._mon > (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _d++;
                        };
                        _s = (_d * (86400 : stdgo.GoInt) : stdgo.GoInt);
                        break;
                    };
                };
                break;
            };
        };
        return ((_s + _r._time : stdgo.GoInt) - _off : stdgo.GoInt);
    }
function loadLocation(_name:stdgo.GoString):{ var _0 : stdgo.Ref<Location>; var _1 : stdgo.Error; } {
        if (((_name == stdgo.Go.str()) || (_name == ("UTC" : stdgo.GoString)) : Bool)) {
            return { _0 : utc, _1 : (null : stdgo.Error) };
        };
        if (_name == (("Local" : stdgo.GoString))) {
            return { _0 : local, _1 : (null : stdgo.Error) };
        };
        if (((_containsDotDot(_name?.__copy__()) || _name[(0 : stdgo.GoInt)] == ((47 : stdgo.GoUInt8)) : Bool) || (_name[(0 : stdgo.GoInt)] == (92 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : null, _1 : _errLocation };
        };
        _zoneinfoOnce.do_(function():Void {
            var __tmp__ = stdgo._internal.syscall.Syscall.getenv(("ZONEINFO" : stdgo.GoString)), _env:stdgo.GoString = __tmp__._0, __1:Bool = __tmp__._1;
            _zoneinfo = stdgo.Go.pointer(_env);
        });
        var _firstErr:stdgo.Error = (null : stdgo.Error);
        if (_zoneinfo.value != (stdgo.Go.str())) {
            {
                var __tmp__ = _loadTzinfoFromDirOrZip(_zoneinfo.value?.__copy__(), _name?.__copy__()), _zoneData:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    {
                        var __tmp__ = loadLocationFromTZData(_name?.__copy__(), _zoneData), _z:stdgo.Ref<stdgo._internal.time.Time.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err == null) {
                            return { _0 : _z, _1 : (null : stdgo.Error) };
                        };
                    };
                    _firstErr = _err;
                } else if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo.Go.asInterface((2 : stdgo._internal.syscall.Syscall.Errno))))) {
                    _firstErr = _err;
                };
            };
        };
        {
            var __tmp__ = _loadLocation(_name?.__copy__(), _platformZoneSources), _z:stdgo.Ref<stdgo._internal.time.Time.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                return { _0 : _z, _1 : (null : stdgo.Error) };
            } else if (_firstErr == null) {
                _firstErr = _err;
            };
        };
        return { _0 : null, _1 : _firstErr };
    }
function _containsDotDot(_s:stdgo.GoString):Bool {
        if (((_s.length) < (2 : stdgo.GoInt) : Bool)) {
            return false;
        };
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i++, {
                if (((_s[(_i : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) && (_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                    return true;
                };
            });
        };
        return false;
    }
function _gorootZoneSource(_goroot:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        if (_goroot == (stdgo.Go.str())) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : false };
        };
        return { _0 : (_goroot + ("/lib/time/zoneinfo.zip" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _1 : true };
    }
function _initLocal():Void {
        _localLoc._name = ("Local" : stdgo.GoString);
        final d = new Date(0, 0, 0, 0, 0, 0);
        var offset = d.getTimezoneOffset() * -1;
        offset *= 60;
        var name = "UTC";
        if (offset < 0) {
            name += "-";
            offset *= -1;
        } else {
            name += "+";
        };
        name += Std.string(offset / 60);
        final min = offset % 60;
        if (min != 0) {
            name += ":" + Std.string(min);
        };
        _localLoc._zone = new stdgo.Slice<T_zone>(1, 1, ...[{ _name : (name : stdgo.GoString), _offset : offset, _isDST : false }]);
    }
function _registerLoadFromEmbeddedTZData(_f:stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; }):Void {
        _loadFromEmbeddedTZData = _f;
    }
function _byteString(_p:stdgo.Slice<stdgo.GoByte>):stdgo.GoString {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_p.length) : Bool), _i++, {
                if (_p[(_i : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                    return ((_p.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                };
            });
        };
        return (_p : stdgo.GoString)?.__copy__();
    }
function loadLocationFromTZData(_name:stdgo.GoString, _data:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.Ref<Location>; var _1 : stdgo.Error; } {
        var _d:stdgo._internal.time.Time.T_dataIO = (new stdgo._internal.time.Time.T_dataIO(_data, false) : stdgo._internal.time.Time.T_dataIO);
        {
            var _magic = _d._read((4 : stdgo.GoInt));
            if ((_magic : stdgo.GoString) != (("TZif" : stdgo.GoString))) {
                return { _0 : null, _1 : _errBadData };
            };
        };
        var _version:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            _p = _d._read((16 : stdgo.GoInt));
            if ((_p.length) != ((16 : stdgo.GoInt))) {
                return { _0 : null, _1 : _errBadData };
            } else {
                {
                    final __value__ = _p[(0 : stdgo.GoInt)];
                    if (__value__ == ((0 : stdgo.GoUInt8))) {
                        _version = (1 : stdgo.GoInt);
                    } else if (__value__ == ((50 : stdgo.GoUInt8))) {
                        _version = (2 : stdgo.GoInt);
                    } else if (__value__ == ((51 : stdgo.GoUInt8))) {
                        _version = (3 : stdgo.GoInt);
                    } else {
                        return { _0 : null, _1 : _errBadData };
                    };
                };
            };
        };
        {};
        var _n:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(6, 6, ...[for (i in 0 ... 6) (0 : stdgo.GoInt)]);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (6 : stdgo.GoInt) : Bool), _i++, {
                var __tmp__ = _d._big4(), _nn:stdgo.GoUInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    return { _0 : null, _1 : _errBadData };
                };
                if (((_nn : stdgo.GoInt) : stdgo.GoUInt32) != (_nn)) {
                    return { _0 : null, _1 : _errBadData };
                };
                _n[(_i : stdgo.GoInt)] = (_nn : stdgo.GoInt);
            });
        };
        var _is64:Bool = false;
        if ((_version > (1 : stdgo.GoInt) : Bool)) {
            var _skip:stdgo.GoInt = (((((((_n[(3 : stdgo.GoInt)] * (4 : stdgo.GoInt) : stdgo.GoInt) + _n[(3 : stdgo.GoInt)] : stdgo.GoInt) + (_n[(4 : stdgo.GoInt)] * (6 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + _n[(5 : stdgo.GoInt)] : stdgo.GoInt) + (_n[(2 : stdgo.GoInt)] * (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + _n[(1 : stdgo.GoInt)] : stdgo.GoInt) + _n[(0 : stdgo.GoInt)] : stdgo.GoInt);
            _skip = (_skip + ((20 : stdgo.GoInt)) : stdgo.GoInt);
            _d._read(_skip);
            _is64 = true;
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (6 : stdgo.GoInt) : Bool), _i++, {
                    var __tmp__ = _d._big4(), _nn:stdgo.GoUInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        return { _0 : null, _1 : _errBadData };
                    };
                    if (((_nn : stdgo.GoInt) : stdgo.GoUInt32) != (_nn)) {
                        return { _0 : null, _1 : _errBadData };
                    };
                    _n[(_i : stdgo.GoInt)] = (_nn : stdgo.GoInt);
                });
            };
        };
        var _size:stdgo.GoInt = (4 : stdgo.GoInt);
        if (_is64) {
            _size = (8 : stdgo.GoInt);
        };
        var _txtimes:stdgo._internal.time.Time.T_dataIO = (new stdgo._internal.time.Time.T_dataIO(_d._read((_n[(3 : stdgo.GoInt)] * _size : stdgo.GoInt)), false) : stdgo._internal.time.Time.T_dataIO);
        var _txzones = _d._read(_n[(3 : stdgo.GoInt)]);
        var _zonedata:stdgo._internal.time.Time.T_dataIO = (new stdgo._internal.time.Time.T_dataIO(_d._read((_n[(4 : stdgo.GoInt)] * (6 : stdgo.GoInt) : stdgo.GoInt)), false) : stdgo._internal.time.Time.T_dataIO);
        var _abbrev = _d._read(_n[(5 : stdgo.GoInt)]);
        _d._read((_n[(2 : stdgo.GoInt)] * ((_size + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt));
        var _isstd = _d._read(_n[(1 : stdgo.GoInt)]);
        var _isutc = _d._read(_n[(0 : stdgo.GoInt)]);
        if (_d._error) {
            return { _0 : null, _1 : _errBadData };
        };
        var _extend:stdgo.GoString = ("" : stdgo.GoString);
        var _rest = _d._rest();
        if (((((_rest.length) > (2 : stdgo.GoInt) : Bool) && _rest[(0 : stdgo.GoInt)] == ((10 : stdgo.GoUInt8)) : Bool) && (_rest[((_rest.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
            _extend = ((_rest.__slice__((1 : stdgo.GoInt), ((_rest.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
        };
        var _nzone:stdgo.GoInt = _n[(4 : stdgo.GoInt)];
        if (_nzone == ((0 : stdgo.GoInt))) {
            return { _0 : null, _1 : _errBadData };
        };
        var _zones = (new stdgo.Slice<stdgo._internal.time.Time.T_zone>((_nzone : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_nzone : stdgo.GoInt).toBasic() > 0 ? (_nzone : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.time.Time.T_zone)]) : stdgo.Slice<stdgo._internal.time.Time.T_zone>);
        for (_i => _ in _zones) {
            var _ok:Bool = false;
            var _n:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
            {
                {
                    var __tmp__ = _zonedata._big4();
                    _n = __tmp__._0;
                    _ok = __tmp__._1;
                };
                if (!_ok) {
                    return { _0 : null, _1 : _errBadData };
                };
            };
            if (((_n : stdgo.GoInt) : stdgo.GoUInt32) != (_n)) {
                return { _0 : null, _1 : _errBadData };
            };
            _zones[(_i : stdgo.GoInt)]._offset = ((_n : stdgo.GoInt32) : stdgo.GoInt);
            var _b:stdgo.GoByte = (0 : stdgo.GoUInt8);
            {
                {
                    var __tmp__ = _zonedata._byte();
                    _b = __tmp__._0;
                    _ok = __tmp__._1;
                };
                if (!_ok) {
                    return { _0 : null, _1 : _errBadData };
                };
            };
            _zones[(_i : stdgo.GoInt)]._isDST = _b != ((0 : stdgo.GoUInt8));
            {
                {
                    var __tmp__ = _zonedata._byte();
                    _b = __tmp__._0;
                    _ok = __tmp__._1;
                };
                if ((!_ok || ((_b : stdgo.GoInt) >= (_abbrev.length) : Bool) : Bool)) {
                    return { _0 : null, _1 : _errBadData };
                };
            };
            _zones[(_i : stdgo.GoInt)]._name = _byteString((_abbrev.__slice__(_b) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
            if (((false && ((_name.length) > (8 : stdgo.GoInt) : Bool) : Bool) && ((((_name.__slice__(0, (8 : stdgo.GoInt)) : stdgo.GoString) == ("Etc/GMT+" : stdgo.GoString)) || ((_name.__slice__(0, (8 : stdgo.GoInt)) : stdgo.GoString) == ("Etc/GMT-" : stdgo.GoString)) : Bool)) : Bool)) {
                if (_name != (("Etc/GMT+0" : stdgo.GoString))) {
                    _zones[(_i : stdgo.GoInt)]._name = (_name.__slice__((4 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                };
            };
        };
        var _tx = (new stdgo.Slice<stdgo._internal.time.Time.T_zoneTrans>((_n[(3 : stdgo.GoInt)] : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_n[(3 : stdgo.GoInt)] : stdgo.GoInt).toBasic() > 0 ? (_n[(3 : stdgo.GoInt)] : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.time.Time.T_zoneTrans)]) : stdgo.Slice<stdgo._internal.time.Time.T_zoneTrans>);
        for (_i => _ in _tx) {
            var _n:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            if (!_is64) {
                {
                    var __tmp__ = _txtimes._big4(), _n4:stdgo.GoUInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        return { _0 : null, _1 : _errBadData };
                    } else {
                        _n = ((_n4 : stdgo.GoInt32) : stdgo.GoInt64);
                    };
                };
            } else {
                {
                    var __tmp__ = _txtimes._big8(), _n8:stdgo.GoUInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        return { _0 : null, _1 : _errBadData };
                    } else {
                        _n = (_n8 : stdgo.GoInt64);
                    };
                };
            };
            _tx[(_i : stdgo.GoInt)]._when = _n;
            if (((_txzones[(_i : stdgo.GoInt)] : stdgo.GoInt) >= (_zones.length) : Bool)) {
                return { _0 : null, _1 : _errBadData };
            };
            _tx[(_i : stdgo.GoInt)]._index = _txzones[(_i : stdgo.GoInt)];
            if ((_i < (_isstd.length) : Bool)) {
                _tx[(_i : stdgo.GoInt)]._isstd = _isstd[(_i : stdgo.GoInt)] != ((0 : stdgo.GoUInt8));
            };
            if ((_i < (_isutc.length) : Bool)) {
                _tx[(_i : stdgo.GoInt)]._isutc = _isutc[(_i : stdgo.GoInt)] != ((0 : stdgo.GoUInt8));
            };
        };
        if ((_tx.length) == ((0 : stdgo.GoInt))) {
            _tx = (_tx.__append__(({ _when : (-9223372036854775808i64 : stdgo.GoInt64), _index : (0 : stdgo.GoUInt8) } : stdgo._internal.time.Time.T_zoneTrans)));
        };
        var _l = (stdgo.Go.setRef(({ _zone : _zones, _tx : _tx, _name : _name?.__copy__(), _extend : _extend?.__copy__() } : stdgo._internal.time.Time.Location)) : stdgo.Ref<stdgo._internal.time.Time.Location>);
        var __tmp__ = _now(), _sec:stdgo.GoInt64 = __tmp__._0, __1:stdgo.GoInt32 = __tmp__._1, __2:stdgo.GoInt64 = __tmp__._2;
        for (_i => _ in _tx) {
            if (((_tx[(_i : stdgo.GoInt)]._when <= _sec : Bool) && ((((_i + (1 : stdgo.GoInt) : stdgo.GoInt) == (_tx.length)) || (_sec < _tx[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]._when : Bool) : Bool)) : Bool)) {
                _l._cacheStart = _tx[(_i : stdgo.GoInt)]._when;
                _l._cacheEnd = (9223372036854775807i64 : stdgo.GoInt64);
                _l._cacheZone = (stdgo.Go.setRef(_l._zone[(_tx[(_i : stdgo.GoInt)]._index : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.time.Time.T_zone>);
                if (((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_tx.length) : Bool)) {
                    _l._cacheEnd = _tx[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]._when;
                } else if (_l._extend != (stdgo.Go.str())) {
                    {
                        var __tmp__ = _tzset(_l._extend?.__copy__(), _l._cacheStart, _sec), _name:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1, _estart:stdgo.GoInt64 = __tmp__._2, _eend:stdgo.GoInt64 = __tmp__._3, _isDST:Bool = __tmp__._4, _ok:Bool = __tmp__._5;
                        if (_ok) {
                            _l._cacheStart = _estart;
                            _l._cacheEnd = _eend;
                            {
                                var _zoneIdx:stdgo.GoInt = _findZone(_l._zone, _name?.__copy__(), _offset, _isDST);
                                if (_zoneIdx != ((-1 : stdgo.GoInt))) {
                                    _l._cacheZone = (stdgo.Go.setRef(_l._zone[(_zoneIdx : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.time.Time.T_zone>);
                                } else {
                                    _l._cacheZone = (stdgo.Go.setRef(({ _name : _name?.__copy__(), _offset : _offset, _isDST : _isDST } : stdgo._internal.time.Time.T_zone)) : stdgo.Ref<stdgo._internal.time.Time.T_zone>);
                                };
                            };
                        };
                    };
                };
                break;
            };
        };
        return { _0 : _l, _1 : (null : stdgo.Error) };
    }
function _findZone(_zones:stdgo.Slice<T_zone>, _name:stdgo.GoString, _offset:stdgo.GoInt, _isDST:Bool):stdgo.GoInt {
        for (_i => _z in _zones) {
            if (((_z._name == (_name) && _z._offset == (_offset) : Bool) && (_z._isDST == _isDST) : Bool)) {
                return _i;
            };
        };
        return (-1 : stdgo.GoInt);
    }
function _loadTzinfoFromDirOrZip(_dir:stdgo.GoString, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        if ((((_dir.length) > (4 : stdgo.GoInt) : Bool) && ((_dir.__slice__(((_dir.length) - (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == (".zip" : stdgo.GoString)) : Bool)) {
            return _loadTzinfoFromZip(_dir?.__copy__(), _name?.__copy__());
        };
        if (_dir != (stdgo.Go.str())) {
            _name = ((_dir + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _name?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return _readFile(_name?.__copy__());
    }
function _get4(_b:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt {
        if (((_b.length) < (4 : stdgo.GoInt) : Bool)) {
            return (0 : stdgo.GoInt);
        };
        return ((((_b[(0 : stdgo.GoInt)] : stdgo.GoInt) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoInt) << (16i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt) | ((_b[(3 : stdgo.GoInt)] : stdgo.GoInt) << (24i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
    }
function _get2(_b:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt {
        if (((_b.length) < (2 : stdgo.GoInt) : Bool)) {
            return (0 : stdgo.GoInt);
        };
        return ((_b[(0 : stdgo.GoInt)] : stdgo.GoInt) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
    }
function _loadTzinfoFromZip(_zipfile:stdgo.GoString, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = _open(_zipfile?.__copy__()), _fd:stdgo.GoUIntptr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            {
                var _a0 = _fd;
                __deferstack__.unshift(() -> _closefd(_a0));
            };
            {};
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((22 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _err:stdgo.Error = _preadn(_fd, _buf, (-22 : stdgo.GoInt));
                if (((_err != null) || (_get4(_buf) != (101010256 : stdgo.GoInt)) : Bool)) {
                    {
                        final __ret__:{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors.new_((("corrupt zip file " : stdgo.GoString) + _zipfile?.__copy__() : stdgo.GoString)?.__copy__()) };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            var _n:stdgo.GoInt = _get2((_buf.__slice__((10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            var _size:stdgo.GoInt = _get4((_buf.__slice__((12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            var _off:stdgo.GoInt = _get4((_buf.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _buf = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _err:stdgo.Error = _preadn(_fd, _buf, _off);
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors.new_((("corrupt zip file " : stdgo.GoString) + _zipfile?.__copy__() : stdgo.GoString)?.__copy__()) };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                    if (_get4(_buf) != ((33639248 : stdgo.GoInt))) {
                        break;
                    };
                    var _meth:stdgo.GoInt = _get2((_buf.__slice__((10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    var _size:stdgo.GoInt = _get4((_buf.__slice__((24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    var _namelen:stdgo.GoInt = _get2((_buf.__slice__((28 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    var _xlen:stdgo.GoInt = _get2((_buf.__slice__((30 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    var _fclen:stdgo.GoInt = _get2((_buf.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    var _off:stdgo.GoInt = _get4((_buf.__slice__((42 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    var _zname = (_buf.__slice__((46 : stdgo.GoInt), ((46 : stdgo.GoInt) + _namelen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _buf = (_buf.__slice__(((((46 : stdgo.GoInt) + _namelen : stdgo.GoInt) + _xlen : stdgo.GoInt) + _fclen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if ((_zname : stdgo.GoString) != (_name)) {
                        continue;
                    };
                    if (_meth != ((0 : stdgo.GoInt))) {
                        {
                            final __ret__:{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors.new_((((("unsupported compression for " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString) + (" in " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _zipfile?.__copy__() : stdgo.GoString)?.__copy__()) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                    _buf = (new stdgo.Slice<stdgo.GoUInt8>(((30 : stdgo.GoInt) + _namelen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    {
                        var _err:stdgo.Error = _preadn(_fd, _buf, _off);
                        if (((((_err != null || _get4(_buf) != ((67324752 : stdgo.GoInt)) : Bool) || _get2((_buf.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) != (_meth) : Bool) || _get2((_buf.__slice__((26 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) != (_namelen) : Bool) || (((_buf.__slice__((30 : stdgo.GoInt), ((30 : stdgo.GoInt) + _namelen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != _name) : Bool)) {
                            {
                                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors.new_((("corrupt zip file " : stdgo.GoString) + _zipfile?.__copy__() : stdgo.GoString)?.__copy__()) };
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return __ret__;
                            };
                        };
                    };
                    _xlen = _get2((_buf.__slice__((28 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _buf = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    {
                        var _err:stdgo.Error = _preadn(_fd, _buf, (((_off + (30 : stdgo.GoInt) : stdgo.GoInt) + _namelen : stdgo.GoInt) + _xlen : stdgo.GoInt));
                        if (_err != null) {
                            {
                                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors.new_((("corrupt zip file " : stdgo.GoString) + _zipfile?.__copy__() : stdgo.GoString)?.__copy__()) };
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return __ret__;
                            };
                        };
                    };
                    {
                        final __ret__:{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } = { _0 : _buf, _1 : (null : stdgo.Error) };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                });
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo.Go.asInterface((2 : stdgo._internal.syscall.Syscall.Errno)) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
function _loadTzinfo(_name:stdgo.GoString, _source:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        if ((((_source.length) >= (6 : stdgo.GoInt) : Bool) && ((_source.__slice__(((_source.length) - (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("tzdata" : stdgo.GoString)) : Bool)) {
            return _loadTzinfoFromTzdata(_source?.__copy__(), _name?.__copy__());
        };
        return _loadTzinfoFromDirOrZip(_source?.__copy__(), _name?.__copy__());
    }
function _loadLocation(_name:stdgo.GoString, _sources:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Ref<Location>; var _1 : stdgo.Error; } {
        var _z:stdgo.Ref<Location> = (null : stdgo.Ref<stdgo._internal.time.Time.Location>), _firstErr:stdgo.Error = (null : stdgo.Error);
        for (__1 => _source in _sources) {
            var __tmp__ = _loadTzinfo(_name?.__copy__(), _source?.__copy__()), _zoneData:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                {
                    {
                        var __tmp__ = loadLocationFromTZData(_name?.__copy__(), _zoneData);
                        _z = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err == null) {
                        return { _0 : _z, _1 : (null : stdgo.Error) };
                    };
                };
            };
            if (((_firstErr == null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo.Go.asInterface((2 : stdgo._internal.syscall.Syscall.Errno)))) : Bool)) {
                _firstErr = _err;
            };
        };
        if (_loadFromEmbeddedTZData != null) {
            var __tmp__ = _loadFromEmbeddedTZData(_name?.__copy__()), _zoneData:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                {
                    {
                        var __tmp__ = loadLocationFromTZData(_name?.__copy__(), (_zoneData : stdgo.Slice<stdgo.GoByte>));
                        _z = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err == null) {
                        return { _0 : _z, _1 : (null : stdgo.Error) };
                    };
                };
            };
            if (((_firstErr == null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo.Go.asInterface((2 : stdgo._internal.syscall.Syscall.Errno)))) : Bool)) {
                _firstErr = _err;
            };
        };
        {
            var __tmp__ = _gorootZoneSource(stdgo._internal.runtime.Runtime.goroot()?.__copy__()), _source:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                var __tmp__ = _loadTzinfo(_name?.__copy__(), _source?.__copy__()), _zoneData:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    {
                        {
                            var __tmp__ = loadLocationFromTZData(_name?.__copy__(), _zoneData);
                            _z = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err == null) {
                            return { _0 : _z, _1 : (null : stdgo.Error) };
                        };
                    };
                };
                if (((_firstErr == null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo.Go.asInterface((2 : stdgo._internal.syscall.Syscall.Errno)))) : Bool)) {
                    _firstErr = _err;
                };
            };
        };
        if (_firstErr != null) {
            return { _0 : null, _1 : _firstErr };
        };
        return { _0 : null, _1 : stdgo._internal.errors.Errors.new_((("unknown time zone " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString)?.__copy__()) };
    }
function _readFile(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = _open(_name?.__copy__()), _f:stdgo.GoUIntptr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            {
                var _a0 = _f;
                __deferstack__.unshift(() -> _closefd(_a0));
            };
            var __0:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(4096, 4096, ...[for (i in 0 ... 4096) (0 : stdgo.GoUInt8)]), __1:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>), __2:stdgo.GoInt = (0 : stdgo.GoInt), _n:stdgo.GoInt = __2, _ret:stdgo.Slice<stdgo.GoByte> = __1, _buf:stdgo.GoArray<stdgo.GoByte> = __0;
            while (true) {
                {
                    var __tmp__ = _read(_f, (_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
                if ((_n > (0 : stdgo.GoInt) : Bool)) {
                    _ret = (_ret.__append__(...((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                };
                if (((_n == (0 : stdgo.GoInt)) || (_err != null) : Bool)) {
                    break;
                };
                if (((_ret.length) > (10485760 : stdgo.GoInt) : Bool)) {
                    {
                        final __ret__:{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo.Go.asInterface((_name : T_fileSizeError)) };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } = { _0 : _ret, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
@:keep var _ = {
        try {
            forceUSPacificForTesting();
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class ParseError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ParseError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time.Time.ParseError_asInterface) class ParseError_static_extension {
    @:keep
    static public function error( _e:stdgo.Ref<ParseError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<ParseError> = _e;
        if (_e.message == (stdgo.Go.str())) {
            return (((((((("parsing time " : stdgo.GoString) + _quote(_e.value?.__copy__())?.__copy__() : stdgo.GoString) + (" as " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _quote(_e.layout?.__copy__())?.__copy__() : stdgo.GoString) + (": cannot parse " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _quote(_e.valueElem?.__copy__())?.__copy__() : stdgo.GoString) + (" as " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _quote(_e.layoutElem?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return ((("parsing time " : stdgo.GoString) + _quote(_e.value?.__copy__())?.__copy__() : stdgo.GoString) + _e.message?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
class Timer_asInterface {
    @:keep
    public dynamic function reset(_d:Duration):Bool return __self__.value.reset(_d);
    @:keep
    public dynamic function stop():Bool return __self__.value.stop();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Timer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time.Time.Timer_asInterface) class Timer_static_extension {
    @:keep
    static public function reset( _t:stdgo.Ref<Timer>, _d:Duration):Bool {
        @:recv var _t:stdgo.Ref<Timer> = _t;
        if (_t._r._f == null) {
            throw stdgo.Go.toInterface(("time: Reset called on uninitialized Timer" : stdgo.GoString));
        };
        var _w:stdgo.GoInt64 = _when(_d);
        return _resetTimer((stdgo.Go.setRef(_t._r) : stdgo.Ref<stdgo._internal.time.Time.T_runtimeTimer>), _w);
    }
    @:keep
    static public function stop( _t:stdgo.Ref<Timer>):Bool {
        @:recv var _t:stdgo.Ref<Timer> = _t;
        if (_t._r._f == null) {
            throw stdgo.Go.toInterface(("time: Stop called on uninitialized Timer" : stdgo.GoString));
        };
        return _stopTimer((stdgo.Go.setRef(_t._r) : stdgo.Ref<stdgo._internal.time.Time.T_runtimeTimer>));
    }
}
class Ticker_asInterface {
    @:keep
    public dynamic function reset(_d:Duration):Void __self__.value.reset(_d);
    @:keep
    public dynamic function stop():Void __self__.value.stop();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Ticker>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time.Time.Ticker_asInterface) class Ticker_static_extension {
    @:keep
    static public function reset( _t:stdgo.Ref<Ticker>, _d:Duration):Void {
        @:recv var _t:stdgo.Ref<Ticker> = _t;
        if ((_d <= (0i64 : stdgo._internal.time.Time.Duration) : Bool)) {
            throw stdgo.Go.toInterface(("non-positive interval for Ticker.Reset" : stdgo.GoString));
        };
        if (_t._r._f == null) {
            throw stdgo.Go.toInterface(("time: Reset called on uninitialized Ticker" : stdgo.GoString));
        };
        _modTimer((stdgo.Go.setRef(_t._r) : stdgo.Ref<stdgo._internal.time.Time.T_runtimeTimer>), _when(_d), (_d : stdgo.GoInt64), _t._r._f, _t._r._arg, _t._r._seq);
    }
    @:keep
    static public function stop( _t:stdgo.Ref<Ticker>):Void {
        @:recv var _t:stdgo.Ref<Ticker> = _t;
        _stopTimer((stdgo.Go.setRef(_t._r) : stdgo.Ref<stdgo._internal.time.Time.T_runtimeTimer>));
    }
}
class Time_asInterface {
    @:keep
    public dynamic function round(_d:Duration):Time return __self__.value.round(_d);
    @:keep
    public dynamic function truncate(_d:Duration):Time return __self__.value.truncate(_d);
    @:keep
    public dynamic function isDST():Bool return __self__.value.isDST();
    @:keep
    public dynamic function unmarshalText(_data:stdgo.Slice<stdgo.GoByte>):stdgo.Error return __self__.value.unmarshalText(_data);
    @:keep
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalText();
    @:keep
    public dynamic function unmarshalJSON(_data:stdgo.Slice<stdgo.GoByte>):stdgo.Error return __self__.value.unmarshalJSON(_data);
    @:keep
    public dynamic function marshalJSON():{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalJSON();
    @:keep
    public dynamic function gobDecode(_data:stdgo.Slice<stdgo.GoByte>):stdgo.Error return __self__.value.gobDecode(_data);
    @:keep
    public dynamic function gobEncode():{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return __self__.value.gobEncode();
    @:keep
    public dynamic function unmarshalBinary(_data:stdgo.Slice<stdgo.GoByte>):stdgo.Error return __self__.value.unmarshalBinary(_data);
    @:keep
    public dynamic function marshalBinary():{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalBinary();
    @:keep
    public dynamic function unixNano():stdgo.GoInt64 return __self__.value.unixNano();
    @:keep
    public dynamic function unixMicro():stdgo.GoInt64 return __self__.value.unixMicro();
    @:keep
    public dynamic function unixMilli():stdgo.GoInt64 return __self__.value.unixMilli();
    @:keep
    public dynamic function unix():stdgo.GoInt64 return __self__.value.unix();
    @:keep
    public dynamic function zoneBounds():{ var _0 : Time; var _1 : Time; } return __self__.value.zoneBounds();
    @:keep
    public dynamic function zone():{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } return __self__.value.zone();
    @:keep
    public dynamic function location():stdgo.Ref<Location> return __self__.value.location();
    @:keep
    public dynamic function in_(_loc:stdgo.Ref<Location>):Time return __self__.value.in_(_loc);
    @:keep
    public dynamic function local():Time return __self__.value.local();
    @:keep
    public dynamic function utc():Time return __self__.value.utc();
    @:keep
    public dynamic function _date(_full:Bool):{ var _0 : stdgo.GoInt; var _1 : Month; var _2 : stdgo.GoInt; var _3 : stdgo.GoInt; } return __self__.value._date(_full);
    @:keep
    public dynamic function addDate(_years:stdgo.GoInt, _months:stdgo.GoInt, _days:stdgo.GoInt):Time return __self__.value.addDate(_years, _months, _days);
    @:keep
    public dynamic function sub(_u:Time):Duration return __self__.value.sub(_u);
    @:keep
    public dynamic function add(_d:Duration):Time return __self__.value.add(_d);
    @:keep
    public dynamic function yearDay():stdgo.GoInt return __self__.value.yearDay();
    @:keep
    public dynamic function nanosecond():stdgo.GoInt return __self__.value.nanosecond();
    @:keep
    public dynamic function second():stdgo.GoInt return __self__.value.second();
    @:keep
    public dynamic function minute():stdgo.GoInt return __self__.value.minute();
    @:keep
    public dynamic function hour():stdgo.GoInt return __self__.value.hour();
    @:keep
    public dynamic function clock():{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; } return __self__.value.clock();
    @:keep
    public dynamic function isoweek():{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } return __self__.value.isoweek();
    @:keep
    public dynamic function weekday():Weekday return __self__.value.weekday();
    @:keep
    public dynamic function day():stdgo.GoInt return __self__.value.day();
    @:keep
    public dynamic function month():Month return __self__.value.month();
    @:keep
    public dynamic function year():stdgo.GoInt return __self__.value.year();
    @:keep
    public dynamic function date():{ var _0 : stdgo.GoInt; var _1 : Month; var _2 : stdgo.GoInt; } return __self__.value.date();
    @:keep
    public dynamic function _locabs():{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoUInt64; } return __self__.value._locabs();
    @:keep
    public dynamic function _abs():stdgo.GoUInt64 return __self__.value._abs();
    @:keep
    public dynamic function isZero():Bool return __self__.value.isZero();
    @:keep
    public dynamic function equal(_u:Time):Bool return __self__.value.equal(_u);
    @:keep
    public dynamic function compare(_u:Time):stdgo.GoInt return __self__.value.compare(_u);
    @:keep
    public dynamic function before(_u:Time):Bool return __self__.value.before(_u);
    @:keep
    public dynamic function after(_u:Time):Bool return __self__.value.after(_u);
    @:keep
    public dynamic function _mono():stdgo.GoInt64 return __self__.value._mono();
    @:keep
    public dynamic function _setMono(_m:stdgo.GoInt64):Void __self__.value._setMono(_m);
    @:keep
    public dynamic function _stripMono():Void __self__.value._stripMono();
    @:keep
    public dynamic function _setLoc(_loc:stdgo.Ref<Location>):Void __self__.value._setLoc(_loc);
    @:keep
    public dynamic function _addSec(_d:stdgo.GoInt64):Void __self__.value._addSec(_d);
    @:keep
    public dynamic function _unixSec():stdgo.GoInt64 return __self__.value._unixSec();
    @:keep
    public dynamic function _sec():stdgo.GoInt64 return __self__.value._sec();
    @:keep
    public dynamic function _nsec():stdgo.GoInt32 return __self__.value._nsec();
    @:keep
    public dynamic function _appendStrictRFC3339(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return __self__.value._appendStrictRFC3339(_b);
    @:keep
    public dynamic function _appendFormatRFC3339(_b:stdgo.Slice<stdgo.GoByte>, _nanos:Bool):stdgo.Slice<stdgo.GoByte> return __self__.value._appendFormatRFC3339(_b, _nanos);
    @:keep
    public dynamic function _appendFormat(_b:stdgo.Slice<stdgo.GoByte>, _layout:stdgo.GoString):stdgo.Slice<stdgo.GoByte> return __self__.value._appendFormat(_b, _layout);
    @:keep
    public dynamic function appendFormat(_b:stdgo.Slice<stdgo.GoByte>, _layout:stdgo.GoString):stdgo.Slice<stdgo.GoByte> return __self__.value.appendFormat(_b, _layout);
    @:keep
    public dynamic function format(_layout:stdgo.GoString):stdgo.GoString return __self__.value.format(_layout);
    @:keep
    public dynamic function goString():stdgo.GoString return __self__.value.goString();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Time>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time.Time.Time_asInterface) class Time_static_extension {
    @:keep
    static public function round( _t:Time, _d:Duration):Time {
        @:recv var _t:Time = _t?.__copy__();
        _t._stripMono();
        if ((_d <= (0i64 : stdgo._internal.time.Time.Duration) : Bool)) {
            return _t?.__copy__();
        };
        var __tmp__ = _div(_t?.__copy__(), _d), __1:stdgo.GoInt = __tmp__._0, _r:stdgo._internal.time.Time.Duration = __tmp__._1;
        if (_lessThanHalf(_r, _d)) {
            return _t.add(-_r)?.__copy__();
        };
        return _t.add((_d - _r : stdgo._internal.time.Time.Duration))?.__copy__();
    }
    @:keep
    static public function truncate( _t:Time, _d:Duration):Time {
        @:recv var _t:Time = _t?.__copy__();
        _t._stripMono();
        if ((_d <= (0i64 : stdgo._internal.time.Time.Duration) : Bool)) {
            return _t?.__copy__();
        };
        var __tmp__ = _div(_t?.__copy__(), _d), __1:stdgo.GoInt = __tmp__._0, _r:stdgo._internal.time.Time.Duration = __tmp__._1;
        return _t.add(-_r)?.__copy__();
    }
    @:keep
    static public function isDST( _t:Time):Bool {
        @:recv var _t:Time = _t?.__copy__();
        var __tmp__ = _t._loc._lookup(_t.unix()), __1:stdgo.GoString = __tmp__._0, __2:stdgo.GoInt = __tmp__._1, __3:stdgo.GoInt64 = __tmp__._2, __4:stdgo.GoInt64 = __tmp__._3, _isDST:Bool = __tmp__._4;
        return _isDST;
    }
    @:keep
    static public function unmarshalText( _t:stdgo.Ref<Time>, _data:stdgo.Slice<stdgo.GoByte>):stdgo.Error {
        @:recv var _t:stdgo.Ref<Time> = _t;
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = _parseStrictRFC3339(_data);
            _t = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        return _err;
    }
    @:keep
    static public function marshalText( _t:Time):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _t:Time = _t?.__copy__();
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString).length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = _t._appendStrictRFC3339(_b), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors.new_((("Time.MarshalText: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function unmarshalJSON( _t:stdgo.Ref<Time>, _data:stdgo.Slice<stdgo.GoByte>):stdgo.Error {
        @:recv var _t:stdgo.Ref<Time> = _t;
        if ((_data : stdgo.GoString) == (("null" : stdgo.GoString))) {
            return (null : stdgo.Error);
        };
        if (((((_data.length) < (2 : stdgo.GoInt) : Bool) || _data[(0 : stdgo.GoInt)] != ((34 : stdgo.GoUInt8)) : Bool) || (_data[((_data.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != (34 : stdgo.GoUInt8)) : Bool)) {
            return stdgo._internal.errors.Errors.new_(("Time.UnmarshalJSON: input is not a JSON string" : stdgo.GoString));
        };
        _data = (_data.__slice__((("\"" : stdgo.GoString).length), ((_data.length) - (("\"" : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = _parseStrictRFC3339(_data);
            _t = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        return _err;
    }
    @:keep
    static public function marshalJSON( _t:Time):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _t:Time = _t?.__copy__();
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (37 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__append__((34 : stdgo.GoUInt8)));
        var __tmp__ = _t._appendStrictRFC3339(_b), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _b = (_b.__append__((34 : stdgo.GoUInt8)));
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors.new_((("Time.MarshalJSON: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function gobDecode( _t:stdgo.Ref<Time>, _data:stdgo.Slice<stdgo.GoByte>):stdgo.Error {
        @:recv var _t:stdgo.Ref<Time> = _t;
        return _t.unmarshalBinary(_data);
    }
    @:keep
    static public function gobEncode( _t:Time):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _t:Time = _t?.__copy__();
        return _t.marshalBinary();
    }
    @:keep
    static public function unmarshalBinary( _t:stdgo.Ref<Time>, _data:stdgo.Slice<stdgo.GoByte>):stdgo.Error {
        @:recv var _t:stdgo.Ref<Time> = _t;
        var _buf = _data;
        if ((_buf.length) == ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors.new_(("Time.UnmarshalBinary: no data" : stdgo.GoString));
        };
        var _version:stdgo.GoUInt8 = _buf[(0 : stdgo.GoInt)];
        if (((_version != (1 : stdgo.GoUInt8)) && (_version != (2 : stdgo.GoUInt8)) : Bool)) {
            return stdgo._internal.errors.Errors.new_(("Time.UnmarshalBinary: unsupported version" : stdgo.GoString));
        };
        var _wantLen:stdgo.GoInt = (15 : stdgo.GoInt);
        if (_version == ((2 : stdgo.GoUInt8))) {
            _wantLen++;
        };
        if ((_buf.length) != (_wantLen)) {
            return stdgo._internal.errors.Errors.new_(("Time.UnmarshalBinary: invalid length" : stdgo.GoString));
        };
        _buf = (_buf.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _sec:stdgo.GoInt64 = ((((((((_buf[(7 : stdgo.GoInt)] : stdgo.GoInt64) | ((_buf[(6 : stdgo.GoInt)] : stdgo.GoInt64) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt64) | ((_buf[(5 : stdgo.GoInt)] : stdgo.GoInt64) << (16i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt64) | ((_buf[(4 : stdgo.GoInt)] : stdgo.GoInt64) << (24i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt64) | ((_buf[(3 : stdgo.GoInt)] : stdgo.GoInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt64) | ((_buf[(2 : stdgo.GoInt)] : stdgo.GoInt64) << (40i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt64) | ((_buf[(1 : stdgo.GoInt)] : stdgo.GoInt64) << (48i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt64) | ((_buf[(0 : stdgo.GoInt)] : stdgo.GoInt64) << (56i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt64);
        _buf = (_buf.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _nsec:stdgo.GoInt32 = ((((_buf[(3 : stdgo.GoInt)] : stdgo.GoInt32) | ((_buf[(2 : stdgo.GoInt)] : stdgo.GoInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoInt32) | ((_buf[(1 : stdgo.GoInt)] : stdgo.GoInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoInt32) | ((_buf[(0 : stdgo.GoInt)] : stdgo.GoInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoInt32);
        _buf = (_buf.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _offset:stdgo.GoInt = ((((_buf[(1 : stdgo.GoInt)] : stdgo.GoInt16) | ((_buf[(0 : stdgo.GoInt)] : stdgo.GoInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt16) : stdgo.GoInt16) : stdgo.GoInt) * (60 : stdgo.GoInt) : stdgo.GoInt);
        if (_version == ((2 : stdgo.GoUInt8))) {
            _offset = (_offset + ((_buf[(2 : stdgo.GoInt)] : stdgo.GoInt)) : stdgo.GoInt);
        };
        {
            var __tmp__ = (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time);
            (_t : stdgo._internal.time.Time.Time)._wall = __tmp__._wall;
            (_t : stdgo._internal.time.Time.Time)._ext = __tmp__._ext;
            (_t : stdgo._internal.time.Time.Time)._loc = __tmp__._loc;
        };
        _t._wall = (_nsec : stdgo.GoUInt64);
        _t._ext = _sec;
        if (_offset == ((-60 : stdgo.GoInt))) {
            _t._setLoc((stdgo.Go.setRef(_utcLoc) : stdgo.Ref<stdgo._internal.time.Time.Location>));
        } else {
            var __tmp__ = stdgo._internal.time.Time.local._lookup(_t._unixSec()), __1:stdgo.GoString = __tmp__._0, _localoff:stdgo.GoInt = __tmp__._1, __2:stdgo.GoInt64 = __tmp__._2, __3:stdgo.GoInt64 = __tmp__._3, __4:Bool = __tmp__._4;
            if (_offset == (_localoff)) {
                _t._setLoc(stdgo._internal.time.Time.local);
            } else {
                _t._setLoc(fixedZone(stdgo.Go.str()?.__copy__(), _offset));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function marshalBinary( _t:Time):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _t:Time = _t?.__copy__();
        var _offsetMin:stdgo.GoInt16 = (0 : stdgo.GoInt16);
        var _offsetSec:stdgo.GoInt8 = (0 : stdgo.GoInt8);
        var _version:stdgo.GoUInt8 = (1 : stdgo.GoUInt8);
        if (_t.location() == (stdgo._internal.time.Time.utc)) {
            _offsetMin = (-1 : stdgo.GoInt16);
        } else {
            var __tmp__ = _t.zone(), __1:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1;
            if ((_offset % (60 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                _version = (2 : stdgo.GoUInt8);
                _offsetSec = ((_offset % (60 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt8);
            };
            _offset = (_offset / ((60 : stdgo.GoInt)) : stdgo.GoInt);
            if ((((_offset < (-32768 : stdgo.GoInt) : Bool) || _offset == ((-1 : stdgo.GoInt)) : Bool) || (_offset > (32767 : stdgo.GoInt) : Bool) : Bool)) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors.new_(("Time.MarshalBinary: unexpected zone offset" : stdgo.GoString)) };
            };
            _offsetMin = (_offset : stdgo.GoInt16);
        };
        var _sec:stdgo.GoInt64 = _t._sec();
        var _nsec:stdgo.GoInt32 = _t._nsec();
        var _enc = (new stdgo.Slice<stdgo.GoUInt8>(15, 15, ...[
_version,
((_sec >> (56i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoByte),
((_sec >> (48i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoByte),
((_sec >> (40i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoByte),
((_sec >> (32i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoByte),
((_sec >> (24i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoByte),
((_sec >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoByte),
((_sec >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoByte),
(_sec : stdgo.GoByte),
((_nsec >> (24i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoByte),
((_nsec >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoByte),
((_nsec >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoByte),
(_nsec : stdgo.GoByte),
((_offsetMin >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt16) : stdgo.GoByte),
(_offsetMin : stdgo.GoByte)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        if (_version == ((2 : stdgo.GoUInt8))) {
            _enc = (_enc.__append__((_offsetSec : stdgo.GoByte)));
        };
        return { _0 : _enc, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function unixNano( _t:Time):stdgo.GoInt64 {
        @:recv var _t:Time = _t?.__copy__();
        return (((_t._unixSec()) * (1000000000i64 : stdgo.GoInt64) : stdgo.GoInt64) + (_t._nsec() : stdgo.GoInt64) : stdgo.GoInt64);
    }
    @:keep
    static public function unixMicro( _t:Time):stdgo.GoInt64 {
        @:recv var _t:Time = _t?.__copy__();
        return ((_t._unixSec() * (1000000i64 : stdgo.GoInt64) : stdgo.GoInt64) + ((_t._nsec() : stdgo.GoInt64) / (1000i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
    }
    @:keep
    static public function unixMilli( _t:Time):stdgo.GoInt64 {
        @:recv var _t:Time = _t?.__copy__();
        return ((_t._unixSec() * (1000i64 : stdgo.GoInt64) : stdgo.GoInt64) + ((_t._nsec() : stdgo.GoInt64) / (1000000i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
    }
    @:keep
    static public function unix( _t:Time):stdgo.GoInt64 {
        @:recv var _t:Time = _t?.__copy__();
        return _t._unixSec();
    }
    @:keep
    static public function zoneBounds( _t:Time):{ var _0 : Time; var _1 : Time; } {
        @:recv var _t:Time = _t?.__copy__();
        var _start:Time = ({} : stdgo._internal.time.Time.Time), _end:Time = ({} : stdgo._internal.time.Time.Time);
        var __tmp__ = _t._loc._lookup(_t._unixSec()), __1:stdgo.GoString = __tmp__._0, __2:stdgo.GoInt = __tmp__._1, _startSec:stdgo.GoInt64 = __tmp__._2, _endSec:stdgo.GoInt64 = __tmp__._3, __3:Bool = __tmp__._4;
        if (_startSec != ((-9223372036854775808i64 : stdgo.GoInt64))) {
            _start = _unixTime(_startSec, (0 : stdgo.GoInt32))?.__copy__();
            _start._setLoc(_t._loc);
        };
        if (_endSec != ((9223372036854775807i64 : stdgo.GoInt64))) {
            _end = _unixTime(_endSec, (0 : stdgo.GoInt32))?.__copy__();
            _end._setLoc(_t._loc);
        };
        return { _0 : _start, _1 : _end };
    }
    @:keep
    static public function zone( _t:Time):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } {
        @:recv var _t:Time = _t?.__copy__();
        var _name:stdgo.GoString = ("" : stdgo.GoString), _offset:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __tmp__ = _t._loc._lookup(_t._unixSec());
            _name = __tmp__._0?.__copy__();
            _offset = __tmp__._1;
        };
        return { _0 : _name, _1 : _offset };
    }
    @:keep
    static public function location( _t:Time):stdgo.Ref<Location> {
        @:recv var _t:Time = _t?.__copy__();
        var _l = _t._loc;
        if (_l == null || (_l : Dynamic).__nil__) {
            _l = stdgo._internal.time.Time.utc;
        };
        return _l;
    }
    @:keep
    static public function in_( _t:Time, _loc:stdgo.Ref<Location>):Time {
        @:recv var _t:Time = _t?.__copy__();
        if (_loc == null || (_loc : Dynamic).__nil__) {
            throw stdgo.Go.toInterface(("time: missing Location in call to Time.In" : stdgo.GoString));
        };
        _t._setLoc(_loc);
        return _t?.__copy__();
    }
    @:keep
    static public function local( _t:Time):Time {
        @:recv var _t:Time = _t?.__copy__();
        _t._setLoc(stdgo._internal.time.Time.local);
        return _t?.__copy__();
    }
    @:keep
    static public function utc( _t:Time):Time {
        @:recv var _t:Time = _t?.__copy__();
        _t._setLoc((stdgo.Go.setRef(_utcLoc) : stdgo.Ref<stdgo._internal.time.Time.Location>));
        return _t?.__copy__();
    }
    @:keep
    static public function _date( _t:Time, _full:Bool):{ var _0 : stdgo.GoInt; var _1 : Month; var _2 : stdgo.GoInt; var _3 : stdgo.GoInt; } {
        @:recv var _t:Time = _t?.__copy__();
        var _year:stdgo.GoInt = (0 : stdgo.GoInt), _month:Month = ((0 : stdgo.GoInt) : stdgo._internal.time.Time.Month), _day:stdgo.GoInt = (0 : stdgo.GoInt), _yday:stdgo.GoInt = (0 : stdgo.GoInt);
        return _absDate(_t._abs(), _full);
    }
    @:keep
    static public function addDate( _t:Time, _years:stdgo.GoInt, _months:stdgo.GoInt, _days:stdgo.GoInt):Time {
        @:recv var _t:Time = _t?.__copy__();
        var __tmp__ = _t.date(), _year:stdgo.GoInt = __tmp__._0, _month:stdgo._internal.time.Time.Month = __tmp__._1, _day:stdgo.GoInt = __tmp__._2;
        var __tmp__ = _t.clock(), _hour:stdgo.GoInt = __tmp__._0, _min:stdgo.GoInt = __tmp__._1, _sec:stdgo.GoInt = __tmp__._2;
        return stdgo._internal.time.Time.date((_year + _years : stdgo.GoInt), (_month + (_months : Month) : stdgo._internal.time.Time.Month), (_day + _days : stdgo.GoInt), _hour, _min, _sec, (_t._nsec() : stdgo.GoInt), _t.location())?.__copy__();
    }
    @:keep
    static public function sub( _t:Time, _u:Time):Duration {
        @:recv var _t:Time = _t?.__copy__();
        if (((_t._wall & _u._wall : stdgo.GoUInt64) & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            var _te:stdgo.GoInt64 = _t._ext;
            var _ue:stdgo.GoInt64 = _u._ext;
            var _d:stdgo._internal.time.Time.Duration = ((_te - _ue : stdgo.GoInt64) : Duration);
            if (((_d < (0i64 : stdgo._internal.time.Time.Duration) : Bool) && (_te > _ue : Bool) : Bool)) {
                return (9223372036854775807i64 : stdgo._internal.time.Time.Duration);
            };
            if (((_d > (0i64 : stdgo._internal.time.Time.Duration) : Bool) && (_te < _ue : Bool) : Bool)) {
                return (-9223372036854775808i64 : stdgo._internal.time.Time.Duration);
            };
            return _d;
        };
        var _d:stdgo._internal.time.Time.Duration = ((((_t._sec() - _u._sec() : stdgo.GoInt64) : Duration) * (1000000000i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration) + ((_t._nsec() - _u._nsec() : stdgo.GoInt32) : Duration) : stdgo._internal.time.Time.Duration);
        if (_u.add(_d).equal(_t?.__copy__())) {
            return _d;
        } else if (_t.before(_u?.__copy__())) {
            return (-9223372036854775808i64 : stdgo._internal.time.Time.Duration);
        } else {
            return (9223372036854775807i64 : stdgo._internal.time.Time.Duration);
        };
    }
    @:keep
    static public function add( _t:Time, _d:Duration):Time {
        @:recv var _t:Time = _t?.__copy__();
        var _dsec:stdgo.GoInt64 = ((_d / (1000000000i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration) : stdgo.GoInt64);
        var _nsec:stdgo.GoInt32 = (_t._nsec() + ((_d % (1000000000i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration) : stdgo.GoInt32) : stdgo.GoInt32);
        if ((_nsec >= (1000000000 : stdgo.GoInt32) : Bool)) {
            _dsec++;
            _nsec = (_nsec - ((1000000000 : stdgo.GoInt32)) : stdgo.GoInt32);
        } else if ((_nsec < (0 : stdgo.GoInt32) : Bool)) {
            _dsec--;
            _nsec = (_nsec + ((1000000000 : stdgo.GoInt32)) : stdgo.GoInt32);
        };
        _t._wall = ((_t._wall & (((1073741823i64 : stdgo.GoUInt64) ^ (-1i32 : stdgo.GoInt) : stdgo.GoUInt64)) : stdgo.GoUInt64) | (_nsec : stdgo.GoUInt64) : stdgo.GoUInt64);
        _t._addSec(_dsec);
        if ((_t._wall & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            var _te:stdgo.GoInt64 = (_t._ext + (_d : stdgo.GoInt64) : stdgo.GoInt64);
            if ((((_d < (0i64 : stdgo._internal.time.Time.Duration) : Bool) && (_te > _t._ext : Bool) : Bool) || ((_d > (0i64 : stdgo._internal.time.Time.Duration) : Bool) && (_te < _t._ext : Bool) : Bool) : Bool)) {
                _t._stripMono();
            } else {
                _t._ext = _te;
            };
        };
        return _t?.__copy__();
    }
    @:keep
    static public function yearDay( _t:Time):stdgo.GoInt {
        @:recv var _t:Time = _t?.__copy__();
        var __tmp__ = _t._date(false), __1:stdgo.GoInt = __tmp__._0, __2:stdgo._internal.time.Time.Month = __tmp__._1, __3:stdgo.GoInt = __tmp__._2, _yday:stdgo.GoInt = __tmp__._3;
        return (_yday + (1 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function nanosecond( _t:Time):stdgo.GoInt {
        @:recv var _t:Time = _t?.__copy__();
        return (_t._nsec() : stdgo.GoInt);
    }
    @:keep
    static public function second( _t:Time):stdgo.GoInt {
        @:recv var _t:Time = _t?.__copy__();
        return ((_t._abs() % (60i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt);
    }
    @:keep
    static public function minute( _t:Time):stdgo.GoInt {
        @:recv var _t:Time = _t?.__copy__();
        return (((_t._abs() % (3600i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt) / (60 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function hour( _t:Time):stdgo.GoInt {
        @:recv var _t:Time = _t?.__copy__();
        return (((_t._abs() % (86400i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt) / (3600 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function clock( _t:Time):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; } {
        @:recv var _t:Time = _t?.__copy__();
        var _hour:stdgo.GoInt = (0 : stdgo.GoInt), _min:stdgo.GoInt = (0 : stdgo.GoInt), _sec:stdgo.GoInt = (0 : stdgo.GoInt);
        return _absClock(_t._abs());
    }
    @:keep
    static public function isoweek( _t:Time):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        @:recv var _t:Time = _t?.__copy__();
        var _year:stdgo.GoInt = (0 : stdgo.GoInt), _week:stdgo.GoInt = (0 : stdgo.GoInt);
        var _abs:stdgo.GoUInt64 = _t._abs();
        var _d:stdgo._internal.time.Time.Weekday = ((4 : stdgo._internal.time.Time.Weekday) - _absWeekday(_abs) : stdgo._internal.time.Time.Weekday);
        if (_d == ((4 : stdgo._internal.time.Time.Weekday))) {
            _d = (-3 : stdgo._internal.time.Time.Weekday);
        };
        _abs = (_abs + (((_d : stdgo.GoUInt64) * (86400i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var __tmp__ = _absDate(_abs, false), _year:stdgo.GoInt = __tmp__._0, __1:stdgo._internal.time.Time.Month = __tmp__._1, __2:stdgo.GoInt = __tmp__._2, _yday:stdgo.GoInt = __tmp__._3;
        return { _0 : _year, _1 : ((_yday / (7 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) };
    }
    @:keep
    static public function weekday( _t:Time):Weekday {
        @:recv var _t:Time = _t?.__copy__();
        return _absWeekday(_t._abs());
    }
    @:keep
    static public function day( _t:Time):stdgo.GoInt {
        @:recv var _t:Time = _t?.__copy__();
        var __tmp__ = _t._date(true), __1:stdgo.GoInt = __tmp__._0, __2:stdgo._internal.time.Time.Month = __tmp__._1, _day:stdgo.GoInt = __tmp__._2, __3:stdgo.GoInt = __tmp__._3;
        return _day;
    }
    @:keep
    static public function month( _t:Time):Month {
        @:recv var _t:Time = _t?.__copy__();
        var __tmp__ = _t._date(true), __1:stdgo.GoInt = __tmp__._0, _month:stdgo._internal.time.Time.Month = __tmp__._1, __2:stdgo.GoInt = __tmp__._2, __3:stdgo.GoInt = __tmp__._3;
        return _month;
    }
    @:keep
    static public function year( _t:Time):stdgo.GoInt {
        @:recv var _t:Time = _t?.__copy__();
        var __tmp__ = _t._date(false), _year:stdgo.GoInt = __tmp__._0, __1:stdgo._internal.time.Time.Month = __tmp__._1, __2:stdgo.GoInt = __tmp__._2, __3:stdgo.GoInt = __tmp__._3;
        return _year;
    }
    @:keep
    static public function date( _t:Time):{ var _0 : stdgo.GoInt; var _1 : Month; var _2 : stdgo.GoInt; } {
        @:recv var _t:Time = _t?.__copy__();
        var _year:stdgo.GoInt = (0 : stdgo.GoInt), _month:Month = ((0 : stdgo.GoInt) : stdgo._internal.time.Time.Month), _day:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __tmp__ = _t._date(true);
            _year = __tmp__._0;
            _month = __tmp__._1;
            _day = __tmp__._2;
        };
        return { _0 : _year, _1 : _month, _2 : _day };
    }
    @:keep
    static public function _locabs( _t:Time):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoUInt64; } {
        @:recv var _t:Time = _t?.__copy__();
        var _name:stdgo.GoString = ("" : stdgo.GoString), _offset:stdgo.GoInt = (0 : stdgo.GoInt), _abs:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _l = _t._loc;
        if ((((_l == null) || (_l : Dynamic).__nil__) || (_l == (stdgo.Go.setRef(_localLoc) : stdgo.Ref<stdgo._internal.time.Time.Location>)) : Bool)) {
            _l = _l._get();
        };
        var _sec:stdgo.GoInt64 = _t._unixSec();
        if (_l != ((stdgo.Go.setRef(_utcLoc) : stdgo.Ref<stdgo._internal.time.Time.Location>))) {
            if (((_l._cacheZone != null && ((_l._cacheZone : Dynamic).__nil__ == null || !(_l._cacheZone : Dynamic).__nil__) && (_l._cacheStart <= _sec : Bool) : Bool) && (_sec < _l._cacheEnd : Bool) : Bool)) {
                _name = _l._cacheZone._name?.__copy__();
                _offset = _l._cacheZone._offset;
            } else {
                {
                    var __tmp__ = _l._lookup(_sec);
                    _name = __tmp__._0?.__copy__();
                    _offset = __tmp__._1;
                };
            };
            _sec = (_sec + ((_offset : stdgo.GoInt64)) : stdgo.GoInt64);
        } else {
            _name = ("UTC" : stdgo.GoString);
        };
        _abs = ((_sec + (9223372028715321600i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoUInt64);
        return { _0 : _name, _1 : _offset, _2 : _abs };
    }
    @:keep
    static public function _abs( _t:Time):stdgo.GoUInt64 {
        @:recv var _t:Time = _t?.__copy__();
        var _l = _t._loc;
        if ((((_l == null) || (_l : Dynamic).__nil__) || (_l == (stdgo.Go.setRef(_localLoc) : stdgo.Ref<stdgo._internal.time.Time.Location>)) : Bool)) {
            _l = _l._get();
        };
        var _sec:stdgo.GoInt64 = _t._unixSec();
        if (_l != ((stdgo.Go.setRef(_utcLoc) : stdgo.Ref<stdgo._internal.time.Time.Location>))) {
            if (((_l._cacheZone != null && ((_l._cacheZone : Dynamic).__nil__ == null || !(_l._cacheZone : Dynamic).__nil__) && (_l._cacheStart <= _sec : Bool) : Bool) && (_sec < _l._cacheEnd : Bool) : Bool)) {
                _sec = (_sec + ((_l._cacheZone._offset : stdgo.GoInt64)) : stdgo.GoInt64);
            } else {
                var __tmp__ = _l._lookup(_sec), __1:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1, __2:stdgo.GoInt64 = __tmp__._2, __3:stdgo.GoInt64 = __tmp__._3, __4:Bool = __tmp__._4;
                _sec = (_sec + ((_offset : stdgo.GoInt64)) : stdgo.GoInt64);
            };
        };
        return ((_sec + (9223372028715321600i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoUInt64);
    }
    @:keep
    static public function isZero( _t:Time):Bool {
        @:recv var _t:Time = _t?.__copy__();
        return ((_t._sec() == (0i64 : stdgo.GoInt64)) && (_t._nsec() == (0 : stdgo.GoInt32)) : Bool);
    }
    @:keep
    static public function equal( _t:Time, _u:Time):Bool {
        @:recv var _t:Time = _t?.__copy__();
        if (((_t._wall & _u._wall : stdgo.GoUInt64) & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            return _t._ext == (_u._ext);
        };
        return ((_t._sec() == _u._sec()) && (_t._nsec() == _u._nsec()) : Bool);
    }
    @:keep
    static public function compare( _t:Time, _u:Time):stdgo.GoInt {
        @:recv var _t:Time = _t?.__copy__();
        var __0:stdgo.GoInt64 = (0 : stdgo.GoInt64), __1:stdgo.GoInt64 = (0 : stdgo.GoInt64), _uc:stdgo.GoInt64 = __1, _tc:stdgo.GoInt64 = __0;
        if (((_t._wall & _u._wall : stdgo.GoUInt64) & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            {
                final __tmp__0 = _t._ext;
                final __tmp__1 = _u._ext;
                _tc = __tmp__0;
                _uc = __tmp__1;
            };
        } else {
            {
                final __tmp__0 = _t._sec();
                final __tmp__1 = _u._sec();
                _tc = __tmp__0;
                _uc = __tmp__1;
            };
            if (_tc == (_uc)) {
                {
                    final __tmp__0 = (_t._nsec() : stdgo.GoInt64);
                    final __tmp__1 = (_u._nsec() : stdgo.GoInt64);
                    _tc = __tmp__0;
                    _uc = __tmp__1;
                };
            };
        };
        if ((_tc < _uc : Bool)) {
            return (-1 : stdgo.GoInt);
        } else if ((_tc > _uc : Bool)) {
            return (1 : stdgo.GoInt);
        };
        return (0 : stdgo.GoInt);
    }
    @:keep
    static public function before( _t:Time, _u:Time):Bool {
        @:recv var _t:Time = _t?.__copy__();
        if (((_t._wall & _u._wall : stdgo.GoUInt64) & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            return (_t._ext < _u._ext : Bool);
        };
        var _ts:stdgo.GoInt64 = _t._sec();
        var _us:stdgo.GoInt64 = _u._sec();
        return ((_ts < _us : Bool) || (_ts == (_us) && (_t._nsec() < _u._nsec() : Bool) : Bool) : Bool);
    }
    @:keep
    static public function after( _t:Time, _u:Time):Bool {
        @:recv var _t:Time = _t?.__copy__();
        if (((_t._wall & _u._wall : stdgo.GoUInt64) & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            return (_t._ext > _u._ext : Bool);
        };
        var _ts:stdgo.GoInt64 = _t._sec();
        var _us:stdgo.GoInt64 = _u._sec();
        return ((_ts > _us : Bool) || (_ts == (_us) && (_t._nsec() > _u._nsec() : Bool) : Bool) : Bool);
    }
    @:keep
    static public function _mono( _t:stdgo.Ref<Time>):stdgo.GoInt64 {
        @:recv var _t:stdgo.Ref<Time> = _t;
        if ((_t._wall & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64))) {
            return (0i64 : stdgo.GoInt64);
        };
        return _t._ext;
    }
    @:keep
    static public function _setMono( _t:stdgo.Ref<Time>, _m:stdgo.GoInt64):Void {
        @:recv var _t:stdgo.Ref<Time> = _t;
        if ((_t._wall & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64))) {
            var _sec:stdgo.GoInt64 = _t._ext;
            if (((_sec < (59453308800i64 : stdgo.GoInt64) : Bool) || ((68043243391i64 : stdgo.GoInt64) < _sec : Bool) : Bool)) {
                return;
            };
            _t._wall = (_t._wall | (((-9223372036854775808i64 : stdgo.GoUInt64) | (((_sec - (59453308800i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoUInt64) << (30i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        _t._ext = _m;
    }
    @:keep
    static public function _stripMono( _t:stdgo.Ref<Time>):Void {
        @:recv var _t:stdgo.Ref<Time> = _t;
        if ((_t._wall & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            _t._ext = _t._sec();
            _t._wall = (_t._wall & ((1073741823i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
    }
    @:keep
    static public function _setLoc( _t:stdgo.Ref<Time>, _loc:stdgo.Ref<Location>):Void {
        @:recv var _t:stdgo.Ref<Time> = _t;
        if (_loc == ((stdgo.Go.setRef(_utcLoc) : stdgo.Ref<stdgo._internal.time.Time.Location>))) {
            _loc = null;
        };
        _t._stripMono();
        _t._loc = _loc;
    }
    @:keep
    static public function _addSec( _t:stdgo.Ref<Time>, _d:stdgo.GoInt64):Void {
        @:recv var _t:stdgo.Ref<Time> = _t;
        if ((_t._wall & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            var _sec:stdgo.GoInt64 = (((_t._wall << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64);
            var _dsec:stdgo.GoInt64 = (_sec + _d : stdgo.GoInt64);
            if ((((0i64 : stdgo.GoInt64) <= _dsec : Bool) && (_dsec <= (8589934591i64 : stdgo.GoInt64) : Bool) : Bool)) {
                _t._wall = (((_t._wall & (1073741823i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_dsec : stdgo.GoUInt64) << (30i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                return;
            };
            _t._stripMono();
        };
        var _sum:stdgo.GoInt64 = (_t._ext + _d : stdgo.GoInt64);
        if (((_sum > _t._ext : Bool)) == ((_d > (0i64 : stdgo.GoInt64) : Bool))) {
            _t._ext = _sum;
        } else if ((_d > (0i64 : stdgo.GoInt64) : Bool)) {
            _t._ext = (9223372036854775807i64 : stdgo.GoInt64);
        } else {
            _t._ext = (-9223372036854775807i64 : stdgo.GoInt64);
        };
    }
    @:keep
    static public function _unixSec( _t:stdgo.Ref<Time>):stdgo.GoInt64 {
        @:recv var _t:stdgo.Ref<Time> = _t;
        return (_t._sec() + (-62135596800i64 : stdgo.GoInt64) : stdgo.GoInt64);
    }
    @:keep
    static public function _sec( _t:stdgo.Ref<Time>):stdgo.GoInt64 {
        @:recv var _t:stdgo.Ref<Time> = _t;
        if ((_t._wall & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            return ((59453308800i64 : stdgo.GoInt64) + (((_t._wall << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt64);
        };
        return _t._ext;
    }
    @:keep
    static public function _nsec( _t:stdgo.Ref<Time>):stdgo.GoInt32 {
        @:recv var _t:stdgo.Ref<Time> = _t;
        return ((_t._wall & (1073741823i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt32);
    }
    @:keep
    static public function _appendStrictRFC3339( _t:Time, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _t:Time = _t?.__copy__();
        var _n0:stdgo.GoInt = (_b.length);
        _b = _t._appendFormatRFC3339(_b, true);
        var _num2 = function(_b:stdgo.Slice<stdgo.GoByte>):stdgo.GoByte {
            return (((10 : stdgo.GoUInt8) * ((_b[(0 : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8) + ((_b[(1 : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        if (_b[(_n0 + (("9999" : stdgo.GoString).length) : stdgo.GoInt)] != ((45 : stdgo.GoUInt8))) {
            return { _0 : _b, _1 : stdgo._internal.errors.Errors.new_(("year outside of range [0,9999]" : stdgo.GoString)) };
        } else if (_b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((90 : stdgo.GoUInt8))) {
            var _c:stdgo.GoUInt8 = _b[((_b.length) - (("Z07:00" : stdgo.GoString).length) : stdgo.GoInt)];
            if ((((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || (_num2((_b.__slice__(((_b.length) - (("07:00" : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) >= (24 : stdgo.GoUInt8) : Bool) : Bool)) {
                return { _0 : _b, _1 : stdgo._internal.errors.Errors.new_(("timezone hour outside of range [0,23]" : stdgo.GoString)) };
            };
        };
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _appendFormatRFC3339( _t:Time, _b:stdgo.Slice<stdgo.GoByte>, _nanos:Bool):stdgo.Slice<stdgo.GoByte> {
        @:recv var _t:Time = _t?.__copy__();
        var __tmp__ = _t._locabs(), __1:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1, _abs:stdgo.GoUInt64 = __tmp__._2;
        var __tmp__ = _absDate(_abs, true), _year:stdgo.GoInt = __tmp__._0, _month:stdgo._internal.time.Time.Month = __tmp__._1, _day:stdgo.GoInt = __tmp__._2, __2:stdgo.GoInt = __tmp__._3;
        _b = _appendInt(_b, _year, (4 : stdgo.GoInt));
        _b = (_b.__append__((45 : stdgo.GoUInt8)));
        _b = _appendInt(_b, (_month : stdgo.GoInt), (2 : stdgo.GoInt));
        _b = (_b.__append__((45 : stdgo.GoUInt8)));
        _b = _appendInt(_b, _day, (2 : stdgo.GoInt));
        _b = (_b.__append__((84 : stdgo.GoUInt8)));
        var __tmp__ = _absClock(_abs), _hour:stdgo.GoInt = __tmp__._0, _min:stdgo.GoInt = __tmp__._1, _sec:stdgo.GoInt = __tmp__._2;
        _b = _appendInt(_b, _hour, (2 : stdgo.GoInt));
        _b = (_b.__append__((58 : stdgo.GoUInt8)));
        _b = _appendInt(_b, _min, (2 : stdgo.GoInt));
        _b = (_b.__append__((58 : stdgo.GoUInt8)));
        _b = _appendInt(_b, _sec, (2 : stdgo.GoInt));
        if (_nanos) {
            var _std:stdgo.GoInt = _stdFracSecond((35 : stdgo.GoInt), (9 : stdgo.GoInt), (46 : stdgo.GoInt));
            _b = _appendNano(_b, _t.nanosecond(), _std);
        };
        if (_offset == ((0 : stdgo.GoInt))) {
            return (_b.__append__((90 : stdgo.GoUInt8)));
        };
        var _zone:stdgo.GoInt = (_offset / (60 : stdgo.GoInt) : stdgo.GoInt);
        if ((_zone < (0 : stdgo.GoInt) : Bool)) {
            _b = (_b.__append__((45 : stdgo.GoUInt8)));
            _zone = -_zone;
        } else {
            _b = (_b.__append__((43 : stdgo.GoUInt8)));
        };
        _b = _appendInt(_b, (_zone / (60 : stdgo.GoInt) : stdgo.GoInt), (2 : stdgo.GoInt));
        _b = (_b.__append__((58 : stdgo.GoUInt8)));
        _b = _appendInt(_b, (_zone % (60 : stdgo.GoInt) : stdgo.GoInt), (2 : stdgo.GoInt));
        return _b;
    }
    @:keep
    static public function _appendFormat( _t:Time, _b:stdgo.Slice<stdgo.GoByte>, _layout:stdgo.GoString):stdgo.Slice<stdgo.GoByte> {
        @:recv var _t:Time = _t?.__copy__();
        var __0:stdgo.GoInt = (-1 : stdgo.GoInt), __1:Month = ((0 : stdgo.GoInt) : stdgo._internal.time.Time.Month), __2:stdgo.GoInt = (0 : stdgo.GoInt), __3:stdgo.GoInt = (0 : stdgo.GoInt), __4:stdgo.GoInt = (-1 : stdgo.GoInt), __5:stdgo.GoInt = (0 : stdgo.GoInt), __6:stdgo.GoInt = (0 : stdgo.GoInt), __tmp__ = _t._locabs(), _name:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1, _abs:stdgo.GoUInt64 = __tmp__._2, _sec:stdgo.GoInt = __6, _min:stdgo.GoInt = __5, _hour:stdgo.GoInt = __4, _yday:stdgo.GoInt = __3, _day:stdgo.GoInt = __2, _month:Month = __1, _year:stdgo.GoInt = __0;
        while (_layout != (stdgo.Go.str())) {
            var __tmp__ = _nextStdChunk(_layout?.__copy__()), _prefix:stdgo.GoString = __tmp__._0, _std:stdgo.GoInt = __tmp__._1, _suffix:stdgo.GoString = __tmp__._2;
            if (_prefix != (stdgo.Go.str())) {
                _b = (_b.__append__(...(_prefix : Array<stdgo.GoUInt8>)));
            };
            if (_std == ((0 : stdgo.GoInt))) {
                break;
            };
            _layout = _suffix?.__copy__();
            if (((_year < (0 : stdgo.GoInt) : Bool) && ((_std & (256 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
                {
                    var __tmp__ = _absDate(_abs, true);
                    _year = __tmp__._0;
                    _month = __tmp__._1;
                    _day = __tmp__._2;
                    _yday = __tmp__._3;
                };
                _yday++;
            };
            if (((_hour < (0 : stdgo.GoInt) : Bool) && ((_std & (512 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
                {
                    var __tmp__ = _absClock(_abs);
                    _hour = __tmp__._0;
                    _min = __tmp__._1;
                    _sec = __tmp__._2;
                };
            };
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = (_std & (65535 : stdgo.GoInt) : stdgo.GoInt);
                        if (__value__ == ((276 : stdgo.GoInt))) {
                            var _y:stdgo.GoInt = _year;
                            if ((_y < (0 : stdgo.GoInt) : Bool)) {
                                _y = -_y;
                            };
                            _b = _appendInt(_b, (_y % (100 : stdgo.GoInt) : stdgo.GoInt), (2 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((275 : stdgo.GoInt))) {
                            _b = _appendInt(_b, _year, (4 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((258 : stdgo.GoInt))) {
                            _b = (_b.__append__(...(((_month.string() : stdgo.GoString).__slice__(0, (3 : stdgo.GoInt)) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                            break;
                        } else if (__value__ == ((257 : stdgo.GoInt))) {
                            var _m:stdgo.GoString = (_month.string() : stdgo.GoString)?.__copy__();
                            _b = (_b.__append__(...(_m : Array<stdgo.GoUInt8>)));
                            break;
                        } else if (__value__ == ((259 : stdgo.GoInt))) {
                            _b = _appendInt(_b, (_month : stdgo.GoInt), (0 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((260 : stdgo.GoInt))) {
                            _b = _appendInt(_b, (_month : stdgo.GoInt), (2 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((262 : stdgo.GoInt))) {
                            _b = (_b.__append__(...(((_absWeekday(_abs).string() : stdgo.GoString).__slice__(0, (3 : stdgo.GoInt)) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                            break;
                        } else if (__value__ == ((261 : stdgo.GoInt))) {
                            var _s:stdgo.GoString = (_absWeekday(_abs).string() : stdgo.GoString)?.__copy__();
                            _b = (_b.__append__(...(_s : Array<stdgo.GoUInt8>)));
                            break;
                        } else if (__value__ == ((263 : stdgo.GoInt))) {
                            _b = _appendInt(_b, _day, (0 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((264 : stdgo.GoInt))) {
                            if ((_day < (10 : stdgo.GoInt) : Bool)) {
                                _b = (_b.__append__((32 : stdgo.GoUInt8)));
                            };
                            _b = _appendInt(_b, _day, (0 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((265 : stdgo.GoInt))) {
                            _b = _appendInt(_b, _day, (2 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((266 : stdgo.GoInt))) {
                            if ((_yday < (100 : stdgo.GoInt) : Bool)) {
                                _b = (_b.__append__((32 : stdgo.GoUInt8)));
                                if ((_yday < (10 : stdgo.GoInt) : Bool)) {
                                    _b = (_b.__append__((32 : stdgo.GoUInt8)));
                                };
                            };
                            _b = _appendInt(_b, _yday, (0 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((267 : stdgo.GoInt))) {
                            _b = _appendInt(_b, _yday, (3 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((524 : stdgo.GoInt))) {
                            _b = _appendInt(_b, _hour, (2 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((525 : stdgo.GoInt))) {
                            var _hr:stdgo.GoInt = (_hour % (12 : stdgo.GoInt) : stdgo.GoInt);
                            if (_hr == ((0 : stdgo.GoInt))) {
                                _hr = (12 : stdgo.GoInt);
                            };
                            _b = _appendInt(_b, _hr, (0 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((526 : stdgo.GoInt))) {
                            var _hr:stdgo.GoInt = (_hour % (12 : stdgo.GoInt) : stdgo.GoInt);
                            if (_hr == ((0 : stdgo.GoInt))) {
                                _hr = (12 : stdgo.GoInt);
                            };
                            _b = _appendInt(_b, _hr, (2 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((527 : stdgo.GoInt))) {
                            _b = _appendInt(_b, _min, (0 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((528 : stdgo.GoInt))) {
                            _b = _appendInt(_b, _min, (2 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((529 : stdgo.GoInt))) {
                            _b = _appendInt(_b, _sec, (0 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((530 : stdgo.GoInt))) {
                            _b = _appendInt(_b, _sec, (2 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((533 : stdgo.GoInt))) {
                            if ((_hour >= (12 : stdgo.GoInt) : Bool)) {
                                _b = (_b.__append__(...(("PM" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                            } else {
                                _b = (_b.__append__(...(("AM" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                            };
                            break;
                        } else if (__value__ == ((534 : stdgo.GoInt))) {
                            if ((_hour >= (12 : stdgo.GoInt) : Bool)) {
                                _b = (_b.__append__(...(("pm" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                            } else {
                                _b = (_b.__append__(...(("am" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                            };
                            break;
                        } else if (__value__ == ((24 : stdgo.GoInt)) || __value__ == ((27 : stdgo.GoInt)) || __value__ == ((25 : stdgo.GoInt)) || __value__ == ((26 : stdgo.GoInt)) || __value__ == ((28 : stdgo.GoInt)) || __value__ == ((29 : stdgo.GoInt)) || __value__ == ((32 : stdgo.GoInt)) || __value__ == ((30 : stdgo.GoInt)) || __value__ == ((31 : stdgo.GoInt)) || __value__ == ((33 : stdgo.GoInt))) {
                            if (((_offset == (0 : stdgo.GoInt)) && (((((_std == ((24 : stdgo.GoInt)) || _std == ((27 : stdgo.GoInt)) : Bool) || _std == ((25 : stdgo.GoInt)) : Bool) || _std == ((26 : stdgo.GoInt)) : Bool) || (_std == (28 : stdgo.GoInt)) : Bool)) : Bool)) {
                                _b = (_b.__append__((90 : stdgo.GoUInt8)));
                                break;
                            };
                            var _zone:stdgo.GoInt = (_offset / (60 : stdgo.GoInt) : stdgo.GoInt);
                            var _absoffset:stdgo.GoInt = _offset;
                            if ((_zone < (0 : stdgo.GoInt) : Bool)) {
                                _b = (_b.__append__((45 : stdgo.GoUInt8)));
                                _zone = -_zone;
                                _absoffset = -_absoffset;
                            } else {
                                _b = (_b.__append__((43 : stdgo.GoUInt8)));
                            };
                            _b = _appendInt(_b, (_zone / (60 : stdgo.GoInt) : stdgo.GoInt), (2 : stdgo.GoInt));
                            if ((((_std == ((27 : stdgo.GoInt)) || _std == ((32 : stdgo.GoInt)) : Bool) || _std == ((28 : stdgo.GoInt)) : Bool) || (_std == (33 : stdgo.GoInt)) : Bool)) {
                                _b = (_b.__append__((58 : stdgo.GoUInt8)));
                            };
                            if (((_std != (31 : stdgo.GoInt)) && (_std != (26 : stdgo.GoInt)) : Bool)) {
                                _b = _appendInt(_b, (_zone % (60 : stdgo.GoInt) : stdgo.GoInt), (2 : stdgo.GoInt));
                            };
                            if ((((_std == ((25 : stdgo.GoInt)) || _std == ((30 : stdgo.GoInt)) : Bool) || _std == ((33 : stdgo.GoInt)) : Bool) || (_std == (28 : stdgo.GoInt)) : Bool)) {
                                if (((_std == (33 : stdgo.GoInt)) || (_std == (28 : stdgo.GoInt)) : Bool)) {
                                    _b = (_b.__append__((58 : stdgo.GoUInt8)));
                                };
                                _b = _appendInt(_b, (_absoffset % (60 : stdgo.GoInt) : stdgo.GoInt), (2 : stdgo.GoInt));
                            };
                            break;
                        } else if (__value__ == ((23 : stdgo.GoInt))) {
                            if (_name != (stdgo.Go.str())) {
                                _b = (_b.__append__(...(_name : Array<stdgo.GoUInt8>)));
                                break;
                            };
                            var _zone:stdgo.GoInt = (_offset / (60 : stdgo.GoInt) : stdgo.GoInt);
                            if ((_zone < (0 : stdgo.GoInt) : Bool)) {
                                _b = (_b.__append__((45 : stdgo.GoUInt8)));
                                _zone = -_zone;
                            } else {
                                _b = (_b.__append__((43 : stdgo.GoUInt8)));
                            };
                            _b = _appendInt(_b, (_zone / (60 : stdgo.GoInt) : stdgo.GoInt), (2 : stdgo.GoInt));
                            _b = _appendInt(_b, (_zone % (60 : stdgo.GoInt) : stdgo.GoInt), (2 : stdgo.GoInt));
                            break;
                        } else if (__value__ == ((34 : stdgo.GoInt)) || __value__ == ((35 : stdgo.GoInt))) {
                            _b = _appendNano(_b, _t.nanosecond(), _std);
                            break;
                        };
                    };
                    break;
                };
            };
        };
        return _b;
    }
    @:keep
    static public function appendFormat( _t:Time, _b:stdgo.Slice<stdgo.GoByte>, _layout:stdgo.GoString):stdgo.Slice<stdgo.GoByte> {
        @:recv var _t:Time = _t?.__copy__();
        {
            final __value__ = _layout;
            if (__value__ == (("2006-01-02T15:04:05Z07:00" : stdgo.GoString))) {
                return _t._appendFormatRFC3339(_b, false);
            } else if (__value__ == (("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString))) {
                return _t._appendFormatRFC3339(_b, true);
            } else {
                return _t._appendFormat(_b, _layout?.__copy__());
            };
        };
    }
    @:keep
    static public function format( _t:Time, _layout:stdgo.GoString):stdgo.GoString {
        @:recv var _t:Time = _t?.__copy__();
        {};
        var _b:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _max:stdgo.GoInt = ((_layout.length) + (10 : stdgo.GoInt) : stdgo.GoInt);
        if ((_max < (64 : stdgo.GoInt) : Bool)) {
            var _buf:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoUInt8)]);
            _b = (_buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _max).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        _b = _t.appendFormat(_b, _layout?.__copy__());
        return (_b : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function goString( _t:Time):stdgo.GoString {
        @:recv var _t:Time = _t?.__copy__();
        var _abs:stdgo.GoUInt64 = _t._abs();
        var __tmp__ = _absDate(_abs, true), _year:stdgo.GoInt = __tmp__._0, _month:stdgo._internal.time.Time.Month = __tmp__._1, _day:stdgo.GoInt = __tmp__._2, __1:stdgo.GoInt = __tmp__._3;
        var __tmp__ = _absClock(_abs), _hour:stdgo.GoInt = __tmp__._0, _minute:stdgo.GoInt = __tmp__._1, _second:stdgo.GoInt = __tmp__._2;
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (("time.Date(9999, time.September, 31, 23, 59, 59, 999999999, time.Local)" : stdgo.GoString).length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _buf = (_buf.__append__(...(("time.Date(" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        _buf = _appendInt(_buf, _year, (0 : stdgo.GoInt));
        if ((((1 : stdgo._internal.time.Time.Month) <= _month : Bool) && (_month <= (12 : stdgo._internal.time.Time.Month) : Bool) : Bool)) {
            _buf = (_buf.__append__(...((", time." : stdgo.GoString) : Array<stdgo.GoUInt8>)));
            _buf = (_buf.__append__(...(_longMonthNames[((_month - (1 : stdgo._internal.time.Time.Month) : stdgo._internal.time.Time.Month) : stdgo.GoInt)] : Array<stdgo.GoUInt8>)));
        } else {
            _buf = _appendInt(_buf, (_month : stdgo.GoInt), (0 : stdgo.GoInt));
        };
        _buf = (_buf.__append__(...((", " : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        _buf = _appendInt(_buf, _day, (0 : stdgo.GoInt));
        _buf = (_buf.__append__(...((", " : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        _buf = _appendInt(_buf, _hour, (0 : stdgo.GoInt));
        _buf = (_buf.__append__(...((", " : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        _buf = _appendInt(_buf, _minute, (0 : stdgo.GoInt));
        _buf = (_buf.__append__(...((", " : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        _buf = _appendInt(_buf, _second, (0 : stdgo.GoInt));
        _buf = (_buf.__append__(...((", " : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        _buf = _appendInt(_buf, _t.nanosecond(), (0 : stdgo.GoInt));
        _buf = (_buf.__append__(...((", " : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        {
            var _loc = _t.location();
            {
                final __value__ = _loc;
                if (__value__ == (stdgo._internal.time.Time.utc) || __value__ == null || (__value__ : Dynamic).__nil__) {
                    _buf = (_buf.__append__(...(("time.UTC" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                } else if (__value__ == (stdgo._internal.time.Time.local)) {
                    _buf = (_buf.__append__(...(("time.Local" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                } else {
                    _buf = (_buf.__append__(...(("time.Location(" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                    _buf = (_buf.__append__(...(_quote(_loc._name?.__copy__()) : Array<stdgo.GoUInt8>)));
                    _buf = (_buf.__append__((41 : stdgo.GoUInt8)));
                };
            };
        };
        _buf = (_buf.__append__((41 : stdgo.GoUInt8)));
        return (_buf : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function string( _t:Time):stdgo.GoString {
        @:recv var _t:Time = _t?.__copy__();
        var _s:stdgo.GoString = _t.format(("2006-01-02 15:04:05.999999999 -0700 MST" : stdgo.GoString))?.__copy__();
        if ((_t._wall & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            var _m2:stdgo.GoUInt64 = (_t._ext : stdgo.GoUInt64);
            var _sign:stdgo.GoUInt8 = ((43 : stdgo.GoUInt8) : stdgo.GoByte);
            if ((_t._ext < (0i64 : stdgo.GoInt64) : Bool)) {
                _sign = (45 : stdgo.GoUInt8);
                _m2 = -_m2;
            };
            var __0:stdgo.GoUInt64 = (_m2 / (1000000000i64 : stdgo.GoUInt64) : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (_m2 % (1000000000i64 : stdgo.GoUInt64) : stdgo.GoUInt64), _m2:stdgo.GoUInt64 = __1, _m1:stdgo.GoUInt64 = __0;
            var __0:stdgo.GoUInt64 = (_m1 / (1000000000i64 : stdgo.GoUInt64) : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (_m1 % (1000000000i64 : stdgo.GoUInt64) : stdgo.GoUInt64), _m1:stdgo.GoUInt64 = __1, _m0:stdgo.GoUInt64 = __0;
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (24 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _buf = (_buf.__append__(...((" m=" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
            _buf = (_buf.__append__(_sign));
            var _wid:stdgo.GoInt = (0 : stdgo.GoInt);
            if (_m0 != ((0i64 : stdgo.GoUInt64))) {
                _buf = _appendInt(_buf, (_m0 : stdgo.GoInt), (0 : stdgo.GoInt));
                _wid = (9 : stdgo.GoInt);
            };
            _buf = _appendInt(_buf, (_m1 : stdgo.GoInt), _wid);
            _buf = (_buf.__append__((46 : stdgo.GoUInt8)));
            _buf = _appendInt(_buf, (_m2 : stdgo.GoInt), (9 : stdgo.GoInt));
            _s = (_s + ((_buf : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        return _s?.__copy__();
    }
}
class Location_asInterface {
    @:keep
    public dynamic function _lookupName(_name:stdgo.GoString, _unix:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : Bool; } return __self__.value._lookupName(_name, _unix);
    @:keep
    public dynamic function _firstZoneUsed():Bool return __self__.value._firstZoneUsed();
    @:keep
    public dynamic function _lookupFirstZone():stdgo.GoInt return __self__.value._lookupFirstZone();
    @:keep
    public dynamic function _lookup(_sec:stdgo.GoInt64):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; } return __self__.value._lookup(_sec);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function _get():stdgo.Ref<Location> return __self__.value._get();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Location>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time.Time.Location_asInterface) class Location_static_extension {
    @:keep
    static public function _lookupName( _l:stdgo.Ref<Location>, _name:stdgo.GoString, _unix:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _l:stdgo.Ref<Location> = _l;
        var _offset:stdgo.GoInt = (0 : stdgo.GoInt), _ok:Bool = false;
        _l = _l._get();
        for (_i => _ in _l._zone) {
            var _zone = (stdgo.Go.setRef(_l._zone[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.time.Time.T_zone>);
            if (_zone._name == (_name)) {
                var __tmp__ = _l._lookup((_unix - (_zone._offset : stdgo.GoInt64) : stdgo.GoInt64)), _nam:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1, __1:stdgo.GoInt64 = __tmp__._2, __2:stdgo.GoInt64 = __tmp__._3, __3:Bool = __tmp__._4;
                if (_nam == (_zone._name)) {
                    return { _0 : _offset, _1 : true };
                };
            };
        };
        for (_i => _ in _l._zone) {
            var _zone = (stdgo.Go.setRef(_l._zone[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.time.Time.T_zone>);
            if (_zone._name == (_name)) {
                return { _0 : _zone._offset, _1 : true };
            };
        };
        return { _0 : _offset, _1 : _ok };
    }
    @:keep
    static public function _firstZoneUsed( _l:stdgo.Ref<Location>):Bool {
        @:recv var _l:stdgo.Ref<Location> = _l;
        for (__1 => _tx in _l._tx) {
            if (_tx._index == ((0 : stdgo.GoUInt8))) {
                return true;
            };
        };
        return false;
    }
    @:keep
    static public function _lookupFirstZone( _l:stdgo.Ref<Location>):stdgo.GoInt {
        @:recv var _l:stdgo.Ref<Location> = _l;
        if (!_l._firstZoneUsed()) {
            return (0 : stdgo.GoInt);
        };
        if ((((_l._tx.length) > (0 : stdgo.GoInt) : Bool) && _l._zone[(_l._tx[(0 : stdgo.GoInt)]._index : stdgo.GoInt)]._isDST : Bool)) {
            {
                var _zi:stdgo.GoInt = ((_l._tx[(0 : stdgo.GoInt)]._index : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                stdgo.Go.cfor((_zi >= (0 : stdgo.GoInt) : Bool), _zi--, {
                    if (!_l._zone[(_zi : stdgo.GoInt)]._isDST) {
                        return _zi;
                    };
                });
            };
        };
        for (_zi => _ in _l._zone) {
            if (!_l._zone[(_zi : stdgo.GoInt)]._isDST) {
                return _zi;
            };
        };
        return (0 : stdgo.GoInt);
    }
    @:keep
    static public function _lookup( _l:stdgo.Ref<Location>, _sec:stdgo.GoInt64):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; } {
        @:recv var _l:stdgo.Ref<Location> = _l;
        var _name:stdgo.GoString = ("" : stdgo.GoString), _offset:stdgo.GoInt = (0 : stdgo.GoInt), _start:stdgo.GoInt64 = (0 : stdgo.GoInt64), _end:stdgo.GoInt64 = (0 : stdgo.GoInt64), _isDST:Bool = false;
        _l = _l._get();
        if ((_l._zone.length) == ((0 : stdgo.GoInt))) {
            _name = ("UTC" : stdgo.GoString);
            _offset = (0 : stdgo.GoInt);
            _start = (-9223372036854775808i64 : stdgo.GoInt64);
            _end = (9223372036854775807i64 : stdgo.GoInt64);
            _isDST = false;
            return { _0 : _name, _1 : _offset, _2 : _start, _3 : _end, _4 : _isDST };
        };
        {
            var _zone = _l._cacheZone;
            if (((_zone != null && ((_zone : Dynamic).__nil__ == null || !(_zone : Dynamic).__nil__) && (_l._cacheStart <= _sec : Bool) : Bool) && (_sec < _l._cacheEnd : Bool) : Bool)) {
                _name = _zone._name?.__copy__();
                _offset = _zone._offset;
                _start = _l._cacheStart;
                _end = _l._cacheEnd;
                _isDST = _zone._isDST;
                return { _0 : _name, _1 : _offset, _2 : _start, _3 : _end, _4 : _isDST };
            };
        };
        if (((_l._tx.length == (0 : stdgo.GoInt)) || (_sec < _l._tx[(0 : stdgo.GoInt)]._when : Bool) : Bool)) {
            var _zone = (stdgo.Go.setRef(_l._zone[(_l._lookupFirstZone() : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.time.Time.T_zone>);
            _name = _zone._name?.__copy__();
            _offset = _zone._offset;
            _start = (-9223372036854775808i64 : stdgo.GoInt64);
            if (((_l._tx.length) > (0 : stdgo.GoInt) : Bool)) {
                _end = _l._tx[(0 : stdgo.GoInt)]._when;
            } else {
                _end = (9223372036854775807i64 : stdgo.GoInt64);
            };
            _isDST = _zone._isDST;
            return { _0 : _name, _1 : _offset, _2 : _start, _3 : _end, _4 : _isDST };
        };
        var _tx = _l._tx;
        _end = (9223372036854775807i64 : stdgo.GoInt64);
        var _lo:stdgo.GoInt = (0 : stdgo.GoInt);
        var _hi:stdgo.GoInt = (_tx.length);
        while (((_hi - _lo : stdgo.GoInt) > (1 : stdgo.GoInt) : Bool)) {
            var _m:stdgo.GoInt = (_lo + (((_hi - _lo : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            var _lim:stdgo.GoInt64 = _tx[(_m : stdgo.GoInt)]._when;
            if ((_sec < _lim : Bool)) {
                _end = _lim;
                _hi = _m;
            } else {
                _lo = _m;
            };
        };
        var _zone = (stdgo.Go.setRef(_l._zone[(_tx[(_lo : stdgo.GoInt)]._index : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.time.Time.T_zone>);
        _name = _zone._name?.__copy__();
        _offset = _zone._offset;
        _start = _tx[(_lo : stdgo.GoInt)]._when;
        _isDST = _zone._isDST;
        if (((_lo == ((_tx.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) && (_l._extend != stdgo.Go.str()) : Bool)) {
            {
                var __tmp__ = _tzset(_l._extend?.__copy__(), _start, _sec), _ename:stdgo.GoString = __tmp__._0, _eoffset:stdgo.GoInt = __tmp__._1, _estart:stdgo.GoInt64 = __tmp__._2, _eend:stdgo.GoInt64 = __tmp__._3, _eisDST:Bool = __tmp__._4, _ok:Bool = __tmp__._5;
                if (_ok) {
                    return { _0 : _ename?.__copy__(), _1 : _eoffset, _2 : _estart, _3 : _eend, _4 : _eisDST };
                };
            };
        };
        return { _0 : _name, _1 : _offset, _2 : _start, _3 : _end, _4 : _isDST };
    }
    @:keep
    static public function string( _l:stdgo.Ref<Location>):stdgo.GoString {
        @:recv var _l:stdgo.Ref<Location> = _l;
        return _l._get()._name?.__copy__();
    }
    @:keep
    static public function _get( _l:stdgo.Ref<Location>):stdgo.Ref<Location> {
        @:recv var _l:stdgo.Ref<Location> = _l;
        if (_l == null || (_l : Dynamic).__nil__) {
            return (stdgo.Go.setRef(_utcLoc) : stdgo.Ref<stdgo._internal.time.Time.Location>);
        };
        if (_l == ((stdgo.Go.setRef(_localLoc) : stdgo.Ref<stdgo._internal.time.Time.Location>))) {
            _localOnce.do_(_initLocal);
        };
        return _l;
    }
}
class T_dataIO_asInterface {
    @:keep
    public dynamic function _rest():stdgo.Slice<stdgo.GoByte> return __self__.value._rest();
    @:keep
    public dynamic function _byte():{ var _0 : stdgo.GoByte; var _1 : Bool; } return __self__.value._byte();
    @:keep
    public dynamic function _big8():{ var _0 : stdgo.GoUInt64; var _1 : Bool; } return __self__.value._big8();
    @:keep
    public dynamic function _big4():{ var _0 : stdgo.GoUInt32; var _1 : Bool; } return __self__.value._big4();
    @:keep
    public dynamic function _read(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte> return __self__.value._read(_n);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_dataIO>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time.Time.T_dataIO_asInterface) class T_dataIO_static_extension {
    @:keep
    static public function _rest( _d:stdgo.Ref<T_dataIO>):stdgo.Slice<stdgo.GoByte> {
        @:recv var _d:stdgo.Ref<T_dataIO> = _d;
        var _r = _d._p;
        _d._p = (null : stdgo.Slice<stdgo.GoUInt8>);
        return _r;
    }
    @:keep
    static public function _byte( _d:stdgo.Ref<T_dataIO>):{ var _0 : stdgo.GoByte; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<T_dataIO> = _d;
        var _n:stdgo.GoByte = (0 : stdgo.GoUInt8), _ok:Bool = false;
        var _p = _d._read((1 : stdgo.GoInt));
        if (((_p.length) < (1 : stdgo.GoInt) : Bool)) {
            _d._error = true;
            return { _0 : (0 : stdgo.GoUInt8), _1 : false };
        };
        return { _0 : _p[(0 : stdgo.GoInt)], _1 : true };
    }
    @:keep
    static public function _big8( _d:stdgo.Ref<T_dataIO>):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<T_dataIO> = _d;
        var _n:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _ok:Bool = false;
        var __tmp__ = _d._big4(), _n1:stdgo.GoUInt32 = __tmp__._0, _ok1:Bool = __tmp__._1;
        var __tmp__ = _d._big4(), _n2:stdgo.GoUInt32 = __tmp__._0, _ok2:Bool = __tmp__._1;
        if ((!_ok1 || !_ok2 : Bool)) {
            _d._error = true;
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : false };
        };
        return { _0 : ((((_n1 : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) | (_n2 : stdgo.GoUInt64) : stdgo.GoUInt64), _1 : true };
    }
    @:keep
    static public function _big4( _d:stdgo.Ref<T_dataIO>):{ var _0 : stdgo.GoUInt32; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<T_dataIO> = _d;
        var _n:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), _ok:Bool = false;
        var _p = _d._read((4 : stdgo.GoInt));
        if (((_p.length) < (4 : stdgo.GoInt) : Bool)) {
            _d._error = true;
            return { _0 : (0u32 : stdgo.GoUInt32), _1 : false };
        };
        return { _0 : ((((_p[(3 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_p[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_p[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_p[(0 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32), _1 : true };
    }
    @:keep
    static public function _read( _d:stdgo.Ref<T_dataIO>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte> {
        @:recv var _d:stdgo.Ref<T_dataIO> = _d;
        if (((_d._p.length) < _n : Bool)) {
            _d._p = (null : stdgo.Slice<stdgo.GoUInt8>);
            _d._error = true;
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _p = (_d._p.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
        _d._p = (_d._p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        return _p;
    }
}
class Month_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Month>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time.Time.Month_asInterface) class Month_static_extension {
    @:keep
    static public function string( _m:Month):stdgo.GoString {
        @:recv var _m:Month = _m;
        if ((((1 : stdgo._internal.time.Time.Month) <= _m : Bool) && (_m <= (12 : stdgo._internal.time.Time.Month) : Bool) : Bool)) {
            return _longMonthNames[((_m - (1 : stdgo._internal.time.Time.Month) : stdgo._internal.time.Time.Month) : stdgo.GoInt)]?.__copy__();
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((20 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _n:stdgo.GoInt = _fmtInt(_buf, (_m : stdgo.GoUInt64));
        return ((("%!Month(" : stdgo.GoString) + ((_buf.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
class Weekday_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Weekday>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time.Time.Weekday_asInterface) class Weekday_static_extension {
    @:keep
    static public function string( _d:Weekday):stdgo.GoString {
        @:recv var _d:Weekday = _d;
        if ((((0 : stdgo._internal.time.Time.Weekday) <= _d : Bool) && (_d <= (6 : stdgo._internal.time.Time.Weekday) : Bool) : Bool)) {
            return _longDayNames[(_d : stdgo.GoInt)]?.__copy__();
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((20 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _n:stdgo.GoInt = _fmtInt(_buf, (_d : stdgo.GoUInt64));
        return ((("%!Weekday(" : stdgo.GoString) + ((_buf.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
class Duration_asInterface {
    @:keep
    public dynamic function abs():Duration return __self__.value.abs();
    @:keep
    public dynamic function round(_m:Duration):Duration return __self__.value.round(_m);
    @:keep
    public dynamic function truncate(_m:Duration):Duration return __self__.value.truncate(_m);
    @:keep
    public dynamic function hours():stdgo.GoFloat64 return __self__.value.hours();
    @:keep
    public dynamic function minutes():stdgo.GoFloat64 return __self__.value.minutes();
    @:keep
    public dynamic function seconds():stdgo.GoFloat64 return __self__.value.seconds();
    @:keep
    public dynamic function milliseconds():stdgo.GoInt64 return __self__.value.milliseconds();
    @:keep
    public dynamic function microseconds():stdgo.GoInt64 return __self__.value.microseconds();
    @:keep
    public dynamic function nanoseconds():stdgo.GoInt64 return __self__.value.nanoseconds();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Duration>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time.Time.Duration_asInterface) class Duration_static_extension {
    @:keep
    static public function abs( _d:Duration):Duration {
        @:recv var _d:Duration = _d;
        if ((_d >= (0i64 : stdgo._internal.time.Time.Duration) : Bool)) {
            return _d;
        } else if (_d == ((-9223372036854775808i64 : stdgo._internal.time.Time.Duration))) {
            return (9223372036854775807i64 : stdgo._internal.time.Time.Duration);
        } else {
            return -_d;
        };
    }
    @:keep
    static public function round( _d:Duration, _m:Duration):Duration {
        @:recv var _d:Duration = _d;
        if ((_m <= (0i64 : stdgo._internal.time.Time.Duration) : Bool)) {
            return _d;
        };
        var _r:stdgo._internal.time.Time.Duration = (_d % _m : stdgo._internal.time.Time.Duration);
        if ((_d < (0i64 : stdgo._internal.time.Time.Duration) : Bool)) {
            _r = -_r;
            if (_lessThanHalf(_r, _m)) {
                return (_d + _r : stdgo._internal.time.Time.Duration);
            };
            {
                var _d1:stdgo._internal.time.Time.Duration = ((_d - _m : stdgo._internal.time.Time.Duration) + _r : stdgo._internal.time.Time.Duration);
                if ((_d1 < _d : Bool)) {
                    return _d1;
                };
            };
            return (-9223372036854775808i64 : stdgo._internal.time.Time.Duration);
        };
        if (_lessThanHalf(_r, _m)) {
            return (_d - _r : stdgo._internal.time.Time.Duration);
        };
        {
            var _d1:stdgo._internal.time.Time.Duration = ((_d + _m : stdgo._internal.time.Time.Duration) - _r : stdgo._internal.time.Time.Duration);
            if ((_d1 > _d : Bool)) {
                return _d1;
            };
        };
        return (9223372036854775807i64 : stdgo._internal.time.Time.Duration);
    }
    @:keep
    static public function truncate( _d:Duration, _m:Duration):Duration {
        @:recv var _d:Duration = _d;
        if ((_m <= (0i64 : stdgo._internal.time.Time.Duration) : Bool)) {
            return _d;
        };
        return (_d - (_d % _m : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration);
    }
    @:keep
    static public function hours( _d:Duration):stdgo.GoFloat64 {
        @:recv var _d:Duration = _d;
        var _hour:stdgo._internal.time.Time.Duration = (_d / (3600000000000i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration);
        var _nsec:stdgo._internal.time.Time.Duration = (_d % (3600000000000i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration);
        return ((_hour : stdgo.GoFloat64) + ((_nsec : stdgo.GoFloat64) / (3.6e+12 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64);
    }
    @:keep
    static public function minutes( _d:Duration):stdgo.GoFloat64 {
        @:recv var _d:Duration = _d;
        var _min:stdgo._internal.time.Time.Duration = (_d / (60000000000i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration);
        var _nsec:stdgo._internal.time.Time.Duration = (_d % (60000000000i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration);
        return ((_min : stdgo.GoFloat64) + ((_nsec : stdgo.GoFloat64) / (6e+10 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64);
    }
    @:keep
    static public function seconds( _d:Duration):stdgo.GoFloat64 {
        @:recv var _d:Duration = _d;
        var _sec:stdgo._internal.time.Time.Duration = (_d / (1000000000i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration);
        var _nsec:stdgo._internal.time.Time.Duration = (_d % (1000000000i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration);
        return ((_sec : stdgo.GoFloat64) + ((_nsec : stdgo.GoFloat64) / (1e+09 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64);
    }
    @:keep
    static public function milliseconds( _d:Duration):stdgo.GoInt64 {
        @:recv var _d:Duration = _d;
        return ((_d : stdgo.GoInt64) / (1000000i64 : stdgo.GoInt64) : stdgo.GoInt64);
    }
    @:keep
    static public function microseconds( _d:Duration):stdgo.GoInt64 {
        @:recv var _d:Duration = _d;
        return ((_d : stdgo.GoInt64) / (1000i64 : stdgo.GoInt64) : stdgo.GoInt64);
    }
    @:keep
    static public function nanoseconds( _d:Duration):stdgo.GoInt64 {
        @:recv var _d:Duration = _d;
        return (_d : stdgo.GoInt64);
    }
    @:keep
    static public function string( _d:Duration):stdgo.GoString {
        @:recv var _d:Duration = _d;
        var _buf:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32, ...[for (i in 0 ... 32) (0 : stdgo.GoUInt8)]);
        var _w:stdgo.GoInt = (_buf.length);
        var _u:stdgo.GoUInt64 = (_d : stdgo.GoUInt64);
        var _neg:Bool = (_d < (0i64 : stdgo._internal.time.Time.Duration) : Bool);
        if (_neg) {
            _u = -_u;
        };
        if ((_u < ((1000000000i64 : stdgo._internal.time.Time.Duration) : stdgo.GoUInt64) : Bool)) {
            var _prec:stdgo.GoInt = (0 : stdgo.GoInt);
            _w--;
            _buf[(_w : stdgo.GoInt)] = (115 : stdgo.GoUInt8);
            _w--;
            if (_u == ((0i64 : stdgo.GoUInt64))) {
                return ("0s" : stdgo.GoString);
            } else if ((_u < ((1000i64 : stdgo._internal.time.Time.Duration) : stdgo.GoUInt64) : Bool)) {
                _prec = (0 : stdgo.GoInt);
                _buf[(_w : stdgo.GoInt)] = (110 : stdgo.GoUInt8);
            } else if ((_u < ((1000000i64 : stdgo._internal.time.Time.Duration) : stdgo.GoUInt64) : Bool)) {
                _prec = (3 : stdgo.GoInt);
                _w--;
                stdgo.Go.copySlice((_buf.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>), ("µ" : stdgo.GoString));
            } else {
                _prec = (6 : stdgo.GoInt);
                _buf[(_w : stdgo.GoInt)] = (109 : stdgo.GoUInt8);
            };
            {
                var __tmp__ = _fmtFrac((_buf.__slice__(0, _w) : stdgo.Slice<stdgo.GoUInt8>), _u, _prec);
                _w = __tmp__._0;
                _u = __tmp__._1;
            };
            _w = _fmtInt((_buf.__slice__(0, _w) : stdgo.Slice<stdgo.GoUInt8>), _u);
        } else {
            _w--;
            _buf[(_w : stdgo.GoInt)] = (115 : stdgo.GoUInt8);
            {
                var __tmp__ = _fmtFrac((_buf.__slice__(0, _w) : stdgo.Slice<stdgo.GoUInt8>), _u, (9 : stdgo.GoInt));
                _w = __tmp__._0;
                _u = __tmp__._1;
            };
            _w = _fmtInt((_buf.__slice__(0, _w) : stdgo.Slice<stdgo.GoUInt8>), (_u % (60i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
            _u = (_u / ((60i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            if ((_u > (0i64 : stdgo.GoUInt64) : Bool)) {
                _w--;
                _buf[(_w : stdgo.GoInt)] = (109 : stdgo.GoUInt8);
                _w = _fmtInt((_buf.__slice__(0, _w) : stdgo.Slice<stdgo.GoUInt8>), (_u % (60i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
                _u = (_u / ((60i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                if ((_u > (0i64 : stdgo.GoUInt64) : Bool)) {
                    _w--;
                    _buf[(_w : stdgo.GoInt)] = (104 : stdgo.GoUInt8);
                    _w = _fmtInt((_buf.__slice__(0, _w) : stdgo.Slice<stdgo.GoUInt8>), _u);
                };
            };
        };
        if (_neg) {
            _w--;
            _buf[(_w : stdgo.GoInt)] = (45 : stdgo.GoUInt8);
        };
        return ((_buf.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
}
class T_fileSizeError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_fileSizeError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time.Time.T_fileSizeError_asInterface) class T_fileSizeError_static_extension {
    @:keep
    static public function error( _f:T_fileSizeError):stdgo.GoString {
        @:recv var _f:T_fileSizeError = _f;
        return ((("time: file " : stdgo.GoString) + (_f : stdgo.GoString)?.__copy__() : stdgo.GoString) + (" is too large" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
