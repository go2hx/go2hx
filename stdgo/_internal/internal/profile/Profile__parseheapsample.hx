package stdgo._internal.internal.profile;
function _parseHeapSample(_line:stdgo.GoString, _rate:stdgo.GoInt64, _sampling:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoInt64>; var _1 : stdgo.GoInt64; var _2 : stdgo.Slice<stdgo.GoUInt64>; var _3 : stdgo.Error; } {
        var _value = (null : stdgo.Slice<stdgo.GoInt64>), _blocksize = (0 : stdgo.GoInt64), _addrs = (null : stdgo.Slice<stdgo.GoUInt64>), _err = (null : stdgo.Error);
        var _sampleData = stdgo._internal.internal.profile.Profile__heapsamplere._heapSampleRE.findStringSubmatch(_line?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L592"
        if ((_sampleData.length) != ((6 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L593"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoInt64>; var _1 : stdgo.GoInt64; var _2 : stdgo.Slice<stdgo.GoUInt64>; var _3 : stdgo.Error; } = { _0 : _value, _1 : _blocksize, _2 : _addrs, _3 : stdgo._internal.fmt.Fmt_errorf.errorf(("unexpected number of sample values: got %d, want 6" : stdgo.GoString), stdgo.Go.toInterface((_sampleData.length))) };
                _value = __tmp__._0;
                _blocksize = __tmp__._1;
                _addrs = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        var _valueIndex = (1 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L600"
        if (stdgo._internal.internal.profile.Profile_legacyheapallocated.legacyHeapAllocated) {
            _valueIndex = (3 : stdgo.GoInt);
        };
        var _v1:stdgo.GoInt64 = (0 : stdgo.GoInt64), _v2:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L605"
        {
            {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_sampleData[(_valueIndex : stdgo.GoInt)]?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt));
                _v1 = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L606"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoInt64>; var _1 : stdgo.GoInt64; var _2 : stdgo.Slice<stdgo.GoUInt64>; var _3 : stdgo.Error; } = { _0 : _value, _1 : _blocksize, _2 : _addrs, _3 : stdgo._internal.fmt.Fmt_errorf.errorf(("malformed sample: %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_err)) };
                    _value = __tmp__._0;
                    _blocksize = __tmp__._1;
                    _addrs = __tmp__._2;
                    _err = __tmp__._3;
                    __tmp__;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L608"
        {
            {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_sampleData[(_valueIndex + (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt));
                _v2 = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L609"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoInt64>; var _1 : stdgo.GoInt64; var _2 : stdgo.Slice<stdgo.GoUInt64>; var _3 : stdgo.Error; } = { _0 : _value, _1 : _blocksize, _2 : _addrs, _3 : stdgo._internal.fmt.Fmt_errorf.errorf(("malformed sample: %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_err)) };
                    _value = __tmp__._0;
                    _blocksize = __tmp__._1;
                    _addrs = __tmp__._2;
                    _err = __tmp__._3;
                    __tmp__;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L612"
        if (_v1 == ((0i64 : stdgo.GoInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L613"
            if (_v2 != ((0i64 : stdgo.GoInt64))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L614"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoInt64>; var _1 : stdgo.GoInt64; var _2 : stdgo.Slice<stdgo.GoUInt64>; var _3 : stdgo.Error; } = { _0 : _value, _1 : _blocksize, _2 : _addrs, _3 : stdgo._internal.fmt.Fmt_errorf.errorf(("allocation count was 0 but allocation bytes was %d" : stdgo.GoString), stdgo.Go.toInterface(_v2)) };
                    _value = __tmp__._0;
                    _blocksize = __tmp__._1;
                    _addrs = __tmp__._2;
                    _err = __tmp__._3;
                    __tmp__;
                };
            };
        } else {
            _blocksize = (_v2 / _v1 : stdgo.GoInt64);
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L618"
            if (_sampling == (("v2" : stdgo.GoString))) {
                {
                    var __tmp__ = stdgo._internal.internal.profile.Profile__scaleheapsample._scaleHeapSample(_v1, _v2, _rate);
                    _v1 = @:tmpset0 __tmp__._0;
                    _v2 = @:tmpset0 __tmp__._1;
                };
            };
        };
        _value = (new stdgo.Slice<stdgo.GoInt64>(2, 2, ...[_v1, _v2]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
        _addrs = stdgo._internal.internal.profile.Profile__parsehexaddresses._parseHexAddresses(_sampleData[(5 : stdgo.GoInt)]?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L626"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoInt64>; var _1 : stdgo.GoInt64; var _2 : stdgo.Slice<stdgo.GoUInt64>; var _3 : stdgo.Error; } = { _0 : _value, _1 : _blocksize, _2 : _addrs, _3 : (null : stdgo.Error) };
            _value = __tmp__._0;
            _blocksize = __tmp__._1;
            _addrs = __tmp__._2;
            _err = __tmp__._3;
            __tmp__;
        };
    }
