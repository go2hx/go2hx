package stdgo._internal.text.scanner;
function _checkTokErr(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>, _line:stdgo.GoInt, _want:stdgo.GoInt32, _text:stdgo.GoString):Void {
        var _prevCount = (_s.errorCount : stdgo.GoInt);
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, _line, _s.scan(), _want, _text?.__copy__());
        if (_s.errorCount != ((_prevCount + (1 : stdgo.GoInt) : stdgo.GoInt))) {
            _t.fatalf(("want error for %q" : stdgo.GoString), stdgo.Go.toInterface(_text));
        };
    }
