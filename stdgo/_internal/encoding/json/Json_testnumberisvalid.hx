package stdgo._internal.encoding.json;
function testNumberIsValid(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _jsonNumberRegexp = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("^-?(?:0|[1-9]\\d*)(?:\\.\\d+)?(?:[eE][+-]?\\d+)?$" : stdgo.GoString));
        var _validTests = (new stdgo.Slice<stdgo.GoString>(46, 46, ...[
("0" : stdgo.GoString),
("-0" : stdgo.GoString),
("1" : stdgo.GoString),
("-1" : stdgo.GoString),
("0.1" : stdgo.GoString),
("-0.1" : stdgo.GoString),
("1234" : stdgo.GoString),
("-1234" : stdgo.GoString),
("12.34" : stdgo.GoString),
("-12.34" : stdgo.GoString),
("12E0" : stdgo.GoString),
("12E1" : stdgo.GoString),
("12e34" : stdgo.GoString),
("12E-0" : stdgo.GoString),
("12e+1" : stdgo.GoString),
("12e-34" : stdgo.GoString),
("-12E0" : stdgo.GoString),
("-12E1" : stdgo.GoString),
("-12e34" : stdgo.GoString),
("-12E-0" : stdgo.GoString),
("-12e+1" : stdgo.GoString),
("-12e-34" : stdgo.GoString),
("1.2E0" : stdgo.GoString),
("1.2E1" : stdgo.GoString),
("1.2e34" : stdgo.GoString),
("1.2E-0" : stdgo.GoString),
("1.2e+1" : stdgo.GoString),
("1.2e-34" : stdgo.GoString),
("-1.2E0" : stdgo.GoString),
("-1.2E1" : stdgo.GoString),
("-1.2e34" : stdgo.GoString),
("-1.2E-0" : stdgo.GoString),
("-1.2e+1" : stdgo.GoString),
("-1.2e-34" : stdgo.GoString),
("0E0" : stdgo.GoString),
("0E1" : stdgo.GoString),
("0e34" : stdgo.GoString),
("0E-0" : stdgo.GoString),
("0e+1" : stdgo.GoString),
("0e-34" : stdgo.GoString),
("-0E0" : stdgo.GoString),
("-0E1" : stdgo.GoString),
("-0e34" : stdgo.GoString),
("-0E-0" : stdgo.GoString),
("-0e+1" : stdgo.GoString),
("-0e-34" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/number_test.go#L65"
        for (__4 => _test in _validTests) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/number_test.go#L66"
            if (!stdgo._internal.encoding.json.Json__isvalidnumber._isValidNumber(_test?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/number_test.go#L67"
                _t.errorf(("%s should be valid" : stdgo.GoString), stdgo.Go.toInterface(_test));
            };
            var _f:stdgo.GoFloat64 = (0 : stdgo.GoFloat64), _f__pointer__ = stdgo.Go.pointer(_f);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/number_test.go#L71"
            {
                var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal((_test : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface(_f__pointer__)) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/number_test.go#L72"
                    _t.errorf(("%s should be valid but Unmarshal failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_err));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/number_test.go#L75"
            if (!_jsonNumberRegexp.matchString(_test?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/number_test.go#L76"
                _t.errorf(("%s should be valid but regexp does not match" : stdgo.GoString), stdgo.Go.toInterface(_test));
            };
        };
        var _invalidTests = (new stdgo.Slice<stdgo.GoString>(21, 21, ...[
(stdgo.Go.str() : stdgo.GoString)?.__copy__(),
("invalid" : stdgo.GoString),
("1.0.1" : stdgo.GoString),
("1..1" : stdgo.GoString),
("-1-2" : stdgo.GoString),
("012a42" : stdgo.GoString),
("01.2" : stdgo.GoString),
("012" : stdgo.GoString),
("12E12.12" : stdgo.GoString),
("1e2e3" : stdgo.GoString),
("1e+-2" : stdgo.GoString),
("1e--23" : stdgo.GoString),
("1e" : stdgo.GoString),
("e1" : stdgo.GoString),
("1e+" : stdgo.GoString),
("1ea" : stdgo.GoString),
("1a" : stdgo.GoString),
("1.a" : stdgo.GoString),
("1." : stdgo.GoString),
("01" : stdgo.GoString),
("1.e1" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/number_test.go#L104"
        for (__5 => _test in _invalidTests) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/number_test.go#L105"
            if (stdgo._internal.encoding.json.Json__isvalidnumber._isValidNumber(_test?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/number_test.go#L106"
                _t.errorf(("%s should be invalid" : stdgo.GoString), stdgo.Go.toInterface(_test));
            };
            var _f:stdgo.GoFloat64 = (0 : stdgo.GoFloat64), _f__pointer__ = stdgo.Go.pointer(_f);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/number_test.go#L110"
            {
                var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal((_test : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface(_f__pointer__)) : stdgo.Error);
                if (_err == null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/number_test.go#L111"
                    _t.errorf(("%s should be invalid but unmarshal wrote %v" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_f));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/number_test.go#L114"
            if (_jsonNumberRegexp.matchString(_test?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/number_test.go#L115"
                _t.errorf(("%s should be invalid but matches regexp" : stdgo.GoString), stdgo.Go.toInterface(_test));
            };
        };
    }
