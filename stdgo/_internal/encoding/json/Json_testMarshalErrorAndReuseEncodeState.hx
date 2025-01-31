package stdgo._internal.encoding.json;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.Math;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.os.Os;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.math.big.Big;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.testing.Testing;
import stdgo._internal.log.Log;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.net.Net;
import stdgo._internal.net.http.httptest.Httptest;
import stdgo._internal.net.http.Http;
function testMarshalErrorAndReuseEncodeState(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _percent = (stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent((-1 : stdgo.GoInt)) : stdgo.GoInt);
            {
                var _a0 = _percent;
                final __f__ = stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            {};
            var _dummy = ({ name : ("Dummy" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460);
            _dummy.next = (stdgo.Go.setRef(_dummy) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460>);
            {
                var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_dummy))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    @:check2r _t.errorf(("Marshal(dummy) = %#q; want error" : stdgo.GoString), stdgo.Go.toInterface(_b));
                };
            };
            {};
            var _data = ({ a : ("a" : stdgo.GoString), i : (1 : stdgo.GoInt) } : stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Data_15661.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661);
            var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_data))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.errorf(("Marshal(%v) = %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_data)), stdgo.Go.toInterface(_err));
            };
            var _data2:stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Data_15661.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661 = ({} : stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Data_15661.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661);
            {
                var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_b, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_data2) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Data_15661.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661>)))) : stdgo.Error);
                if (_err != null) {
                    @:check2r _t.errorf(("Unmarshal(%v) = %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_data2)), stdgo.Go.toInterface(_err));
                };
            };
            if (stdgo.Go.toInterface(_data2) != stdgo.Go.toInterface(_data)) {
                @:check2r _t.errorf(("expect: %v, but get: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_data)), stdgo.Go.toInterface(stdgo.Go.asInterface(_data2)));
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
