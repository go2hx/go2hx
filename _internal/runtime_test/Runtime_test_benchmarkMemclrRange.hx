package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function benchmarkMemclrRange(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        var _benchSizes = (new stdgo.Slice<_internal.runtime_test.Runtime_test_T_benchmarkMemclrRange___localname___RunData_9998.T_benchmarkMemclrRange___localname___RunData_9998>(4, 4, ...[(new _internal.runtime_test.Runtime_test_T_benchmarkMemclrRange___localname___RunData_9998.T_benchmarkMemclrRange___localname___RunData_9998((new stdgo.Slice<stdgo.GoInt>(64, 64, ...[
(1043 : stdgo.GoInt),
(1078 : stdgo.GoInt),
(1894 : stdgo.GoInt),
(1582 : stdgo.GoInt),
(1044 : stdgo.GoInt),
(1165 : stdgo.GoInt),
(1467 : stdgo.GoInt),
(1100 : stdgo.GoInt),
(1919 : stdgo.GoInt),
(1562 : stdgo.GoInt),
(1932 : stdgo.GoInt),
(1645 : stdgo.GoInt),
(1412 : stdgo.GoInt),
(1038 : stdgo.GoInt),
(1576 : stdgo.GoInt),
(1200 : stdgo.GoInt),
(1029 : stdgo.GoInt),
(1336 : stdgo.GoInt),
(1095 : stdgo.GoInt),
(1494 : stdgo.GoInt),
(1350 : stdgo.GoInt),
(1025 : stdgo.GoInt),
(1502 : stdgo.GoInt),
(1548 : stdgo.GoInt),
(1316 : stdgo.GoInt),
(1296 : stdgo.GoInt),
(1868 : stdgo.GoInt),
(1639 : stdgo.GoInt),
(1546 : stdgo.GoInt),
(1626 : stdgo.GoInt),
(1642 : stdgo.GoInt),
(1308 : stdgo.GoInt),
(1726 : stdgo.GoInt),
(1665 : stdgo.GoInt),
(1678 : stdgo.GoInt),
(1187 : stdgo.GoInt),
(1515 : stdgo.GoInt),
(1598 : stdgo.GoInt),
(1353 : stdgo.GoInt),
(1237 : stdgo.GoInt),
(1977 : stdgo.GoInt),
(1452 : stdgo.GoInt),
(2012 : stdgo.GoInt),
(1914 : stdgo.GoInt),
(1514 : stdgo.GoInt),
(1136 : stdgo.GoInt),
(1975 : stdgo.GoInt),
(1618 : stdgo.GoInt),
(1536 : stdgo.GoInt),
(1695 : stdgo.GoInt),
(1600 : stdgo.GoInt),
(1733 : stdgo.GoInt),
(1392 : stdgo.GoInt),
(1099 : stdgo.GoInt),
(1358 : stdgo.GoInt),
(1996 : stdgo.GoInt),
(1224 : stdgo.GoInt),
(1783 : stdgo.GoInt),
(1197 : stdgo.GoInt),
(1838 : stdgo.GoInt),
(1460 : stdgo.GoInt),
(1556 : stdgo.GoInt),
(1554 : stdgo.GoInt),
(2020 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) : _internal.runtime_test.Runtime_test_T_benchmarkMemclrRange___localname___RunData_9998.T_benchmarkMemclrRange___localname___RunData_9998), (new _internal.runtime_test.Runtime_test_T_benchmarkMemclrRange___localname___RunData_9998.T_benchmarkMemclrRange___localname___RunData_9998((new stdgo.Slice<stdgo.GoInt>(64, 64, ...[
(3964 : stdgo.GoInt),
(5139 : stdgo.GoInt),
(6573 : stdgo.GoInt),
(7775 : stdgo.GoInt),
(6553 : stdgo.GoInt),
(2413 : stdgo.GoInt),
(3466 : stdgo.GoInt),
(5394 : stdgo.GoInt),
(2469 : stdgo.GoInt),
(7336 : stdgo.GoInt),
(7091 : stdgo.GoInt),
(6745 : stdgo.GoInt),
(4028 : stdgo.GoInt),
(5643 : stdgo.GoInt),
(6164 : stdgo.GoInt),
(3475 : stdgo.GoInt),
(4138 : stdgo.GoInt),
(6908 : stdgo.GoInt),
(7559 : stdgo.GoInt),
(3335 : stdgo.GoInt),
(5660 : stdgo.GoInt),
(4122 : stdgo.GoInt),
(3945 : stdgo.GoInt),
(2082 : stdgo.GoInt),
(7564 : stdgo.GoInt),
(6584 : stdgo.GoInt),
(5111 : stdgo.GoInt),
(2288 : stdgo.GoInt),
(6789 : stdgo.GoInt),
(2797 : stdgo.GoInt),
(4928 : stdgo.GoInt),
(7986 : stdgo.GoInt),
(5163 : stdgo.GoInt),
(5447 : stdgo.GoInt),
(2999 : stdgo.GoInt),
(4968 : stdgo.GoInt),
(3174 : stdgo.GoInt),
(3202 : stdgo.GoInt),
(7908 : stdgo.GoInt),
(8137 : stdgo.GoInt),
(4735 : stdgo.GoInt),
(6161 : stdgo.GoInt),
(4646 : stdgo.GoInt),
(7592 : stdgo.GoInt),
(3083 : stdgo.GoInt),
(5329 : stdgo.GoInt),
(3687 : stdgo.GoInt),
(2754 : stdgo.GoInt),
(3599 : stdgo.GoInt),
(7231 : stdgo.GoInt),
(6455 : stdgo.GoInt),
(2549 : stdgo.GoInt),
(8063 : stdgo.GoInt),
(2189 : stdgo.GoInt),
(7121 : stdgo.GoInt),
(5048 : stdgo.GoInt),
(4277 : stdgo.GoInt),
(6626 : stdgo.GoInt),
(6306 : stdgo.GoInt),
(2815 : stdgo.GoInt),
(7473 : stdgo.GoInt),
(3963 : stdgo.GoInt),
(7549 : stdgo.GoInt),
(7255 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) : _internal.runtime_test.Runtime_test_T_benchmarkMemclrRange___localname___RunData_9998.T_benchmarkMemclrRange___localname___RunData_9998), (new _internal.runtime_test.Runtime_test_T_benchmarkMemclrRange___localname___RunData_9998.T_benchmarkMemclrRange___localname___RunData_9998((new stdgo.Slice<stdgo.GoInt>(32, 32, ...[
(16304 : stdgo.GoInt),
(15936 : stdgo.GoInt),
(15760 : stdgo.GoInt),
(4736 : stdgo.GoInt),
(9136 : stdgo.GoInt),
(11184 : stdgo.GoInt),
(10160 : stdgo.GoInt),
(5952 : stdgo.GoInt),
(14560 : stdgo.GoInt),
(15744 : stdgo.GoInt),
(6624 : stdgo.GoInt),
(5872 : stdgo.GoInt),
(13088 : stdgo.GoInt),
(14656 : stdgo.GoInt),
(14192 : stdgo.GoInt),
(10304 : stdgo.GoInt),
(4112 : stdgo.GoInt),
(10384 : stdgo.GoInt),
(9344 : stdgo.GoInt),
(4496 : stdgo.GoInt),
(11392 : stdgo.GoInt),
(7024 : stdgo.GoInt),
(5200 : stdgo.GoInt),
(10064 : stdgo.GoInt),
(14784 : stdgo.GoInt),
(5808 : stdgo.GoInt),
(13504 : stdgo.GoInt),
(10480 : stdgo.GoInt),
(8512 : stdgo.GoInt),
(4896 : stdgo.GoInt),
(13264 : stdgo.GoInt),
(5600 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) : _internal.runtime_test.Runtime_test_T_benchmarkMemclrRange___localname___RunData_9998.T_benchmarkMemclrRange___localname___RunData_9998), (new _internal.runtime_test.Runtime_test_T_benchmarkMemclrRange___localname___RunData_9998.T_benchmarkMemclrRange___localname___RunData_9998((new stdgo.Slice<stdgo.GoInt>(8, 8, ...[(164576 : stdgo.GoInt), (233136 : stdgo.GoInt), (220224 : stdgo.GoInt), (183280 : stdgo.GoInt), (214112 : stdgo.GoInt), (217248 : stdgo.GoInt), (228560 : stdgo.GoInt), (201728 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) : _internal.runtime_test.Runtime_test_T_benchmarkMemclrRange___localname___RunData_9998.T_benchmarkMemclrRange___localname___RunData_9998)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : _internal.runtime_test.Runtime_test_T_benchmarkMemclrRange___localname___RunData_9998.T_benchmarkMemclrRange___localname___RunData_9998)])) : stdgo.Slice<_internal.runtime_test.Runtime_test_T_benchmarkMemclrRange___localname___RunData_9998.T_benchmarkMemclrRange___localname___RunData_9998>);
        for (__6 => _t in _benchSizes) {
            var _total = (0 : stdgo.GoInt);
            var _minLen = (0 : stdgo.GoInt);
            var _maxLen = (0 : stdgo.GoInt);
            for (__7 => _clrLen in _t._data) {
                if ((_clrLen > _maxLen : Bool)) {
                    _maxLen = _clrLen;
                };
                if (((_clrLen < _minLen : Bool) || (_minLen == (0 : stdgo.GoInt)) : Bool)) {
                    _minLen = _clrLen;
                };
                _total = (_total + (_clrLen) : stdgo.GoInt);
            };
            var _buffer = (new stdgo.Slice<stdgo.GoUInt8>((_maxLen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var _text = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
            if ((_minLen >= (1048576 : stdgo.GoInt) : Bool)) {
                _text = stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface((_minLen >> (20i64 : stdgo.GoUInt64) : stdgo.GoInt)), stdgo.Go.toInterface(("M " : stdgo.GoString)), stdgo.Go.toInterface((((_maxLen + (1048575 : stdgo.GoInt) : stdgo.GoInt)) >> (20i64 : stdgo.GoUInt64) : stdgo.GoInt)), stdgo.Go.toInterface(("M" : stdgo.GoString)))?.__copy__();
            } else if ((_minLen >= (1024 : stdgo.GoInt) : Bool)) {
                _text = stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface((_minLen >> (10i64 : stdgo.GoUInt64) : stdgo.GoInt)), stdgo.Go.toInterface(("K " : stdgo.GoString)), stdgo.Go.toInterface((((_maxLen + (1023 : stdgo.GoInt) : stdgo.GoInt)) >> (10i64 : stdgo.GoUInt64) : stdgo.GoInt)), stdgo.Go.toInterface(("K" : stdgo.GoString)))?.__copy__();
            } else {
                _text = stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_minLen), stdgo.Go.toInterface((" " : stdgo.GoString)), stdgo.Go.toInterface(_maxLen))?.__copy__();
            };
            _b.run(_text?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                _b.setBytes((_total : stdgo.GoInt64));
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        for (__32 => _clrLen in _t._data) {
                            stdgo._internal.runtime.Runtime_memclrBytes.memclrBytes((_buffer.__slice__(0, _clrLen) : stdgo.Slice<stdgo.GoUInt8>));
                        };
                    });
                };
            });
        };
    }
