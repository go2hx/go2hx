package stdgo._internal.strings;
@:keep @:allow(stdgo._internal.strings.Strings.T_trieNode_asInterface) class T_trieNode_static_extension {
    @:keep
    static public function _add( _t:stdgo.Ref<stdgo._internal.strings.Strings_T_trieNode.T_trieNode>, _key:stdgo.GoString, _val:stdgo.GoString, _priority:stdgo.GoInt, _r:stdgo.Ref<stdgo._internal.strings.Strings_T_genericReplacer.T_genericReplacer>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.strings.Strings_T_trieNode.T_trieNode> = _t;
        if (_key == (stdgo.Go.str())) {
            if (_t._priority == ((0 : stdgo.GoInt))) {
                _t._value = _val?.__copy__();
                _t._priority = _priority;
            };
            return;
        };
        if (_t._prefix != (stdgo.Go.str())) {
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            while (((_n < (_t._prefix.length) : Bool) && (_n < (_key.length) : Bool) : Bool)) {
                if (_t._prefix[(_n : stdgo.GoInt)] != (_key[(_n : stdgo.GoInt)])) {
                    break;
                };
                _n++;
            };
            if (_n == ((_t._prefix.length))) {
                _t._next._add((_key.__slice__(_n) : stdgo.GoString)?.__copy__(), _val?.__copy__(), _priority, _r);
            } else if (_n == ((0 : stdgo.GoInt))) {
                var _prefixNode:stdgo.Ref<stdgo._internal.strings.Strings_T_trieNode.T_trieNode> = (null : stdgo.Ref<stdgo._internal.strings.Strings_T_trieNode.T_trieNode>);
                if ((_t._prefix.length) == ((1 : stdgo.GoInt))) {
                    _prefixNode = _t._next;
                } else {
                    _prefixNode = (stdgo.Go.setRef(({ _prefix : (_t._prefix.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _next : _t._next } : stdgo._internal.strings.Strings_T_trieNode.T_trieNode)) : stdgo.Ref<stdgo._internal.strings.Strings_T_trieNode.T_trieNode>);
                };
                var _keyNode = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_T_trieNode.T_trieNode)) : stdgo.Ref<stdgo._internal.strings.Strings_T_trieNode.T_trieNode>);
                _t._table = (new stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings_T_trieNode.T_trieNode>>((_r._tableSize : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings_T_trieNode.T_trieNode>>);
                _t._table[(_r._mapping[(_t._prefix[(0 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoInt)] = _prefixNode;
                _t._table[(_r._mapping[(_key[(0 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoInt)] = _keyNode;
                _t._prefix = stdgo.Go.str()?.__copy__();
                _t._next = null;
                _keyNode._add((_key.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _val?.__copy__(), _priority, _r);
            } else {
                var _next = (stdgo.Go.setRef(({ _prefix : (_t._prefix.__slice__(_n) : stdgo.GoString)?.__copy__(), _next : _t._next } : stdgo._internal.strings.Strings_T_trieNode.T_trieNode)) : stdgo.Ref<stdgo._internal.strings.Strings_T_trieNode.T_trieNode>);
                _t._prefix = (_t._prefix.__slice__(0, _n) : stdgo.GoString)?.__copy__();
                _t._next = _next;
                _next._add((_key.__slice__(_n) : stdgo.GoString)?.__copy__(), _val?.__copy__(), _priority, _r);
            };
        } else if (_t._table != null) {
            var _m = (_r._mapping[(_key[(0 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoUInt8);
            if ((_t._table[(_m : stdgo.GoInt)] == null || (_t._table[(_m : stdgo.GoInt)] : Dynamic).__nil__)) {
                _t._table[(_m : stdgo.GoInt)] = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_T_trieNode.T_trieNode)) : stdgo.Ref<stdgo._internal.strings.Strings_T_trieNode.T_trieNode>);
            };
            _t._table[(_m : stdgo.GoInt)]._add((_key.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _val?.__copy__(), _priority, _r);
        } else {
            _t._prefix = _key?.__copy__();
            _t._next = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_T_trieNode.T_trieNode)) : stdgo.Ref<stdgo._internal.strings.Strings_T_trieNode.T_trieNode>);
            _t._next._add(stdgo.Go.str()?.__copy__(), _val?.__copy__(), _priority, _r);
        };
    }
}
