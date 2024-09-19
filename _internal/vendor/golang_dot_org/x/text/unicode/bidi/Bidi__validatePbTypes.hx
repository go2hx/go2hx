package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
function _validatePbTypes(_pairTypes:stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketType.T_bracketType>):stdgo.Error {
        if ((_pairTypes.length) == ((0 : stdgo.GoInt))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("pairTypes is null" : stdgo.GoString));
        };
        for (_i => _pt in _pairTypes) {
            {
                final __value__ = _pt;
                if (__value__ == ((0 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketType.T_bracketType)) || __value__ == ((1 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketType.T_bracketType)) || __value__ == ((2 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketType.T_bracketType))) {} else {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("illegal pairType value at %d: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_pairTypes[(_i : stdgo.GoInt)]));
                };
            };
        };
        return (null : stdgo.Error);
    }
