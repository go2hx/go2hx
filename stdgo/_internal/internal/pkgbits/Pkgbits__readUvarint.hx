package stdgo._internal.internal.pkgbits;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.go.constant.Constant;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.strconv.Strconv;
function _readUvarint(_r:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _x:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _s:stdgo.GoUInt = (0 : stdgo.GoUInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (10 : stdgo.GoInt) : Bool)) {
                var __tmp__ = @:check2r _r.readByte(), _b:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
if (_err != null) {
                    if (((_i > (0 : stdgo.GoInt) : Bool) && (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF)) : Bool)) {
                        _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
                    };
                    return { _0 : _x, _1 : _err };
                };
if ((_b < (128 : stdgo.GoUInt8) : Bool)) {
                    if (((_i == (9 : stdgo.GoInt)) && (_b > (1 : stdgo.GoUInt8) : Bool) : Bool)) {
                        return { _0 : _x, _1 : stdgo._internal.internal.pkgbits.Pkgbits__overflow._overflow };
                    };
                    return { _0 : (_x | ((_b : stdgo.GoUInt64) << _s : stdgo.GoUInt64) : stdgo.GoUInt64), _1 : (null : stdgo.Error) };
                };
_x = (_x | ((((_b & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64) << _s : stdgo.GoUInt64)) : stdgo.GoUInt64);
_s = (_s + ((7u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                _i++;
            };
        };
        return { _0 : _x, _1 : stdgo._internal.internal.pkgbits.Pkgbits__overflow._overflow };
    }
