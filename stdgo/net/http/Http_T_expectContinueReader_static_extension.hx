package stdgo.net.http;
class T_expectContinueReader_static_extension {
    static public function close(_ecr:T_expectContinueReader):stdgo.Error {
        final _ecr = (_ecr : stdgo.Ref<stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader>);
        return stdgo._internal.net.http.Http_T_expectContinueReader_static_extension.T_expectContinueReader_static_extension.close(_ecr);
    }
    static public function read(_ecr:T_expectContinueReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _ecr = (_ecr : stdgo.Ref<stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_expectContinueReader_static_extension.T_expectContinueReader_static_extension.read(_ecr, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
