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
function testBigItems(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _key:stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(256, 256, ...[for (i in 0 ... 256) ("" : stdgo.GoString)]);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (256 : stdgo.GoInt) : Bool), _i++, {
                _key[(_i : stdgo.GoInt)] = ("foo" : stdgo.GoString);
            });
        };
        var _m = ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo.GoArray<stdgo.GoString>, stdgo.GoArray<stdgo.GoString>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, 256));
            x.__defaultValue__ = () -> new stdgo.GoArray<stdgo.GoString>(256, 256, ...[for (i in 0 ... 256) ("" : stdgo.GoString)]);
            {};
            cast x;
        } : stdgo.GoMap<stdgo.GoArray<stdgo.GoString>, stdgo.GoArray<stdgo.GoString>>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                _key[(37 : stdgo.GoInt)] = stdgo._internal.fmt.Fmt_sprintf.sprintf(("string%02d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__();
                _m[_key] = _key?.__copy__();
            });
        };
        var _keys:stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(100, 100, ...[for (i in 0 ... 100) ("" : stdgo.GoString)]);
        var _values:stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(100, 100, ...[for (i in 0 ... 100) ("" : stdgo.GoString)]);
        var _i = (0 : stdgo.GoInt);
        for (_k => _v in _m) {
            _keys[(_i : stdgo.GoInt)] = _k[(37 : stdgo.GoInt)]?.__copy__();
            _values[(_i : stdgo.GoInt)] = _v[(37 : stdgo.GoInt)]?.__copy__();
            _i++;
        };
        stdgo._internal.sort.Sort_strings.strings((_keys.__slice__(0) : stdgo.Slice<stdgo.GoString>));
        stdgo._internal.sort.Sort_strings.strings((_values.__slice__(0) : stdgo.Slice<stdgo.GoString>));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                if (_keys[(_i : stdgo.GoInt)] != (stdgo._internal.fmt.Fmt_sprintf.sprintf(("string%02d" : stdgo.GoString), stdgo.Go.toInterface(_i)))) {
                    _t.errorf(("#%d: missing key: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_keys[(_i : stdgo.GoInt)]));
                };
                if (_values[(_i : stdgo.GoInt)] != (stdgo._internal.fmt.Fmt_sprintf.sprintf(("string%02d" : stdgo.GoString), stdgo.Go.toInterface(_i)))) {
                    _t.errorf(("#%d: missing value: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_values[(_i : stdgo.GoInt)]));
                };
            });
        };
    }
