package stdgo._internal.strings;
@:keep @:allow(stdgo._internal.strings.Strings.T_genericReplacer_asInterface) class T_genericReplacer_static_extension {
    @:keep
    static public function writeString( _r:stdgo.Ref<stdgo._internal.strings.Strings_T_genericReplacer.T_genericReplacer>, _w:stdgo._internal.io.Io_Writer.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_T_genericReplacer.T_genericReplacer> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _sw = (stdgo._internal.strings.Strings__getStringWriter._getStringWriter(_w) : stdgo._internal.io.Io_StringWriter.StringWriter);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _wn = __1, _last = __0;
        var _prevMatchEmpty:Bool = false;
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i <= (_s.length) : Bool)) {
                if (((_i != (_s.length)) && (_r._root._priority == (0 : stdgo.GoInt)) : Bool)) {
                    var _index = (_r._mapping[(_s[(_i : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoInt);
                    if (((_index == _r._tableSize) || (_r._root._table[(_index : stdgo.GoInt)] == null || (_r._root._table[(_index : stdgo.GoInt)] : Dynamic).__nil__) : Bool)) {
                        _i++;
                        continue;
                    };
                };
                var __tmp__ = _r._lookup((_s.__slice__(_i) : stdgo.GoString)?.__copy__(), _prevMatchEmpty), _val:stdgo.GoString = __tmp__._0, _keylen:stdgo.GoInt = __tmp__._1, _match:Bool = __tmp__._2;
                _prevMatchEmpty = (_match && (_keylen == (0 : stdgo.GoInt)) : Bool);
                if (_match) {
                    {
                        var __tmp__ = _sw.writeString((_s.__slice__(_last, _i) : stdgo.GoString)?.__copy__());
                        _wn = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    _n = (_n + (_wn) : stdgo.GoInt);
                    if (_err != null) {
                        return { _0 : _n, _1 : _err };
                    };
                    {
                        var __tmp__ = _sw.writeString(_val?.__copy__());
                        _wn = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    _n = (_n + (_wn) : stdgo.GoInt);
                    if (_err != null) {
                        return { _0 : _n, _1 : _err };
                    };
                    _i = (_i + (_keylen) : stdgo.GoInt);
                    _last = _i;
                    continue;
                };
                _i++;
            };
        };
        if (_last != ((_s.length))) {
            {
                var __tmp__ = _sw.writeString((_s.__slice__(_last) : stdgo.GoString)?.__copy__());
                _wn = __tmp__._0;
                _err = __tmp__._1;
            };
            _n = (_n + (_wn) : stdgo.GoInt);
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function replace( _r:stdgo.Ref<stdgo._internal.strings.Strings_T_genericReplacer.T_genericReplacer>, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_T_genericReplacer.T_genericReplacer> = _r;
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (_s.length)).__setNumber32__() : stdgo._internal.strings.Strings_T_appendSliceWriter.T_appendSliceWriter);
        _r.writeString(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_T_appendSliceWriter.T_appendSliceWriter>)), _s?.__copy__());
        return (_buf : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _lookup( _r:stdgo.Ref<stdgo._internal.strings.Strings_T_genericReplacer.T_genericReplacer>, _s:stdgo.GoString, _ignoreRoot:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : Bool; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_T_genericReplacer.T_genericReplacer> = _r;
        var _val = ("" : stdgo.GoString), _keylen = (0 : stdgo.GoInt), _found = false;
        var _bestPriority = (0 : stdgo.GoInt);
        var _node = (stdgo.Go.setRef(_r._root) : stdgo.Ref<stdgo._internal.strings.Strings_T_trieNode.T_trieNode>);
        var _n = (0 : stdgo.GoInt);
        while ((_node != null && ((_node : Dynamic).__nil__ == null || !(_node : Dynamic).__nil__))) {
            if (((_node._priority > _bestPriority : Bool) && !((_ignoreRoot && (_node == (stdgo.Go.setRef(_r._root) : stdgo.Ref<stdgo._internal.strings.Strings_T_trieNode.T_trieNode>)) : Bool)) : Bool)) {
                _bestPriority = _node._priority;
                _val = _node._value?.__copy__();
                _keylen = _n;
                _found = true;
            };
            if (_s == (stdgo.Go.str())) {
                break;
            };
            if (_node._table != null) {
                var _index = (_r._mapping[(_s[(0 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoUInt8);
                if ((_index : stdgo.GoInt) == (_r._tableSize)) {
                    break;
                };
                _node = _node._table[(_index : stdgo.GoInt)];
                _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                _n++;
            } else if (((_node._prefix != stdgo.Go.str()) && stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_s?.__copy__(), _node._prefix?.__copy__()) : Bool)) {
                _n = (_n + ((_node._prefix.length)) : stdgo.GoInt);
                _s = (_s.__slice__((_node._prefix.length)) : stdgo.GoString)?.__copy__();
                _node = _node._next;
            } else {
                break;
            };
        };
        return { _0 : _val, _1 : _keylen, _2 : _found };
    }
    @:keep
    static public function _printNode( _r:stdgo.Ref<stdgo._internal.strings.Strings_T_genericReplacer.T_genericReplacer>, _t:stdgo.Ref<stdgo._internal.strings.Strings_T_trieNode.T_trieNode>, _depth:stdgo.GoInt):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_T_genericReplacer.T_genericReplacer> = _r;
        var _s = ("" : stdgo.GoString);
        if ((_t._priority > (0 : stdgo.GoInt) : Bool)) {
            _s = (_s + (("+" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        } else {
            _s = (_s + (("-" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        _s = (_s + (("\n" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_t._prefix != (stdgo.Go.str())) {
            _s = (_s + ((stdgo._internal.strings.Strings_repeat.repeat(("." : stdgo.GoString), _depth) + _t._prefix?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
            _s = (_s + (_r._printNode(_t._next, (_depth + (_t._prefix.length) : stdgo.GoInt)))?.__copy__() : stdgo.GoString);
        } else if (_t._table != null) {
            for (_b => _m in _r._mapping) {
                if ((((_m : stdgo.GoInt) != _r._tableSize) && (_t._table[(_m : stdgo.GoInt)] != null && ((_t._table[(_m : stdgo.GoInt)] : Dynamic).__nil__ == null || !(_t._table[(_m : stdgo.GoInt)] : Dynamic).__nil__)) : Bool)) {
                    _s = (_s + ((stdgo._internal.strings.Strings_repeat.repeat(("." : stdgo.GoString), _depth) + ((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(_b : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    _s = (_s + (_r._printNode(_t._table[(_m : stdgo.GoInt)], (_depth + (1 : stdgo.GoInt) : stdgo.GoInt)))?.__copy__() : stdgo.GoString);
                };
            };
        };
        return _s;
    }
}
