package stdgo._internal.container.heap;
function testRemove1(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _h = (stdgo.Go.setRef((new stdgo._internal.container.heap.Heap_t_myheap.T_myHeap(0, 0) : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap)) : stdgo.Ref<stdgo._internal.container.heap.Heap_t_myheap.T_myHeap>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (10 : stdgo.GoInt) : Bool)) {
                @:check2r _h.push(stdgo.Go.toInterface(_i));
                _i++;
            };
        };
        (@:checkr _h ?? throw "null pointer dereference")._verify(_t, (0 : stdgo.GoInt));
        {
            var _i = (0 : stdgo.GoInt);
            while ((@:check2r _h.len() > (0 : stdgo.GoInt) : Bool)) {
                var _x = (stdgo.Go.typeAssert((stdgo._internal.container.heap.Heap_remove.remove(stdgo.Go.asInterface(_h), (0 : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.GoInt);
if (_x != (_i)) {
                    @:check2r _t.errorf(("Remove(0) got %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_i));
                };
(@:checkr _h ?? throw "null pointer dereference")._verify(_t, (0 : stdgo.GoInt));
                _i++;
            };
        };
    }
