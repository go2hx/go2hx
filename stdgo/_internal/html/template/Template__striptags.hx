package stdgo._internal.html.template;
function _stripTags(_html:stdgo.GoString):stdgo.GoString {
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        var __0 = (_html : stdgo.Slice<stdgo.GoUInt8>), __1 = (new stdgo._internal.html.template.Template_t_context.T_context() : stdgo._internal.html.template.Template_t_context.T_context), __2 = (0 : stdgo.GoInt), __3 = (true : Bool);
var _allText = __3, _i = __2, _c = __1, _s = __0;
        //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L186"
        while (_i != ((_s.length))) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L187"
            if (_c._delim == ((0 : stdgo._internal.html.template.Template_t_delim.T_delim))) {
                var _st = (_c._state : stdgo._internal.html.template.Template_t_state.T_state);
                //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L190"
                if (((_c._element != (0 : stdgo._internal.html.template.Template_t_element.T_element)) && !stdgo._internal.html.template.Template__isintag._isInTag(_st) : Bool)) {
                    _st = (6 : stdgo._internal.html.template.Template_t_state.T_state);
                };
                var __tmp__ = stdgo._internal.html.template.Template__transitionfunc._transitionFunc[(_st : stdgo.GoInt)](_c?.__copy__(), (_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)), _d:stdgo._internal.html.template.Template_t_context.T_context = __tmp__._0, _nread:stdgo.GoInt = __tmp__._1;
                var _i1 = (_i + _nread : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L195"
                if (((_c._state == (0 : stdgo._internal.html.template.Template_t_state.T_state)) || (_c._state == (6 : stdgo._internal.html.template.Template_t_state.T_state)) : Bool)) {
                    var _j = (_i1 : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L198"
                    if (_d._state != (_c._state)) {
                        //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L199"
                        {
                            var _j1 = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
                            while ((_j1 >= _i : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L200"
                                if (_s[(_j1 : stdgo.GoInt)] == ((60 : stdgo.GoUInt8))) {
                                    _j = _j1;
                                    //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L202"
                                    break;
                                };
                                _j1--;
                            };
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L206"
                    _b.write((_s.__slice__(_i, _j) : stdgo.Slice<stdgo.GoUInt8>));
                } else {
                    _allText = false;
                };
                {
                    final __tmp__0 = _d?.__copy__();
                    final __tmp__1 = _i1;
                    _c = @:binopAssign __tmp__0;
                    _i = @:binopAssign __tmp__1;
                };
                //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L211"
                continue;
            };
            var _i1 = (_i + stdgo._internal.bytes.Bytes_indexany.indexAny((_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.html.template.Template__delimends._delimEnds[(_c._delim : stdgo.GoInt)]?.__copy__()) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L214"
            if ((_i1 < _i : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L215"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L217"
            if (_c._delim != ((3 : stdgo._internal.html.template.Template_t_delim.T_delim))) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L219"
                _i1++;
            };
            {
                final __tmp__0 = ({ _state : (1 : stdgo._internal.html.template.Template_t_state.T_state), _element : _c._element } : stdgo._internal.html.template.Template_t_context.T_context);
                final __tmp__1 = _i1;
                _c = @:binopAssign __tmp__0;
                _i = @:binopAssign __tmp__1;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L223"
        if (_allText) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L224"
            return _html?.__copy__();
        } else if (((_c._state == (0 : stdgo._internal.html.template.Template_t_state.T_state)) || (_c._state == (6 : stdgo._internal.html.template.Template_t_state.T_state)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L226"
            _b.write((_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>));
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L228"
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
