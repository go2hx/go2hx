package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
function _validatePbValues(_pairValues:stdgo.Slice<stdgo.GoInt32>, _pairTypes:stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketType.T_bracketType>):stdgo.Error {
        if (_pairValues == null) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("pairValues is null" : stdgo.GoString));
        };
        if ((_pairTypes.length) != ((_pairValues.length))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("pairTypes is different length from pairValues" : stdgo.GoString));
        };
        return (null : stdgo.Error);
    }
