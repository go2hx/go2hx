package stdgo._internal.index.suffixarray;
function _sais_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _textMax:stdgo.GoInt, _sa:stdgo.Slice<stdgo.GoInt32>, _tmp:stdgo.Slice<stdgo.GoInt32>):Void {
        if (((_sa.length != (_text.length)) || ((_tmp.length) < (_textMax : stdgo.GoInt) : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("suffixarray: misuse of sais_8_32" : stdgo.GoString));
        };
        if ((_text.length) == ((0 : stdgo.GoInt))) {
            return;
        };
        if ((_text.length) == ((1 : stdgo.GoInt))) {
            _sa[(0 : stdgo.GoInt)] = (0 : stdgo.GoInt32);
            return;
        };
        var __0:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>), __1:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
var _bucket = __1, _freq = __0;
        if (((_tmp.length) >= ((2 : stdgo.GoInt) * _textMax : stdgo.GoInt) : Bool)) {
            {
                final __tmp__0 = (_tmp.__slice__(0, _textMax) : stdgo.Slice<stdgo.GoInt32>);
                final __tmp__1 = (_tmp.__slice__(_textMax, ((2 : stdgo.GoInt) * _textMax : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
                _freq = __tmp__0;
                _bucket = __tmp__1;
            };
            _freq[(0 : stdgo.GoInt)] = (-1 : stdgo.GoInt32);
        } else {
            {
                final __tmp__0 = (null : stdgo.Slice<stdgo.GoInt32>);
                final __tmp__1 = (_tmp.__slice__(0, _textMax) : stdgo.Slice<stdgo.GoInt32>);
                _freq = __tmp__0;
                _bucket = __tmp__1;
            };
        };
        var _numLMS = (stdgo._internal.index.suffixarray.Suffixarray__placelms_8_32._placeLMS_8_32(_text, _sa, _freq, _bucket) : stdgo.GoInt);
        if ((_numLMS <= (1 : stdgo.GoInt) : Bool)) {} else {
            stdgo._internal.index.suffixarray.Suffixarray__inducesubl_8_32._induceSubL_8_32(_text, _sa, _freq, _bucket);
            stdgo._internal.index.suffixarray.Suffixarray__inducesubs_8_32._induceSubS_8_32(_text, _sa, _freq, _bucket);
            stdgo._internal.index.suffixarray.Suffixarray__length_8_32._length_8_32(_text, _sa, _numLMS);
            var _maxID = (stdgo._internal.index.suffixarray.Suffixarray__assignid_8_32._assignID_8_32(_text, _sa, _numLMS) : stdgo.GoInt);
            if ((_maxID < _numLMS : Bool)) {
                stdgo._internal.index.suffixarray.Suffixarray__map_32._map_32(_sa, _numLMS);
                stdgo._internal.index.suffixarray.Suffixarray__recurse_32._recurse_32(_sa, _tmp, _numLMS, _maxID);
                stdgo._internal.index.suffixarray.Suffixarray__unmap_8_32._unmap_8_32(_text, _sa, _numLMS);
            } else {
                _sa.__copyTo__((_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
            };
            stdgo._internal.index.suffixarray.Suffixarray__expand_8_32._expand_8_32(_text, _freq, _bucket, _sa, _numLMS);
        };
        stdgo._internal.index.suffixarray.Suffixarray__inducel_8_32._induceL_8_32(_text, _sa, _freq, _bucket);
        stdgo._internal.index.suffixarray.Suffixarray__induces_8_32._induceS_8_32(_text, _sa, _freq, _bucket);
        _tmp[(0 : stdgo.GoInt)] = (-1 : stdgo.GoInt32);
    }
