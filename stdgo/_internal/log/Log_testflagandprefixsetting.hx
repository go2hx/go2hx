package stdgo._internal.log;
function testFlagAndPrefixSetting(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _l = stdgo._internal.log.Log_new_.new_(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("Test:" : stdgo.GoString), (3 : stdgo.GoInt));
        var _f = (_l.flags() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L128"
        if (_f != ((3 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L129"
            _t.errorf(("Flags 1: expected %x got %x" : stdgo.GoString), stdgo.Go.toInterface((3 : stdgo.GoInt)), stdgo.Go.toInterface(_f));
        };
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L131"
        _l.setFlags((_f | (4 : stdgo.GoInt) : stdgo.GoInt));
        _f = _l.flags();
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L133"
        if (_f != ((7 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L134"
            _t.errorf(("Flags 2: expected %x got %x" : stdgo.GoString), stdgo.Go.toInterface((7 : stdgo.GoInt)), stdgo.Go.toInterface(_f));
        };
        var _p = (_l.prefix()?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L137"
        if (_p != (("Test:" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L138"
            _t.errorf(("Prefix: expected \"Test:\" got %q" : stdgo.GoString), stdgo.Go.toInterface(_p));
        };
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L140"
        _l.setPrefix(("Reality:" : stdgo.GoString));
        _p = _l.prefix()?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L142"
        if (_p != (("Reality:" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L143"
            _t.errorf(("Prefix: expected \"Reality:\" got %q" : stdgo.GoString), stdgo.Go.toInterface(_p));
        };
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L146"
        _l.print(stdgo.Go.toInterface(("hello" : stdgo.GoString)));
        var _pattern = (("^Reality:[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] hello\n" : stdgo.GoString) : stdgo.GoString);
        var __tmp__ = stdgo._internal.regexp.Regexp_match.match(_pattern?.__copy__(), _b.bytes()), _matched:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L149"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L150"
            _t.fatalf(("pattern %q did not compile: %s" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L152"
        if (!_matched) {
            //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L153"
            _t.error(stdgo.Go.toInterface(("message did not match pattern" : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L157"
        _b.reset();
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L158"
        _l.setFlags((0 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L159"
        _l.setPrefix(("\n" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L160"
        _l.output((0 : stdgo.GoInt), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L161"
        {
            var _got = ((_b.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (("\n" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L162"
                _t.errorf(("message mismatch:\ngot  %q\nwant %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("\n" : stdgo.GoString)));
            };
        };
    }
