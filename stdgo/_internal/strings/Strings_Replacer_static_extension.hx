package stdgo._internal.strings;
@:keep @:allow(stdgo._internal.strings.Strings.Replacer_asInterface) class Replacer_static_extension {
    @:keep
    static public function writeString( _r:stdgo.Ref<stdgo._internal.strings.Strings_Replacer.Replacer>, _w:stdgo._internal.io.Io_Writer.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_Replacer.Replacer> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _r._once.do_(_r._buildOnce);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = _r._r.writeString(_w, _s?.__copy__());
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    static public function replace( _r:stdgo.Ref<stdgo._internal.strings.Strings_Replacer.Replacer>, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_Replacer.Replacer> = _r;
        _r._once.do_(_r._buildOnce);
        return _r._r.replace(_s?.__copy__())?.__copy__();
    }
    @:keep
    static public function _build( _b:stdgo.Ref<stdgo._internal.strings.Strings_Replacer.Replacer>):stdgo._internal.strings.Strings_T_replacer.T_replacer {
        @:recv var _b:stdgo.Ref<stdgo._internal.strings.Strings_Replacer.Replacer> = _b;
        var _oldnew = _b._oldnew;
        if (((_oldnew.length == (2 : stdgo.GoInt)) && ((_oldnew[(0 : stdgo.GoInt)].length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
            return stdgo.Go.asInterface(stdgo._internal.strings.Strings__makeSingleStringReplacer._makeSingleStringReplacer(_oldnew[(0 : stdgo.GoInt)]?.__copy__(), _oldnew[(1 : stdgo.GoInt)]?.__copy__()));
        };
        var _allNewBytes = (true : Bool);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_oldnew.length) : Bool)) {
                if ((_oldnew[(_i : stdgo.GoInt)].length) != ((1 : stdgo.GoInt))) {
                    return stdgo.Go.asInterface(stdgo._internal.strings.Strings__makeGenericReplacer._makeGenericReplacer(_oldnew));
                };
if ((_oldnew[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].length) != ((1 : stdgo.GoInt))) {
                    _allNewBytes = false;
                };
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        if (_allNewBytes) {
            var _r = ((new stdgo.GoArray<stdgo.GoUInt8>(256, 256, ...[]).__setNumber32__() : stdgo._internal.strings.Strings_T_byteReplacer.T_byteReplacer)?.__copy__() : stdgo._internal.strings.Strings_T_byteReplacer.T_byteReplacer);
            var _r__pointer__ = (stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.strings.Strings_T_byteReplacer.T_byteReplacer>);
            var _r__pointer__ = (stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.strings.Strings_T_byteReplacer.T_byteReplacer>);
            var _r__pointer__ = (stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.strings.Strings_T_byteReplacer.T_byteReplacer>);
            var _r__pointer__ = (stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.strings.Strings_T_byteReplacer.T_byteReplacer>);
            for (_i => _ in _r) {
                _r[(_i : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
            };
            {
                var _i = ((_oldnew.length) - (2 : stdgo.GoInt) : stdgo.GoInt);
                while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    var _o = (_oldnew[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)] : stdgo.GoUInt8);
var _n = (_oldnew[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)][(0 : stdgo.GoInt)] : stdgo.GoUInt8);
_r[(_o : stdgo.GoInt)] = _n;
                    _i = (_i - ((2 : stdgo.GoInt)) : stdgo.GoInt);
                };
            };
            return stdgo.Go.asInterface(_r__pointer__);
        };
        var _r = ({ _toReplace : (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), ((_oldnew.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.strings.Strings_T_byteStringReplacer.T_byteStringReplacer);
        var _r__pointer__ = (stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.strings.Strings_T_byteStringReplacer.T_byteStringReplacer>);
        var _r__pointer__ = (stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.strings.Strings_T_byteStringReplacer.T_byteStringReplacer>);
        var _r__pointer__ = (stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.strings.Strings_T_byteStringReplacer.T_byteStringReplacer>);
        var _r__pointer__ = (stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.strings.Strings_T_byteStringReplacer.T_byteStringReplacer>);
        {
            var _i = ((_oldnew.length) - (2 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                var _o = (_oldnew[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)] : stdgo.GoUInt8);
var _n = (_oldnew[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].__copy__() : stdgo.GoString);
if (_r._replacements[(_o : stdgo.GoInt)] == null) {
                    _r._toReplace = (_r._toReplace.__append__(((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[_o]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString).__copy__()));
                };
_r._replacements[(_o : stdgo.GoInt)] = (_n : stdgo.Slice<stdgo.GoUInt8>);
                _i = (_i - ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        return stdgo.Go.asInterface(_r__pointer__);
    }
    @:keep
    static public function _buildOnce( _r:stdgo.Ref<stdgo._internal.strings.Strings_Replacer.Replacer>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_Replacer.Replacer> = _r;
        _r._r = _r._build();
        _r._oldnew = (null : stdgo.Slice<stdgo.GoString>);
    }
    @:keep
    static public function printTrie( _r:stdgo.Ref<stdgo._internal.strings.Strings_Replacer.Replacer>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_Replacer.Replacer> = _r;
        _r._once.do_(_r._buildOnce);
        var _gen = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r._r) : stdgo.Ref<stdgo._internal.strings.Strings_T_genericReplacer.T_genericReplacer>)) : stdgo.Ref<stdgo._internal.strings.Strings_T_genericReplacer.T_genericReplacer>);
        return _gen._printNode((stdgo.Go.setRef(_gen._root) : stdgo.Ref<stdgo._internal.strings.Strings_T_trieNode.T_trieNode>), (0 : stdgo.GoInt))?.__copy__();
    }
    @:keep
    static public function replacer( _r:stdgo.Ref<stdgo._internal.strings.Strings_Replacer.Replacer>):stdgo.AnyInterface {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_Replacer.Replacer> = _r;
        _r._once.do_(_r._buildOnce);
        return stdgo.Go.toInterface(_r._r);
    }
}
