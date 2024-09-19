package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
function _resolvePairedBrackets(_s:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_isolatingRunSequence.T_isolatingRunSequence>):Void {
        var _p = ({ _sos : _s._sos, _openers : stdgo._internal.container.list.List_new_.new_(), _codesIsolatedRun : _s._types, _indexes : _s._indexes } : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPairer.T_bracketPairer);
        var _dirEmbed = (0u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
        if ((_s._level & (1 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level) != ((0 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level))) {
            _dirEmbed = (1u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
        };
        _p._locateBrackets(_s._p._pairTypes, _s._p._pairValues);
        _p._resolveBrackets(_dirEmbed, _s._p._initialTypes);
    }
