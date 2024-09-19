package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
function _validateTypes(_types:stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>):stdgo.Error {
        if ((_types.length) == ((0 : stdgo.GoInt))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("types is null" : stdgo.GoString));
        };
        for (_i => _t in (_types.__slice__(0, ((_types.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>)) {
            if (_t == ((7u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("B type before end of paragraph at index: %d" : stdgo.GoString), stdgo.Go.toInterface(_i));
            };
        };
        return (null : stdgo.Error);
    }
