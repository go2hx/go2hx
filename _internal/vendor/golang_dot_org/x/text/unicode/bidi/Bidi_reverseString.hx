package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
function reverseString(_s:stdgo.GoString):stdgo.GoString {
        var _input = (_s : stdgo.Slice<stdgo.GoInt32>);
        var _li = (_input.length : stdgo.GoInt);
        var _ret = (new stdgo.Slice<stdgo.GoInt32>((_li : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        for (_i => _r in _input) {
            var __tmp__ = _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_lookupRune.lookupRune(_r), _prop:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
            if (_prop.isBracket()) {
                _ret[((_li - _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] = _prop._reverseBracket(_r);
            } else {
                _ret[((_li - _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] = _r;
            };
        };
        return (_ret : stdgo.GoString)?.__copy__();
    }
