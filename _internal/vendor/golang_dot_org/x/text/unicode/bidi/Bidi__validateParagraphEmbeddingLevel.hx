package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
function _validateParagraphEmbeddingLevel(_embeddingLevel:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level):stdgo.Error {
        if (((_embeddingLevel != ((-1 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level)) && _embeddingLevel != ((0 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level)) : Bool) && (_embeddingLevel != (1 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level)) : Bool)) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("illegal paragraph embedding level: %d" : stdgo.GoString), stdgo.Go.toInterface(_embeddingLevel));
        };
        return (null : stdgo.Error);
    }
