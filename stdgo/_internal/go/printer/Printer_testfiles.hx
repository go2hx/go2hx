package stdgo._internal.go.printer;
function testFiles(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L198"
        _t.parallel();
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L199"
        for (__0 => _e in stdgo._internal.go.printer.Printer__data._data) {
            var _source = (stdgo._internal.path.filepath.Filepath_join.join(("testdata" : stdgo.GoString), _e._source?.__copy__())?.__copy__() : stdgo.GoString);
            var _golden = (stdgo._internal.path.filepath.Filepath_join.join(("testdata" : stdgo.GoString), _e._golden?.__copy__())?.__copy__() : stdgo.GoString);
            var _mode = (_e._mode : stdgo._internal.go.printer.Printer_t_checkmode.T_checkMode);
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L203"
            _t.run(_e._source?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L204"
                _t.parallel();
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L205"
                stdgo._internal.go.printer.Printer__check._check(_t, _source?.__copy__(), _golden?.__copy__(), _mode);
            });
        };
    }
