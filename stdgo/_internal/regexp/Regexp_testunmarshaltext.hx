package stdgo._internal.regexp;
function testUnmarshalText(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _unmarshaled = (stdgo.Go.setRef(({} : stdgo._internal.regexp.Regexp_regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        for (_i => _ in stdgo._internal.regexp.Regexp__goodre._goodRe) {
            var _re = stdgo._internal.regexp.Regexp__compiletest._compileTest(_t, stdgo._internal.regexp.Regexp__goodre._goodRe[(_i : stdgo.GoInt)]?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
            var __tmp__ = @:check2r _re.marshalText(), _marshaled:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.errorf(("regexp %#q failed to marshal: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_re)), stdgo.Go.toInterface(_err));
                continue;
            };
            {
                var _err = (@:check2r _unmarshaled.unmarshalText(_marshaled) : stdgo.Error);
                if (_err != null) {
                    @:check2r _t.errorf(("regexp %#q failed to unmarshal: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_re)), stdgo.Go.toInterface(_err));
                    continue;
                };
            };
            if ((@:check2r _unmarshaled.string() : stdgo.GoString) != (stdgo._internal.regexp.Regexp__goodre._goodRe[(_i : stdgo.GoInt)])) {
                @:check2r _t.errorf(("UnmarshalText returned unexpected value: %s" : stdgo.GoString), stdgo.Go.toInterface((@:check2r _unmarshaled.string() : stdgo.GoString)));
            };
        };
        @:check2r _t.run(("invalid pattern" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var _re = (stdgo.Go.setRef(({} : stdgo._internal.regexp.Regexp_regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
            var _err = (@:check2r _re.unmarshalText(((("\\" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
            if (_err == null) {
                @:check2r _t.error(stdgo.Go.toInterface(("unexpected success" : stdgo.GoString)));
            };
        });
    }
