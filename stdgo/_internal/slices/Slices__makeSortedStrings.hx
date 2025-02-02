package stdgo._internal.slices;
function _makeSortedStrings(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        var _x = (new stdgo.Slice<stdgo.GoString>((_n : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _x[(_i : stdgo.GoInt)] = stdgo._internal.strconv.Strconv_itoa.itoa(_i).__copy__();
                _i++;
            };
        };
        stdgo._internal.slices.Slices_sort.sort(_x);
        return _x;
    }
