package stdgo._internal.internal.profile;
function _parseContentionSample(_line:stdgo.GoString, _period:stdgo.GoInt64, _cpuHz:stdgo.GoInt64):{ var _0 : stdgo.Slice<stdgo.GoInt64>; var _1 : stdgo.Slice<stdgo.GoUInt64>; var _2 : stdgo.Error; } {
        var _value = (null : stdgo.Slice<stdgo.GoInt64>), _addrs = (null : stdgo.Slice<stdgo.GoUInt64>), _err = (null : stdgo.Error);
        var _sampleData = stdgo._internal.internal.profile.Profile__contentionsamplere._contentionSampleRE.findStringSubmatch(_line?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L837"
        if (_sampleData == null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L838"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoInt64>; var _1 : stdgo.Slice<stdgo.GoUInt64>; var _2 : stdgo.Error; } = { _0 : _value, _1 : _addrs, _2 : stdgo._internal.internal.profile.Profile__errunrecognized._errUnrecognized };
                _value = __tmp__._0;
                _addrs = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_sampleData[(1 : stdgo.GoInt)]?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _v1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L842"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L843"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoInt64>; var _1 : stdgo.Slice<stdgo.GoUInt64>; var _2 : stdgo.Error; } = { _0 : _value, _1 : _addrs, _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("malformed sample: %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_err)) };
                _value = __tmp__._0;
                _addrs = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_sampleData[(2 : stdgo.GoInt)]?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _v2:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L846"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L847"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoInt64>; var _1 : stdgo.Slice<stdgo.GoUInt64>; var _2 : stdgo.Error; } = { _0 : _value, _1 : _addrs, _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("malformed sample: %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_err)) };
                _value = __tmp__._0;
                _addrs = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L853"
        if ((_period > (0i64 : stdgo.GoInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L854"
            if ((_cpuHz > (0i64 : stdgo.GoInt64) : Bool)) {
                var _cpuGHz = ((_cpuHz : stdgo.GoFloat64) / (1e+09 : stdgo.GoFloat64) : stdgo.GoFloat64);
                _v1 = ((((_v1 : stdgo.GoFloat64) * (_period : stdgo.GoFloat64) : stdgo.GoFloat64) / _cpuGHz : stdgo.GoFloat64) : stdgo.GoInt64);
            };
            _v2 = (_v2 * _period : stdgo.GoInt64);
        };
        _value = (new stdgo.Slice<stdgo.GoInt64>(2, 2, ...[_v2, _v1]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
        _addrs = stdgo._internal.internal.profile.Profile__parsehexaddresses._parseHexAddresses(_sampleData[(3 : stdgo.GoInt)]?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L864"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoInt64>; var _1 : stdgo.Slice<stdgo.GoUInt64>; var _2 : stdgo.Error; } = { _0 : _value, _1 : _addrs, _2 : (null : stdgo.Error) };
            _value = __tmp__._0;
            _addrs = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
