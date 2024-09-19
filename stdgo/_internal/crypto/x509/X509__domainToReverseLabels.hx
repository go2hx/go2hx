package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
function _domainToReverseLabels(_domain:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : Bool; } {
        var _reverseLabels = (null : stdgo.Slice<stdgo.GoString>), _ok = false;
        while (((_domain.length) > (0 : stdgo.GoInt) : Bool)) {
            {
                var _i = (stdgo._internal.strings.Strings_lastIndexByte.lastIndexByte(_domain?.__copy__(), (46 : stdgo.GoUInt8)) : stdgo.GoInt);
                if (_i == ((-1 : stdgo.GoInt))) {
                    _reverseLabels = (_reverseLabels.__append__(_domain?.__copy__()));
                    _domain = stdgo.Go.str()?.__copy__();
                } else {
                    _reverseLabels = (_reverseLabels.__append__((_domain.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()));
                    _domain = (_domain.__slice__(0, _i) : stdgo.GoString)?.__copy__();
                };
            };
        };
        if ((((_reverseLabels.length) > (0 : stdgo.GoInt) : Bool) && (_reverseLabels[(0 : stdgo.GoInt)].length == (0 : stdgo.GoInt)) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false };
        };
        for (__1 => _label in _reverseLabels) {
            if ((_label.length) == ((0 : stdgo.GoInt))) {
                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false };
            };
            for (__2 => _c in _label) {
                if (((_c < (33 : stdgo.GoInt32) : Bool) || (_c > (126 : stdgo.GoInt32) : Bool) : Bool)) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false };
                };
            };
        };
        return { _0 : _reverseLabels, _1 : true };
    }
