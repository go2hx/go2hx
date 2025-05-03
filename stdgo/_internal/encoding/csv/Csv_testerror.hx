package stdgo._internal.encoding.csv;
function testError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _f = stdgo._internal.encoding.csv.Csv_newwriter.newWriter(stdgo.Go.asInterface(_b));
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer_test.go#L80"
        _f.write((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("abc" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer_test.go#L81"
        _f.flush();
        var _err = (_f.error() : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer_test.go#L84"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer_test.go#L85"
            _t.errorf(("Unexpected error: %s\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _f = stdgo._internal.encoding.csv.Csv_newwriter.newWriter(stdgo.Go.asInterface((new stdgo._internal.encoding.csv.Csv_t_errorwriter.T_errorWriter() : stdgo._internal.encoding.csv.Csv_t_errorwriter.T_errorWriter)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer_test.go#L89"
        _f.write((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("abc" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer_test.go#L90"
        _f.flush();
        _err = _f.error();
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer_test.go#L93"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/csv/writer_test.go#L94"
            _t.error(stdgo.Go.toInterface(("Error should not be nil" : stdgo.GoString)));
        };
    }
