package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_connLRU_asInterface) class T_connLRU_static_extension {
    @:keep
    static public function _len( _cl:stdgo.Ref<stdgo._internal.net.http.Http_T_connLRU.T_connLRU>):stdgo.GoInt {
        @:recv var _cl:stdgo.Ref<stdgo._internal.net.http.Http_T_connLRU.T_connLRU> = _cl;
        return (_cl._m.length);
    }
    @:keep
    static public function _remove( _cl:stdgo.Ref<stdgo._internal.net.http.Http_T_connLRU.T_connLRU>, _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):Void {
        @:recv var _cl:stdgo.Ref<stdgo._internal.net.http.Http_T_connLRU.T_connLRU> = _cl;
        {
            var __tmp__ = (_cl._m != null && _cl._m.exists(_pc) ? { _0 : _cl._m[_pc], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>), _1 : false }), _ele:stdgo.Ref<stdgo._internal.container.list.List_Element.Element> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _cl._ll.remove(_ele);
                if (_cl._m != null) _cl._m.remove(_pc);
            };
        };
    }
    @:keep
    static public function _removeOldest( _cl:stdgo.Ref<stdgo._internal.net.http.Http_T_connLRU.T_connLRU>):stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> {
        @:recv var _cl:stdgo.Ref<stdgo._internal.net.http.Http_T_connLRU.T_connLRU> = _cl;
        var _ele = _cl._ll.back();
        var _pc = (stdgo.Go.typeAssert((_ele.value : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>);
        _cl._ll.remove(_ele);
        if (_cl._m != null) _cl._m.remove(_pc);
        return _pc;
    }
    @:keep
    static public function _add( _cl:stdgo.Ref<stdgo._internal.net.http.Http_T_connLRU.T_connLRU>, _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):Void {
        @:recv var _cl:stdgo.Ref<stdgo._internal.net.http.Http_T_connLRU.T_connLRU> = _cl;
        if ((_cl._ll == null || (_cl._ll : Dynamic).__nil__)) {
            _cl._ll = stdgo._internal.container.list.List_new_.new_();
            _cl._m = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, stdgo.Ref<stdgo._internal.container.list.List_Element.Element>>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, stdgo.Ref<stdgo._internal.container.list.List_Element.Element>>);
        };
        var _ele = _cl._ll.pushFront(stdgo.Go.toInterface(stdgo.Go.asInterface(_pc)));
        {
            var __tmp__ = (_cl._m != null && _cl._m.exists(_pc) ? { _0 : _cl._m[_pc], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>), _1 : false }), __36492:stdgo.Ref<stdgo._internal.container.list.List_Element.Element> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                throw stdgo.Go.toInterface(("persistConn was already in LRU" : stdgo.GoString));
            };
        };
        _cl._m[_pc] = _ele;
    }
}
