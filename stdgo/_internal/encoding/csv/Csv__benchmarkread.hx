package stdgo._internal.encoding.csv;
function _benchmarkRead(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _initReader:stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader> -> Void, _rows:stdgo.GoString):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader_test.go#L591"
        _b.reportAllocs();
        var _r = stdgo._internal.encoding.csv.Csv_newreader.newReader(stdgo.Go.asInterface((stdgo.Go.setRef(({ _s : _rows?.__copy__(), _n : (@:checkr _b ?? throw "null pointer dereference").n } : stdgo._internal.encoding.csv.Csv_t_ntimes.T_nTimes)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_t_ntimes.T_nTimes>)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader_test.go#L593"
        if (_initReader != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader_test.go#L594"
            _initReader(_r);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader_test.go#L596"
        while (true) {
            var __tmp__ = _r.read(), __16:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader_test.go#L598"
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader_test.go#L599"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader_test.go#L601"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader_test.go#L602"
                _b.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
