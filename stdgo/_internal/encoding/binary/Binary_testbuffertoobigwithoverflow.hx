package stdgo._internal.encoding.binary;
function testBufferTooBigWithOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _tests = (new stdgo.Slice<stdgo._internal.encoding.binary.Binary_t__struct_6.T__struct_6>(4, 4, ...[({ _name : ("invalid: 1000 bytes" : stdgo.GoString), _in : ({
            var a = function():stdgo.Slice<stdgo.GoUInt8> {
                var _b = (new stdgo.Slice<stdgo.GoUInt8>((1000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                for (_i => _ in _b) {
                    _b[(_i : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
                };
                _b[(999 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                return _b;
            };
            a();
        }), _wantN : (-11 : stdgo.GoInt), _wantValue : (0i64 : stdgo.GoUInt64) } : stdgo._internal.encoding.binary.Binary_t__struct_6.T__struct_6), ({ _name : ("valid: math.MaxUint64-40" : stdgo.GoString), _in : (new stdgo.Slice<stdgo.GoUInt8>(10, 10, ...[(215 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _wantValue : (-41i64 : stdgo.GoUInt64), _wantN : (10 : stdgo.GoInt) } : stdgo._internal.encoding.binary.Binary_t__struct_6.T__struct_6), ({ _name : ("invalid: with more than MaxVarintLen64 bytes" : stdgo.GoString), _in : (new stdgo.Slice<stdgo.GoUInt8>(11, 11, ...[
(215 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _wantN : (-11 : stdgo.GoInt), _wantValue : (0i64 : stdgo.GoUInt64) } : stdgo._internal.encoding.binary.Binary_t__struct_6.T__struct_6), ({ _name : ("invalid: 10th byte" : stdgo.GoString), _in : (new stdgo.Slice<stdgo.GoUInt8>(10, 10, ...[(215 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (127 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _wantN : (-10 : stdgo.GoInt), _wantValue : (0i64 : stdgo.GoUInt64) } : stdgo._internal.encoding.binary.Binary_t__struct_6.T__struct_6)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _in : (null : stdgo.Slice<stdgo.GoUInt8>), _name : ("" : stdgo.GoString), _wantN : (0 : stdgo.GoInt), _wantValue : (0 : stdgo.GoUInt64) } : stdgo._internal.encoding.binary.Binary_t__struct_6.T__struct_6)])) : stdgo.Slice<stdgo._internal.encoding.binary.Binary_t__struct_6.T__struct_6>);
        for (__8 => _tt in _tests) {
            var _tt = ({
                final x = _tt;
                ({ _in : x._in, _name : x._name?.__copy__(), _wantN : x._wantN, _wantValue : x._wantValue } : stdgo._internal.encoding.binary.Binary_t__struct_6.T__struct_6);
            } : stdgo._internal.encoding.binary.Binary_t__struct_6.T__struct_6);
            @:check2r _t.run(_tt._name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                var __tmp__ = stdgo._internal.encoding.binary.Binary_uvarint.uvarint(_tt._in), _value:stdgo.GoUInt64 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
                {
                    var __0 = (_n : stdgo.GoInt), __1 = (_tt._wantN : stdgo.GoInt);
var _w = __1, _g = __0;
                    if (_g != (_w)) {
                        @:check2r _t.errorf(("bytes returned=%d, want=%d" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
                    };
                };
                {
                    var __0 = (_value : stdgo.GoUInt64), __1 = (_tt._wantValue : stdgo.GoUInt64);
var _w = __1, _g = __0;
                    if (_g != (_w)) {
                        @:check2r _t.errorf(("value=%d, want=%d" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
                    };
                };
            });
        };
    }
