package stdgo._internal.container.list;
function _checkListLen(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _l:stdgo.Ref<stdgo._internal.container.list.List_list.List>, _len:stdgo.GoInt):Bool {
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L10"
        {
            var _n = (_l.len() : stdgo.GoInt);
            if (_n != (_len)) {
                //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L11"
                _t.errorf(("l.Len() = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_len));
                //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L12"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L14"
        return true;
    }
