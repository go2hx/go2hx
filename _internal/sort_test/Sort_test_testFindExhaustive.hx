package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function testFindExhaustive(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _size = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_size <= (100 : stdgo.GoInt) : Bool), _size++, {
                {
                    var _x = (1 : stdgo.GoInt);
                    stdgo.Go.cfor((_x <= ((_size * (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _x++, {
                        var _wantFound:Bool = false;
                        var _wantPos:stdgo.GoInt = (0 : stdgo.GoInt);
                        var _cmp = (function(_i:stdgo.GoInt):stdgo.GoInt {
                            return (_x - (((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
                        } : stdgo.GoInt -> stdgo.GoInt);
                        var __tmp__ = stdgo._internal.sort.Sort_find.find(_size, _cmp), _pos:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
                        if ((_x % (2 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                            _wantPos = ((_x / (2 : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                            _wantFound = true;
                        } else {
                            _wantPos = (_x / (2 : stdgo.GoInt) : stdgo.GoInt);
                            _wantFound = false;
                        };
                        if (((_found != _wantFound) || (_pos != _wantPos) : Bool)) {
                            _t.errorf(("Find(%d, %d): got (%v, %v), want (%v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_wantPos), stdgo.Go.toInterface(_wantFound));
                        };
                    });
                };
            });
        };
    }
