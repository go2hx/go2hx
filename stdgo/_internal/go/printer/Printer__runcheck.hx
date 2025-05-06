package stdgo._internal.go.printer;
function _runcheck(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _source:stdgo.GoString, _golden:stdgo.GoString, _mode:stdgo._internal.go.printer.Printer_t_checkmode.T_checkMode):Void {
        var __tmp__ = stdgo._internal.os.Os_readfile.readFile(_source?.__copy__()), _src:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L101"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L102"
            _t.error(stdgo.Go.toInterface(_err));
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L103"
            return;
        };
        var __tmp__ = stdgo._internal.go.printer.Printer__format._format(_src, _mode), _res:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L107"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L108"
            _t.error(stdgo.Go.toInterface(_err));
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L109"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L113"
        if (stdgo._internal.go.printer.Printer__update._update.value) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L114"
            {
                var _err = (stdgo._internal.os.Os_writefile.writeFile(_golden?.__copy__(), _res, (420u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L115"
                    _t.error(stdgo.Go.toInterface(_err));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L117"
            return;
        };
        var __tmp__ = stdgo._internal.os.Os_readfile.readFile(_golden?.__copy__()), _gld:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L122"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L123"
            _t.error(stdgo.Go.toInterface(_err));
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L124"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L128"
        {
            var _err = (stdgo._internal.go.printer.Printer__checkequal._checkEqual(_source?.__copy__(), _golden?.__copy__(), _res, _gld) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L129"
                _t.error(stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L130"
                return;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L133"
        if ((_mode & (8u32 : stdgo._internal.go.printer.Printer_t_checkmode.T_checkMode) : stdgo._internal.go.printer.Printer_t_checkmode.T_checkMode) != ((0u32 : stdgo._internal.go.printer.Printer_t_checkmode.T_checkMode))) {
            {
                var __tmp__ = stdgo._internal.go.printer.Printer__format._format(_gld, _mode);
                _res = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L138"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L139"
                _t.error(stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L140"
                return;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L142"
            {
                var _err = (stdgo._internal.go.printer.Printer__checkequal._checkEqual(_golden?.__copy__(), stdgo._internal.fmt.Fmt_sprintf.sprintf(("format(%s)" : stdgo.GoString), stdgo.Go.toInterface(_golden))?.__copy__(), _gld, _res) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L143"
                    _t.errorf(("golden is not idempotent: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
        };
    }
