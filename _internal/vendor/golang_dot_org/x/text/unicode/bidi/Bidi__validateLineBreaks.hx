package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
function _validateLineBreaks(_linebreaks:stdgo.Slice<stdgo.GoInt>, _textLength:stdgo.GoInt):stdgo.Error {
        var _prev = (0 : stdgo.GoInt);
        for (_i => _next in _linebreaks) {
            if ((_next <= _prev : Bool)) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("bad linebreak: %d at index: %d" : stdgo.GoString), stdgo.Go.toInterface(_next), stdgo.Go.toInterface(_i));
            };
            _prev = _next;
        };
        if (_prev != (_textLength)) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("last linebreak was %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_prev), stdgo.Go.toInterface(_textLength));
        };
        return (null : stdgo.Error);
    }
