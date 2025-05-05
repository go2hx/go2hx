package stdgo._internal.regexp;
function testUnmarshalText(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _unmarshaled = (stdgo.Go.setRef(({} : stdgo._internal.regexp.Regexp_regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L953"
        for (_i => _ in stdgo._internal.regexp.Regexp__goodre._goodRe) {
            var _re = stdgo._internal.regexp.Regexp__compiletest._compileTest(_t, stdgo._internal.regexp.Regexp__goodre._goodRe[(_i : stdgo.GoInt)]?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
            var __tmp__ = _re.marshalText(), _marshaled:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L956"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L957"
                _t.errorf(("regexp %#q failed to marshal: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_re)), stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L958"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L960"
            {
                var _err = (_unmarshaled.unmarshalText(_marshaled) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L961"
                    _t.errorf(("regexp %#q failed to unmarshal: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_re)), stdgo.Go.toInterface(_err));
                    //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L962"
                    continue;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L964"
            if ((_unmarshaled.string() : stdgo.GoString) != (stdgo._internal.regexp.Regexp__goodre._goodRe[(_i : stdgo.GoInt)])) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L965"
                _t.errorf(("UnmarshalText returned unexpected value: %s" : stdgo.GoString), stdgo.Go.toInterface((_unmarshaled.string() : stdgo.GoString)));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L968"
        _t.run(("invalid pattern" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var _re = (stdgo.Go.setRef(({} : stdgo._internal.regexp.Regexp_regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
            var _err = (_re.unmarshalText(((("\\" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L971"
            if (_err == null) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L972"
                _t.error(stdgo.Go.toInterface(("unexpected success" : stdgo.GoString)));
            };
        });
    }
