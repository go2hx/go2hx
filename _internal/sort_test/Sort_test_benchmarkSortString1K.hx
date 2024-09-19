package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function benchmarkSortString1K(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.stopTimer();
        var _unsorted = (new stdgo.Slice<stdgo.GoString>((1024 : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_i => _ in _unsorted) {
            _unsorted[(_i : stdgo.GoInt)] = stdgo._internal.strconv.Strconv_itoa.itoa((_i ^ (716 : stdgo.GoInt) : stdgo.GoInt))?.__copy__();
        };
        var _data = (new stdgo.Slice<stdgo.GoString>((_unsorted.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo.Go.copySlice(_data, _unsorted);
                _b.startTimer();
                stdgo._internal.sort.Sort_strings.strings(_data);
                _b.stopTimer();
            });
        };
    }
