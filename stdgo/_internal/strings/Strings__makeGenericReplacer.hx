package stdgo._internal.strings;
function _makeGenericReplacer(_oldnew:stdgo.Slice<stdgo.GoString>):stdgo.Ref<stdgo._internal.strings.Strings_T_genericReplacer.T_genericReplacer> {
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_T_genericReplacer.T_genericReplacer)) : stdgo.Ref<stdgo._internal.strings.Strings_T_genericReplacer.T_genericReplacer>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_oldnew.length) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                var _key = (_oldnew[(_i : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (_key.length) : Bool), _j++, {
                        _r._mapping[(_key[(_j : stdgo.GoInt)] : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
                    });
                };
            });
        };
        for (__0 => _b in _r._mapping) {
            _r._tableSize = (_r._tableSize + ((_b : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _index:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        for (_i => _b in _r._mapping) {
            if (_b == ((0 : stdgo.GoUInt8))) {
                _r._mapping[(_i : stdgo.GoInt)] = (_r._tableSize : stdgo.GoUInt8);
            } else {
                _r._mapping[(_i : stdgo.GoInt)] = _index;
                _index++;
            };
        };
        _r._root._table = (new stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings_T_trieNode.T_trieNode>>((_r._tableSize : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings_T_trieNode.T_trieNode>>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_oldnew.length) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                _r._root._add(_oldnew[(_i : stdgo.GoInt)]?.__copy__(), _oldnew[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), ((_oldnew.length) - _i : stdgo.GoInt), _r);
            });
        };
        return _r;
    }
