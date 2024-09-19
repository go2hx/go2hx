package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testGenericTrieBuilding(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        trace("testGenericTrieBuilding" + " skip function");
        return;
        var _testCases = (new stdgo.Slice<_internal.strings_test.Strings_test_StringTest.StringTest>(4, 4, ...[(new _internal.strings_test.Strings_test_StringTest.StringTest(("abc;abdef;abdefgh;xx;xy;z" : stdgo.GoString), ("-\n\t\t\ta-\n\t\t\t.b-\n\t\t\t..c+\n\t\t\t..d-\n\t\t\t...ef+\n\t\t\t.....gh+\n\t\t\tx-\n\t\t\t.x+\n\t\t\t.y+\n\t\t\tz+\n\t\t\t" : stdgo.GoString)) : _internal.strings_test.Strings_test_StringTest.StringTest), (new _internal.strings_test.Strings_test_StringTest.StringTest(("abracadabra;abracadabrakazam;abraham;abrasion" : stdgo.GoString), ("-\n\t\t\ta-\n\t\t\t.bra-\n\t\t\t....c-\n\t\t\t.....adabra+\n\t\t\t...........kazam+\n\t\t\t....h-\n\t\t\t.....am+\n\t\t\t....s-\n\t\t\t.....ion+\n\t\t\t" : stdgo.GoString)) : _internal.strings_test.Strings_test_StringTest.StringTest), (new _internal.strings_test.Strings_test_StringTest.StringTest(("aaa;aa;a;i;longerst;longer;long;xx;x;X;Y" : stdgo.GoString), ("-\n\t\t\tX+\n\t\t\tY+\n\t\t\ta+\n\t\t\t.a+\n\t\t\t..a+\n\t\t\ti+\n\t\t\tl-\n\t\t\t.ong+\n\t\t\t....er+\n\t\t\t......st+\n\t\t\tx+\n\t\t\t.x+\n\t\t\t" : stdgo.GoString)) : _internal.strings_test.Strings_test_StringTest.StringTest), (new _internal.strings_test.Strings_test_StringTest.StringTest(("foo;;foo;foo1" : stdgo.GoString), ("+\n\t\t\tf-\n\t\t\t.oo+\n\t\t\t...1+\n\t\t\t" : stdgo.GoString)) : _internal.strings_test.Strings_test_StringTest.StringTest)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : _internal.strings_test.Strings_test_StringTest.StringTest)])) : stdgo.Slice<_internal.strings_test.Strings_test_StringTest.StringTest>);
        for (__0 => _tc in _testCases) {
            var _keys = stdgo._internal.strings.Strings_split.split(_tc._in?.__copy__(), (";" : stdgo.GoString));
            var _args = (new stdgo.Slice<stdgo.GoString>(((_keys.length) * (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
            for (_i => _key in _keys) {
                _args[(_i * (2 : stdgo.GoInt) : stdgo.GoInt)] = _key?.__copy__();
            };
            var _got = (stdgo._internal.strings.Strings_newReplacer.newReplacer(...(_args : Array<stdgo.GoString>)).printTrie()?.__copy__() : stdgo.GoString);
            var _wantbuf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (_tc._out.length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_tc._out.length) : Bool), _i++, {
                    if (_tc._out[(_i : stdgo.GoInt)] != ((9 : stdgo.GoUInt8))) {
                        _wantbuf = (_wantbuf.__append__(_tc._out[(_i : stdgo.GoInt)]));
                    };
                });
            };
            var _want = ((_wantbuf : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (_want)) {
                _t.errorf(("PrintTrie(%q)\ngot\n%swant\n%s" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
