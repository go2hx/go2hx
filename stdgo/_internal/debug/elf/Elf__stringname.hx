package stdgo._internal.debug.elf;
function _stringName(_i:stdgo.GoUInt32, _names:stdgo.Slice<stdgo._internal.debug.elf.Elf_t_intname.T_intName>, _goSyntax:Bool):stdgo.GoString {
        for (__2 => _n in _names) {
            if (_n._i == (_i)) {
                if (_goSyntax) {
                    return (("elf." : stdgo.GoString) + _n._s?.__copy__() : stdgo.GoString)?.__copy__();
                };
                return _n._s?.__copy__();
            };
        };
        {
            var _j = ((_names.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_j >= (0 : stdgo.GoInt) : Bool)) {
                var _n = (_names[(_j : stdgo.GoInt)] : stdgo._internal.debug.elf.Elf_t_intname.T_intName);
if ((_n._i < _i : Bool)) {
                    var _s = (_n._s.__copy__() : stdgo.GoString);
                    if (_goSyntax) {
                        _s = (("elf." : stdgo.GoString) + _s.__copy__() : stdgo.GoString).__copy__();
                    };
                    return ((_s + ("+" : stdgo.GoString).__copy__() : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatuint.formatUint(((_i - _n._i : stdgo.GoUInt32) : stdgo.GoUInt64), (10 : stdgo.GoInt)).__copy__() : stdgo.GoString).__copy__();
                };
                _j--;
            };
        };
        return stdgo._internal.strconv.Strconv_formatuint.formatUint((_i : stdgo.GoUInt64), (10 : stdgo.GoInt))?.__copy__();
    }
