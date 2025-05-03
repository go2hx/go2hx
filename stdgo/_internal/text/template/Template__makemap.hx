package stdgo._internal.text.template;
function _makemap(_arg:haxe.Rest<stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        var _arg = new stdgo.Slice<stdgo.GoString>(_arg.length, 0, ..._arg);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L759"
        if (((_arg.length) % (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L760"
            throw stdgo.Go.toInterface(("bad makemap" : stdgo.GoString));
        };
        var _m = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L763"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_arg.length) : Bool)) {
                _m[_arg[(_i : stdgo.GoInt)]] = _arg[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].__copy__();
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L766"
        return _m;
    }
