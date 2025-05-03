package stdgo._internal.text.template;
function _jsIsSpecial(_r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L733"
        {
            final __value__ = _r;
            if (__value__ == ((92 : stdgo.GoInt32)) || __value__ == ((39 : stdgo.GoInt32)) || __value__ == ((34 : stdgo.GoInt32)) || __value__ == ((60 : stdgo.GoInt32)) || __value__ == ((62 : stdgo.GoInt32)) || __value__ == ((38 : stdgo.GoInt32)) || __value__ == ((61 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L735"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L737"
        return ((_r < (32 : stdgo.GoInt32) : Bool) || ((128 : stdgo.GoInt32) <= _r : Bool) : Bool);
    }
