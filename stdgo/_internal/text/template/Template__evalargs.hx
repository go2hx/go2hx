package stdgo._internal.text.template;
function _evalArgs(_args:stdgo.Slice<stdgo.AnyInterface>):stdgo.GoString {
        var _ok = (false : Bool);
        var _s:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L763"
        if ((_args.length) == ((1 : stdgo.GoInt))) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_args[(0 : stdgo.GoInt)] : stdgo.GoString)) : stdgo.GoString), _1 : true };
                } catch(_) {
                    { _0 : ("" : stdgo.GoString), _1 : false };
                };
                _s = @:tmpset0 __tmp__._0?.__copy__();
                _ok = @:tmpset0 __tmp__._1;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L766"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L767"
            for (_i => _arg in _args) {
                var __tmp__ = stdgo._internal.text.template.Template__printablevalue._printableValue(stdgo._internal.reflect.Reflect_valueof.valueOf(_arg)?.__copy__()), _a:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L769"
                if (_ok) {
                    _args[(_i : stdgo.GoInt)] = _a;
                };
            };
            _s = stdgo._internal.fmt.Fmt_sprint.sprint(...(_args : Array<stdgo.AnyInterface>))?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L775"
        return _s?.__copy__();
    }
