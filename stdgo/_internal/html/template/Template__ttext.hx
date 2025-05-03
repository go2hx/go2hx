package stdgo._internal.html.template;
function _tText(_c:stdgo._internal.html.template.Template_t_context.T_context, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.html.template.Template_t_context.T_context; var _1 : stdgo.GoInt; } {
        var _k = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L53"
        while (true) {
            var _i = (_k + stdgo._internal.bytes.Bytes_indexbyte.indexByte((_s.__slice__(_k) : stdgo.Slice<stdgo.GoUInt8>), (60 : stdgo.GoUInt8)) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L55"
            if (((_i < _k : Bool) || ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) == (_s.length)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L56"
                return { _0 : _c?.__copy__(), _1 : (_s.length) };
            } else if ((((_i + (4 : stdgo.GoInt) : stdgo.GoInt) <= (_s.length) : Bool) && stdgo._internal.bytes.Bytes_equal.equal(stdgo._internal.html.template.Template__commentstart._commentStart, (_s.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L58"
                return { _0 : ({ _state : (5 : stdgo._internal.html.template.Template_t_state.T_state) } : stdgo._internal.html.template.Template_t_context.T_context), _1 : (_i + (4 : stdgo.GoInt) : stdgo.GoInt) };
            };
            //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L60"
            _i++;
            var _end = (false : Bool);
            //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L62"
            if (_s[(_i : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L63"
                if ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) == ((_s.length))) {
                    //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L64"
                    return { _0 : _c?.__copy__(), _1 : (_s.length) };
                };
                {
                    final __tmp__0 = true;
                    final __tmp__1 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _end = @:binopAssign __tmp__0;
                    _i = @:binopAssign __tmp__1;
                };
            };
            var __tmp__ = stdgo._internal.html.template.Template__eattagname._eatTagName(_s, _i), _j:stdgo.GoInt = __tmp__._0, _e:stdgo._internal.html.template.Template_t_element.T_element = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L69"
            if (_j != (_i)) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L70"
                if (_end) {
                    _e = (0 : stdgo._internal.html.template.Template_t_element.T_element);
                };
                //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L74"
                return { _0 : ({ _state : (1 : stdgo._internal.html.template.Template_t_state.T_state), _element : _e } : stdgo._internal.html.template.Template_t_context.T_context), _1 : _j };
            };
            _k = _j;
        };
    }
