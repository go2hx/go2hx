package stdgo._internal.text.template;
function _evalArgs(_args:stdgo.Slice<stdgo.AnyInterface>):stdgo.GoString {
        var _ok = (false : Bool);
        var _s:stdgo.GoString = ("" : stdgo.GoString);
        if ((_args.length) == ((1 : stdgo.GoInt))) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_args[(0 : stdgo.GoInt)] : stdgo.GoString)) : stdgo.GoString), _1 : true };
                } catch(_) {
                    { _0 : ("" : stdgo.GoString), _1 : false };
                };
                _s = __tmp__._0?.__copy__();
                _ok = __tmp__._1;
            };
        };
        if (!_ok) {
            for (_i => _arg in _args) {
                var __tmp__ = stdgo._internal.text.template.Template__printableValue._printableValue(stdgo._internal.reflect.Reflect_valueOf.valueOf(_arg)?.__copy__()), _a:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _args[(_i : stdgo.GoInt)] = _a;
                };
            };
            _s = stdgo._internal.fmt.Fmt_sprint.sprint(...(_args : Array<stdgo.AnyInterface>))?.__copy__();
        };
        return _s?.__copy__();
    }
