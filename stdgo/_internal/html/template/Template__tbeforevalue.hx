package stdgo._internal.html.template;
function _tBeforeValue(_c:stdgo._internal.html.template.Template_t_context.T_context, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.html.template.Template_t_context.T_context; var _1 : stdgo.GoInt; } {
        var _i = (stdgo._internal.html.template.Template__eatwhitespace._eatWhiteSpace(_s, (0 : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L176"
        if (_i == ((_s.length))) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L177"
            return { _0 : _c?.__copy__(), _1 : (_s.length) };
        };
        var _delim = (3 : stdgo._internal.html.template.Template_t_delim.T_delim);
        //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L181"
        {
            final __value__ = _s[(_i : stdgo.GoInt)];
            if (__value__ == ((39 : stdgo.GoUInt8))) {
                {
                    final __tmp__0 = (2 : stdgo._internal.html.template.Template_t_delim.T_delim);
                    final __tmp__1 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _delim = @:binopAssign __tmp__0;
                    _i = @:binopAssign __tmp__1;
                };
            } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                {
                    final __tmp__0 = (1 : stdgo._internal.html.template.Template_t_delim.T_delim);
                    final __tmp__1 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _delim = @:binopAssign __tmp__0;
                    _i = @:binopAssign __tmp__1;
                };
            };
        };
        {
            final __tmp__0 = stdgo._internal.html.template.Template__attrstartstates._attrStartStates[(_c._attr : stdgo.GoInt)];
            final __tmp__1 = _delim;
            _c._state = @:binopAssign __tmp__0;
            _c._delim = @:binopAssign __tmp__1;
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L188"
        return { _0 : _c?.__copy__(), _1 : _i };
    }
