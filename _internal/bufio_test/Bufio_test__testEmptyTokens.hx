package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function _testEmptyTokens(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _text:stdgo.GoString, _values:stdgo.Slice<stdgo.GoString>):Void {
        var _s = stdgo._internal.bufio.Bufio_newScanner.newScanner(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(_text?.__copy__())));
        _s.split(_internal.bufio_test.Bufio_test__commaSplit._commaSplit);
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_s.scan(), _i++, {
                if ((_i >= (_values.length) : Bool)) {
                    _t.fatalf(("got %d fields, expected %d" : stdgo.GoString), stdgo.Go.toInterface((_i + (1 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface((_values.length)));
                };
                if (_s.text() != (_values[(_i : stdgo.GoInt)])) {
                    _t.errorf(("%d: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_values[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_s.text()));
                };
            });
        };
        if (_i != ((_values.length))) {
            _t.fatalf(("got %d fields, expected %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((_values.length)));
        };
        {
            var _err = (_s.err() : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
