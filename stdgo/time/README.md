# Module: `stdgo.time`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _absClock(_abs:stdgo.GoUInt64):Void`](<#function-_absclock>)

- [`function _absDate(_abs:stdgo.GoUInt64, _full:Bool):Void`](<#function-_absdate>)

- [`function _absWeekday(_abs:stdgo.GoUInt64):Void`](<#function-_absweekday>)

- [`function _appendInt(_b:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoInt, _width:stdgo.GoInt):Void`](<#function-_appendint>)

- [`function _appendNano(_b:stdgo.Slice<stdgo.GoByte>, _nanosec:stdgo.GoInt, _std:stdgo.GoInt):Void`](<#function-_appendnano>)

- [`function _atoi(__generic__0:_atoi.T_bytes, _s:_atoi.T_bytes):Dynamic`](<#function-_atoi>)

- [`function _byteString(_p:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_bytestring>)

- [`function _cloneString(_s:stdgo.GoString):Void`](<#function-_clonestring>)

- [`function _closefd(_fd:stdgo.GoUIntptr):Void`](<#function-_closefd>)

- [`function _commaOrPeriod(_b:stdgo.GoByte):Void`](<#function-_commaorperiod>)

- [`function _containsDotDot(_s:stdgo.GoString):Void`](<#function-_containsdotdot>)

- [`function _cutspace(_s:stdgo.GoString):Void`](<#function-_cutspace>)

- [`function _daysIn(_m:stdgo.time.Month, _year:stdgo.GoInt):Void`](<#function-_daysin>)

- [`function _daysSinceEpoch(_year:stdgo.GoInt):Void`](<#function-_dayssinceepoch>)

- [`function _digitsLen(_std:stdgo.GoInt):Void`](<#function-_digitslen>)

- [`function _disablePlatformSources():Void`](<#function-_disableplatformsources>)

- [`function _div(_t:stdgo.time.Time, _d:stdgo.time.Duration):Void`](<#function-_div>)

- [`function _empty(_arg:stdgo.AnyInterface, _seq:stdgo.GoUIntptr):Void`](<#function-_empty>)

- [`function _findZone(_zones:stdgo.Slice<stdgo.time.T_zone>, _name:stdgo.GoString, _offset:stdgo.GoInt, _isDST:Bool):Void`](<#function-_findzone>)

- [`function _fixedZone(_name:stdgo.GoString, _offset:stdgo.GoInt):Void`](<#function-_fixedzone>)

- [`function _fmtFrac(_buf:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt64, _prec:stdgo.GoInt):Void`](<#function-_fmtfrac>)

- [`function _fmtInt(_buf:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt64):Void`](<#function-_fmtint>)

- [`function _get2(_b:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_get2>)

- [`function _get4(_b:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_get4>)

- [`function _getnum(_s:stdgo.GoString, _fixed:Bool):Void`](<#function-_getnum>)

- [`function _getnum3(_s:stdgo.GoString, _fixed:Bool):Void`](<#function-_getnum3>)

- [`function _goFunc(_arg:stdgo.AnyInterface, _seq:stdgo.GoUIntptr):Void`](<#function-_gofunc>)

- [`function _gorootZoneSource(_goroot:stdgo.GoString):Void`](<#function-_gorootzonesource>)

- [`function _initLocal():Void`](<#function-_initlocal>)

- [`function _initTestingZone():Void`](<#function-_inittestingzone>)

- [`function _interrupt():Void`](<#function-_interrupt>)

- [`function _isDigit(__generic__0:_isDigit.T_bytes, _s:_isDigit.T_bytes, _i:stdgo.GoInt):Dynamic`](<#function-_isdigit>)

- [`function _isLeap(_year:stdgo.GoInt):Void`](<#function-_isleap>)

- [`function _leadingFraction(_s:stdgo.GoString):Void`](<#function-_leadingfraction>)

- [`function _leadingInt(__generic__0:_leadingInt.T_bytes, _s:_leadingInt.T_bytes):Dynamic`](<#function-_leadingint>)

- [`function _lessThanHalf(_x:stdgo.time.Duration, _y:stdgo.time.Duration):Void`](<#function-_lessthanhalf>)

- [`function _loadLocation(_name:stdgo.GoString, _sources:stdgo.Slice<stdgo.GoString>):Void`](<#function-_loadlocation>)

- [`function _loadTzinfo(_name:stdgo.GoString, _source:stdgo.GoString):Void`](<#function-_loadtzinfo>)

- [`function _loadTzinfoFromDirOrZip(_dir:stdgo.GoString, _name:stdgo.GoString):Void`](<#function-_loadtzinfofromdirorzip>)

- [`function _loadTzinfoFromZip(_zipfile:stdgo.GoString, _name:stdgo.GoString):Void`](<#function-_loadtzinfofromzip>)

- [`function _lookup(_tab:stdgo.Slice<stdgo.GoString>, _val:stdgo.GoString):Void`](<#function-_lookup>)

- [`function _match(_s1:stdgo.GoString, _s2:stdgo.GoString):Void`](<#function-_match>)

- [`function _modTimer(_t:stdgo.Ref<stdgo.time.T_runtimeTimer>, _when:stdgo.GoInt64, _period:stdgo.GoInt64, _f:(:stdgo.AnyInterface, :stdgo.GoUIntptr):Void, _arg:stdgo.AnyInterface, _seq:stdgo.GoUIntptr):Void`](<#function-_modtimer>)

- [`function _newParseError(_layout:stdgo.GoString, _value:stdgo.GoString, _layoutElem:stdgo.GoString, _valueElem:stdgo.GoString, _message:stdgo.GoString):Void`](<#function-_newparseerror>)

- [`function _nextStdChunk(_layout:stdgo.GoString):Void`](<#function-_nextstdchunk>)

- [`function _norm(_hi:stdgo.GoInt, _lo:stdgo.GoInt, _base:stdgo.GoInt):Void`](<#function-_norm>)

- [`function _now():Void`](<#function-_now>)

- [`function _open(_name:stdgo.GoString):Void`](<#function-_open>)

- [`function _parse(_layout:stdgo.GoString, _value:stdgo.GoString, _defaultLocation:stdgo.Ref<stdgo.time.Location>, _local:stdgo.Ref<stdgo.time.Location>):Void`](<#function-_parse>)

- [`function _parseGMT(_value:stdgo.GoString):Void`](<#function-_parsegmt>)

- [`function _parseNanoseconds(__generic__0:_parseNanoseconds.T_bytes, _value:_parseNanoseconds.T_bytes, _nbytes:stdgo.GoInt):Dynamic`](<#function-_parsenanoseconds>)

- [`function _parseRFC3339(__generic__0:_parseRFC3339.T_bytes, _s:_parseRFC3339.T_bytes, _local:stdgo.Ref<stdgo.time.Location>):Dynamic`](<#function-_parserfc3339>)

- [`function _parseSignedOffset(_value:stdgo.GoString):Void`](<#function-_parsesignedoffset>)

- [`function _parseStrictRFC3339(_b:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_parsestrictrfc3339>)

- [`function _parseTimeZone(_value:stdgo.GoString):Void`](<#function-_parsetimezone>)

- [`function _preadn(_fd:stdgo.GoUIntptr, _buf:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt):Void`](<#function-_preadn>)

- [`function _quote(_s:stdgo.GoString):Void`](<#function-_quote>)

- [`function _read(_fd:stdgo.GoUIntptr, _buf:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_read>)

- [`function _readFile(_name:stdgo.GoString):Void`](<#function-_readfile>)

- [`function _registerLoadFromEmbeddedTZData(_f:()):Void`](<#function-_registerloadfromembeddedtzdata>)

- [`function _resetTimer(_0:stdgo.Ref<stdgo.time.T_runtimeTimer>, _1:stdgo.GoInt64):Void`](<#function-_resettimer>)

- [`function _runtimeNano():Void`](<#function-_runtimenano>)

- [`function _sendTime(_c:stdgo.AnyInterface, _seq:stdgo.GoUIntptr):Void`](<#function-_sendtime>)

- [`function _separator(_std:stdgo.GoInt):Void`](<#function-_separator>)

- [`function _skip(_value:stdgo.GoString, _prefix:stdgo.GoString):Void`](<#function-_skip>)

- [`function _startTimer(_0:stdgo.Ref<stdgo.time.T_runtimeTimer>):Void`](<#function-_starttimer>)

- [`function _startsWithLowerCase(_str:stdgo.GoString):Void`](<#function-_startswithlowercase>)

- [`function _stdFracSecond(_code:stdgo.GoInt, _n:stdgo.GoInt, _c:stdgo.GoInt):Void`](<#function-_stdfracsecond>)

- [`function _stopTimer(_0:stdgo.Ref<stdgo.time.T_runtimeTimer>):Void`](<#function-_stoptimer>)

- [`function _tzruleTime(_year:stdgo.GoInt, _r:stdgo.time.T_rule, _off:stdgo.GoInt):Void`](<#function-_tzruletime>)

- [`function _tzset(_s:stdgo.GoString, _lastTxSec:stdgo.GoInt64, _sec:stdgo.GoInt64):Void`](<#function-_tzset>)

- [`function _tzsetName(_s:stdgo.GoString):Void`](<#function-_tzsetname>)

- [`function _tzsetNum(_s:stdgo.GoString, _min:stdgo.GoInt, _max:stdgo.GoInt):Void`](<#function-_tzsetnum>)

- [`function _tzsetOffset(_s:stdgo.GoString):Void`](<#function-_tzsetoffset>)

- [`function _tzsetRule(_s:stdgo.GoString):Void`](<#function-_tzsetrule>)

- [`function _unixTime(_sec:stdgo.GoInt64, _nsec:stdgo.GoInt32):Void`](<#function-_unixtime>)

- [`function _when(_d:stdgo.time.Duration):Void`](<#function-_when>)

- [`function after(_d:stdgo.time.Duration):Void`](<#function-after>)

- [`function afterFunc(_d:stdgo.time.Duration, _f:():Void):Void`](<#function-afterfunc>)

- [`function checkRuntimeTimerPeriodOverflow():Void`](<#function-checkruntimetimerperiodoverflow>)

- [`function date(_year:stdgo.GoInt, _month:stdgo.time.Month, _day:stdgo.GoInt, _hour:stdgo.GoInt, _min:stdgo.GoInt, _sec:stdgo.GoInt, _nsec:stdgo.GoInt, _loc:stdgo.Ref<stdgo.time.Location>):Void`](<#function-date>)

- [`function fixedZone(_name:stdgo.GoString, _offset:stdgo.GoInt):Void`](<#function-fixedzone>)

- [`function forceUSPacificForTesting():Void`](<#function-forceuspacificfortesting>)

- [`function loadFromEmbeddedTZData(_zone:stdgo.GoString):Void`](<#function-loadfromembeddedtzdata>)

- [`function loadLocation(_name:stdgo.GoString):Void`](<#function-loadlocation>)

- [`function loadLocationFromTZData(_name:stdgo.GoString, _data:stdgo.Slice<stdgo.GoByte>):Void`](<#function-loadlocationfromtzdata>)

- [`function newTicker(_d:stdgo.time.Duration):Void`](<#function-newticker>)

- [`function newTimer(_d:stdgo.time.Duration):Void`](<#function-newtimer>)

- [`function now():Void`](<#function-now>)

- [`function parse(_layout:stdgo.GoString, _value:stdgo.GoString):Void`](<#function-parse>)

- [`function parseDuration(_s:stdgo.GoString):Void`](<#function-parseduration>)

- [`function parseInLocation(_layout:stdgo.GoString, _value:stdgo.GoString, _loc:stdgo.Ref<stdgo.time.Location>):Void`](<#function-parseinlocation>)

- [`function resetLocalOnceForTest():Void`](<#function-resetlocaloncefortest>)

- [`function resetZoneinfoForTesting():Void`](<#function-resetzoneinfofortesting>)

- [`function since(_t:stdgo.time.Time):Void`](<#function-since>)

- [`function sleep(_d:stdgo.time.Duration):Void`](<#function-sleep>)

- [`function tick(_d:stdgo.time.Duration):Void`](<#function-tick>)

- [`function tzsetRule(_s:stdgo.GoString):Void`](<#function-tzsetrule>)

- [`function unix(_sec:stdgo.GoInt64, _nsec:stdgo.GoInt64):Void`](<#function-unix>)

- [`function unixMicro(_usec:stdgo.GoInt64):Void`](<#function-unixmicro>)

- [`function unixMilli(_msec:stdgo.GoInt64):Void`](<#function-unixmilli>)

- [`function until(_t:stdgo.time.Time):Void`](<#function-until>)

- [`function zoneinfoForTesting():Void`](<#function-zoneinfofortesting>)

- [typedef Duration](<#typedef-duration>)

- [typedef Duration\_asInterface](<#typedef-duration_asinterface>)

- [typedef Duration\_static\_extension](<#typedef-duration_static_extension>)

- [typedef Location](<#typedef-location>)

- [typedef Location\_asInterface](<#typedef-location_asinterface>)

- [typedef Location\_static\_extension](<#typedef-location_static_extension>)

- [typedef Month](<#typedef-month>)

- [typedef Month\_asInterface](<#typedef-month_asinterface>)

- [typedef Month\_static\_extension](<#typedef-month_static_extension>)

- [typedef ParseError](<#typedef-parseerror>)

- [typedef ParseError\_asInterface](<#typedef-parseerror_asinterface>)

- [typedef ParseError\_static\_extension](<#typedef-parseerror_static_extension>)

- [typedef Rule](<#typedef-rule>)

- [typedef RuleKind](<#typedef-rulekind>)

- [typedef T\_dataIO](<#typedef-t_dataio>)

- [typedef T\_dataIO\_asInterface](<#typedef-t_dataio_asinterface>)

- [typedef T\_dataIO\_static\_extension](<#typedef-t_dataio_static_extension>)

- [typedef T\_fileSizeError](<#typedef-t_filesizeerror>)

- [typedef T\_fileSizeError\_asInterface](<#typedef-t_filesizeerror_asinterface>)

- [typedef T\_fileSizeError\_static\_extension](<#typedef-t_filesizeerror_static_extension>)

- [typedef T\_rule](<#typedef-t_rule>)

- [typedef T\_ruleKind](<#typedef-t_rulekind>)

- [typedef T\_runtimeTimer](<#typedef-t_runtimetimer>)

- [typedef T\_zone](<#typedef-t_zone>)

- [typedef T\_zoneTrans](<#typedef-t_zonetrans>)

- [typedef Ticker](<#typedef-ticker>)

- [typedef Ticker\_asInterface](<#typedef-ticker_asinterface>)

- [typedef Ticker\_static\_extension](<#typedef-ticker_static_extension>)

- [typedef Time](<#typedef-time>)

- [typedef Time\_asInterface](<#typedef-time_asinterface>)

- [typedef Time\_static\_extension](<#typedef-time_static_extension>)

- [typedef Timer](<#typedef-timer>)

- [typedef Timer\_asInterface](<#typedef-timer_asinterface>)

- [typedef Timer\_static\_extension](<#typedef-timer_static_extension>)

- [typedef Weekday](<#typedef-weekday>)

- [typedef Weekday\_asInterface](<#typedef-weekday_asinterface>)

- [typedef Weekday\_static\_extension](<#typedef-weekday_static_extension>)

# Variables


```haxe
import stdgo.time.Time
```


```haxe
var _:Dynamic
```


```haxe
var __0:Dynamic
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _absoluteToInternal:Dynamic
```


```haxe
var _absoluteZeroYear:Dynamic
```


```haxe
var _alpha:Dynamic
```


```haxe
var _daysBefore:Dynamic
```


```haxe
var _daysPer100Years:Dynamic
```


```haxe
var _daysPer400Years:Dynamic
```


```haxe
var _daysPer4Years:Dynamic
```


```haxe
var _errAtoi:Dynamic
```


```haxe
var _errBad:Dynamic
```


```haxe
var _errBadData:Dynamic
```


```haxe
var _errLeadingInt:Dynamic
```


```haxe
var _errLocation:Dynamic
```


```haxe
var _hasMonotonic:Dynamic
```


```haxe
var _internalToAbsolute:Dynamic
```


```haxe
var _internalToUnix:Dynamic
```


```haxe
var _internalYear:Dynamic
```


```haxe
var _loadFromEmbeddedTZData:Dynamic
```


```haxe
var _loadTzinfoFromTzdata:Dynamic
```


```haxe
var _localLoc:Dynamic
```


```haxe
var _localOnce:Dynamic
```


```haxe
var _longDayNames:Dynamic
```


```haxe
var _longMonthNames:Dynamic
```


```haxe
var _lowerhex:Dynamic
```


```haxe
var _maxDuration:Dynamic
```


```haxe
var _maxFileSize:Dynamic
```


```haxe
var _maxWall:Dynamic
```


```haxe
var _minDuration:Dynamic
```


```haxe
var _minWall:Dynamic
```


```haxe
var _nsecMask:Dynamic
```


```haxe
var _nsecShift:Dynamic
```


```haxe
var _omega:Dynamic
```


```haxe
var _origPlatformZoneSources:Dynamic
```


```haxe
var _platformZoneSources:Dynamic
```


```haxe
var _ruleDOY:Dynamic
```


```haxe
var _ruleJulian:Dynamic
```


```haxe
var _ruleMonthWeekDay:Dynamic
```


```haxe
var _runeError:Dynamic
```


```haxe
var _runeSelf:Dynamic
```


```haxe
var _secondsPerDay:Dynamic
```


```haxe
var _secondsPerHour:Dynamic
```


```haxe
var _secondsPerMinute:Dynamic
```


```haxe
var _secondsPerWeek:Dynamic
```


```haxe
var _seekCurrent:Dynamic
```


```haxe
var _seekEnd:Dynamic
```


```haxe
var _seekStart:Dynamic
```


```haxe
var _shortDayNames:Dynamic
```


```haxe
var _shortMonthNames:Dynamic
```


```haxe
var _startNano:Dynamic
```


```haxe
var _std0x:Dynamic
```


```haxe
var _stdArgShift:Dynamic
```


```haxe
var _stdDay:Dynamic
```


```haxe
var _stdFracSecond0:Dynamic
```


```haxe
var _stdFracSecond9:Dynamic
```


```haxe
var _stdHour:Dynamic
```


```haxe
var _stdHour12:Dynamic
```


```haxe
var _stdISO8601ColonSecondsTZ:Dynamic
```


```haxe
var _stdISO8601ColonTZ:Dynamic
```


```haxe
var _stdISO8601SecondsTZ:Dynamic
```


```haxe
var _stdISO8601ShortTZ:Dynamic
```


```haxe
var _stdISO8601TZ:Dynamic
```


```haxe
var _stdLongMonth:Dynamic
```


```haxe
var _stdLongWeekDay:Dynamic
```


```haxe
var _stdLongYear:Dynamic
```


```haxe
var _stdMask:Dynamic
```


```haxe
var _stdMinute:Dynamic
```


```haxe
var _stdMonth:Dynamic
```


```haxe
var _stdNeedClock:Dynamic
```


```haxe
var _stdNeedDate:Dynamic
```


```haxe
var _stdNumColonSecondsTZ:Dynamic
```


```haxe
var _stdNumColonTZ:Dynamic
```


```haxe
var _stdNumMonth:Dynamic
```


```haxe
var _stdNumSecondsTz:Dynamic
```


```haxe
var _stdNumShortTZ:Dynamic
```


```haxe
var _stdNumTZ:Dynamic
```


```haxe
var _stdPM:Dynamic
```


```haxe
var _stdSecond:Dynamic
```


```haxe
var _stdSeparatorShift:Dynamic
```


```haxe
var _stdTZ:Dynamic
```


```haxe
var _stdUnderDay:Dynamic
```


```haxe
var _stdUnderYearDay:Dynamic
```


```haxe
var _stdWeekDay:Dynamic
```


```haxe
var _stdYear:Dynamic
```


```haxe
var _stdZeroDay:Dynamic
```


```haxe
var _stdZeroHour12:Dynamic
```


```haxe
var _stdZeroMinute:Dynamic
```


```haxe
var _stdZeroMonth:Dynamic
```


```haxe
var _stdZeroSecond:Dynamic
```


```haxe
var _stdZeroYearDay:Dynamic
```


```haxe
var _stdpm:Dynamic
```


```haxe
var _timeBinaryVersionV1:Dynamic
```


```haxe
var _timeBinaryVersionV2:Dynamic
```


```haxe
var _unitMap:Dynamic
```


```haxe
var _unixToInternal:Dynamic
```


```haxe
var _unnamedFixedZones:Dynamic
```


```haxe
var _unnamedFixedZonesOnce:Dynamic
```


```haxe
var _utcLoc:Dynamic
```


```haxe
var _wallToInternal:Dynamic
```


```haxe
var _zoneinfo:Dynamic
```


```haxe
var _zoneinfoOnce:Dynamic
```


```haxe
var ansic:Dynamic
```


```haxe
var appendFormatAny:Dynamic
```


```haxe
var appendFormatRFC3339:Dynamic
```


```haxe
var appendInt:Dynamic
```


```haxe
var april:Dynamic
```


```haxe
var august:Dynamic
```


```haxe
var dateOnly:Dynamic
```


```haxe
var dateTime:Dynamic
```


```haxe
var daysIn:Dynamic
```


```haxe
var december:Dynamic
```


```haxe
var disablePlatformSources:Dynamic
```


```haxe
var errLocation:Dynamic
```


```haxe
var february:Dynamic
```


```haxe
var friday:Dynamic
```


```haxe
var getMono:Dynamic
```


```haxe
var gorootZoneSource:Dynamic
```


```haxe
var hour:Dynamic
```


```haxe
var interrupt:Dynamic
```


```haxe
var january:Dynamic
```


```haxe
var july:Dynamic
```


```haxe
var june:Dynamic
```


```haxe
var kitchen:Dynamic
```


```haxe
var layout:Dynamic
```


```haxe
var loadTzinfo:Dynamic
```


```haxe
var local:Dynamic
```


```haxe
var march:Dynamic
```


```haxe
var maxMonoTime:Dynamic
```


```haxe
var may:Dynamic
```


```haxe
var microsecond:Dynamic
```


```haxe
var millisecond:Dynamic
```


```haxe
var minMonoTime:Dynamic
```


```haxe
var minute:Dynamic
```


```haxe
var monday:Dynamic
```


```haxe
var nanosecond:Dynamic
```


```haxe
var nextStdChunk:Dynamic
```


```haxe
var notMonoNegativeTime:Dynamic
```


```haxe
var november:Dynamic
```


```haxe
var october:Dynamic
```


```haxe
var parseAny:Dynamic
```


```haxe
var parseRFC3339:Dynamic
```


```haxe
var parseTimeZone:Dynamic
```


```haxe
var quote:Dynamic
```


```haxe
var readFile:Dynamic
```


```haxe
var rfc1123:Dynamic
```


```haxe
var rfc1123z:Dynamic
```


```haxe
var rfc3339:Dynamic
```


```haxe
var rfc3339nano:Dynamic
```


```haxe
var rfc822:Dynamic
```


```haxe
var rfc822z:Dynamic
```


```haxe
var rfc850:Dynamic
```


```haxe
var rubyDate:Dynamic
```


```haxe
var ruleDOY:Dynamic
```


```haxe
var ruleJulian:Dynamic
```


```haxe
var ruleMonthWeekDay:Dynamic
```


```haxe
var saturday:Dynamic
```


```haxe
var second:Dynamic
```


```haxe
var september:Dynamic
```


```haxe
var setMono:Dynamic
```


```haxe
var stamp:Dynamic
```


```haxe
var stampMicro:Dynamic
```


```haxe
var stampMilli:Dynamic
```


```haxe
var stampNano:Dynamic
```


```haxe
var stdChunkNames:Dynamic
```


```haxe
var sunday:Dynamic
```


```haxe
var thursday:Dynamic
```


```haxe
var timeOnly:Dynamic
```


```haxe
var tuesday:Dynamic
```


```haxe
var tzset:Dynamic
```


```haxe
var tzsetName:Dynamic
```


```haxe
var tzsetOffset:Dynamic
```


```haxe
var unixDate:Dynamic
```


```haxe
var unixToInternal:Dynamic
```


```haxe
var utc:Dynamic
```


```haxe
var wednesday:Dynamic
```


# Functions


```haxe
import stdgo.time.Time
```


## function \_absClock


```haxe
function _absClock(_abs:stdgo.GoUInt64):Void
```


[\(view code\)](<./Time.hx#L254>)


## function \_absDate


```haxe
function _absDate(_abs:stdgo.GoUInt64, _full:Bool):Void
```


[\(view code\)](<./Time.hx#L260>)


## function \_absWeekday


```haxe
function _absWeekday(_abs:stdgo.GoUInt64):Void
```


[\(view code\)](<./Time.hx#L253>)


## function \_appendInt


```haxe
function _appendInt(_b:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoInt, _width:stdgo.GoInt):Void
```


[\(view code\)](<./Time.hx#L204>)


## function \_appendNano


```haxe
function _appendNano(_b:stdgo.Slice<stdgo.GoByte>, _nanosec:stdgo.GoInt, _std:stdgo.GoInt):Void
```


[\(view code\)](<./Time.hx#L209>)


## function \_atoi


```haxe
function _atoi(__generic__0:_atoi.T_bytes, _s:_atoi.T_bytes):Dynamic
```


[\(view code\)](<./Time.hx>)


## function \_byteString


```haxe
function _byteString(_p:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Time.hx#L287>)


## function \_cloneString


```haxe
function _cloneString(_s:stdgo.GoString):Void
```


[\(view code\)](<./Time.hx#L211>)


## function \_closefd


```haxe
function _closefd(_fd:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Time.hx#L249>)


## function \_commaOrPeriod


```haxe
function _commaOrPeriod(_b:stdgo.GoByte):Void
```


[\(view code\)](<./Time.hx#L224>)


## function \_containsDotDot


```haxe
function _containsDotDot(_s:stdgo.GoString):Void
```


[\(view code\)](<./Time.hx#L283>)


## function \_cutspace


```haxe
function _cutspace(_s:stdgo.GoString):Void
```


[\(view code\)](<./Time.hx#L216>)


## function \_daysIn


```haxe
function _daysIn(_m:stdgo.time.Month, _year:stdgo.GoInt):Void
```


[\(view code\)](<./Time.hx#L261>)


## function \_daysSinceEpoch


```haxe
function _daysSinceEpoch(_year:stdgo.GoInt):Void
```


[\(view code\)](<./Time.hx#L262>)


## function \_digitsLen


```haxe
function _digitsLen(_std:stdgo.GoInt):Void
```


[\(view code\)](<./Time.hx#L207>)


## function \_disablePlatformSources


```haxe
function _disablePlatformSources():Void
```


[\(view code\)](<./Time.hx#L232>)


## function \_div


```haxe
function _div(_t:stdgo.time.Time, _d:stdgo.time.Duration):Void
```


[\(view code\)](<./Time.hx#L273>)


## function \_empty


```haxe
function _empty(_arg:stdgo.AnyInterface, _seq:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Time.hx#L233>)


## function \_findZone


```haxe
function _findZone(_zones:stdgo.Slice<stdgo.time.T_zone>, _name:stdgo.GoString, _offset:stdgo.GoInt, _isDST:Bool):Void
```


[\(view code\)](<./Time.hx#L289>)


## function \_fixedZone


```haxe
function _fixedZone(_name:stdgo.GoString, _offset:stdgo.GoInt):Void
```


[\(view code\)](<./Time.hx#L275>)


## function \_fmtFrac


```haxe
function _fmtFrac(_buf:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt64, _prec:stdgo.GoInt):Void
```


[\(view code\)](<./Time.hx#L255>)


## function \_fmtInt


```haxe
function _fmtInt(_buf:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt64):Void
```


[\(view code\)](<./Time.hx#L256>)


## function \_get2


```haxe
function _get2(_b:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Time.hx#L292>)


## function \_get4


```haxe
function _get4(_b:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Time.hx#L291>)


## function \_getnum


```haxe
function _getnum(_s:stdgo.GoString, _fixed:Bool):Void
```


[\(view code\)](<./Time.hx#L214>)


## function \_getnum3


```haxe
function _getnum3(_s:stdgo.GoString, _fixed:Bool):Void
```


[\(view code\)](<./Time.hx#L215>)


## function \_goFunc


```haxe
function _goFunc(_arg:stdgo.AnyInterface, _seq:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Time.hx#L245>)


## function \_gorootZoneSource


```haxe
function _gorootZoneSource(_goroot:stdgo.GoString):Void
```


[\(view code\)](<./Time.hx#L284>)


## function \_initLocal


```haxe
function _initLocal():Void
```


[\(view code\)](<./Time.hx#L285>)


## function \_initTestingZone


```haxe
function _initTestingZone():Void
```


[\(view code\)](<./Time.hx#L231>)


## function \_interrupt


```haxe
function _interrupt():Void
```


[\(view code\)](<./Time.hx#L246>)


## function \_isDigit


```haxe
function _isDigit(__generic__0:_isDigit.T_bytes, _s:_isDigit.T_bytes, _i:stdgo.GoInt):Dynamic
```


[\(view code\)](<./Time.hx>)


## function \_isLeap


```haxe
function _isLeap(_year:stdgo.GoInt):Void
```


[\(view code\)](<./Time.hx#L270>)


## function \_leadingFraction


```haxe
function _leadingFraction(_s:stdgo.GoString):Void
```


[\(view code\)](<./Time.hx#L227>)


## function \_leadingInt


```haxe
function _leadingInt(__generic__0:_leadingInt.T_bytes, _s:_leadingInt.T_bytes):Dynamic
```


[\(view code\)](<./Time.hx>)


## function \_lessThanHalf


```haxe
function _lessThanHalf(_x:stdgo.time.Duration, _y:stdgo.time.Duration):Void
```


[\(view code\)](<./Time.hx#L257>)


## function \_loadLocation


```haxe
function _loadLocation(_name:stdgo.GoString, _sources:stdgo.Slice<stdgo.GoString>):Void
```


[\(view code\)](<./Time.hx#L295>)


## function \_loadTzinfo


```haxe
function _loadTzinfo(_name:stdgo.GoString, _source:stdgo.GoString):Void
```


[\(view code\)](<./Time.hx#L294>)


## function \_loadTzinfoFromDirOrZip


```haxe
function _loadTzinfoFromDirOrZip(_dir:stdgo.GoString, _name:stdgo.GoString):Void
```


[\(view code\)](<./Time.hx#L290>)


## function \_loadTzinfoFromZip


```haxe
function _loadTzinfoFromZip(_zipfile:stdgo.GoString, _name:stdgo.GoString):Void
```


[\(view code\)](<./Time.hx#L293>)


## function \_lookup


```haxe
function _lookup(_tab:stdgo.Slice<stdgo.GoString>, _val:stdgo.GoString):Void
```


[\(view code\)](<./Time.hx#L203>)


## function \_match


```haxe
function _match(_s1:stdgo.GoString, _s2:stdgo.GoString):Void
```


[\(view code\)](<./Time.hx#L202>)


## function \_modTimer


```haxe
function _modTimer(_t:stdgo.Ref<stdgo.time.T_runtimeTimer>, _when:stdgo.GoInt64, _period:stdgo.GoInt64, _f:(:stdgo.AnyInterface, :stdgo.GoUIntptr):Void, _arg:stdgo.AnyInterface, _seq:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Time.hx#L240>)


## function \_newParseError


```haxe
function _newParseError(_layout:stdgo.GoString, _value:stdgo.GoString, _layoutElem:stdgo.GoString, _valueElem:stdgo.GoString, _message:stdgo.GoString):Void
```


[\(view code\)](<./Time.hx#L210>)


## function \_nextStdChunk


```haxe
function _nextStdChunk(_layout:stdgo.GoString):Void
```


[\(view code\)](<./Time.hx#L201>)


## function \_norm


```haxe
function _norm(_hi:stdgo.GoInt, _lo:stdgo.GoInt, _base:stdgo.GoInt):Void
```


[\(view code\)](<./Time.hx#L271>)


## function \_now


```haxe
function _now():Void
```


[\(view code\)](<./Time.hx#L263>)


## function \_open


```haxe
function _open(_name:stdgo.GoString):Void
```


[\(view code\)](<./Time.hx#L247>)


## function \_parse


```haxe
function _parse(_layout:stdgo.GoString, _value:stdgo.GoString, _defaultLocation:stdgo.Ref<stdgo.time.Location>, _local:stdgo.Ref<stdgo.time.Location>):Void
```


[\(view code\)](<./Time.hx#L220>)


## function \_parseGMT


```haxe
function _parseGMT(_value:stdgo.GoString):Void
```


[\(view code\)](<./Time.hx#L222>)


## function \_parseNanoseconds


```haxe
function _parseNanoseconds(__generic__0:_parseNanoseconds.T_bytes, _value:_parseNanoseconds.T_bytes, _nbytes:stdgo.GoInt):Dynamic
```


[\(view code\)](<./Time.hx>)


## function \_parseRFC3339


```haxe
function _parseRFC3339(__generic__0:_parseRFC3339.T_bytes, _s:_parseRFC3339.T_bytes, _local:stdgo.Ref<stdgo.time.Location>):Dynamic
```


[\(view code\)](<./Time.hx>)


## function \_parseSignedOffset


```haxe
function _parseSignedOffset(_value:stdgo.GoString):Void
```


[\(view code\)](<./Time.hx#L223>)


## function \_parseStrictRFC3339


```haxe
function _parseStrictRFC3339(_b:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Time.hx#L230>)


## function \_parseTimeZone


```haxe
function _parseTimeZone(_value:stdgo.GoString):Void
```


[\(view code\)](<./Time.hx#L221>)


## function \_preadn


```haxe
function _preadn(_fd:stdgo.GoUIntptr, _buf:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt):Void
```


[\(view code\)](<./Time.hx#L250>)


## function \_quote


```haxe
function _quote(_s:stdgo.GoString):Void
```


[\(view code\)](<./Time.hx#L212>)


## function \_read


```haxe
function _read(_fd:stdgo.GoUIntptr, _buf:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Time.hx#L248>)


## function \_readFile


```haxe
function _readFile(_name:stdgo.GoString):Void
```


[\(view code\)](<./Time.hx#L296>)


## function \_registerLoadFromEmbeddedTZData


```haxe
function _registerLoadFromEmbeddedTZData(_f:()):Void
```


[\(view code\)](<./Time.hx#L286>)


## function \_resetTimer


```haxe
function _resetTimer(_0:stdgo.Ref<stdgo.time.T_runtimeTimer>, _1:stdgo.GoInt64):Void
```


[\(view code\)](<./Time.hx#L239>)


## function \_runtimeNano


```haxe
function _runtimeNano():Void
```


[\(view code\)](<./Time.hx#L264>)


## function \_sendTime


```haxe
function _sendTime(_c:stdgo.AnyInterface, _seq:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Time.hx#L242>)


## function \_separator


```haxe
function _separator(_std:stdgo.GoInt):Void
```


[\(view code\)](<./Time.hx#L208>)


## function \_skip


```haxe
function _skip(_value:stdgo.GoString, _prefix:stdgo.GoString):Void
```


[\(view code\)](<./Time.hx#L217>)


## function \_startTimer


```haxe
function _startTimer(_0:stdgo.Ref<stdgo.time.T_runtimeTimer>):Void
```


[\(view code\)](<./Time.hx#L237>)


## function \_startsWithLowerCase


```haxe
function _startsWithLowerCase(_str:stdgo.GoString):Void
```


[\(view code\)](<./Time.hx#L200>)


## function \_stdFracSecond


```haxe
function _stdFracSecond(_code:stdgo.GoInt, _n:stdgo.GoInt, _c:stdgo.GoInt):Void
```


[\(view code\)](<./Time.hx#L206>)


## function \_stopTimer


```haxe
function _stopTimer(_0:stdgo.Ref<stdgo.time.T_runtimeTimer>):Void
```


[\(view code\)](<./Time.hx#L238>)


## function \_tzruleTime


```haxe
function _tzruleTime(_year:stdgo.GoInt, _r:stdgo.time.T_rule, _off:stdgo.GoInt):Void
```


[\(view code\)](<./Time.hx#L281>)


## function \_tzset


```haxe
function _tzset(_s:stdgo.GoString, _lastTxSec:stdgo.GoInt64, _sec:stdgo.GoInt64):Void
```


[\(view code\)](<./Time.hx#L276>)


## function \_tzsetName


```haxe
function _tzsetName(_s:stdgo.GoString):Void
```


[\(view code\)](<./Time.hx#L277>)


## function \_tzsetNum


```haxe
function _tzsetNum(_s:stdgo.GoString, _min:stdgo.GoInt, _max:stdgo.GoInt):Void
```


[\(view code\)](<./Time.hx#L280>)


## function \_tzsetOffset


```haxe
function _tzsetOffset(_s:stdgo.GoString):Void
```


[\(view code\)](<./Time.hx#L278>)


## function \_tzsetRule


```haxe
function _tzsetRule(_s:stdgo.GoString):Void
```


[\(view code\)](<./Time.hx#L279>)


## function \_unixTime


```haxe
function _unixTime(_sec:stdgo.GoInt64, _nsec:stdgo.GoInt32):Void
```


[\(view code\)](<./Time.hx#L266>)


## function \_when


```haxe
function _when(_d:stdgo.time.Duration):Void
```


[\(view code\)](<./Time.hx#L236>)


## function after


```haxe
function after(_d:stdgo.time.Duration):Void
```


[\(view code\)](<./Time.hx#L243>)


## function afterFunc


```haxe
function afterFunc(_d:stdgo.time.Duration, _f:():Void):Void
```


[\(view code\)](<./Time.hx#L244>)


## function checkRuntimeTimerPeriodOverflow


```haxe
function checkRuntimeTimerPeriodOverflow():Void
```


[\(view code\)](<./Time.hx#L234>)


## function date


```haxe
function date(_year:stdgo.GoInt, _month:stdgo.time.Month, _day:stdgo.GoInt, _hour:stdgo.GoInt, _min:stdgo.GoInt, _sec:stdgo.GoInt, _nsec:stdgo.GoInt, _loc:stdgo.Ref<stdgo.time.Location>):Void
```


[\(view code\)](<./Time.hx#L272>)


## function fixedZone


```haxe
function fixedZone(_name:stdgo.GoString, _offset:stdgo.GoInt):Void
```


[\(view code\)](<./Time.hx#L274>)


## function forceUSPacificForTesting


```haxe
function forceUSPacificForTesting():Void
```


[\(view code\)](<./Time.hx#L195>)


## function loadFromEmbeddedTZData


```haxe
function loadFromEmbeddedTZData(_zone:stdgo.GoString):Void
```


[\(view code\)](<./Time.hx#L198>)


## function loadLocation


```haxe
function loadLocation(_name:stdgo.GoString):Void
```


[\(view code\)](<./Time.hx#L282>)


## function loadLocationFromTZData


```haxe
function loadLocationFromTZData(_name:stdgo.GoString, _data:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Time.hx#L288>)


## function newTicker


```haxe
function newTicker(_d:stdgo.time.Duration):Void
```


[\(view code\)](<./Time.hx#L251>)


## function newTimer


```haxe
function newTimer(_d:stdgo.time.Duration):Void
```


[\(view code\)](<./Time.hx#L241>)


## function now


```haxe
function now():Void
```


[\(view code\)](<./Time.hx#L265>)


## function parse


```haxe
function parse(_layout:stdgo.GoString, _value:stdgo.GoString):Void
```


[\(view code\)](<./Time.hx#L218>)


## function parseDuration


```haxe
function parseDuration(_s:stdgo.GoString):Void
```


[\(view code\)](<./Time.hx#L228>)


## function parseInLocation


```haxe
function parseInLocation(_layout:stdgo.GoString, _value:stdgo.GoString, _loc:stdgo.Ref<stdgo.time.Location>):Void
```


[\(view code\)](<./Time.hx#L219>)


## function resetLocalOnceForTest


```haxe
function resetLocalOnceForTest():Void
```


[\(view code\)](<./Time.hx#L194>)


## function resetZoneinfoForTesting


```haxe
function resetZoneinfoForTesting():Void
```


[\(view code\)](<./Time.hx#L197>)


## function since


```haxe
function since(_t:stdgo.time.Time):Void
```


[\(view code\)](<./Time.hx#L258>)


## function sleep


```haxe
function sleep(_d:stdgo.time.Duration):Void
```


[\(view code\)](<./Time.hx#L235>)


## function tick


```haxe
function tick(_d:stdgo.time.Duration):Void
```


[\(view code\)](<./Time.hx#L252>)


## function tzsetRule


```haxe
function tzsetRule(_s:stdgo.GoString):Void
```


[\(view code\)](<./Time.hx#L199>)


## function unix


```haxe
function unix(_sec:stdgo.GoInt64, _nsec:stdgo.GoInt64):Void
```


[\(view code\)](<./Time.hx#L267>)


## function unixMicro


```haxe
function unixMicro(_usec:stdgo.GoInt64):Void
```


[\(view code\)](<./Time.hx#L269>)


## function unixMilli


```haxe
function unixMilli(_msec:stdgo.GoInt64):Void
```


[\(view code\)](<./Time.hx#L268>)


## function until


```haxe
function until(_t:stdgo.time.Time):Void
```


[\(view code\)](<./Time.hx#L259>)


## function zoneinfoForTesting


```haxe
function zoneinfoForTesting():Void
```


[\(view code\)](<./Time.hx#L196>)


# Typedefs


```haxe
import stdgo.time.*
```


## typedef Duration


```haxe
typedef Duration = stdgo._internal.time.Duration;
```


## typedef Duration\_asInterface


```haxe
typedef Duration_asInterface = Dynamic;
```


## typedef Duration\_static\_extension


```haxe
typedef Duration_static_extension = Dynamic;
```


## typedef Location


```haxe
typedef Location = Dynamic;
```


## typedef Location\_asInterface


```haxe
typedef Location_asInterface = Dynamic;
```


## typedef Location\_static\_extension


```haxe
typedef Location_static_extension = Dynamic;
```


## typedef Month


```haxe
typedef Month = stdgo._internal.time.Month;
```


## typedef Month\_asInterface


```haxe
typedef Month_asInterface = Dynamic;
```


## typedef Month\_static\_extension


```haxe
typedef Month_static_extension = Dynamic;
```


## typedef ParseError


```haxe
typedef ParseError = Dynamic;
```


## typedef ParseError\_asInterface


```haxe
typedef ParseError_asInterface = Dynamic;
```


## typedef ParseError\_static\_extension


```haxe
typedef ParseError_static_extension = Dynamic;
```


## typedef Rule


```haxe
typedef Rule = Dynamic;
```


## typedef RuleKind


```haxe
typedef RuleKind = stdgo._internal.time.RuleKind;
```


## typedef T\_dataIO


```haxe
typedef T_dataIO = Dynamic;
```


## typedef T\_dataIO\_asInterface


```haxe
typedef T_dataIO_asInterface = Dynamic;
```


## typedef T\_dataIO\_static\_extension


```haxe
typedef T_dataIO_static_extension = Dynamic;
```


## typedef T\_fileSizeError


```haxe
typedef T_fileSizeError = stdgo._internal.time.T_fileSizeError;
```


## typedef T\_fileSizeError\_asInterface


```haxe
typedef T_fileSizeError_asInterface = Dynamic;
```


## typedef T\_fileSizeError\_static\_extension


```haxe
typedef T_fileSizeError_static_extension = Dynamic;
```


## typedef T\_rule


```haxe
typedef T_rule = Dynamic;
```


## typedef T\_ruleKind


```haxe
typedef T_ruleKind = stdgo._internal.time.T_ruleKind;
```


## typedef T\_runtimeTimer


```haxe
typedef T_runtimeTimer = Dynamic;
```


## typedef T\_zone


```haxe
typedef T_zone = Dynamic;
```


## typedef T\_zoneTrans


```haxe
typedef T_zoneTrans = Dynamic;
```


## typedef Ticker


```haxe
typedef Ticker = Dynamic;
```


## typedef Ticker\_asInterface


```haxe
typedef Ticker_asInterface = Dynamic;
```


## typedef Ticker\_static\_extension


```haxe
typedef Ticker_static_extension = Dynamic;
```


## typedef Time


```haxe
typedef Time = Dynamic;
```


## typedef Time\_asInterface


```haxe
typedef Time_asInterface = Dynamic;
```


## typedef Time\_static\_extension


```haxe
typedef Time_static_extension = Dynamic;
```


## typedef Timer


```haxe
typedef Timer = Dynamic;
```


## typedef Timer\_asInterface


```haxe
typedef Timer_asInterface = Dynamic;
```


## typedef Timer\_static\_extension


```haxe
typedef Timer_static_extension = Dynamic;
```


## typedef Weekday


```haxe
typedef Weekday = stdgo._internal.time.Weekday;
```


## typedef Weekday\_asInterface


```haxe
typedef Weekday_asInterface = Dynamic;
```


## typedef Weekday\_static\_extension


```haxe
typedef Weekday_static_extension = Dynamic;
```


