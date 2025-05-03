package stdgo._internal.log;
function _testPrint(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _flag:stdgo.GoInt, _prefix:stdgo.GoString, _pattern:stdgo.GoString, _useFormat:Bool):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L59"
        stdgo._internal.log.Log_setoutput.setOutput(stdgo.Go.asInterface(_buf));
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L60"
        stdgo._internal.log.Log_setflags.setFlags(_flag);
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L61"
        stdgo._internal.log.Log_setprefix.setPrefix(_prefix?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L62"
        if (_useFormat) {
            //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L63"
            stdgo._internal.log.Log_printf.printf(("hello %d world" : stdgo.GoString), stdgo.Go.toInterface((23 : stdgo.GoInt)));
        } else {
            //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L65"
            stdgo._internal.log.Log_println.println(stdgo.Go.toInterface(("hello" : stdgo.GoString)), stdgo.Go.toInterface((23 : stdgo.GoInt)), stdgo.Go.toInterface(("world" : stdgo.GoString)));
        };
        var _line = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        _line = (_line.__slice__((0 : stdgo.GoInt), ((_line.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        _pattern = ((("^" : stdgo.GoString) + _pattern?.__copy__() : stdgo.GoString) + ("hello 23 world$" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        var __tmp__ = stdgo._internal.regexp.Regexp_matchstring.matchString(_pattern?.__copy__(), _line?.__copy__()), _matched:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L71"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L72"
            _t.fatal(stdgo.Go.toInterface(("pattern did not compile:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L74"
        if (!_matched) {
            //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L75"
            _t.errorf(("log output should match %q is %q" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_line));
        };
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L77"
        stdgo._internal.log.Log_setoutput.setOutput(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr));
    }
