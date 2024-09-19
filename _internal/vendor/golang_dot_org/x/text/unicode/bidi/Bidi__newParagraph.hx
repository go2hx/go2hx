package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
function _newParagraph(_types:stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>, _pairTypes:stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketType.T_bracketType>, _pairValues:stdgo.Slice<stdgo.GoInt32>, _levels:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level):{ var _0 : stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph>; var _1 : stdgo.Error; } {
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            _err = _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__validateTypes._validateTypes(_types);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        {
            _err = _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__validatePbTypes._validatePbTypes(_pairTypes);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        {
            _err = _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__validatePbValues._validatePbValues(_pairValues, _pairTypes);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        {
            _err = _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__validateParagraphEmbeddingLevel._validateParagraphEmbeddingLevel(_levels);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var _p = (stdgo.Go.setRef(({ _initialTypes : ((null : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>).__append__(...(_types : Array<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>))), _embeddingLevel : _levels, _pairTypes : _pairTypes, _pairValues : _pairValues, _resultTypes : ((null : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>).__append__(...(_types : Array<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>))) } : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph>);
        _p._run();
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
