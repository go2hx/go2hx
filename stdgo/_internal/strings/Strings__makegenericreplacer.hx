package stdgo._internal.strings;
function _makeGenericReplacer(_oldnew:stdgo.Slice<stdgo.GoString>):stdgo.Ref<stdgo._internal.strings.Strings_t_genericreplacer.T_genericReplacer> {
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_t_genericreplacer.T_genericReplacer)) : stdgo.Ref<stdgo._internal.strings.Strings_t_genericreplacer.T_genericReplacer>);
        //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L271"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_oldnew.length) : Bool)) {
                var _key = (_oldnew[(_i : stdgo.GoInt)].__copy__() : stdgo.GoString);
//"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L273"
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < (_key.length) : Bool)) {
                        (@:checkr _r ?? throw "null pointer dereference")._mapping[(_key[(_j : stdgo.GoInt)] : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
                        _j++;
                    };
                };
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L278"
        for (__0 => _b in (@:checkr _r ?? throw "null pointer dereference")._mapping.__copy__()) {
            (@:checkr _r ?? throw "null pointer dereference")._tableSize = ((@:checkr _r ?? throw "null pointer dereference")._tableSize + ((_b : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _index:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L283"
        for (_i => _b in (@:checkr _r ?? throw "null pointer dereference")._mapping.__copy__()) {
            //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L284"
            if (_b == ((0 : stdgo.GoUInt8))) {
                (@:checkr _r ?? throw "null pointer dereference")._mapping[(_i : stdgo.GoInt)] = ((@:checkr _r ?? throw "null pointer dereference")._tableSize : stdgo.GoUInt8);
            } else {
                (@:checkr _r ?? throw "null pointer dereference")._mapping[(_i : stdgo.GoInt)] = _index;
                //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L288"
                _index++;
            };
        };
        (@:checkr _r ?? throw "null pointer dereference")._root._table = (new stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>>(((@:checkr _r ?? throw "null pointer dereference")._tableSize : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>>);
        //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L294"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_oldnew.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L295"
                (@:checkr _r ?? throw "null pointer dereference")._root._add(_oldnew[(_i : stdgo.GoInt)].__copy__(), _oldnew[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].__copy__(), ((_oldnew.length) - _i : stdgo.GoInt), _r);
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L297"
        return _r;
    }
