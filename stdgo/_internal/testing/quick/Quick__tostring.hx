package stdgo._internal.testing.quick;
function _toString(_interfaces:stdgo.Slice<stdgo.AnyInterface>):stdgo.GoString {
        var _s = (new stdgo.Slice<stdgo.GoString>((_interfaces.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick.go#L381"
        for (_i => _v in _interfaces) {
            _s[(_i : stdgo.GoInt)] = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%#v" : stdgo.GoString), _v)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick.go#L384"
        return stdgo._internal.strings.Strings_join.join(_s, (", " : stdgo.GoString))?.__copy__();
    }
