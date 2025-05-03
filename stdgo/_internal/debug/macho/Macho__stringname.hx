package stdgo._internal.debug.macho;
function _stringName(_i:stdgo.GoUInt32, _names:stdgo.Slice<stdgo._internal.debug.macho.Macho_t_intname.T_intName>, _goSyntax:Bool):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/debug/macho/macho.go#L332"
        for (__4 => _n in _names) {
            //"file:///home/runner/.go/go1.21.3/src/debug/macho/macho.go#L333"
            if (_n._i == (_i)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/macho/macho.go#L334"
                if (_goSyntax) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/macho/macho.go#L335"
                    return (("macho." : stdgo.GoString) + _n._s?.__copy__() : stdgo.GoString)?.__copy__();
                };
                //"file:///home/runner/.go/go1.21.3/src/debug/macho/macho.go#L337"
                return _n._s?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/macho/macho.go#L340"
        return stdgo._internal.strconv.Strconv_formatuint.formatUint((_i : stdgo.GoUInt64), (10 : stdgo.GoInt))?.__copy__();
    }
