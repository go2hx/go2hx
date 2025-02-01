package stdgo._internal.internal.profile;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.lazyregexp.Lazyregexp;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.sort.Sort;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.regexp.Regexp;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.internal.profile.Profile__profileDecoder._profileDecoder, __tmp__1 = stdgo._internal.internal.profile.Profile__valueTypeDecoder._valueTypeDecoder, __tmp__2 = stdgo._internal.internal.profile.Profile__sampleDecoder._sampleDecoder, __tmp__3 = stdgo._internal.internal.profile.Profile__labelDecoder._labelDecoder, __tmp__4 = stdgo._internal.internal.profile.Profile__mappingDecoder._mappingDecoder, __tmp__5 = stdgo._internal.internal.profile.Profile__locationDecoder._locationDecoder, __tmp__6 = stdgo._internal.internal.profile.Profile__lineDecoder._lineDecoder, __tmp__7 = stdgo._internal.internal.profile.Profile__functionDecoder._functionDecoder, __tmp__8 = stdgo._internal.internal.profile.Profile__countStartRE._countStartRE, __tmp__9 = stdgo._internal.internal.profile.Profile__countRE._countRE, __tmp__10 = stdgo._internal.internal.profile.Profile__heapHeaderRE._heapHeaderRE, __tmp__11 = stdgo._internal.internal.profile.Profile__heapSampleRE._heapSampleRE, __tmp__12 = stdgo._internal.internal.profile.Profile__contentionSampleRE._contentionSampleRE, __tmp__13 = stdgo._internal.internal.profile.Profile__hexNumberRE._hexNumberRE, __tmp__14 = stdgo._internal.internal.profile.Profile__growthHeaderRE._growthHeaderRE, __tmp__15 = stdgo._internal.internal.profile.Profile__fragmentationHeaderRE._fragmentationHeaderRE, __tmp__16 = stdgo._internal.internal.profile.Profile__threadzStartRE._threadzStartRE, __tmp__17 = stdgo._internal.internal.profile.Profile__threadStartRE._threadStartRE, __tmp__18 = stdgo._internal.internal.profile.Profile__procMapsRE._procMapsRE, __tmp__19 = stdgo._internal.internal.profile.Profile__briefMapsRE._briefMapsRE, __tmp__20 = stdgo._internal.internal.profile.Profile__cpuInts._cpuInts, __tmp__21 = stdgo._internal.internal.profile.Profile__memoryMapTriggers._memoryMapTriggers, __tmp__22 = stdgo._internal.internal.profile.Profile__heapzSampleTypes._heapzSampleTypes, __tmp__23 = stdgo._internal.internal.profile.Profile__heapzInUseSampleTypes._heapzInUseSampleTypes, __tmp__24 = stdgo._internal.internal.profile.Profile__heapzAllocSampleTypes._heapzAllocSampleTypes, __tmp__25 = stdgo._internal.internal.profile.Profile__contentionzSampleTypes._contentionzSampleTypes, __tmp__26 = stdgo._internal.internal.profile.Profile__allocRxStr._allocRxStr, __tmp__27 = stdgo._internal.internal.profile.Profile__allocSkipRxStr._allocSkipRxStr, __tmp__28 = stdgo._internal.internal.profile.Profile__cpuProfilerRxStr._cpuProfilerRxStr, __tmp__29 = stdgo._internal.internal.profile.Profile__lockRxStr._lockRxStr, __tmp__30 = stdgo._internal.internal.profile.Profile__errUnrecognized._errUnrecognized, __tmp__31 = stdgo._internal.internal.profile.Profile__errMalformed._errMalformed, __tmp__32 = stdgo._internal.internal.profile.Profile__libRx._libRx;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
