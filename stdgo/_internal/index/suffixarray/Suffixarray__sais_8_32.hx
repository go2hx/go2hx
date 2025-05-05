package stdgo._internal.index.suffixarray;
function _sais_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _textMax:stdgo.GoInt, _sa:stdgo.Slice<stdgo.GoInt32>, _tmp:stdgo.Slice<stdgo.GoInt32>):Void {
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L144"
        if (((_sa.length != (_text.length)) || ((_tmp.length) < (_textMax : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L145"
            throw stdgo.Go.toInterface(("suffixarray: misuse of sais_8_32" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L149"
        if ((_text.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L150"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L152"
        if ((_text.length) == ((1 : stdgo.GoInt))) {
            _sa[(0 : stdgo.GoInt)] = (0 : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L154"
            return;
        };
        var _freq:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>), _bucket:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L163"
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
        var _numLMS = (stdgo._internal.index.suffixarray.Suffixarray__placelms_8_32._placeLMS_8_32(_text, _sa, _freq, _bucket) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L175"
        if ((_numLMS <= (1 : stdgo.GoInt) : Bool)) {} else {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L178"
            stdgo._internal.index.suffixarray.Suffixarray__inducesubl_8_32._induceSubL_8_32(_text, _sa, _freq, _bucket);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L179"
            stdgo._internal.index.suffixarray.Suffixarray__inducesubs_8_32._induceSubS_8_32(_text, _sa, _freq, _bucket);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L180"
            stdgo._internal.index.suffixarray.Suffixarray__length_8_32._length_8_32(_text, _sa, _numLMS);
            var _maxID = (stdgo._internal.index.suffixarray.Suffixarray__assignid_8_32._assignID_8_32(_text, _sa, _numLMS) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L182"
            if ((_maxID < _numLMS : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L183"
                stdgo._internal.index.suffixarray.Suffixarray__map_32._map_32(_sa, _numLMS);
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L184"
                stdgo._internal.index.suffixarray.Suffixarray__recurse_32._recurse_32(_sa, _tmp, _numLMS, _maxID);
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L185"
                stdgo._internal.index.suffixarray.Suffixarray__unmap_8_32._unmap_8_32(_text, _sa, _numLMS);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L194"
                _sa.__copyTo__((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
            };
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L196"
            stdgo._internal.index.suffixarray.Suffixarray__expand_8_32._expand_8_32(_text, _freq, _bucket, _sa, _numLMS);
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L198"
        stdgo._internal.index.suffixarray.Suffixarray__inducel_8_32._induceL_8_32(_text, _sa, _freq, _bucket);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L199"
        stdgo._internal.index.suffixarray.Suffixarray__induces_8_32._induceS_8_32(_text, _sa, _freq, _bucket);
        _tmp[(0 : stdgo.GoInt)] = (-1 : stdgo.GoInt32);
    }
