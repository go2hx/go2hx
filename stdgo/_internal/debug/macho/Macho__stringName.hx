package stdgo._internal.debug.macho;
function _stringName(_i:stdgo.GoUInt32, _names:stdgo.Slice<stdgo._internal.debug.macho.Macho_T_intName.T_intName>, _goSyntax:Bool):stdgo.GoString {
        for (__4 => _n in _names) {
            if (_n._i == (_i)) {
                if (_goSyntax) {
                    return (("macho." : stdgo.GoString) + _n._s?.__copy__() : stdgo.GoString)?.__copy__();
                };
                return _n._s?.__copy__();
            };
        };
        return stdgo._internal.strconv.Strconv_formatUint.formatUint((_i : stdgo.GoUInt64), (10 : stdgo.GoInt))?.__copy__();
    }