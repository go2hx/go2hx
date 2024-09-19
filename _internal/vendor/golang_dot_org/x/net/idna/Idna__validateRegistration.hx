package _internal.vendor.golang_dot_org.x.net.idna;
function _validateRegistration(_p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_Profile.Profile>, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } {
        var _idem = ("" : stdgo.GoString), _bidi = false, _err = (null : stdgo.Error);
        if (!(0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form).isNormalString(_s?.__copy__())) {
            return { _0 : _s?.__copy__(), _1 : false, _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError(_s?.__copy__(), ("V1" : stdgo.GoString)) : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError>)) };
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var __tmp__ = _internal.vendor.golang_dot_org.x.net.idna.Idna__trie._trie._lookupString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), _v:stdgo.GoUInt16 = __tmp__._0, _sz:stdgo.GoInt = __tmp__._1;
                if (_sz == ((0 : stdgo.GoInt))) {
                    return { _0 : _s?.__copy__(), _1 : _bidi, _2 : stdgo.Go.asInterface((65533 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_runeError.T_runeError)) };
                };
                _bidi = (_bidi || (_v : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info)._isBidi((_s.__slice__(_i) : stdgo.GoString)?.__copy__()) : Bool);
                {
                    final __value__ = _p._simplify((_v : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info)._category());
                    if (__value__ == ((8 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category)) || __value__ == ((3 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category))) {} else if (__value__ == ((64 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category)) || __value__ == ((1 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category)) || __value__ == ((0 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category)) || __value__ == ((192 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category))) {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
                        return { _0 : _s?.__copy__(), _1 : _bidi, _2 : stdgo.Go.asInterface((_r : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_runeError.T_runeError)) };
                    };
                };
                _i = (_i + (_sz) : stdgo.GoInt);
            };
        };
        return { _0 : _s?.__copy__(), _1 : _bidi, _2 : (null : stdgo.Error) };
    }
