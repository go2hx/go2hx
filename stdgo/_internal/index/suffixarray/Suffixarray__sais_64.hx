package stdgo._internal.index.suffixarray;
function _sais_64(_text:stdgo.Slice<stdgo.GoInt64>, _textMax:stdgo.GoInt, _sa:stdgo.Slice<stdgo.GoInt64>, _tmp:stdgo.Slice<stdgo.GoInt64>):Void {
        if (((_sa.length != (_text.length)) || ((_tmp.length) < (_textMax : stdgo.GoInt) : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("suffixarray: misuse of sais_64" : stdgo.GoString));
        };
        if ((_text.length) == ((0 : stdgo.GoInt))) {
            return;
        };
        if ((_text.length) == ((1 : stdgo.GoInt))) {
            _sa[(0 : stdgo.GoInt)] = (0i64 : stdgo.GoInt64);
            return;
        };
        var __0:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>), __1:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
var _bucket = __1, _freq = __0;
        if (((_tmp.length) >= ((2 : stdgo.GoInt) * _textMax : stdgo.GoInt) : Bool)) {
            {
                final __tmp__0 = (_tmp.__slice__(0, _textMax) : stdgo.Slice<stdgo.GoInt64>);
                final __tmp__1 = (_tmp.__slice__(_textMax, ((2 : stdgo.GoInt) * _textMax : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>);
                _freq = __tmp__0;
                _bucket = __tmp__1;
            };
            _freq[(0 : stdgo.GoInt)] = (-1i64 : stdgo.GoInt64);
        } else {
            {
                final __tmp__0 = (null : stdgo.Slice<stdgo.GoInt64>);
                final __tmp__1 = (_tmp.__slice__(0, _textMax) : stdgo.Slice<stdgo.GoInt64>);
                _freq = __tmp__0;
                _bucket = __tmp__1;
            };
        };
        var _numLMS = (stdgo._internal.index.suffixarray.Suffixarray__placelms_64._placeLMS_64(_text, _sa, _freq, _bucket) : stdgo.GoInt);
        if ((_numLMS <= (1 : stdgo.GoInt) : Bool)) {} else {
            stdgo._internal.index.suffixarray.Suffixarray__inducesubl_64._induceSubL_64(_text, _sa, _freq, _bucket);
            stdgo._internal.index.suffixarray.Suffixarray__inducesubs_64._induceSubS_64(_text, _sa, _freq, _bucket);
            stdgo._internal.index.suffixarray.Suffixarray__length_64._length_64(_text, _sa, _numLMS);
            var _maxID = (stdgo._internal.index.suffixarray.Suffixarray__assignid_64._assignID_64(_text, _sa, _numLMS) : stdgo.GoInt);
            if ((_maxID < _numLMS : Bool)) {
                stdgo._internal.index.suffixarray.Suffixarray__map_64._map_64(_sa, _numLMS);
                stdgo._internal.index.suffixarray.Suffixarray__recurse_64._recurse_64(_sa, _tmp, _numLMS, _maxID);
                stdgo._internal.index.suffixarray.Suffixarray__unmap_64._unmap_64(_text, _sa, _numLMS);
            } else {
                _sa.__copyTo__((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>));
            };
            stdgo._internal.index.suffixarray.Suffixarray__expand_64._expand_64(_text, _freq, _bucket, _sa, _numLMS);
        };
        stdgo._internal.index.suffixarray.Suffixarray__inducel_64._induceL_64(_text, _sa, _freq, _bucket);
        stdgo._internal.index.suffixarray.Suffixarray__induces_64._induceS_64(_text, _sa, _freq, _bucket);
        _tmp[(0 : stdgo.GoInt)] = (-1i64 : stdgo.GoInt64);
    }
