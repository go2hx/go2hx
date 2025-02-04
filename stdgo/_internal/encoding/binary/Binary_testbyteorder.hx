package stdgo._internal.encoding.binary;
function testByteOrder(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((8 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (__8 => _order in (new stdgo.Slice<stdgo._internal.encoding.binary.Binary_t_testbyteorder___localname___byteorder_10108.T_testByteOrder___localname___byteOrder_10108>(2, 2, ...[stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian)]) : stdgo.Slice<stdgo._internal.encoding.binary.Binary_t_testbyteorder___localname___byteorder_10108.T_testByteOrder___localname___byteOrder_10108>)) {
            {};
            for (__9 => _value in (new stdgo.Slice<stdgo.GoUInt64>(7, 7, ...[(0i64 : stdgo.GoUInt64), (81985529216486895i64 : stdgo.GoUInt64), (-81985529216486896i64 : stdgo.GoUInt64), (-1i64 : stdgo.GoUInt64), (-6148914691236517206i64 : stdgo.GoUInt64), stdgo._internal.math.Math_float64bits.float64bits((3.141592653589793 : stdgo.GoFloat64)), stdgo._internal.math.Math_float64bits.float64bits((2.718281828459045 : stdgo.GoFloat64))]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>)) {
                var _want16 = (_value : stdgo.GoUInt16);
                _order.putUint16((_buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _want16);
                {
                    var _got = (_order.uint16((_buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt16);
                    if (_got != (_want16)) {
                        @:check2r _t.errorf(("PutUint16: Uint16 = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want16));
                    };
                };
                _buf = _order.appendUint16((_buf.__slice__(0, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _want16);
                {
                    var _got = (_order.uint16((_buf.__slice__((3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt16);
                    if (_got != (_want16)) {
                        @:check2r _t.errorf(("AppendUint16: Uint16 = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want16));
                    };
                };
                if ((_buf.length) != ((5 : stdgo.GoInt))) {
                    @:check2r _t.errorf(("AppendUint16: len(buf) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface((_buf.length)), stdgo.Go.toInterface((5 : stdgo.GoInt)));
                };
                var _want32 = (_value : stdgo.GoUInt32);
                _order.putUint32((_buf.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _want32);
                {
                    var _got = (_order.uint32((_buf.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                    if (_got != (_want32)) {
                        @:check2r _t.errorf(("PutUint32: Uint32 = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want32));
                    };
                };
                _buf = _order.appendUint32((_buf.__slice__(0, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _want32);
                {
                    var _got = (_order.uint32((_buf.__slice__((3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                    if (_got != (_want32)) {
                        @:check2r _t.errorf(("AppendUint32: Uint32 = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want32));
                    };
                };
                if ((_buf.length) != ((7 : stdgo.GoInt))) {
                    @:check2r _t.errorf(("AppendUint32: len(buf) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface((_buf.length)), stdgo.Go.toInterface((7 : stdgo.GoInt)));
                };
                var _want64 = (_value : stdgo.GoUInt64);
                _order.putUint64((_buf.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _want64);
                {
                    var _got = (_order.uint64((_buf.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
                    if (_got != (_want64)) {
                        @:check2r _t.errorf(("PutUint64: Uint64 = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want64));
                    };
                };
                _buf = _order.appendUint64((_buf.__slice__(0, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _want64);
                {
                    var _got = (_order.uint64((_buf.__slice__((3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
                    if (_got != (_want64)) {
                        @:check2r _t.errorf(("AppendUint64: Uint64 = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want64));
                    };
                };
                if ((_buf.length) != ((11 : stdgo.GoInt))) {
                    @:check2r _t.errorf(("AppendUint64: len(buf) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface((_buf.length)), stdgo.Go.toInterface((11 : stdgo.GoInt)));
                };
            };
        };
    }
