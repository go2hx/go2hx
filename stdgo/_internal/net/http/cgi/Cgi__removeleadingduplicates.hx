package stdgo._internal.net.http.cgi;
function _removeLeadingDuplicates(_env:stdgo.Slice<stdgo.GoString>):stdgo.Slice<stdgo.GoString> {
        var _ret = (null : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L99"
        for (_i => _e in _env) {
            var _found = (false : Bool);
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L101"
            {
                var _eq = (stdgo._internal.strings.Strings_indexbyte.indexByte(_e?.__copy__(), (61 : stdgo.GoUInt8)) : stdgo.GoInt);
                if (_eq != ((-1 : stdgo.GoInt))) {
                    var _keq = ((_e.__slice__(0, (_eq + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L103"
                    for (__0 => _e2 in (_env.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
                        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L104"
                        if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_e2?.__copy__(), _keq?.__copy__())) {
                            _found = true;
                            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L106"
                            break;
                        };
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L110"
            if (!_found) {
                _ret = (_ret.__append__(_e?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L114"
        return _ret;
    }
