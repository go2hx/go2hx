package stdgo._internal.crypto.tls;
function newLRUClientSessionCache(_capacity:stdgo.GoInt):stdgo._internal.crypto.tls.Tls_ClientSessionCache.ClientSessionCache {
        {};
        if ((_capacity < (1 : stdgo.GoInt) : Bool)) {
            _capacity = (64 : stdgo.GoInt);
        };
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _m : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.container.list.List_Element.Element>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.container.list.List_Element.Element>>), _q : stdgo._internal.container.list.List_new_.new_(), _capacity : _capacity } : stdgo._internal.crypto.tls.Tls_T_lruSessionCache.T_lruSessionCache)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_lruSessionCache.T_lruSessionCache>));
    }
