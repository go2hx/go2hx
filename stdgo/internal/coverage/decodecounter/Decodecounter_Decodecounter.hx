package stdgo.internal.coverage.decodecounter;
class Decodecounter {
    static public inline function newCounterDataReader(_fn:String, _rs:stdgo._internal.io.Io_ReadSeeker.ReadSeeker):stdgo.Tuple<CounterDataReader, stdgo.Error> {
        final _fn = (_fn : stdgo.GoString);
        return {
            final obj = stdgo._internal.internal.coverage.decodecounter.Decodecounter_newCounterDataReader.newCounterDataReader(_fn, _rs);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
