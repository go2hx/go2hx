package stdgo._internal.debug.elf;
function _stringName(_i:stdgo.GoUInt32, _names:stdgo.Slice<stdgo._internal.debug.elf.Elf_t_intname.T_intName>, _goSyntax:Bool):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L3554"
        for (__2 => _n in _names) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L3555"
            if (_n._i == (_i)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L3556"
                if (_goSyntax) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L3557"
                    return (("elf." : stdgo.GoString) + _n._s?.__copy__() : stdgo.GoString)?.__copy__();
                };
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L3559"
                return _n._s?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L3565"
        {
            var _j = ((_names.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_j >= (0 : stdgo.GoInt) : Bool)) {
                var _n = (_names[(_j : stdgo.GoInt)] : stdgo._internal.debug.elf.Elf_t_intname.T_intName);
//"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L3567"
                if ((_n._i < _i : Bool)) {
                    var _s = (_n._s.__copy__() : stdgo.GoString);
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L3569"
                    if (_goSyntax) {
                        _s = (("elf." : stdgo.GoString) + _s.__copy__() : stdgo.GoString).__copy__();
                    };
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L3572"
                    return ((_s + ("+" : stdgo.GoString).__copy__() : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatuint.formatUint(((_i - _n._i : stdgo.GoUInt32) : stdgo.GoUInt64), (10 : stdgo.GoInt)).__copy__() : stdgo.GoString).__copy__();
                };
                _j--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L3576"
        return stdgo._internal.strconv.Strconv_formatuint.formatUint((_i : stdgo.GoUInt64), (10 : stdgo.GoInt))?.__copy__();
    }
