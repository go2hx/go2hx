package _internal.vendor.golang_dot_org.x.net.idna;
function _normalize(_p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_Profile.Profile>, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } {
        var _mapped = ("" : stdgo.GoString), _isBidi = false, _err = (null : stdgo.Error);
        _mapped = ((0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form).string(_s?.__copy__()) : stdgo.GoString)?.__copy__();
        _isBidi = _internal.golang_dot_org.x.text.secure.bidirule.Bidirule_directionString.directionString(_mapped?.__copy__()) == ((1 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Direction.Direction));
        return { _0 : _mapped?.__copy__(), _1 : _isBidi, _2 : (null : stdgo.Error) };
    }
