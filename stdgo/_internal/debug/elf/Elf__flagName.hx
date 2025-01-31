package stdgo._internal.debug.elf;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.debug.dwarf.Dwarf;
import stdgo._internal.compress.zlib.Zlib;
import stdgo._internal.internal.zstd.Zstd;
function _flagName(_i:stdgo.GoUInt32, _names:stdgo.Slice<stdgo._internal.debug.elf.Elf_T_intName.T_intName>, _goSyntax:Bool):stdgo.GoString {
        var _s = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        for (__2 => _n in _names) {
            if ((_n._i & _i : stdgo.GoUInt32) == (_n._i)) {
                if (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
                    _s = (_s + (("+" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                };
                if (_goSyntax) {
                    _s = (_s + (("elf." : stdgo.GoString))?.__copy__() : stdgo.GoString);
                };
                _s = (_s + (_n._s)?.__copy__() : stdgo.GoString);
                _i = (_i - (_n._i) : stdgo.GoUInt32);
            };
        };
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return (("0x" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatUint.formatUint((_i : stdgo.GoUInt64), (16 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__();
        };
        if (_i != ((0u32 : stdgo.GoUInt32))) {
            _s = (_s + ((("+0x" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatUint.formatUint((_i : stdgo.GoUInt64), (16 : stdgo.GoInt))?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        return _s?.__copy__();
    }
