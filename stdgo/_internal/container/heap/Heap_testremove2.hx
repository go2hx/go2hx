package stdgo._internal.container.heap;
function testRemove2(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var n = (10 : stdgo.GoInt);
        var _h = (stdgo.Go.setRef((new stdgo._internal.container.heap.Heap_t_myheap.T_myHeap(0, 0) : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap)) : stdgo.Ref<stdgo._internal.container.heap.Heap_t_myheap.T_myHeap>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < n : Bool)) {
                @:check2r _h.push(stdgo.Go.toInterface(_i));
                _i++;
            };
        };
        (@:checkr _h ?? throw "null pointer dereference")._verify(_t, (0 : stdgo.GoInt));
        var _m = (({
            final x = new stdgo.GoMap.GoIntMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, Bool>) : stdgo.GoMap<stdgo.GoInt, Bool>);
        while ((@:check2r _h.len() > (0 : stdgo.GoInt) : Bool)) {
            _m[(stdgo.Go.typeAssert((stdgo._internal.container.heap.Heap_remove.remove(stdgo.Go.asInterface(_h), (((@:check2r _h.len() - (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.GoInt)] = true;
            (@:checkr _h ?? throw "null pointer dereference")._verify(_t, (0 : stdgo.GoInt));
        };
        if ((_m.length) != (n)) {
            @:check2r _t.errorf(("len(m) = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface((_m.length)), stdgo.Go.toInterface(n));
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_m.length) : Bool)) {
                if (!(_m[_i] ?? false)) {
                    @:check2r _t.errorf(("m[%d] doesn\'t exist" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
                _i++;
            };
        };
    }
