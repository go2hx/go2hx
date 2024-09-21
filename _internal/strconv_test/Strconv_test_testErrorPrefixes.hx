package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
function testErrorPrefixes(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(("INVALID" : stdgo.GoString)), __0:stdgo.GoInt = __tmp__._0, _errInt:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo._internal.strconv.Strconv_parseBool.parseBool(("INVALID" : stdgo.GoString)), __1:Bool = __tmp__._0, _errBool:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(("INVALID" : stdgo.GoString), (64 : stdgo.GoInt)), __2:stdgo.GoFloat64 = __tmp__._0, _errFloat:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(("INVALID" : stdgo.GoString), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), __3:stdgo.GoInt64 = __tmp__._0, _errInt64:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(("INVALID" : stdgo.GoString), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), __4:stdgo.GoUInt64 = __tmp__._0, _errUint64:stdgo.Error = __tmp__._1;
        var _vectors = (new stdgo.Slice<_internal.strconv_test.Strconv_test_T__struct_8.T__struct_8>(5, 5, ...[({ _err : _errInt, _want : ("Atoi" : stdgo.GoString) } : _internal.strconv_test.Strconv_test_T__struct_8.T__struct_8), ({ _err : _errBool, _want : ("ParseBool" : stdgo.GoString) } : _internal.strconv_test.Strconv_test_T__struct_8.T__struct_8), ({ _err : _errFloat, _want : ("ParseFloat" : stdgo.GoString) } : _internal.strconv_test.Strconv_test_T__struct_8.T__struct_8), ({ _err : _errInt64, _want : ("ParseInt" : stdgo.GoString) } : _internal.strconv_test.Strconv_test_T__struct_8.T__struct_8), ({ _err : _errUint64, _want : ("ParseUint" : stdgo.GoString) } : _internal.strconv_test.Strconv_test_T__struct_8.T__struct_8)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _err : (null : stdgo.Error), _want : ("" : stdgo.GoString) } : _internal.strconv_test.Strconv_test_T__struct_8.T__struct_8)])) : stdgo.Slice<_internal.strconv_test.Strconv_test_T__struct_8.T__struct_8>);
        for (__5 => _v in _vectors) {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_v._err) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>), _1 : false };
            }, _nerr = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                _t.errorf(("test %s, error was not a *NumError" : stdgo.GoString), stdgo.Go.toInterface(_v._want));
                continue;
            };
            {
                var _got = (_nerr.func?.__copy__() : stdgo.GoString);
                if (_got != (_v._want)) {
                    _t.errorf(("mismatching Func: got %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_v._want));
                };
            };
        };
    }
