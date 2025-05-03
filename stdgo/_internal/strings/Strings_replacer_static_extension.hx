package stdgo._internal.strings;
@:keep @:allow(stdgo._internal.strings.Strings.Replacer_asInterface) class Replacer_static_extension {
    @:keep
    @:tdfield
    static public function writeString( _r:stdgo.Ref<stdgo._internal.strings.Strings_replacer.Replacer>, _w:stdgo._internal.io.Io_writer.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_replacer.Replacer> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L102"
        (@:checkr _r ?? throw "null pointer dereference")._once.do_(_r._buildOnce);
        //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L103"
        return ({
            @:explicitConversion final __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._r.writeString(_w, _s?.__copy__());
            { _0 : __tmp__._0, _1 : __tmp__._1 };
        });
    }
    @:keep
    @:tdfield
    static public function replace( _r:stdgo.Ref<stdgo._internal.strings.Strings_replacer.Replacer>, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_replacer.Replacer> = _r;
        //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L96"
        (@:checkr _r ?? throw "null pointer dereference")._once.do_(_r._buildOnce);
        //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L97"
        return (@:checkr _r ?? throw "null pointer dereference")._r.replace(_s?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _build( _b:stdgo.Ref<stdgo._internal.strings.Strings_replacer.Replacer>):stdgo._internal.strings.Strings_t_replacer.T_replacer {
        @:recv var _b:stdgo.Ref<stdgo._internal.strings.Strings_replacer.Replacer> = _b;
        var _oldnew = (@:checkr _b ?? throw "null pointer dereference")._oldnew;
        //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L46"
        if (((_oldnew.length == (2 : stdgo.GoInt)) && ((_oldnew[(0 : stdgo.GoInt)].length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L47"
            return stdgo.Go.asInterface(stdgo._internal.strings.Strings__makesinglestringreplacer._makeSingleStringReplacer(_oldnew[(0 : stdgo.GoInt)]?.__copy__(), _oldnew[(1 : stdgo.GoInt)]?.__copy__()));
        };
        var _allNewBytes = (true : Bool);
        //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L51"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_oldnew.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L52"
                if ((_oldnew[(_i : stdgo.GoInt)].length) != ((1 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L53"
                    return stdgo.Go.asInterface(stdgo._internal.strings.Strings__makegenericreplacer._makeGenericReplacer(_oldnew));
                };
//"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L55"
                if ((_oldnew[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].length) != ((1 : stdgo.GoInt))) {
                    _allNewBytes = false;
                };
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L60"
        if (_allNewBytes) {
            var _r = ((new stdgo.GoArray<stdgo.GoUInt8>(256, 256, ...[]).__setNumber32__() : stdgo._internal.strings.Strings_t_bytereplacer.T_byteReplacer)?.__copy__() : stdgo._internal.strings.Strings_t_bytereplacer.T_byteReplacer);
            //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L62"
            for (_i => _ in _r.__copy__()) {
                _r[(_i : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
            };
            //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L67"
            {
                var _i = ((_oldnew.length) - (2 : stdgo.GoInt) : stdgo.GoInt);
                while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    var _o = (_oldnew[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)] : stdgo.GoUInt8);
var _n = (_oldnew[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)][(0 : stdgo.GoInt)] : stdgo.GoUInt8);
_r[(_o : stdgo.GoInt)] = _n;
                    _i = (_i - ((2 : stdgo.GoInt)) : stdgo.GoInt);
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L72"
            return stdgo.Go.asInterface((stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.strings.Strings_t_bytereplacer.T_byteReplacer>));
        };
        var _r = ({ _toReplace : (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), ((_oldnew.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.strings.Strings_t_bytestringreplacer.T_byteStringReplacer);
        //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L78"
        {
            var _i = ((_oldnew.length) - (2 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                var _o = (_oldnew[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)] : stdgo.GoUInt8);
var _n = (_oldnew[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].__copy__() : stdgo.GoString);
//"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L82"
                if (_r._replacements[(_o : stdgo.GoInt)] == null) {
                    _r._toReplace = (_r._toReplace.__append__(((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[_o]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString).__copy__()) : stdgo.Slice<stdgo.GoString>);
                };
_r._replacements[(_o : stdgo.GoInt)] = (_n : stdgo.Slice<stdgo.GoUInt8>);
                _i = (_i - ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/replace.go#L91"
        return stdgo.Go.asInterface((stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.strings.Strings_t_bytestringreplacer.T_byteStringReplacer>));
    }
    @:keep
    @:tdfield
    static public function _buildOnce( _r:stdgo.Ref<stdgo._internal.strings.Strings_replacer.Replacer>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_replacer.Replacer> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._r = _r._build();
        (@:checkr _r ?? throw "null pointer dereference")._oldnew = (null : stdgo.Slice<stdgo.GoString>);
    }
    @:keep
    @:tdfield
    static public function printTrie( _r:stdgo.Ref<stdgo._internal.strings.Strings_replacer.Replacer>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_replacer.Replacer> = _r;
        //"file:///home/runner/.go/go1.21.3/src/strings/export_test.go#L13"
        (@:checkr _r ?? throw "null pointer dereference")._once.do_(_r._buildOnce);
        var _gen = (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._r) : stdgo.Ref<stdgo._internal.strings.Strings_t_genericreplacer.T_genericReplacer>)) : stdgo.Ref<stdgo._internal.strings.Strings_t_genericreplacer.T_genericReplacer>);
        //"file:///home/runner/.go/go1.21.3/src/strings/export_test.go#L15"
        return _gen._printNode((stdgo.Go.setRef((@:checkr _gen ?? throw "null pointer dereference")._root) : stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>), (0 : stdgo.GoInt))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function replacer( _r:stdgo.Ref<stdgo._internal.strings.Strings_replacer.Replacer>):stdgo.AnyInterface {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_replacer.Replacer> = _r;
        //"file:///home/runner/.go/go1.21.3/src/strings/export_test.go#L8"
        (@:checkr _r ?? throw "null pointer dereference")._once.do_(_r._buildOnce);
        //"file:///home/runner/.go/go1.21.3/src/strings/export_test.go#L9"
        return stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._r);
    }
}
