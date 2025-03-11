package stdgo._internal.container.ring;
function _dump(_r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>):Void {
        if (({
            final value = _r;
            (value == null || (value : Dynamic).__nil__);
        })) {
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("empty" : stdgo.GoString)));
            return;
        };
        var __0 = (0 : stdgo.GoInt), __1 = (@:check2r _r.len() : stdgo.GoInt);
var _n = __1, _i = __0;
        {
            var _p = _r;
            while ((_i < _n : Bool)) {
                stdgo._internal.fmt.Fmt_printf.printf(("%4d: %p = {<- %p | %p ->}\n" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _p ?? throw "null pointer dereference")._prev)), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _p ?? throw "null pointer dereference")._next)));
_i++;
                _p = (@:checkr _p ?? throw "null pointer dereference")._next;
            };
        };
        stdgo._internal.fmt.Fmt_println.println();
    }
