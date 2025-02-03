package stdgo.internal.coverage.decodecounter;
class CounterDataReader_static_extension {
    static public function nextFunc(_cdr:CounterDataReader, _p:FuncPayload):stdgo.Tuple<Bool, stdgo.Error> {
        final _cdr = (_cdr : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_CounterDataReader.CounterDataReader>);
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_FuncPayload.FuncPayload>);
        return {
            final obj = stdgo._internal.internal.coverage.decodecounter.Decodecounter_CounterDataReader_static_extension.CounterDataReader_static_extension.nextFunc(_cdr, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function numFunctionsInSegment(_cdr:CounterDataReader):std.UInt {
        final _cdr = (_cdr : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_CounterDataReader.CounterDataReader>);
        return stdgo._internal.internal.coverage.decodecounter.Decodecounter_CounterDataReader_static_extension.CounterDataReader_static_extension.numFunctionsInSegment(_cdr);
    }
    static public function beginNextSegment(_cdr:CounterDataReader):stdgo.Tuple<Bool, stdgo.Error> {
        final _cdr = (_cdr : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_CounterDataReader.CounterDataReader>);
        return {
            final obj = stdgo._internal.internal.coverage.decodecounter.Decodecounter_CounterDataReader_static_extension.CounterDataReader_static_extension.beginNextSegment(_cdr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function numSegments(_cdr:CounterDataReader):std.UInt {
        final _cdr = (_cdr : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_CounterDataReader.CounterDataReader>);
        return stdgo._internal.internal.coverage.decodecounter.Decodecounter_CounterDataReader_static_extension.CounterDataReader_static_extension.numSegments(_cdr);
    }
    static public function goarch(_cdr:CounterDataReader):String {
        final _cdr = (_cdr : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_CounterDataReader.CounterDataReader>);
        return stdgo._internal.internal.coverage.decodecounter.Decodecounter_CounterDataReader_static_extension.CounterDataReader_static_extension.goarch(_cdr);
    }
    static public function goos(_cdr:CounterDataReader):String {
        final _cdr = (_cdr : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_CounterDataReader.CounterDataReader>);
        return stdgo._internal.internal.coverage.decodecounter.Decodecounter_CounterDataReader_static_extension.CounterDataReader_static_extension.goos(_cdr);
    }
    static public function osArgs(_cdr:CounterDataReader):Array<String> {
        final _cdr = (_cdr : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_CounterDataReader.CounterDataReader>);
        return [for (i in stdgo._internal.internal.coverage.decodecounter.Decodecounter_CounterDataReader_static_extension.CounterDataReader_static_extension.osArgs(_cdr)) i];
    }
    static public function _readArgs(_cdr:CounterDataReader):stdgo.Error {
        final _cdr = (_cdr : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_CounterDataReader.CounterDataReader>);
        return stdgo._internal.internal.coverage.decodecounter.Decodecounter_CounterDataReader_static_extension.CounterDataReader_static_extension._readArgs(_cdr);
    }
    static public function _readStringTable(_cdr:CounterDataReader):stdgo.Error {
        final _cdr = (_cdr : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_CounterDataReader.CounterDataReader>);
        return stdgo._internal.internal.coverage.decodecounter.Decodecounter_CounterDataReader_static_extension.CounterDataReader_static_extension._readStringTable(_cdr);
    }
    static public function _readSegmentPreamble(_cdr:CounterDataReader):stdgo.Error {
        final _cdr = (_cdr : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_CounterDataReader.CounterDataReader>);
        return stdgo._internal.internal.coverage.decodecounter.Decodecounter_CounterDataReader_static_extension.CounterDataReader_static_extension._readSegmentPreamble(_cdr);
    }
    static public function _readFooter(_cdr:CounterDataReader):stdgo.Error {
        final _cdr = (_cdr : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_CounterDataReader.CounterDataReader>);
        return stdgo._internal.internal.coverage.decodecounter.Decodecounter_CounterDataReader_static_extension.CounterDataReader_static_extension._readFooter(_cdr);
    }
}
