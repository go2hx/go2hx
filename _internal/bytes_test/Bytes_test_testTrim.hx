package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testTrim(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _toFn = (function(_name:stdgo.GoString):{ var _0 : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoString) -> stdgo.Slice<stdgo.GoUInt8>; var _1 : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Slice<stdgo.GoUInt8>; } {
            {
                final __value__ = _name;
                if (__value__ == (("Trim" : stdgo.GoString))) {
                    return { _0 : stdgo._internal.bytes.Bytes_trim.trim, _1 : null };
                } else if (__value__ == (("TrimLeft" : stdgo.GoString))) {
                    return { _0 : stdgo._internal.bytes.Bytes_trimLeft.trimLeft, _1 : null };
                } else if (__value__ == (("TrimRight" : stdgo.GoString))) {
                    return { _0 : stdgo._internal.bytes.Bytes_trimRight.trimRight, _1 : null };
                } else if (__value__ == (("TrimPrefix" : stdgo.GoString))) {
                    return { _0 : null, _1 : stdgo._internal.bytes.Bytes_trimPrefix.trimPrefix };
                } else if (__value__ == (("TrimSuffix" : stdgo.GoString))) {
                    return { _0 : null, _1 : stdgo._internal.bytes.Bytes_trimSuffix.trimSuffix };
                } else {
                    _t.errorf(("Undefined trim function %s" : stdgo.GoString), stdgo.Go.toInterface(_name));
                    return { _0 : null, _1 : null };
                };
            };
        } : stdgo.GoString -> { var _0 : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoString) -> stdgo.Slice<stdgo.GoUInt8>; var _1 : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Slice<stdgo.GoUInt8>; });
        for (__0 => _tc in _internal.bytes_test.Bytes_test__trimTests._trimTests) {
            var _name = (_tc._f?.__copy__() : stdgo.GoString);
            var __tmp__ = _toFn(_name?.__copy__()), _f:(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoString) -> stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _fb:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Slice<stdgo.GoUInt8> = __tmp__._1;
            if (((_f == null) && (_fb == null) : Bool)) {
                continue;
            };
            var _actual:stdgo.GoString = ("" : stdgo.GoString);
            if (_f != null) {
                _actual = (_f((_tc._in : stdgo.Slice<stdgo.GoUInt8>), _tc._arg?.__copy__()) : stdgo.GoString)?.__copy__();
            } else {
                _actual = (_fb((_tc._in : stdgo.Slice<stdgo.GoUInt8>), (_tc._arg : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoString)?.__copy__();
            };
            if (_actual != (_tc._out)) {
                _t.errorf(("%s(%q, %q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._arg), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._out));
            };
        };
        for (__1 => _tc in _internal.bytes_test.Bytes_test__trimNilTests._trimNilTests) {
            var _name = (_tc._f?.__copy__() : stdgo.GoString);
            var __tmp__ = _toFn(_name?.__copy__()), _f:(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoString) -> stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _fb:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Slice<stdgo.GoUInt8> = __tmp__._1;
            if (((_f == null) && (_fb == null) : Bool)) {
                continue;
            };
            var _actual:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            if (_f != null) {
                _actual = _f(_tc._in, _tc._arg?.__copy__());
            } else {
                _actual = _fb(_tc._in, (_tc._arg : stdgo.Slice<stdgo.GoUInt8>));
            };
            var _report = function(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
                if (_s == null) {
                    return ("nil" : stdgo.GoString);
                } else {
                    return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%q" : stdgo.GoString), stdgo.Go.toInterface(_s))?.__copy__();
                };
            };
            if ((_actual.length) != ((0 : stdgo.GoInt))) {
                _t.errorf(("%s(%s, %q) returned non-empty value" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_report(_tc._in)), stdgo.Go.toInterface(_tc._arg));
            } else {
                var _actualNil = (_actual == null : Bool);
                var _outNil = (_tc._out == null : Bool);
                if (_actualNil != (_outNil)) {
                    _t.errorf(("%s(%s, %q) got nil %t; want nil %t" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_report(_tc._in)), stdgo.Go.toInterface(_tc._arg), stdgo.Go.toInterface(_actualNil), stdgo.Go.toInterface(_outNil));
                };
            };
        };
    }
