package stdgo._internal.html.template;
function _evalArgs(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        if ((_args.length) == ((1 : stdgo.GoInt))) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_args[(0 : stdgo.GoInt)] : stdgo.GoString)) : stdgo.GoString), _1 : true };
                } catch(_) {
                    { _0 : ("" : stdgo.GoString), _1 : false };
                }, _s = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    return _s?.__copy__();
                };
            };
        };
        for (_i => _arg in _args) {
            _args[(_i : stdgo.GoInt)] = stdgo._internal.html.template.Template__indirecttostringerorerror._indirectToStringerOrError(_arg);
        };
        return stdgo._internal.fmt.Fmt_sprint.sprint(...(_args : Array<stdgo.AnyInterface>))?.__copy__();
    }
