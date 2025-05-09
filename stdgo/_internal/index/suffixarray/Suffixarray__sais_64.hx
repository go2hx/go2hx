package stdgo._internal.index.suffixarray;
function _sais_64(_text:stdgo.Slice<stdgo.GoInt64>, _textMax:stdgo.GoInt, _sa:stdgo.Slice<stdgo.GoInt64>, _tmp:stdgo.Slice<stdgo.GoInt64>):Void {
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L141"
        if (((_sa.length != (_text.length)) || ((_tmp.length) < (_textMax : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L142"
            throw stdgo.Go.toInterface(("suffixarray: misuse of sais_64" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L146"
        if ((_text.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L147"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L149"
        if ((_text.length) == ((1 : stdgo.GoInt))) {
            _sa[(0 : stdgo.GoInt)] = (0i64 : stdgo.GoInt64);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L151"
            return;
        };
        var _freq:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>), _bucket:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L160"
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
        var _numLMS = (stdgo._internal.index.suffixarray.Suffixarray__placelms_64._placeLMS_64(_text, _sa, _freq, _bucket) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L172"
        if ((_numLMS <= (1 : stdgo.GoInt) : Bool)) {} else {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L175"
            stdgo._internal.index.suffixarray.Suffixarray__inducesubl_64._induceSubL_64(_text, _sa, _freq, _bucket);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L176"
            stdgo._internal.index.suffixarray.Suffixarray__inducesubs_64._induceSubS_64(_text, _sa, _freq, _bucket);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L177"
            stdgo._internal.index.suffixarray.Suffixarray__length_64._length_64(_text, _sa, _numLMS);
            var _maxID = (stdgo._internal.index.suffixarray.Suffixarray__assignid_64._assignID_64(_text, _sa, _numLMS) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L179"
            if ((_maxID < _numLMS : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L180"
                stdgo._internal.index.suffixarray.Suffixarray__map_64._map_64(_sa, _numLMS);
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L181"
                stdgo._internal.index.suffixarray.Suffixarray__recurse_64._recurse_64(_sa, _tmp, _numLMS, _maxID);
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L182"
                stdgo._internal.index.suffixarray.Suffixarray__unmap_64._unmap_64(_text, _sa, _numLMS);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L191"
                _sa.__copyTo__((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>));
            };
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L193"
            stdgo._internal.index.suffixarray.Suffixarray__expand_64._expand_64(_text, _freq, _bucket, _sa, _numLMS);
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L195"
        stdgo._internal.index.suffixarray.Suffixarray__inducel_64._induceL_64(_text, _sa, _freq, _bucket);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L196"
        stdgo._internal.index.suffixarray.Suffixarray__induces_64._induceS_64(_text, _sa, _freq, _bucket);
        _tmp[(0 : stdgo.GoInt)] = (-1i64 : stdgo.GoInt64);
    }
