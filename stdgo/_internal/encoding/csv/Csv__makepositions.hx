package stdgo._internal.encoding.csv;
function _makePositions(_text:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoArray<stdgo.GoInt>>>; var _1 : stdgo.GoMap<stdgo.GoInt, stdgo.GoArray<stdgo.GoInt>>; var _2 : stdgo.GoString; } {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (_text.length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _positions:stdgo.Slice<stdgo.Slice<stdgo.GoArray<stdgo.GoInt>>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoArray<stdgo.GoInt>>>);
        var _errPositions = (({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoArray<stdgo.GoInt>>();
            x.__defaultValue__ = () -> new stdgo.GoArray<stdgo.GoInt>(2, 2).__setNumber32__();
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoArray<stdgo.GoInt>>) : stdgo.GoMap<stdgo.GoInt, stdgo.GoArray<stdgo.GoInt>>);
        var __0 = (1 : stdgo.GoInt), __1 = (1 : stdgo.GoInt);
var _col = __1, _line = __0;
        var _recNum = (0 : stdgo.GoInt);
        while (((_text.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_text?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            {
                final __value__ = _r;
                if (__value__ == ((10 : stdgo.GoInt32))) {
                    _line++;
                    _col = (1 : stdgo.GoInt);
                    _buf = (_buf.__append__((10 : stdgo.GoUInt8)));
                } else if (__value__ == ((167 : stdgo.GoInt32))) {
                    if ((_positions.length) == ((0 : stdgo.GoInt))) {
                        _positions = (_positions.__append__((new stdgo.Slice<stdgo.GoArray<stdgo.GoInt>>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoInt>(2, 2).__setNumber32__()])) : stdgo.Slice<stdgo.GoArray<stdgo.GoInt>>)));
                    };
                    _positions[((_positions.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (_positions[((_positions.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].__append__((new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[_line, _col]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__()));
                } else if (__value__ == ((182 : stdgo.GoInt32))) {
                    _positions = (_positions.__append__((new stdgo.Slice<stdgo.GoArray<stdgo.GoInt>>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoInt>(2, 2).__setNumber32__()])) : stdgo.Slice<stdgo.GoArray<stdgo.GoInt>>)));
                    _recNum++;
                } else if (__value__ == ((8721 : stdgo.GoInt32))) {
                    _errPositions[_recNum] = (new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[_line, _col]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__();
                } else {
                    _buf = (_buf.__append__(...((_text.__slice__(0, _size) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                    _col = (_col + (_size) : stdgo.GoInt);
                };
            };
            _text = (_text.__slice__(_size) : stdgo.GoString)?.__copy__();
        };
        return { _0 : _positions, _1 : _errPositions, _2 : (_buf : stdgo.GoString)?.__copy__() };
    }
