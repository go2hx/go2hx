package stdgo._internal.container.list;
@:keep @:allow(stdgo._internal.container.list.List.List_asInterface) class List_static_extension {
    @:keep
    static public function pushFrontList( _l:stdgo.Ref<stdgo._internal.container.list.List_List.List>, _other:stdgo.Ref<stdgo._internal.container.list.List_List.List>):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_List.List> = _l;
        _l._lazyInit();
        {
            var __0 = (_other.len() : stdgo.GoInt), __1 = _other.back();
var _e = __1, _i = __0;
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                _l._insertValue(_e.value, (stdgo.Go.setRef(_l._root) : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>));
                {
                    final __tmp__0 = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                    final __tmp__1 = _e.prev();
                    _i = __tmp__0;
                    _e = __tmp__1;
                };
            };
        };
    }
    @:keep
    static public function pushBackList( _l:stdgo.Ref<stdgo._internal.container.list.List_List.List>, _other:stdgo.Ref<stdgo._internal.container.list.List_List.List>):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_List.List> = _l;
        _l._lazyInit();
        {
            var __0 = (_other.len() : stdgo.GoInt), __1 = _other.front();
var _e = __1, _i = __0;
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                _l._insertValue(_e.value, _l._root._prev);
                {
                    final __tmp__0 = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                    final __tmp__1 = _e.next();
                    _i = __tmp__0;
                    _e = __tmp__1;
                };
            };
        };
    }
    @:keep
    static public function moveAfter( _l:stdgo.Ref<stdgo._internal.container.list.List_List.List>, _e:stdgo.Ref<stdgo._internal.container.list.List_Element.Element>, _mark:stdgo.Ref<stdgo._internal.container.list.List_Element.Element>):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_List.List> = _l;
        if (((_e._list != (_l) || _e == (_mark) : Bool) || (_mark._list != _l) : Bool)) {
            return;
        };
        _l._move(_e, _mark);
    }
    @:keep
    static public function moveBefore( _l:stdgo.Ref<stdgo._internal.container.list.List_List.List>, _e:stdgo.Ref<stdgo._internal.container.list.List_Element.Element>, _mark:stdgo.Ref<stdgo._internal.container.list.List_Element.Element>):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_List.List> = _l;
        if (((_e._list != (_l) || _e == (_mark) : Bool) || (_mark._list != _l) : Bool)) {
            return;
        };
        _l._move(_e, _mark._prev);
    }
    @:keep
    static public function moveToBack( _l:stdgo.Ref<stdgo._internal.container.list.List_List.List>, _e:stdgo.Ref<stdgo._internal.container.list.List_Element.Element>):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_List.List> = _l;
        if (((_e._list != _l) || (_l._root._prev == _e) : Bool)) {
            return;
        };
        _l._move(_e, _l._root._prev);
    }
    @:keep
    static public function moveToFront( _l:stdgo.Ref<stdgo._internal.container.list.List_List.List>, _e:stdgo.Ref<stdgo._internal.container.list.List_Element.Element>):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_List.List> = _l;
        if (((_e._list != _l) || (_l._root._next == _e) : Bool)) {
            return;
        };
        _l._move(_e, (stdgo.Go.setRef(_l._root) : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>));
    }
    @:keep
    static public function insertAfter( _l:stdgo.Ref<stdgo._internal.container.list.List_List.List>, _v:stdgo.AnyInterface, _mark:stdgo.Ref<stdgo._internal.container.list.List_Element.Element>):stdgo.Ref<stdgo._internal.container.list.List_Element.Element> {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_List.List> = _l;
        if (_mark._list != (_l)) {
            return null;
        };
        return _l._insertValue(_v, _mark);
    }
    @:keep
    static public function insertBefore( _l:stdgo.Ref<stdgo._internal.container.list.List_List.List>, _v:stdgo.AnyInterface, _mark:stdgo.Ref<stdgo._internal.container.list.List_Element.Element>):stdgo.Ref<stdgo._internal.container.list.List_Element.Element> {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_List.List> = _l;
        if (_mark._list != (_l)) {
            return null;
        };
        return _l._insertValue(_v, _mark._prev);
    }
    @:keep
    static public function pushBack( _l:stdgo.Ref<stdgo._internal.container.list.List_List.List>, _v:stdgo.AnyInterface):stdgo.Ref<stdgo._internal.container.list.List_Element.Element> {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_List.List> = _l;
        _l._lazyInit();
        return _l._insertValue(_v, _l._root._prev);
    }
    @:keep
    static public function pushFront( _l:stdgo.Ref<stdgo._internal.container.list.List_List.List>, _v:stdgo.AnyInterface):stdgo.Ref<stdgo._internal.container.list.List_Element.Element> {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_List.List> = _l;
        _l._lazyInit();
        return _l._insertValue(_v, (stdgo.Go.setRef(_l._root) : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>));
    }
    @:keep
    static public function remove( _l:stdgo.Ref<stdgo._internal.container.list.List_List.List>, _e:stdgo.Ref<stdgo._internal.container.list.List_Element.Element>):stdgo.AnyInterface {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_List.List> = _l;
        if (_e._list == (_l)) {
            _l._remove(_e);
        };
        return _e.value;
    }
    @:keep
    static public function _move( _l:stdgo.Ref<stdgo._internal.container.list.List_List.List>, _e:stdgo.Ref<stdgo._internal.container.list.List_Element.Element>, _at:stdgo.Ref<stdgo._internal.container.list.List_Element.Element>):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_List.List> = _l;
        if (_e == (_at)) {
            return;
        };
        _e._prev._next = _e._next;
        _e._next._prev = _e._prev;
        _e._prev = _at;
        _e._next = _at._next;
        _e._prev._next = _e;
        _e._next._prev = _e;
    }
    @:keep
    static public function _remove( _l:stdgo.Ref<stdgo._internal.container.list.List_List.List>, _e:stdgo.Ref<stdgo._internal.container.list.List_Element.Element>):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_List.List> = _l;
        _e._prev._next = _e._next;
        _e._next._prev = _e._prev;
        _e._next = null;
        _e._prev = null;
        _e._list = null;
        _l._len--;
    }
    @:keep
    static public function _insertValue( _l:stdgo.Ref<stdgo._internal.container.list.List_List.List>, _v:stdgo.AnyInterface, _at:stdgo.Ref<stdgo._internal.container.list.List_Element.Element>):stdgo.Ref<stdgo._internal.container.list.List_Element.Element> {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_List.List> = _l;
        return _l._insert((stdgo.Go.setRef(({ value : _v } : stdgo._internal.container.list.List_Element.Element)) : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>), _at);
    }
    @:keep
    static public function _insert( _l:stdgo.Ref<stdgo._internal.container.list.List_List.List>, _e:stdgo.Ref<stdgo._internal.container.list.List_Element.Element>, _at:stdgo.Ref<stdgo._internal.container.list.List_Element.Element>):stdgo.Ref<stdgo._internal.container.list.List_Element.Element> {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_List.List> = _l;
        _e._prev = _at;
        _e._next = _at._next;
        _e._prev._next = _e;
        _e._next._prev = _e;
        _e._list = _l;
        _l._len++;
        return _e;
    }
    @:keep
    static public function _lazyInit( _l:stdgo.Ref<stdgo._internal.container.list.List_List.List>):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_List.List> = _l;
        if ((_l._root._next == null || (_l._root._next : Dynamic).__nil__)) {
            _l.init();
        };
    }
    @:keep
    static public function back( _l:stdgo.Ref<stdgo._internal.container.list.List_List.List>):stdgo.Ref<stdgo._internal.container.list.List_Element.Element> {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_List.List> = _l;
        if (_l._len == ((0 : stdgo.GoInt))) {
            return null;
        };
        return _l._root._prev;
    }
    @:keep
    static public function front( _l:stdgo.Ref<stdgo._internal.container.list.List_List.List>):stdgo.Ref<stdgo._internal.container.list.List_Element.Element> {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_List.List> = _l;
        if (_l._len == ((0 : stdgo.GoInt))) {
            return null;
        };
        return _l._root._next;
    }
    @:keep
    static public function len( _l:stdgo.Ref<stdgo._internal.container.list.List_List.List>):stdgo.GoInt {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_List.List> = _l;
        return _l._len;
    }
    @:keep
    static public function init( _l:stdgo.Ref<stdgo._internal.container.list.List_List.List>):stdgo.Ref<stdgo._internal.container.list.List_List.List> {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_List.List> = _l;
        _l._root._next = (stdgo.Go.setRef(_l._root) : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>);
        _l._root._prev = (stdgo.Go.setRef(_l._root) : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>);
        _l._len = (0 : stdgo.GoInt);
        return _l;
    }
}
