package stdgo._internal.encoding.asn1;
import stdgo._internal.math.big.Big;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
function _parseBigInt(_bytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Error; } {
        {
            var _err = (stdgo._internal.encoding.asn1.Asn1__checkInteger._checkInteger(_bytes) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var _ret = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        if ((((_bytes.length) > (0 : stdgo.GoInt) : Bool) && ((_bytes[(0 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == (128 : stdgo.GoUInt8)) : Bool)) {
            var _notBytes = (new stdgo.Slice<stdgo.GoUInt8>((_bytes.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            for (_i => _ in _notBytes) {
                _notBytes[(_i : stdgo.GoInt)] = (-1 ^ _bytes[(_i : stdgo.GoInt)]);
            };
            @:check2r _ret.setBytes(_notBytes);
            @:check2r _ret.add(_ret, stdgo._internal.encoding.asn1.Asn1__bigOne._bigOne);
            @:check2r _ret.neg(_ret);
            return { _0 : _ret, _1 : (null : stdgo.Error) };
        };
        @:check2r _ret.setBytes(_bytes);
        return { _0 : _ret, _1 : (null : stdgo.Error) };
    }
