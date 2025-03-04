package stdgo._internal.encoding.csv;
function _benchmarkRead(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _initReader:stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader> -> Void, _rows:stdgo.GoString):Void {
        @:check2r _b.reportAllocs();
        var _r = stdgo._internal.encoding.csv.Csv_newreader.newReader(stdgo.Go.asInterface((stdgo.Go.setRef(({ _s : _rows?.__copy__(), _n : (@:checkr _b ?? throw "null pointer dereference").n } : stdgo._internal.encoding.csv.Csv_t_ntimes.T_nTimes)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_t_ntimes.T_nTimes>)));
        if (_initReader != null) {
            _initReader(_r);
        };
        while (true) {
            var __tmp__ = @:check2r _r.read(), __16:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                break;
            };
            if (_err != null) {
                @:check2r _b.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
