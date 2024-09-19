package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
function appendReverse(_out:stdgo.Slice<stdgo.GoUInt8>, _in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _ret = (new stdgo.Slice<stdgo.GoUInt8>(((_in.length) + (_out.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo.Go.copySlice(_ret, _out);
        var _inRunes = stdgo._internal.bytes.Bytes_runes.runes(_in);
        for (_i => _r in _inRunes) {
            var __tmp__ = _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_lookupRune.lookupRune(_r), _prop:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
            if (_prop.isBracket()) {
                _inRunes[(_i : stdgo.GoInt)] = _prop._reverseBracket(_r);
            };
        };
        {
            var __0 = (0 : stdgo.GoInt), __1 = ((_inRunes.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
var _j = __1, _i = __0;
            stdgo.Go.cfor((_i < _j : Bool), {
                final __tmp__0 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                final __tmp__1 = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
                _i = __tmp__0;
                _j = __tmp__1;
            }, {
                {
                    final __tmp__0 = _inRunes[(_j : stdgo.GoInt)];
                    final __tmp__1 = _inRunes[(_i : stdgo.GoInt)];
                    final __tmp__2 = _inRunes;
                    final __tmp__3 = (_i : stdgo.GoInt);
                    final __tmp__4 = _inRunes;
                    final __tmp__5 = (_j : stdgo.GoInt);
                    __tmp__2[__tmp__3] = __tmp__0;
                    __tmp__4[__tmp__5] = __tmp__1;
                };
            });
        };
        stdgo.Go.copySlice((_ret.__slice__((_out.length)) : stdgo.Slice<stdgo.GoUInt8>), (_inRunes : stdgo.GoString));
        return _ret;
    }
