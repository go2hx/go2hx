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
function _parseTraceback(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _tb:stdgo.GoString):stdgo.Slice<stdgo.Ref<_internal.runtime_test.Runtime_test_T_traceback.T_traceback>> {
        var _off = (0 : stdgo.GoInt);
        var _lineNo = (0 : stdgo.GoInt);
        var _fatal = function(_f:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
            var _msg = (stdgo._internal.fmt.Fmt_sprintf.sprintf(_f?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString);
            _t.fatalf(("%s (line %d):\n%s" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_lineNo), stdgo.Go.toInterface(_tb));
        };
        var _parseFrame = function(_funcName:stdgo.GoString, _args:stdgo.GoString):stdgo.Ref<_internal.runtime_test.Runtime_test_T_tbFrame.T_tbFrame> {
            if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_tb?.__copy__(), ("\t" : stdgo.GoString))) {
                _fatal(("missing source line" : stdgo.GoString));
            };
            {
                var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_tb?.__copy__(), ("\n" : stdgo.GoString));
                _tb = __tmp__._1?.__copy__();
            };
            _lineNo++;
            var _inlined = (_args == (("..." : stdgo.GoString)) : Bool);
            return (stdgo.Go.setRef(({ _funcName : _funcName?.__copy__(), _args : _args?.__copy__(), _inlined : _inlined, _off : _off } : _internal.runtime_test.Runtime_test_T_tbFrame.T_tbFrame)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_tbFrame.T_tbFrame>);
        };
        var _elidedRe:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("^\\.\\.\\.([0-9]+) frames elided\\.\\.\\.$" : stdgo.GoString));
        var _tbs:stdgo.Slice<stdgo.Ref<_internal.runtime_test.Runtime_test_T_traceback.T_traceback>> = (null : stdgo.Slice<stdgo.Ref<_internal.runtime_test.Runtime_test_T_traceback.T_traceback>>);
        var _cur:stdgo.Ref<_internal.runtime_test.Runtime_test_T_traceback.T_traceback> = (null : stdgo.Ref<_internal.runtime_test.Runtime_test_T_traceback.T_traceback>);
        var _tbLen = (_tb.length : stdgo.GoInt);
        while (((_tb.length) > (0 : stdgo.GoInt) : Bool)) {
            var _line:stdgo.GoString = ("" : stdgo.GoString);
            _off = (_tbLen - (_tb.length) : stdgo.GoInt);
            {
                var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_tb?.__copy__(), ("\n" : stdgo.GoString));
                _line = __tmp__._0?.__copy__();
                _tb = __tmp__._1?.__copy__();
            };
            _lineNo++;
            if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_line?.__copy__(), ("goroutine " : stdgo.GoString))) {
                _cur = (stdgo.Go.setRef((new _internal.runtime_test.Runtime_test_T_traceback.T_traceback() : _internal.runtime_test.Runtime_test_T_traceback.T_traceback)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_traceback.T_traceback>);
                _tbs = (_tbs.__append__(_cur));
            } else if (_line == (stdgo.Go.str())) {
                _cur = null;
            } else if (_line[(0 : stdgo.GoInt)] == ((9 : stdgo.GoUInt8))) {
                _fatal(("unexpected indent" : stdgo.GoString));
            } else if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_line?.__copy__(), ("created by " : stdgo.GoString))) {
                var _funcName = ((_line.__slice__((("created by " : stdgo.GoString).length)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                _cur._createdBy = _parseFrame(_funcName?.__copy__(), stdgo.Go.str()?.__copy__());
            } else if (stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_line?.__copy__(), (")" : stdgo.GoString))) {
                _line = (_line.__slice__(0, ((_line.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_line?.__copy__(), ("(" : stdgo.GoString)), _funcName:stdgo.GoString = __tmp__._0, _args:stdgo.GoString = __tmp__._1, _found:Bool = __tmp__._2;
                if (!_found) {
                    _fatal(("missing (" : stdgo.GoString));
                };
                var _frame = _parseFrame(_funcName?.__copy__(), _args?.__copy__());
                _cur._frames = (_cur._frames.__append__(_frame));
            } else if (_elidedRe.matchString(_line?.__copy__())) {
                var _nStr = _elidedRe.findStringSubmatch(_line?.__copy__());
                var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_nStr[(1 : stdgo.GoInt)]?.__copy__()), _n:stdgo.GoInt = __tmp__._0, __6:stdgo.Error = __tmp__._1;
                var _frame = (stdgo.Go.setRef(({ _elided : _n } : _internal.runtime_test.Runtime_test_T_tbFrame.T_tbFrame)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_tbFrame.T_tbFrame>);
                _cur._frames = (_cur._frames.__append__(_frame));
            };
        };
        return _tbs;
    }
