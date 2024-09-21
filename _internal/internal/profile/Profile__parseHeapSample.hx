package _internal.internal.profile;
function _parseHeapSample(_line:stdgo.GoString, _rate:stdgo.GoInt64, _sampling:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoInt64>; var _1 : stdgo.GoInt64; var _2 : stdgo.Slice<stdgo.GoUInt64>; var _3 : stdgo.Error; } {
        var _value = (null : stdgo.Slice<stdgo.GoInt64>), _blocksize = (0 : stdgo.GoInt64), _addrs = (null : stdgo.Slice<stdgo.GoUInt64>), _err = (null : stdgo.Error);
        var _sampleData = _internal.internal.profile.Profile__heapSampleRE._heapSampleRE.findStringSubmatch(_line?.__copy__());
        if ((_sampleData.length) != ((6 : stdgo.GoInt))) {
            return { _0 : _value, _1 : _blocksize, _2 : _addrs, _3 : stdgo._internal.fmt.Fmt_errorf.errorf(("unexpected number of sample values: got %d, want 6" : stdgo.GoString), stdgo.Go.toInterface((_sampleData.length))) };
        };
        var _valueIndex = (1 : stdgo.GoInt);
        if (_internal.internal.profile.Profile_legacyHeapAllocated.legacyHeapAllocated) {
            _valueIndex = (3 : stdgo.GoInt);
        };
        var __0:stdgo.GoInt64 = (0 : stdgo.GoInt64), __1:stdgo.GoInt64 = (0 : stdgo.GoInt64);
var _v2 = __1, _v1 = __0;
        {
            {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_sampleData[(_valueIndex : stdgo.GoInt)]?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt));
                _v1 = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _value, _1 : _blocksize, _2 : _addrs, _3 : stdgo._internal.fmt.Fmt_errorf.errorf(("malformed sample: %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_err)) };
            };
        };
        {
            {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_sampleData[(_valueIndex + (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt));
                _v2 = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _value, _1 : _blocksize, _2 : _addrs, _3 : stdgo._internal.fmt.Fmt_errorf.errorf(("malformed sample: %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_err)) };
            };
        };
        if (_v1 == ((0i64 : stdgo.GoInt64))) {
            if (_v2 != ((0i64 : stdgo.GoInt64))) {
                return { _0 : _value, _1 : _blocksize, _2 : _addrs, _3 : stdgo._internal.fmt.Fmt_errorf.errorf(("allocation count was 0 but allocation bytes was %d" : stdgo.GoString), stdgo.Go.toInterface(_v2)) };
            };
        } else {
            _blocksize = (_v2 / _v1 : stdgo.GoInt64);
            if (_sampling == (("v2" : stdgo.GoString))) {
                {
                    var __tmp__ = _internal.internal.profile.Profile__scaleHeapSample._scaleHeapSample(_v1, _v2, _rate);
                    _v1 = __tmp__._0;
                    _v2 = __tmp__._1;
                };
            };
        };
        _value = (new stdgo.Slice<stdgo.GoInt64>(2, 2, ...[_v1, _v2]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
        _addrs = _internal.internal.profile.Profile__parseHexAddresses._parseHexAddresses(_sampleData[(5 : stdgo.GoInt)]?.__copy__());
        return { _0 : _value, _1 : _blocksize, _2 : _addrs, _3 : (null : stdgo.Error) };
    }
