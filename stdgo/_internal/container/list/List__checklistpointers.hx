package stdgo._internal.container.list;
function _checkListPointers(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _l:stdgo.Ref<stdgo._internal.container.list.List_list.List>, _es:stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>):Void {
        var _root = (stdgo.Go.setRef((@:checkr _l ?? throw "null pointer dereference")._root) : stdgo.Ref<stdgo._internal.container.list.List_element.Element>);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L20"
        if (!stdgo._internal.container.list.List__checklistlen._checkListLen(_t, _l, (_es.length))) {
            //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L21"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L25"
        if ((_es.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L26"
            if (((({
                final value = (@:checkr _l ?? throw "null pointer dereference")._root._next;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && (@:checkr _l ?? throw "null pointer dereference")._root._next != (_root) : Bool) || (({
                final value = (@:checkr _l ?? throw "null pointer dereference")._root._prev;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && (@:checkr _l ?? throw "null pointer dereference")._root._prev != (_root) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L27"
                _t.errorf(("l.root.next = %p, l.root.prev = %p; both should both be nil or %p" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _l ?? throw "null pointer dereference")._root._next)), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _l ?? throw "null pointer dereference")._root._prev)), stdgo.Go.toInterface(stdgo.Go.asInterface(_root)));
            };
            //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L29"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L34"
        for (_i => _e in _es) {
            var _prev = _root;
            var prev = (null : stdgo.Ref<stdgo._internal.container.list.List_element.Element>);
            //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L37"
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                _prev = _es[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)];
                prev = _prev;
            };
            //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L41"
            {
                var _p = (@:checkr _e ?? throw "null pointer dereference")._prev;
                if (_p != (_prev)) {
                    //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L42"
                    _t.errorf(("elt[%d](%p).prev = %p, want %p" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_e)), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)), stdgo.Go.toInterface(stdgo.Go.asInterface(_prev)));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L44"
            {
                var _p = _e.prev();
                if (_p != (prev)) {
                    //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L45"
                    _t.errorf(("elt[%d](%p).Prev() = %p, want %p" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_e)), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)), stdgo.Go.toInterface(stdgo.Go.asInterface(prev)));
                };
            };
            var _next = _root;
            var next = (null : stdgo.Ref<stdgo._internal.container.list.List_element.Element>);
            //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L50"
            if ((_i < ((_es.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                _next = _es[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)];
                next = _next;
            };
            //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L54"
            {
                var _n = (@:checkr _e ?? throw "null pointer dereference")._next;
                if (_n != (_next)) {
                    //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L55"
                    _t.errorf(("elt[%d](%p).next = %p, want %p" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_e)), stdgo.Go.toInterface(stdgo.Go.asInterface(_n)), stdgo.Go.toInterface(stdgo.Go.asInterface(_next)));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L57"
            {
                var _n = _e.next();
                if (_n != (next)) {
                    //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L58"
                    _t.errorf(("elt[%d](%p).Next() = %p, want %p" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_e)), stdgo.Go.toInterface(stdgo.Go.asInterface(_n)), stdgo.Go.toInterface(stdgo.Go.asInterface(next)));
                };
            };
        };
    }
