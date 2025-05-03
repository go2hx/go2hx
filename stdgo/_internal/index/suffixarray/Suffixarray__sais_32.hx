package stdgo._internal.index.suffixarray;
function _sais_32(_text:stdgo.Slice<stdgo.GoInt32>, _textMax:stdgo.GoInt, _sa:stdgo.Slice<stdgo.GoInt32>, _tmp:stdgo.Slice<stdgo.GoInt32>):Void {
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L79"
        if (((_sa.length != (_text.length)) || ((_tmp.length) < (_textMax : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L80"
            throw stdgo.Go.toInterface(("suffixarray: misuse of sais_32" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L84"
        if ((_text.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L85"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L87"
        if ((_text.length) == ((1 : stdgo.GoInt))) {
            _sa[(0 : stdgo.GoInt)] = (0 : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L89"
            return;
        };
        var _freq:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>), _bucket:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L98"
        if (((_tmp.length) >= ((2 : stdgo.GoInt) * _textMax : stdgo.GoInt) : Bool)) {
            {
                final __tmp__0 = (_tmp.__slice__(0, _textMax) : stdgo.Slice<stdgo.GoInt32>);
                final __tmp__1 = (_tmp.__slice__(_textMax, ((2 : stdgo.GoInt) * _textMax : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
                _freq = @:binopAssign __tmp__0;
                _bucket = @:binopAssign __tmp__1;
            };
            _freq[(0 : stdgo.GoInt)] = (-1 : stdgo.GoInt32);
        } else {
            {
                final __tmp__0 = (null : stdgo.Slice<stdgo.GoInt32>);
                final __tmp__1 = (_tmp.__slice__(0, _textMax) : stdgo.Slice<stdgo.GoInt32>);
                _freq = @:binopAssign __tmp__0;
                _bucket = @:binopAssign __tmp__1;
            };
        };
        var _numLMS = (stdgo._internal.index.suffixarray.Suffixarray__placelms_32._placeLMS_32(_text, _sa, _freq, _bucket) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L110"
        if ((_numLMS <= (1 : stdgo.GoInt) : Bool)) {} else {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L113"
            stdgo._internal.index.suffixarray.Suffixarray__inducesubl_32._induceSubL_32(_text, _sa, _freq, _bucket);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L114"
            stdgo._internal.index.suffixarray.Suffixarray__inducesubs_32._induceSubS_32(_text, _sa, _freq, _bucket);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L115"
            stdgo._internal.index.suffixarray.Suffixarray__length_32._length_32(_text, _sa, _numLMS);
            var _maxID = (stdgo._internal.index.suffixarray.Suffixarray__assignid_32._assignID_32(_text, _sa, _numLMS) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L117"
            if ((_maxID < _numLMS : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L118"
                stdgo._internal.index.suffixarray.Suffixarray__map_32._map_32(_sa, _numLMS);
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L119"
                stdgo._internal.index.suffixarray.Suffixarray__recurse_32._recurse_32(_sa, _tmp, _numLMS, _maxID);
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L120"
                stdgo._internal.index.suffixarray.Suffixarray__unmap_32._unmap_32(_text, _sa, _numLMS);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L129"
                _sa.__copyTo__((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
            };
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L131"
            stdgo._internal.index.suffixarray.Suffixarray__expand_32._expand_32(_text, _freq, _bucket, _sa, _numLMS);
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L133"
        stdgo._internal.index.suffixarray.Suffixarray__inducel_32._induceL_32(_text, _sa, _freq, _bucket);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L134"
        stdgo._internal.index.suffixarray.Suffixarray__induces_32._induceS_32(_text, _sa, _freq, _bucket);
        _tmp[(0 : stdgo.GoInt)] = (-1 : stdgo.GoInt32);
    }
