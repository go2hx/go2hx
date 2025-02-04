package stdgo._internal.text.scanner;
function _checkTokErr(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>, _line:stdgo.GoInt, _want:stdgo.GoInt32, _text:stdgo.GoString):Void {
        var _prevCount = ((@:checkr _s ?? throw "null pointer dereference").errorCount : stdgo.GoInt);
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, _line, @:check2r _s.scan(), _want, _text?.__copy__());
        if ((@:checkr _s ?? throw "null pointer dereference").errorCount != ((_prevCount + (1 : stdgo.GoInt) : stdgo.GoInt))) {
            @:check2r _t.fatalf(("want error for %q" : stdgo.GoString), stdgo.Go.toInterface(_text));
        };
    }
