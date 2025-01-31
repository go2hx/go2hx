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
function _stringName(_i:stdgo.GoUInt32, _names:stdgo.Slice<stdgo._internal.debug.elf.Elf_T_intName.T_intName>, _goSyntax:Bool):stdgo.GoString {
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
                var _n = (_names[(_j : stdgo.GoInt)] : stdgo._internal.debug.elf.Elf_T_intName.T_intName);
if ((_n._i < _i : Bool)) {
                    var _s = (_n._s.__copy__() : stdgo.GoString);
                    if (_goSyntax) {
                        _s = (("elf." : stdgo.GoString) + _s.__copy__() : stdgo.GoString).__copy__();
                    };
                    return ((_s + ("+" : stdgo.GoString).__copy__() : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatUint.formatUint(((_i - _n._i : stdgo.GoUInt32) : stdgo.GoUInt64), (10 : stdgo.GoInt)).__copy__() : stdgo.GoString).__copy__();
                };
                _j--;
            };
        };
        return stdgo._internal.strconv.Strconv_formatUint.formatUint((_i : stdgo.GoUInt64), (10 : stdgo.GoInt))?.__copy__();
    }
