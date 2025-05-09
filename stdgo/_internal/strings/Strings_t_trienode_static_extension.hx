package stdgo._internal.strings;
@:keep @:allow(stdgo._internal.strings.Strings.T_trieNode_asInterface) class T_trieNode_static_extension {
    @:keep
    @:tdfield
    static public function _add( _t:stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>, _key:stdgo.GoString, _val:stdgo.GoString, _priority:stdgo.GoInt, _r:stdgo.Ref<stdgo._internal.strings.Strings_t_genericreplacer.T_genericReplacer>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode> = _t;
        //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L159"
        if (_key == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L160"
            if ((@:checkr _t ?? throw "null pointer dereference")._priority == ((0 : stdgo.GoInt))) {
                (@:checkr _t ?? throw "null pointer dereference")._value = _val?.__copy__();
                (@:checkr _t ?? throw "null pointer dereference")._priority = _priority;
            };
            //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L164"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L167"
        if ((@:checkr _t ?? throw "null pointer dereference")._prefix != ((stdgo.Go.str() : stdgo.GoString))) {
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L170"
            while (((_n < ((@:checkr _t ?? throw "null pointer dereference")._prefix.length) : Bool) && (_n < (_key.length) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L171"
                if ((@:checkr _t ?? throw "null pointer dereference")._prefix[(_n : stdgo.GoInt)] != (_key[(_n : stdgo.GoInt)])) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L172"
                    break;
                };
                _n++;
            };
            //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L175"
            if (_n == (((@:checkr _t ?? throw "null pointer dereference")._prefix.length))) {
                //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L176"
                (@:checkr _t ?? throw "null pointer dereference")._next._add((_key.__slice__(_n) : stdgo.GoString)?.__copy__(), _val?.__copy__(), _priority, _r);
            } else if (_n == ((0 : stdgo.GoInt))) {
                var _prefixNode:stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode> = (null : stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>);
                //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L182"
                if (((@:checkr _t ?? throw "null pointer dereference")._prefix.length) == ((1 : stdgo.GoInt))) {
                    _prefixNode = (@:checkr _t ?? throw "null pointer dereference")._next;
                } else {
                    _prefixNode = (stdgo.Go.setRef(({ _prefix : ((@:checkr _t ?? throw "null pointer dereference")._prefix.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _next : (@:checkr _t ?? throw "null pointer dereference")._next } : stdgo._internal.strings.Strings_t_trienode.T_trieNode)) : stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>);
                };
                var _keyNode = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_t_trienode.T_trieNode)) : stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>);
                (@:checkr _t ?? throw "null pointer dereference")._table = (new stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>>(((@:checkr _r ?? throw "null pointer dereference")._tableSize : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>>);
                (@:checkr _t ?? throw "null pointer dereference")._table[((@:checkr _r ?? throw "null pointer dereference")._mapping[((@:checkr _t ?? throw "null pointer dereference")._prefix[(0 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoInt)] = _prefixNode;
                (@:checkr _t ?? throw "null pointer dereference")._table[((@:checkr _r ?? throw "null pointer dereference")._mapping[(_key[(0 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoInt)] = _keyNode;
                (@:checkr _t ?? throw "null pointer dereference")._prefix = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                (@:checkr _t ?? throw "null pointer dereference")._next = null;
                //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L196"
                _keyNode._add((_key.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _val?.__copy__(), _priority, _r);
            } else {
                var _next = (stdgo.Go.setRef(({ _prefix : ((@:checkr _t ?? throw "null pointer dereference")._prefix.__slice__(_n) : stdgo.GoString)?.__copy__(), _next : (@:checkr _t ?? throw "null pointer dereference")._next } : stdgo._internal.strings.Strings_t_trienode.T_trieNode)) : stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>);
                (@:checkr _t ?? throw "null pointer dereference")._prefix = ((@:checkr _t ?? throw "null pointer dereference")._prefix.__slice__(0, _n) : stdgo.GoString)?.__copy__();
                (@:checkr _t ?? throw "null pointer dereference")._next = _next;
                //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L205"
                _next._add((_key.__slice__(_n) : stdgo.GoString)?.__copy__(), _val?.__copy__(), _priority, _r);
            };
        } else if ((@:checkr _t ?? throw "null pointer dereference")._table != null) {
            var _m = ((@:checkr _r ?? throw "null pointer dereference")._mapping[(_key[(0 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L210"
            if (({
                final value = (@:checkr _t ?? throw "null pointer dereference")._table[(_m : stdgo.GoInt)];
                (value == null || (value : Dynamic).__nil__);
            })) {
                (@:checkr _t ?? throw "null pointer dereference")._table[(_m : stdgo.GoInt)] = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_t_trienode.T_trieNode)) : stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>);
            };
            //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L213"
            (@:checkr _t ?? throw "null pointer dereference")._table[(_m : stdgo.GoInt)]._add((_key.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _val?.__copy__(), _priority, _r);
        } else {
            (@:checkr _t ?? throw "null pointer dereference")._prefix = _key?.__copy__();
            (@:checkr _t ?? throw "null pointer dereference")._next = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_t_trienode.T_trieNode)) : stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>);
            //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L217"
            (@:checkr _t ?? throw "null pointer dereference")._next._add((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _val?.__copy__(), _priority, _r);
        };
    }
}
