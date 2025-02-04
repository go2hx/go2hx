package stdgo._internal.container.list;
@:keep @:allow(stdgo._internal.container.list.List.List_asInterface) class List_static_extension {
    @:keep
    @:tdfield
    static public function pushFrontList( _l:stdgo.Ref<stdgo._internal.container.list.List_list.List>, _other:stdgo.Ref<stdgo._internal.container.list.List_list.List>):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_list.List> = _l;
        @:check2r _l._lazyInit();
        {
            var __0 = (@:check2r _other.len() : stdgo.GoInt), __1 = @:check2r _other.back();
var _e = __1, _i = __0;
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                @:check2r _l._insertValue((@:checkr _e ?? throw "null pointer dereference").value, (stdgo.Go.setRef((@:checkr _l ?? throw "null pointer dereference")._root) : stdgo.Ref<stdgo._internal.container.list.List_element.Element>));
                {
                    final __tmp__0 = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                    final __tmp__1 = @:check2r _e.prev();
                    _i = __tmp__0;
                    _e = __tmp__1;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function pushBackList( _l:stdgo.Ref<stdgo._internal.container.list.List_list.List>, _other:stdgo.Ref<stdgo._internal.container.list.List_list.List>):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_list.List> = _l;
        @:check2r _l._lazyInit();
        {
            var __0 = (@:check2r _other.len() : stdgo.GoInt), __1 = @:check2r _other.front();
var _e = __1, _i = __0;
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                @:check2r _l._insertValue((@:checkr _e ?? throw "null pointer dereference").value, (@:checkr _l ?? throw "null pointer dereference")._root._prev);
                {
                    final __tmp__0 = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                    final __tmp__1 = @:check2r _e.next();
                    _i = __tmp__0;
                    _e = __tmp__1;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function moveAfter( _l:stdgo.Ref<stdgo._internal.container.list.List_list.List>, _e:stdgo.Ref<stdgo._internal.container.list.List_element.Element>, _mark:stdgo.Ref<stdgo._internal.container.list.List_element.Element>):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_list.List> = _l;
        if ((((@:checkr _e ?? throw "null pointer dereference")._list != (_l) || _e == (_mark) : Bool) || ((@:checkr _mark ?? throw "null pointer dereference")._list != _l) : Bool)) {
            return;
        };
        @:check2r _l._move(_e, _mark);
    }
    @:keep
    @:tdfield
    static public function moveBefore( _l:stdgo.Ref<stdgo._internal.container.list.List_list.List>, _e:stdgo.Ref<stdgo._internal.container.list.List_element.Element>, _mark:stdgo.Ref<stdgo._internal.container.list.List_element.Element>):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_list.List> = _l;
        if ((((@:checkr _e ?? throw "null pointer dereference")._list != (_l) || _e == (_mark) : Bool) || ((@:checkr _mark ?? throw "null pointer dereference")._list != _l) : Bool)) {
            return;
        };
        @:check2r _l._move(_e, (@:checkr _mark ?? throw "null pointer dereference")._prev);
    }
    @:keep
    @:tdfield
    static public function moveToBack( _l:stdgo.Ref<stdgo._internal.container.list.List_list.List>, _e:stdgo.Ref<stdgo._internal.container.list.List_element.Element>):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_list.List> = _l;
        if ((((@:checkr _e ?? throw "null pointer dereference")._list != _l) || ((@:checkr _l ?? throw "null pointer dereference")._root._prev == _e) : Bool)) {
            return;
        };
        @:check2r _l._move(_e, (@:checkr _l ?? throw "null pointer dereference")._root._prev);
    }
    @:keep
    @:tdfield
    static public function moveToFront( _l:stdgo.Ref<stdgo._internal.container.list.List_list.List>, _e:stdgo.Ref<stdgo._internal.container.list.List_element.Element>):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_list.List> = _l;
        if ((((@:checkr _e ?? throw "null pointer dereference")._list != _l) || ((@:checkr _l ?? throw "null pointer dereference")._root._next == _e) : Bool)) {
            return;
        };
        @:check2r _l._move(_e, (stdgo.Go.setRef((@:checkr _l ?? throw "null pointer dereference")._root) : stdgo.Ref<stdgo._internal.container.list.List_element.Element>));
    }
    @:keep
    @:tdfield
    static public function insertAfter( _l:stdgo.Ref<stdgo._internal.container.list.List_list.List>, _v:stdgo.AnyInterface, _mark:stdgo.Ref<stdgo._internal.container.list.List_element.Element>):stdgo.Ref<stdgo._internal.container.list.List_element.Element> {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_list.List> = _l;
        if ((@:checkr _mark ?? throw "null pointer dereference")._list != (_l)) {
            return null;
        };
        return @:check2r _l._insertValue(_v, _mark);
    }
    @:keep
    @:tdfield
    static public function insertBefore( _l:stdgo.Ref<stdgo._internal.container.list.List_list.List>, _v:stdgo.AnyInterface, _mark:stdgo.Ref<stdgo._internal.container.list.List_element.Element>):stdgo.Ref<stdgo._internal.container.list.List_element.Element> {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_list.List> = _l;
        if ((@:checkr _mark ?? throw "null pointer dereference")._list != (_l)) {
            return null;
        };
        return @:check2r _l._insertValue(_v, (@:checkr _mark ?? throw "null pointer dereference")._prev);
    }
    @:keep
    @:tdfield
    static public function pushBack( _l:stdgo.Ref<stdgo._internal.container.list.List_list.List>, _v:stdgo.AnyInterface):stdgo.Ref<stdgo._internal.container.list.List_element.Element> {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_list.List> = _l;
        @:check2r _l._lazyInit();
        return @:check2r _l._insertValue(_v, (@:checkr _l ?? throw "null pointer dereference")._root._prev);
    }
    @:keep
    @:tdfield
    static public function pushFront( _l:stdgo.Ref<stdgo._internal.container.list.List_list.List>, _v:stdgo.AnyInterface):stdgo.Ref<stdgo._internal.container.list.List_element.Element> {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_list.List> = _l;
        @:check2r _l._lazyInit();
        return @:check2r _l._insertValue(_v, (stdgo.Go.setRef((@:checkr _l ?? throw "null pointer dereference")._root) : stdgo.Ref<stdgo._internal.container.list.List_element.Element>));
    }
    @:keep
    @:tdfield
    static public function remove( _l:stdgo.Ref<stdgo._internal.container.list.List_list.List>, _e:stdgo.Ref<stdgo._internal.container.list.List_element.Element>):stdgo.AnyInterface {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_list.List> = _l;
        if ((@:checkr _e ?? throw "null pointer dereference")._list == (_l)) {
            @:check2r _l._remove(_e);
        };
        return (@:checkr _e ?? throw "null pointer dereference").value;
    }
    @:keep
    @:tdfield
    static public function _move( _l:stdgo.Ref<stdgo._internal.container.list.List_list.List>, _e:stdgo.Ref<stdgo._internal.container.list.List_element.Element>, _at:stdgo.Ref<stdgo._internal.container.list.List_element.Element>):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_list.List> = _l;
        if (_e == (_at)) {
            return;
        };
        (@:checkr (@:checkr _e ?? throw "null pointer dereference")._prev ?? throw "null pointer dereference")._next = (@:checkr _e ?? throw "null pointer dereference")._next;
        (@:checkr (@:checkr _e ?? throw "null pointer dereference")._next ?? throw "null pointer dereference")._prev = (@:checkr _e ?? throw "null pointer dereference")._prev;
        (@:checkr _e ?? throw "null pointer dereference")._prev = _at;
        (@:checkr _e ?? throw "null pointer dereference")._next = (@:checkr _at ?? throw "null pointer dereference")._next;
        (@:checkr (@:checkr _e ?? throw "null pointer dereference")._prev ?? throw "null pointer dereference")._next = _e;
        (@:checkr (@:checkr _e ?? throw "null pointer dereference")._next ?? throw "null pointer dereference")._prev = _e;
    }
    @:keep
    @:tdfield
    static public function _remove( _l:stdgo.Ref<stdgo._internal.container.list.List_list.List>, _e:stdgo.Ref<stdgo._internal.container.list.List_element.Element>):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_list.List> = _l;
        (@:checkr (@:checkr _e ?? throw "null pointer dereference")._prev ?? throw "null pointer dereference")._next = (@:checkr _e ?? throw "null pointer dereference")._next;
        (@:checkr (@:checkr _e ?? throw "null pointer dereference")._next ?? throw "null pointer dereference")._prev = (@:checkr _e ?? throw "null pointer dereference")._prev;
        (@:checkr _e ?? throw "null pointer dereference")._next = null;
        (@:checkr _e ?? throw "null pointer dereference")._prev = null;
        (@:checkr _e ?? throw "null pointer dereference")._list = null;
        (@:checkr _l ?? throw "null pointer dereference")._len--;
    }
    @:keep
    @:tdfield
    static public function _insertValue( _l:stdgo.Ref<stdgo._internal.container.list.List_list.List>, _v:stdgo.AnyInterface, _at:stdgo.Ref<stdgo._internal.container.list.List_element.Element>):stdgo.Ref<stdgo._internal.container.list.List_element.Element> {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_list.List> = _l;
        return @:check2r _l._insert((stdgo.Go.setRef(({ value : _v } : stdgo._internal.container.list.List_element.Element)) : stdgo.Ref<stdgo._internal.container.list.List_element.Element>), _at);
    }
    @:keep
    @:tdfield
    static public function _insert( _l:stdgo.Ref<stdgo._internal.container.list.List_list.List>, _e:stdgo.Ref<stdgo._internal.container.list.List_element.Element>, _at:stdgo.Ref<stdgo._internal.container.list.List_element.Element>):stdgo.Ref<stdgo._internal.container.list.List_element.Element> {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_list.List> = _l;
        (@:checkr _e ?? throw "null pointer dereference")._prev = _at;
        (@:checkr _e ?? throw "null pointer dereference")._next = (@:checkr _at ?? throw "null pointer dereference")._next;
        (@:checkr (@:checkr _e ?? throw "null pointer dereference")._prev ?? throw "null pointer dereference")._next = _e;
        (@:checkr (@:checkr _e ?? throw "null pointer dereference")._next ?? throw "null pointer dereference")._prev = _e;
        (@:checkr _e ?? throw "null pointer dereference")._list = _l;
        (@:checkr _l ?? throw "null pointer dereference")._len++;
        return _e;
    }
    @:keep
    @:tdfield
    static public function _lazyInit( _l:stdgo.Ref<stdgo._internal.container.list.List_list.List>):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_list.List> = _l;
        if (((@:checkr _l ?? throw "null pointer dereference")._root._next == null || ((@:checkr _l ?? throw "null pointer dereference")._root._next : Dynamic).__nil__)) {
            @:check2r _l.init();
        };
    }
    @:keep
    @:tdfield
    static public function back( _l:stdgo.Ref<stdgo._internal.container.list.List_list.List>):stdgo.Ref<stdgo._internal.container.list.List_element.Element> {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_list.List> = _l;
        if ((@:checkr _l ?? throw "null pointer dereference")._len == ((0 : stdgo.GoInt))) {
            return null;
        };
        return (@:checkr _l ?? throw "null pointer dereference")._root._prev;
    }
    @:keep
    @:tdfield
    static public function front( _l:stdgo.Ref<stdgo._internal.container.list.List_list.List>):stdgo.Ref<stdgo._internal.container.list.List_element.Element> {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_list.List> = _l;
        if ((@:checkr _l ?? throw "null pointer dereference")._len == ((0 : stdgo.GoInt))) {
            return null;
        };
        return (@:checkr _l ?? throw "null pointer dereference")._root._next;
    }
    @:keep
    @:tdfield
    static public function len( _l:stdgo.Ref<stdgo._internal.container.list.List_list.List>):stdgo.GoInt {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_list.List> = _l;
        return (@:checkr _l ?? throw "null pointer dereference")._len;
    }
    @:keep
    @:tdfield
    static public function init( _l:stdgo.Ref<stdgo._internal.container.list.List_list.List>):stdgo.Ref<stdgo._internal.container.list.List_list.List> {
        @:recv var _l:stdgo.Ref<stdgo._internal.container.list.List_list.List> = _l;
        (@:checkr _l ?? throw "null pointer dereference")._root._next = (stdgo.Go.setRef((@:checkr _l ?? throw "null pointer dereference")._root) : stdgo.Ref<stdgo._internal.container.list.List_element.Element>);
        (@:checkr _l ?? throw "null pointer dereference")._root._prev = (stdgo.Go.setRef((@:checkr _l ?? throw "null pointer dereference")._root) : stdgo.Ref<stdgo._internal.container.list.List_element.Element>);
        (@:checkr _l ?? throw "null pointer dereference")._len = (0 : stdgo.GoInt);
        return _l;
    }
}
