package stdgo._internal.internal.diff;
function diff(_oldName:stdgo.GoString, _old:stdgo.Slice<stdgo.GoUInt8>, _newName:stdgo.GoString, _new_:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L47"
        if (stdgo._internal.bytes.Bytes_equal.equal(_old, _new_)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L48"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _x = stdgo._internal.internal.diff.Diff__lines._lines(_old);
        var _y = stdgo._internal.internal.diff.Diff__lines._lines(_new_);
        var _out:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L55"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("diff %s %s\n" : stdgo.GoString), stdgo.Go.toInterface(_oldName), stdgo.Go.toInterface(_newName));
        //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L56"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("--- %s\n" : stdgo.GoString), stdgo.Go.toInterface(_oldName));
        //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L57"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("+++ %s\n" : stdgo.GoString), stdgo.Go.toInterface(_newName));
        var _done:stdgo._internal.internal.diff.Diff_t_pair.T_pair = ({} : stdgo._internal.internal.diff.Diff_t_pair.T_pair), _chunk:stdgo._internal.internal.diff.Diff_t_pair.T_pair = ({} : stdgo._internal.internal.diff.Diff_t_pair.T_pair), _count:stdgo._internal.internal.diff.Diff_t_pair.T_pair = ({} : stdgo._internal.internal.diff.Diff_t_pair.T_pair), _ctext:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L71"
        for (__0 => _m in stdgo._internal.internal.diff.Diff__tgs._tgs(_x, _y)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L72"
            if ((_m._x < _done._x : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L74"
                continue;
            };
            var _start = (_m?.__copy__() : stdgo._internal.internal.diff.Diff_t_pair.T_pair);
            //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L82"
            while ((((_start._x > _done._x : Bool) && (_start._y > _done._y : Bool) : Bool) && (_x[(_start._x - (1 : stdgo.GoInt) : stdgo.GoInt)] == _y[(_start._y - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L83"
                _start._x--;
                //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L84"
                _start._y--;
            };
            var _end = (_m?.__copy__() : stdgo._internal.internal.diff.Diff_t_pair.T_pair);
            //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L87"
            while ((((_end._x < (_x.length) : Bool) && (_end._y < (_y.length) : Bool) : Bool) && (_x[(_end._x : stdgo.GoInt)] == _y[(_end._y : stdgo.GoInt)]) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L88"
                _end._x++;
                //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L89"
                _end._y++;
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L94"
            for (__1 => _s in (_x.__slice__(_done._x, _start._x) : stdgo.Slice<stdgo.GoString>)) {
                _ctext = (_ctext.__append__((("-" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L96"
                _count._x++;
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L98"
            for (__2 => _s in (_y.__slice__(_done._y, _start._y) : stdgo.Slice<stdgo.GoString>)) {
                _ctext = (_ctext.__append__((("+" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L100"
                _count._y++;
            };
            {};
            //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L106"
            if (((((_end._x < (_x.length) : Bool) || (_end._y < (_y.length) : Bool) : Bool)) && ((((_end._x - _start._x : stdgo.GoInt) < (3 : stdgo.GoInt) : Bool) || ((((_ctext.length) > (0 : stdgo.GoInt) : Bool) && ((_end._x - _start._x : stdgo.GoInt) < (6 : stdgo.GoInt) : Bool) : Bool)) : Bool)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L108"
                for (__3 => _s in (_x.__slice__(_start._x, _end._x) : stdgo.Slice<stdgo.GoString>)) {
                    _ctext = (_ctext.__append__(((" " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                    //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L110"
                    _count._x++;
                    //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L111"
                    _count._y++;
                };
                _done = _end?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L114"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L118"
            if (((_ctext.length) > (0 : stdgo.GoInt) : Bool)) {
                var _n = (_end._x - _start._x : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L120"
                if ((_n > (3 : stdgo.GoInt) : Bool)) {
                    _n = (3 : stdgo.GoInt);
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L123"
                for (__3 => _s in (_x.__slice__(_start._x, (_start._x + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
                    _ctext = (_ctext.__append__(((" " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                    //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L125"
                    _count._x++;
                    //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L126"
                    _count._y++;
                };
                _done = (new stdgo._internal.internal.diff.Diff_t_pair.T_pair((_start._x + _n : stdgo.GoInt), (_start._y + _n : stdgo.GoInt)) : stdgo._internal.internal.diff.Diff_t_pair.T_pair);
                //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L133"
                if ((_count._x > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L134"
                    _chunk._x++;
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L136"
                if ((_count._y > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L137"
                    _chunk._y++;
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L139"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("@@ -%d,%d +%d,%d @@\n" : stdgo.GoString), stdgo.Go.toInterface(_chunk._x), stdgo.Go.toInterface(_count._x), stdgo.Go.toInterface(_chunk._y), stdgo.Go.toInterface(_count._y));
                //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L140"
                for (__4 => _s in _ctext) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L141"
                    _out.writeString(_s?.__copy__());
                };
                _count._x = (0 : stdgo.GoInt);
                _count._y = (0 : stdgo.GoInt);
                _ctext = (_ctext.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L149"
            if (((_end._x >= (_x.length) : Bool) && (_end._y >= (_y.length) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L150"
                break;
            };
            _chunk = (new stdgo._internal.internal.diff.Diff_t_pair.T_pair((_end._x - (3 : stdgo.GoInt) : stdgo.GoInt), (_end._y - (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.internal.diff.Diff_t_pair.T_pair);
            //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L155"
            for (__3 => _s in (_x.__slice__(_chunk._x, _end._x) : stdgo.Slice<stdgo.GoString>)) {
                _ctext = (_ctext.__append__(((" " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L157"
                _count._x++;
                //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L158"
                _count._y++;
            };
            _done = _end?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/diff/diff.go#L163"
        return _out.bytes();
    }
