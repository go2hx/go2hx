package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function benchmarkBytesCompare(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {
            var _n = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_n <= (2048 : stdgo.GoInt) : Bool), _n = (_n << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                _b.run(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_n))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    var _x:stdgo.Slice<stdgo.GoUInt8> = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    var _y:stdgo.Slice<stdgo.GoUInt8> = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _n : Bool), _i++, {
                            _x[(_i : stdgo.GoInt)] = (97 : stdgo.GoUInt8);
                        });
                    };
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _n : Bool), _i++, {
                            _y[(_i : stdgo.GoInt)] = (97 : stdgo.GoUInt8);
                        });
                    };
                    _b.resetTimer();
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            stdgo._internal.bytes.Bytes_compare.compare(_x, _y);
                        });
                    };
                });
            });
        };
    }
