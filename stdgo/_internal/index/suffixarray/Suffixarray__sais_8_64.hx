package stdgo._internal.index.suffixarray;
function _sais_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _textMax:stdgo.GoInt, _sa:stdgo.Slice<stdgo.GoInt64>, _tmp:stdgo.Slice<stdgo.GoInt64>):Void {
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L17"
        if (((_sa.length != (_text.length)) || ((_tmp.length) < (_textMax : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L18"
            throw stdgo.Go.toInterface(("suffixarray: misuse of sais_8_64" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L22"
        if ((_text.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L23"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L25"
        if ((_text.length) == ((1 : stdgo.GoInt))) {
            _sa[(0 : stdgo.GoInt)] = (0i64 : stdgo.GoInt64);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L27"
            return;
        };
        var _freq:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>), _bucket:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L36"
        if (((_tmp.length) >= ((2 : stdgo.GoInt) * _textMax : stdgo.GoInt) : Bool)) {
            {
                final __tmp__0 = (_tmp.__slice__(0, _textMax) : stdgo.Slice<stdgo.GoInt64>);
                final __tmp__1 = (_tmp.__slice__(_textMax, ((2 : stdgo.GoInt) * _textMax : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>);
                _freq = @:binopAssign __tmp__0;
                _bucket = @:binopAssign __tmp__1;
            };
            _freq[(0 : stdgo.GoInt)] = (-1i64 : stdgo.GoInt64);
        } else {
            {
                final __tmp__0 = (null : stdgo.Slice<stdgo.GoInt64>);
                final __tmp__1 = (_tmp.__slice__(0, _textMax) : stdgo.Slice<stdgo.GoInt64>);
                _freq = @:binopAssign __tmp__0;
                _bucket = @:binopAssign __tmp__1;
            };
        };
        var _numLMS = (stdgo._internal.index.suffixarray.Suffixarray__placelms_8_64._placeLMS_8_64(_text, _sa, _freq, _bucket) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L48"
        if ((_numLMS <= (1 : stdgo.GoInt) : Bool)) {} else {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L51"
            stdgo._internal.index.suffixarray.Suffixarray__inducesubl_8_64._induceSubL_8_64(_text, _sa, _freq, _bucket);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L52"
            stdgo._internal.index.suffixarray.Suffixarray__inducesubs_8_64._induceSubS_8_64(_text, _sa, _freq, _bucket);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L53"
            stdgo._internal.index.suffixarray.Suffixarray__length_8_64._length_8_64(_text, _sa, _numLMS);
            var _maxID = (stdgo._internal.index.suffixarray.Suffixarray__assignid_8_64._assignID_8_64(_text, _sa, _numLMS) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L55"
            if ((_maxID < _numLMS : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L56"
                stdgo._internal.index.suffixarray.Suffixarray__map_64._map_64(_sa, _numLMS);
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L57"
                stdgo._internal.index.suffixarray.Suffixarray__recurse_64._recurse_64(_sa, _tmp, _numLMS, _maxID);
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L58"
                stdgo._internal.index.suffixarray.Suffixarray__unmap_8_64._unmap_8_64(_text, _sa, _numLMS);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L67"
                _sa.__copyTo__((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>));
            };
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L69"
            stdgo._internal.index.suffixarray.Suffixarray__expand_8_64._expand_8_64(_text, _freq, _bucket, _sa, _numLMS);
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L71"
        stdgo._internal.index.suffixarray.Suffixarray__inducel_8_64._induceL_8_64(_text, _sa, _freq, _bucket);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L72"
        stdgo._internal.index.suffixarray.Suffixarray__induces_8_64._induceS_8_64(_text, _sa, _freq, _bucket);
        _tmp[(0 : stdgo.GoInt)] = (-1i64 : stdgo.GoInt64);
    }
