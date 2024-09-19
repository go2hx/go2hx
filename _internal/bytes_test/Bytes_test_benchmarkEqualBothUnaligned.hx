package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function benchmarkEqualBothUnaligned(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _sizes = (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(64 : stdgo.GoInt), (4096 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        if (!_internal.bytes_test.Bytes_test__isRaceBuilder._isRaceBuilder) {
            _sizes = (_sizes.__append__(...((new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(4194304 : stdgo.GoInt), (67108864 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) : Array<stdgo.GoInt>)));
        };
        var _maxSize = ((2 : stdgo.GoInt) * ((_sizes[((_sizes.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        if (((_internal.bytes_test.Bytes_test__bmbuf._bmbuf.length) < _maxSize : Bool)) {
            _internal.bytes_test.Bytes_test__bmbuf._bmbuf = (new stdgo.Slice<stdgo.GoUInt8>((_maxSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        for (__0 => _n in _sizes) {
            for (__1 => _off in (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt), (7 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
                var _buf1 = (_internal.bytes_test.Bytes_test__bmbuf._bmbuf.__slice__(_off, (_off + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                var _buf2Start = ((((_internal.bytes_test.Bytes_test__bmbuf._bmbuf.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) + _off : stdgo.GoInt);
                var _buf2 = (_internal.bytes_test.Bytes_test__bmbuf._bmbuf.__slice__(_buf2Start, (_buf2Start + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                _buf1[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
                _buf2[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
                _b.run(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_off))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    _b.setBytes((_n : stdgo.GoInt64));
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            var _eq = (stdgo._internal.bytes.Bytes_equal.equal(_buf1, _buf2) : Bool);
                            if (!_eq) {
                                _b.fatal(stdgo.Go.toInterface(("bad equal" : stdgo.GoString)));
                            };
                        });
                    };
                });
                _buf1[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                _buf2[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            };
        };
    }
