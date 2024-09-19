package _internal.vendor.golang_dot_org.x.net.idna;
function _validateAndMap(_p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_Profile.Profile>, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } {
        var _vm = ("" : stdgo.GoString), _bidi = false, _err = (null : stdgo.Error);
        var __0:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _k = __1, _b = __0;
        var _combinedInfoBits:_internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info = ((0 : stdgo.GoUInt16) : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var __tmp__ = _internal.vendor.golang_dot_org.x.net.idna.Idna__trie._trie._lookupString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), _v:stdgo.GoUInt16 = __tmp__._0, _sz:stdgo.GoInt = __tmp__._1;
                if (_sz == ((0 : stdgo.GoInt))) {
                    _b = (_b.__append__(...((_s.__slice__(_k, _i) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                    _b = (_b.__append__(...(("�" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                    _k = (_s.length);
                    if (_err == null) {
                        _err = stdgo.Go.asInterface((65533 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_runeError.T_runeError));
                    };
                    break;
                };
                _combinedInfoBits = (_combinedInfoBits | ((_v : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info)) : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info);
                _bidi = (_bidi || (_v : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info)._isBidi((_s.__slice__(_i) : stdgo.GoString)?.__copy__()) : Bool);
                var _start = (_i : stdgo.GoInt);
                _i = (_i + (_sz) : stdgo.GoInt);
                {
                    final __value__ = _p._simplify((_v : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info)._category());
                    if (__value__ == ((8 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category))) {
                        continue;
                    } else if (__value__ == ((64 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category))) {
                        if (_err == null) {
                            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString((_s.__slice__(_start) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
                            _err = stdgo.Go.asInterface((_r : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_runeError.T_runeError));
                        };
                        continue;
                    } else if (__value__ == ((1 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category)) || __value__ == ((3 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category))) {
                        _b = (_b.__append__(...((_s.__slice__(_k, _start) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                        _b = (_v : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info)._appendMapping(_b, (_s.__slice__(_start, _i) : stdgo.GoString)?.__copy__());
                    } else if (__value__ == ((192 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category))) {
                        _b = (_b.__append__(...((_s.__slice__(_k, _start) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                    } else if (__value__ == ((0 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category))) {
                        _b = (_b.__append__(...((_s.__slice__(_k, _start) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                        _b = (_b.__append__(...(("�" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                    };
                };
                _k = _i;
            };
        };
        if (_k == ((0 : stdgo.GoInt))) {
            if ((_combinedInfoBits & (8192 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info) : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info) != ((0 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info))) {
                _s = ((0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form).string(_s?.__copy__()) : stdgo.GoString)?.__copy__();
            };
        } else {
            _b = (_b.__append__(...((_s.__slice__(_k) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
            if ((0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form).quickSpan(_b) != ((_b.length))) {
                _b = (0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form).bytes(_b);
            };
            _s = (_b : stdgo.GoString)?.__copy__();
        };
        return { _0 : _s?.__copy__(), _1 : _bidi, _2 : _err };
    }
