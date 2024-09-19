package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function benchmarkSortInt1K_Sorted(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.stopTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _data = (new stdgo.Slice<stdgo.GoInt>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (_data.length) : Bool), _i++, {
                        _data[(_i : stdgo.GoInt)] = _i;
                    });
                };
                _b.startTimer();
                stdgo._internal.sort.Sort_ints.ints(_data);
                _b.stopTimer();
            });
        };
    }
