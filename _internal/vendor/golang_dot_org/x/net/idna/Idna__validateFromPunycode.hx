package _internal.vendor.golang_dot_org.x.net.idna;
function _validateFromPunycode(_p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_Profile.Profile>, _s:stdgo.GoString):stdgo.Error {
        if (!(0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form).isNormalString(_s?.__copy__())) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError(_s?.__copy__(), ("V1" : stdgo.GoString)) : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError>));
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var __tmp__ = _internal.vendor.golang_dot_org.x.net.idna.Idna__trie._trie._lookupString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), _v:stdgo.GoUInt16 = __tmp__._0, _sz:stdgo.GoInt = __tmp__._1;
                if (_sz == ((0 : stdgo.GoInt))) {
                    return stdgo.Go.asInterface((65533 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_runeError.T_runeError));
                };
                {
                    var _c = (_p._simplify((_v : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info)._category()) : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category);
                    if (((_c != (8 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category)) && (_c != (3 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category)) : Bool)) {
                        return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError(_s?.__copy__(), ("V6" : stdgo.GoString)) : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError>));
                    };
                };
                _i = (_i + (_sz) : stdgo.GoInt);
            };
        };
        return (null : stdgo.Error);
    }
