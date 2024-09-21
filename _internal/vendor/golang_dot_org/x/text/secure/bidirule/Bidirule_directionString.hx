package _internal.vendor.golang_dot_org.x.text.secure.bidirule;
function directionString(_s:stdgo.GoString):_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Direction.Direction {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var __tmp__ = _internal.golang_dot_org.x.text.unicode.bidi.Bidi_lookupString.lookupString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), _e:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties = __tmp__._0, _sz:stdgo.GoInt = __tmp__._1;
                if (_sz == ((0 : stdgo.GoInt))) {
                    _i++;
                    continue;
                };
                var _c = (_e.class_() : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
                if (((_c == ((1u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) || _c == ((13u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) : Bool) || (_c == (5u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) : Bool)) {
                    return (1 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Direction.Direction);
                };
                _i = (_i + (_sz) : stdgo.GoInt);
            };
        };
        return (0 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Direction.Direction);
    }
