package stdgo._internal.container.list;
function _checkListPointers(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _l:stdgo.Ref<stdgo._internal.container.list.List_list.List>, _es:stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>):Void {
        var _root = (stdgo.Go.setRef((@:checkr _l ?? throw "null pointer dereference")._root) : stdgo.Ref<stdgo._internal.container.list.List_element.Element>);
        if (!stdgo._internal.container.list.List__checklistlen._checkListLen(_t, _l, (_es.length))) {
            return;
        };
        if ((_es.length) == ((0 : stdgo.GoInt))) {
            if (((({
                final value = (@:checkr _l ?? throw "null pointer dereference")._root._next;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && (@:checkr _l ?? throw "null pointer dereference")._root._next != (_root) : Bool) || (({
                final value = (@:checkr _l ?? throw "null pointer dereference")._root._prev;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && (@:checkr _l ?? throw "null pointer dereference")._root._prev != (_root) : Bool) : Bool)) {
                @:check2r _t.errorf(("l.root.next = %p, l.root.prev = %p; both should both be nil or %p" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _l ?? throw "null pointer dereference")._root._next)), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _l ?? throw "null pointer dereference")._root._prev)), stdgo.Go.toInterface(stdgo.Go.asInterface(_root)));
            };
            return;
        };
        for (_i => _e in _es) {
            var _prev = _root;
            var prev = (null : stdgo.Ref<stdgo._internal.container.list.List_element.Element>);
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                _prev = _es[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)];
                prev = _prev;
            };
            {
                var _p = (@:checkr _e ?? throw "null pointer dereference")._prev;
                if (_p != (_prev)) {
                    @:check2r _t.errorf(("elt[%d](%p).prev = %p, want %p" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_e)), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)), stdgo.Go.toInterface(stdgo.Go.asInterface(_prev)));
                };
            };
            {
                var _p = @:check2r _e.prev();
                if (_p != (prev)) {
                    @:check2r _t.errorf(("elt[%d](%p).Prev() = %p, want %p" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_e)), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)), stdgo.Go.toInterface(stdgo.Go.asInterface(prev)));
                };
            };
            var _next = _root;
            var next = (null : stdgo.Ref<stdgo._internal.container.list.List_element.Element>);
            if ((_i < ((_es.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                _next = _es[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)];
                next = _next;
            };
            {
                var _n = (@:checkr _e ?? throw "null pointer dereference")._next;
                if (_n != (_next)) {
                    @:check2r _t.errorf(("elt[%d](%p).next = %p, want %p" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_e)), stdgo.Go.toInterface(stdgo.Go.asInterface(_n)), stdgo.Go.toInterface(stdgo.Go.asInterface(_next)));
                };
            };
            {
                var _n = @:check2r _e.next();
                if (_n != (next)) {
                    @:check2r _t.errorf(("elt[%d](%p).Next() = %p, want %p" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_e)), stdgo.Go.toInterface(stdgo.Go.asInterface(_n)), stdgo.Go.toInterface(stdgo.Go.asInterface(next)));
                };
            };
        };
    }
