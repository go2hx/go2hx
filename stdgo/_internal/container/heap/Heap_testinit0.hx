package stdgo._internal.container.heap;
function testInit0(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _h = (stdgo.Go.setRef((new stdgo._internal.container.heap.Heap_t_myheap.T_myHeap(0, 0) : stdgo._internal.container.heap.Heap_t_myheap.T_myHeap)) : stdgo.Ref<stdgo._internal.container.heap.Heap_t_myheap.T_myHeap>);
        {
            var _i = (20 : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                @:check2r _h.push(stdgo.Go.toInterface((0 : stdgo.GoInt)));
                _i--;
            };
        };
        stdgo._internal.container.heap.Heap_init.init(stdgo.Go.asInterface(_h));
        (@:checkr _h ?? throw "null pointer dereference")._verify(_t, (0 : stdgo.GoInt));
        {
            var _i = (1 : stdgo.GoInt);
            while ((@:check2r _h.len() > (0 : stdgo.GoInt) : Bool)) {
                var _x = (stdgo.Go.typeAssert((stdgo._internal.container.heap.Heap_pop.pop(stdgo.Go.asInterface(_h)) : stdgo.GoInt)) : stdgo.GoInt);
(@:checkr _h ?? throw "null pointer dereference")._verify(_t, (0 : stdgo.GoInt));
if (_x != ((0 : stdgo.GoInt))) {
                    @:check2r _t.errorf(("%d.th pop got %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_x), stdgo.Go.toInterface((0 : stdgo.GoInt)));
                };
                _i++;
            };
        };
    }
