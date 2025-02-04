package stdgo._internal.html.template;
function _eatAttrName(_s:stdgo.Slice<stdgo.GoUInt8>, _i:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Ref<stdgo._internal.html.template.Template_error.Error>; } {
        {
            var _j = (_i : stdgo.GoInt);
            while ((_j < (_s.length) : Bool)) {
                {
                    final __value__ = _s[(_j : stdgo.GoInt)];
                    if (__value__ == ((32 : stdgo.GoUInt8)) || __value__ == ((9 : stdgo.GoUInt8)) || __value__ == ((10 : stdgo.GoUInt8)) || __value__ == ((12 : stdgo.GoUInt8)) || __value__ == ((13 : stdgo.GoUInt8)) || __value__ == ((61 : stdgo.GoUInt8)) || __value__ == ((62 : stdgo.GoUInt8))) {
                        return { _0 : _j, _1 : null };
                    } else if (__value__ == ((39 : stdgo.GoUInt8)) || __value__ == ((34 : stdgo.GoUInt8)) || __value__ == ((60 : stdgo.GoUInt8))) {
                        return { _0 : (-1 : stdgo.GoInt), _1 : stdgo._internal.html.template.Template__errorf._errorf((2 : stdgo._internal.html.template.Template_errorcode.ErrorCode), (null : stdgo._internal.text.template.parse.Parse_node.Node), (0 : stdgo.GoInt), ("%q in attribute name: %.32q" : stdgo.GoString), stdgo.Go.toInterface((_s.__slice__(_j, (_j + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_s)) };
                    } else {};
                };
                _j++;
            };
        };
        return { _0 : (_s.length), _1 : null };
    }
