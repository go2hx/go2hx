package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function benchmarkScanRecursiveIntReaderWrapper(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.stopTimer();
        var _ints = _internal.fmt_test.Fmt_test__makeInts._makeInts((800 : stdgo.GoInt));
        var _r:_internal.fmt_test.Fmt_test_RecursiveInt.RecursiveInt = ({} : _internal.fmt_test.Fmt_test_RecursiveInt.RecursiveInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _buf = ({ reader : stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader((_ints : stdgo.GoString)?.__copy__())) } : _internal.fmt_test.Fmt_test_T__struct_12.T__struct_12);
                _b.startTimer();
                stdgo._internal.fmt.Fmt_fscan.fscan(stdgo.Go.asInterface(_buf), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_r) : stdgo.Ref<_internal.fmt_test.Fmt_test_RecursiveInt.RecursiveInt>))));
                _b.stopTimer();
            });
        };
    }
