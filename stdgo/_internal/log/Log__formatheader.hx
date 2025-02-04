package stdgo._internal.log;
function _formatHeader(_buf:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>, _t:stdgo._internal.time.Time_time.Time, _prefix:stdgo.GoString, _flag:stdgo.GoInt, _file:stdgo.GoString, _line:stdgo.GoInt):Void {
        if ((_flag & (64 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
            (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_prefix : Array<stdgo.GoUInt8>))));
        };
        if ((_flag & (7 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            if ((_flag & (32 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                _t = _t.uTC()?.__copy__();
            };
            if ((_flag & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                var __tmp__ = _t.date(), _year:stdgo.GoInt = __tmp__._0, _month:stdgo._internal.time.Time_month.Month = __tmp__._1, _day:stdgo.GoInt = __tmp__._2;
                stdgo._internal.log.Log__itoa._itoa(_buf, _year, (4 : stdgo.GoInt));
                (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__((47 : stdgo.GoUInt8))));
                stdgo._internal.log.Log__itoa._itoa(_buf, (_month : stdgo.GoInt), (2 : stdgo.GoInt));
                (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__((47 : stdgo.GoUInt8))));
                stdgo._internal.log.Log__itoa._itoa(_buf, _day, (2 : stdgo.GoInt));
                (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__((32 : stdgo.GoUInt8))));
            };
            if ((_flag & (6 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                var __tmp__ = _t.clock(), _hour:stdgo.GoInt = __tmp__._0, _min:stdgo.GoInt = __tmp__._1, _sec:stdgo.GoInt = __tmp__._2;
                stdgo._internal.log.Log__itoa._itoa(_buf, _hour, (2 : stdgo.GoInt));
                (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__((58 : stdgo.GoUInt8))));
                stdgo._internal.log.Log__itoa._itoa(_buf, _min, (2 : stdgo.GoInt));
                (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__((58 : stdgo.GoUInt8))));
                stdgo._internal.log.Log__itoa._itoa(_buf, _sec, (2 : stdgo.GoInt));
                if ((_flag & (4 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__((46 : stdgo.GoUInt8))));
                    stdgo._internal.log.Log__itoa._itoa(_buf, (_t.nanosecond() / (1000 : stdgo.GoInt) : stdgo.GoInt), (6 : stdgo.GoInt));
                };
                (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__((32 : stdgo.GoUInt8))));
            };
        };
        if ((_flag & (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            if ((_flag & (16 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                var _short = (_file?.__copy__() : stdgo.GoString);
                {
                    var _i = ((_file.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    while ((_i > (0 : stdgo.GoInt) : Bool)) {
                        if (_file[(_i : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
                            _short = (_file.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__();
                            break;
                        };
                        _i--;
                    };
                };
                _file = _short?.__copy__();
            };
            (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_file : Array<stdgo.GoUInt8>))));
            (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__((58 : stdgo.GoUInt8))));
            stdgo._internal.log.Log__itoa._itoa(_buf, _line, (-1 : stdgo.GoInt));
            (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__(...(((": " : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>))));
        };
        if ((_flag & (64 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            (_buf : stdgo.Slice<stdgo.GoUInt8>).__setData__(((_buf : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_prefix : Array<stdgo.GoUInt8>))));
        };
    }
