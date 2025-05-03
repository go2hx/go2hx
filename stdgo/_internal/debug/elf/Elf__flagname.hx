package stdgo._internal.debug.elf;
function _flagName(_i:stdgo.GoUInt32, _names:stdgo.Slice<stdgo._internal.debug.elf.Elf_t_intname.T_intName>, _goSyntax:Bool):stdgo.GoString {
        var _s = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L3581"
        for (__2 => _n in _names) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L3582"
            if ((_n._i & _i : stdgo.GoUInt32) == (_n._i)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L3583"
                if (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
                    _s = (_s + (("+" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                };
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L3586"
                if (_goSyntax) {
                    _s = (_s + (("elf." : stdgo.GoString))?.__copy__() : stdgo.GoString);
                };
                _s = (_s + (_n._s)?.__copy__() : stdgo.GoString);
                _i = (_i - (_n._i) : stdgo.GoUInt32);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L3593"
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L3594"
            return (("0x" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatuint.formatUint((_i : stdgo.GoUInt64), (16 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L3596"
        if (_i != ((0u32 : stdgo.GoUInt32))) {
            _s = (_s + ((("+0x" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatuint.formatUint((_i : stdgo.GoUInt64), (16 : stdgo.GoInt))?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L3599"
        return _s?.__copy__();
    }
