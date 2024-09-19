package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testIndexRandom(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        {
            var _times = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_times < (10 : stdgo.GoInt) : Bool), _times++, {
                {
                    var _strLen = ((5 : stdgo.GoInt) + stdgo._internal.math.rand.Rand_intn.intn((5 : stdgo.GoInt)) : stdgo.GoInt);
                    stdgo.Go.cfor((_strLen < (140 : stdgo.GoInt) : Bool), _strLen = (_strLen + ((10 : stdgo.GoInt)) : stdgo.GoInt), {
                        var _s1 = (new stdgo.Slice<stdgo.GoUInt8>((_strLen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                        for (_i => _ in _s1) {
                            _s1[(_i : stdgo.GoInt)] = ("abcdefghijklmnopqrstuvwxyz0123456789" : stdgo.GoString)[(stdgo._internal.math.rand.Rand_intn.intn((("abcdefghijklmnopqrstuvwxyz0123456789" : stdgo.GoString).length)) : stdgo.GoInt)];
                        };
                        var _s = ((_s1 : stdgo.GoString)?.__copy__() : stdgo.GoString);
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < (50 : stdgo.GoInt) : Bool), _i++, {
                                var _begin = (stdgo._internal.math.rand.Rand_intn.intn(((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                                var _end = (_begin + stdgo._internal.math.rand.Rand_intn.intn((((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt) - _begin : stdgo.GoInt)) : stdgo.GoInt);
                                var _sep = ((_s.__slice__(_begin, _end) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                                if ((_i % (4 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                                    var _pos = (stdgo._internal.math.rand.Rand_intn.intn(((_sep.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                                    _sep = (((_sep.__slice__(0, _pos) : stdgo.GoString) + ("A" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_sep.__slice__(_pos) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                                };
                                var _want = (_internal.strings_test.Strings_test__simpleIndex._simpleIndex(_s?.__copy__(), _sep?.__copy__()) : stdgo.GoInt);
                                var _res = (stdgo._internal.strings.Strings_index.index(_s?.__copy__(), _sep?.__copy__()) : stdgo.GoInt);
                                if (_res != (_want)) {
                                    _t.errorf(("Index(%s,%s) = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_sep), stdgo.Go.toInterface(_res), stdgo.Go.toInterface(_want));
                                };
                            });
                        };
                    });
                };
            });
        };
    }
