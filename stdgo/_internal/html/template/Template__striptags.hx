package stdgo._internal.html.template;
function _stripTags(_html:stdgo.GoString):stdgo.GoString {
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        var __0 = (_html : stdgo.Slice<stdgo.GoUInt8>), __1 = (new stdgo._internal.html.template.Template_t_context.T_context() : stdgo._internal.html.template.Template_t_context.T_context), __2 = (0 : stdgo.GoInt), __3 = (true : Bool);
var _allText = __3, _i = __2, _c = __1, _s = __0;
        while (_i != ((_s.length))) {
            if (_c._delim == ((0 : stdgo._internal.html.template.Template_t_delim.T_delim))) {
                var _st = (_c._state : stdgo._internal.html.template.Template_t_state.T_state);
                if (((_c._element != (0 : stdgo._internal.html.template.Template_t_element.T_element)) && !stdgo._internal.html.template.Template__isintag._isInTag(_st) : Bool)) {
                    _st = (6 : stdgo._internal.html.template.Template_t_state.T_state);
                };
                var __tmp__ = stdgo._internal.html.template.Template__transitionfunc._transitionFunc[(_st : stdgo.GoInt)](_c?.__copy__(), (_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)), _d:stdgo._internal.html.template.Template_t_context.T_context = __tmp__._0, _nread:stdgo.GoInt = __tmp__._1;
                var _i1 = (_i + _nread : stdgo.GoInt);
                if (((_c._state == (0 : stdgo._internal.html.template.Template_t_state.T_state)) || (_c._state == (6 : stdgo._internal.html.template.Template_t_state.T_state)) : Bool)) {
                    var _j = (_i1 : stdgo.GoInt);
                    if (_d._state != (_c._state)) {
                        {
                            var _j1 = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
                            while ((_j1 >= _i : Bool)) {
                                if (_s[(_j1 : stdgo.GoInt)] == ((60 : stdgo.GoUInt8))) {
                                    _j = _j1;
                                    break;
                                };
                                _j1--;
                            };
                        };
                    };
                    @:check2 _b.write((_s.__slice__(_i, _j) : stdgo.Slice<stdgo.GoUInt8>));
                } else {
                    _allText = false;
                };
                {
                    final __tmp__0 = _d?.__copy__();
                    final __tmp__1 = _i1;
                    _c = __tmp__0;
                    _i = __tmp__1;
                };
                continue;
            };
            var _i1 = (_i + stdgo._internal.bytes.Bytes_indexany.indexAny((_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.html.template.Template__delimends._delimEnds[(_c._delim : stdgo.GoInt)]?.__copy__()) : stdgo.GoInt);
            if ((_i1 < _i : Bool)) {
                break;
            };
            if (_c._delim != ((3 : stdgo._internal.html.template.Template_t_delim.T_delim))) {
                _i1++;
            };
            {
                final __tmp__0 = ({ _state : (1 : stdgo._internal.html.template.Template_t_state.T_state), _element : _c._element } : stdgo._internal.html.template.Template_t_context.T_context);
                final __tmp__1 = _i1;
                _c = __tmp__0;
                _i = __tmp__1;
            };
        };
        if (_allText) {
            return _html?.__copy__();
        } else if (((_c._state == (0 : stdgo._internal.html.template.Template_t_state.T_state)) || (_c._state == (6 : stdgo._internal.html.template.Template_t_state.T_state)) : Bool)) {
            @:check2 _b.write((_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>));
        };
        return (@:check2 _b.string() : stdgo.GoString)?.__copy__();
    }
