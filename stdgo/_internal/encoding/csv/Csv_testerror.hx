package stdgo._internal.encoding.csv;
function testError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _f = stdgo._internal.encoding.csv.Csv_newwriter.newWriter(stdgo.Go.asInterface(_b));
        @:check2r _f.write((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("abc" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
        @:check2r _f.flush();
        var _err = (@:check2r _f.error() : stdgo.Error);
        if (_err != null) {
            @:check2r _t.errorf(("Unexpected error: %s\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _f = stdgo._internal.encoding.csv.Csv_newwriter.newWriter(stdgo.Go.asInterface((new stdgo._internal.encoding.csv.Csv_t_errorwriter.T_errorWriter() : stdgo._internal.encoding.csv.Csv_t_errorwriter.T_errorWriter)));
        @:check2r _f.write((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("abc" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
        @:check2r _f.flush();
        _err = @:check2r _f.error();
        if (_err == null) {
            @:check2r _t.error(stdgo.Go.toInterface(("Error should not be nil" : stdgo.GoString)));
        };
    }
