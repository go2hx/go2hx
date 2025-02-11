package stdgo._internal.internal.diff;
function diff(_oldName:stdgo.GoString, _old:stdgo.Slice<stdgo.GoUInt8>, _newName:stdgo.GoString, _new_:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        if (stdgo._internal.bytes.Bytes_equal.equal(_old, _new_)) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _x = stdgo._internal.internal.diff.Diff__lines._lines(_old);
        var _y = stdgo._internal.internal.diff.Diff__lines._lines(_new_);
        var _out:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("diff %s %s\n" : stdgo.GoString), stdgo.Go.toInterface(_oldName), stdgo.Go.toInterface(_newName));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("--- %s\n" : stdgo.GoString), stdgo.Go.toInterface(_oldName));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("+++ %s\n" : stdgo.GoString), stdgo.Go.toInterface(_newName));
        var __0:stdgo._internal.internal.diff.Diff_t_pair.T_pair = ({} : stdgo._internal.internal.diff.Diff_t_pair.T_pair), __1:stdgo._internal.internal.diff.Diff_t_pair.T_pair = ({} : stdgo._internal.internal.diff.Diff_t_pair.T_pair), __2:stdgo._internal.internal.diff.Diff_t_pair.T_pair = ({} : stdgo._internal.internal.diff.Diff_t_pair.T_pair), __3:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
var _ctext = __3, _count = __2, _chunk = __1, _done = __0;
        for (__0 => _m in stdgo._internal.internal.diff.Diff__tgs._tgs(_x, _y)) {
            if ((_m._x < _done._x : Bool)) {
                continue;
            };
            var _start = (_m?.__copy__() : stdgo._internal.internal.diff.Diff_t_pair.T_pair);
            while ((((_start._x > _done._x : Bool) && (_start._y > _done._y : Bool) : Bool) && (_x[(_start._x - (1 : stdgo.GoInt) : stdgo.GoInt)] == _y[(_start._y - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                _start._x--;
                _start._y--;
            };
            var _end = (_m?.__copy__() : stdgo._internal.internal.diff.Diff_t_pair.T_pair);
            while ((((_end._x < (_x.length) : Bool) && (_end._y < (_y.length) : Bool) : Bool) && (_x[(_end._x : stdgo.GoInt)] == _y[(_end._y : stdgo.GoInt)]) : Bool)) {
                _end._x++;
                _end._y++;
            };
            for (__1 => _s in (_x.__slice__(_done._x, _start._x) : stdgo.Slice<stdgo.GoString>)) {
                _ctext = (_ctext.__append__((("-" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__()));
                _count._x++;
            };
            for (__2 => _s in (_y.__slice__(_done._y, _start._y) : stdgo.Slice<stdgo.GoString>)) {
                _ctext = (_ctext.__append__((("+" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__()));
                _count._y++;
            };
            {};
            if (((((_end._x < (_x.length) : Bool) || (_end._y < (_y.length) : Bool) : Bool)) && ((((_end._x - _start._x : stdgo.GoInt) < (3 : stdgo.GoInt) : Bool) || ((((_ctext.length) > (0 : stdgo.GoInt) : Bool) && ((_end._x - _start._x : stdgo.GoInt) < (6 : stdgo.GoInt) : Bool) : Bool)) : Bool)) : Bool)) {
                for (__3 => _s in (_x.__slice__(_start._x, _end._x) : stdgo.Slice<stdgo.GoString>)) {
                    _ctext = (_ctext.__append__(((" " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__()));
                    _count._x++;
                    _count._y++;
                };
                _done = _end?.__copy__();
                continue;
            };
            if (((_ctext.length) > (0 : stdgo.GoInt) : Bool)) {
                var _n = (_end._x - _start._x : stdgo.GoInt);
                if ((_n > (3 : stdgo.GoInt) : Bool)) {
                    _n = (3 : stdgo.GoInt);
                };
                for (__3 => _s in (_x.__slice__(_start._x, (_start._x + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
                    _ctext = (_ctext.__append__(((" " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__()));
                    _count._x++;
                    _count._y++;
                };
                _done = (new stdgo._internal.internal.diff.Diff_t_pair.T_pair((_start._x + _n : stdgo.GoInt), (_start._y + _n : stdgo.GoInt)) : stdgo._internal.internal.diff.Diff_t_pair.T_pair);
                if ((_count._x > (0 : stdgo.GoInt) : Bool)) {
                    _chunk._x++;
                };
                if ((_count._y > (0 : stdgo.GoInt) : Bool)) {
                    _chunk._y++;
                };
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("@@ -%d,%d +%d,%d @@\n" : stdgo.GoString), stdgo.Go.toInterface(_chunk._x), stdgo.Go.toInterface(_count._x), stdgo.Go.toInterface(_chunk._y), stdgo.Go.toInterface(_count._y));
                for (__4 => _s in _ctext) {
                    @:check2 _out.writeString(_s?.__copy__());
                };
                _count._x = (0 : stdgo.GoInt);
                _count._y = (0 : stdgo.GoInt);
                _ctext = (_ctext.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
            };
            if (((_end._x >= (_x.length) : Bool) && (_end._y >= (_y.length) : Bool) : Bool)) {
                break;
            };
            _chunk = (new stdgo._internal.internal.diff.Diff_t_pair.T_pair((_end._x - (3 : stdgo.GoInt) : stdgo.GoInt), (_end._y - (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.internal.diff.Diff_t_pair.T_pair);
            for (__3 => _s in (_x.__slice__(_chunk._x, _end._x) : stdgo.Slice<stdgo.GoString>)) {
                _ctext = (_ctext.__append__(((" " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__()));
                _count._x++;
                _count._y++;
            };
            _done = _end?.__copy__();
        };
        return @:check2 _out.bytes();
    }
