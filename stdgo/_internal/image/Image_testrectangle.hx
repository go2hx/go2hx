package stdgo._internal.image;
function testRectangle(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _in = (function(_f:stdgo._internal.image.Image_rectangle.Rectangle, _g:stdgo._internal.image.Image_rectangle.Rectangle):stdgo.Error {
            //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L15"
            if (!_f.in_(_g?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L16"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("f=%s, f.In(%s): got false, want true" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f)), stdgo.Go.toInterface(stdgo.Go.asInterface(_g)));
            };
            //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L18"
            {
                var _y = (_f.min.y : stdgo.GoInt);
                while ((_y < _f.max.y : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L19"
                    {
                        var _x = (_f.min.x : stdgo.GoInt);
                        while ((_x < _f.max.x : Bool)) {
                            var _p = (new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point);
//"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L21"
                            if (!_p.in_(_g.__copy__())) {
                                //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L22"
                                return stdgo._internal.fmt.Fmt_errorf.errorf(("p=%s, p.In(%s): got false, want true" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)), stdgo.Go.toInterface(stdgo.Go.asInterface(_g)));
                            };
                            _x++;
                        };
                    };
                    _y++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L26"
            return (null : stdgo.Error);
        } : (stdgo._internal.image.Image_rectangle.Rectangle, stdgo._internal.image.Image_rectangle.Rectangle) -> stdgo.Error);
        var _rects = (new stdgo.Slice<stdgo._internal.image.Image_rectangle.Rectangle>(11, 11, ...[
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((10 : stdgo.GoInt), (0 : stdgo.GoInt), (20 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((4 : stdgo.GoInt), (6 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((2 : stdgo.GoInt), (3 : stdgo.GoInt), (12 : stdgo.GoInt), (5 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((-1 : stdgo.GoInt), (-2 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((-1 : stdgo.GoInt), (-2 : stdgo.GoInt), (4 : stdgo.GoInt), (6 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((-10 : stdgo.GoInt), (-20 : stdgo.GoInt), (30 : stdgo.GoInt), (40 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((8 : stdgo.GoInt), (8 : stdgo.GoInt), (8 : stdgo.GoInt), (8 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((88 : stdgo.GoInt), (88 : stdgo.GoInt), (88 : stdgo.GoInt), (88 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((6 : stdgo.GoInt), (5 : stdgo.GoInt), (4 : stdgo.GoInt), (3 : stdgo.GoInt))?.__copy__()].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.image.Image_rectangle.Rectangle)])) : stdgo.Slice<stdgo._internal.image.Image_rectangle.Rectangle>);
        //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L45"
        for (__0 => _r in _rects) {
            //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L46"
            for (__1 => _s in _rects) {
                var _got = (_r.eq(_s?.__copy__()) : Bool);
                var _want = ((_in(_r?.__copy__(), _s?.__copy__()) == null) && (_in(_s?.__copy__(), _r?.__copy__()) == null) : Bool);
                //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L49"
                if (_got != (_want)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L50"
                    _t.errorf(("Eq: r=%s, s=%s: got %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L57"
        for (__1 => _r in _rects) {
            //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L58"
            for (__2 => _s in _rects) {
                var _a = (_r.intersect(_s?.__copy__())?.__copy__() : stdgo._internal.image.Image_rectangle.Rectangle);
                //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L60"
                {
                    var _err = (_in(_a?.__copy__(), _r?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L61"
                        _t.errorf(("Intersect: r=%s, s=%s, a=%s, a not in r: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_err));
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L63"
                {
                    var _err = (_in(_a?.__copy__(), _s?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L64"
                        _t.errorf(("Intersect: r=%s, s=%s, a=%s, a not in s: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_err));
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L66"
                {
                    var __0 = (stdgo.Go.toInterface(_a) == stdgo.Go.toInterface(((new stdgo._internal.image.Image_rectangle.Rectangle() : stdgo._internal.image.Image_rectangle.Rectangle))) : Bool), __1 = (_r.overlaps(_s?.__copy__()) : Bool);
var _overlaps = __1, _isZero = __0;
                    if (_isZero == (_overlaps)) {
                        //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L67"
                        _t.errorf(("Intersect: r=%s, s=%s, a=%s: isZero=%t same as overlaps=%t" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_isZero), stdgo.Go.toInterface(_overlaps));
                    };
                };
                var _largerThanA = (new stdgo.GoArray<stdgo._internal.image.Image_rectangle.Rectangle>(4, 4, ...[_a?.__copy__(), _a?.__copy__(), _a?.__copy__(), _a?.__copy__()].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.image.Image_rectangle.Rectangle)])) : stdgo.GoArray<stdgo._internal.image.Image_rectangle.Rectangle>);
                //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L71"
                _largerThanA[(0 : stdgo.GoInt)].min.x--;
                //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L72"
                _largerThanA[(1 : stdgo.GoInt)].min.y--;
                //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L73"
                _largerThanA[(2 : stdgo.GoInt)].max.x++;
                //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L74"
                _largerThanA[(3 : stdgo.GoInt)].max.y++;
                //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L75"
                for (_i => _b in _largerThanA.__copy__()) {
                    //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L76"
                    if (_b.empty()) {
                        //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L78"
                        continue;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L80"
                    if (((_in(_b?.__copy__(), _r?.__copy__()) == null) && (_in(_b?.__copy__(), _s?.__copy__()) == null) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L81"
                        _t.errorf(("Intersect: r=%s, s=%s, a=%s, b=%s, i=%d: intersection could be larger" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(_i));
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L90"
        for (__2 => _r in _rects) {
            //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L91"
            for (__3 => _s in _rects) {
                var _a = (_r.union(_s?.__copy__())?.__copy__() : stdgo._internal.image.Image_rectangle.Rectangle);
                //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L93"
                {
                    var _err = (_in(_r?.__copy__(), _a?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L94"
                        _t.errorf(("Union: r=%s, s=%s, a=%s, r not in a: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_err));
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L96"
                {
                    var _err = (_in(_s?.__copy__(), _a?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L97"
                        _t.errorf(("Union: r=%s, s=%s, a=%s, s not in a: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_err));
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L99"
                if (_a.empty()) {
                    //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L101"
                    continue;
                };
                var _smallerThanA = (new stdgo.GoArray<stdgo._internal.image.Image_rectangle.Rectangle>(4, 4, ...[_a?.__copy__(), _a?.__copy__(), _a?.__copy__(), _a?.__copy__()].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.image.Image_rectangle.Rectangle)])) : stdgo.GoArray<stdgo._internal.image.Image_rectangle.Rectangle>);
                //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L104"
                _smallerThanA[(0 : stdgo.GoInt)].min.x++;
                //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L105"
                _smallerThanA[(1 : stdgo.GoInt)].min.y++;
                //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L106"
                _smallerThanA[(2 : stdgo.GoInt)].max.x--;
                //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L107"
                _smallerThanA[(3 : stdgo.GoInt)].max.y--;
                //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L108"
                for (_i => _b in _smallerThanA.__copy__()) {
                    //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L109"
                    if (((_in(_r?.__copy__(), _b?.__copy__()) == null) && (_in(_s?.__copy__(), _b?.__copy__()) == null) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/image/geom_test.go#L110"
                        _t.errorf(("Union: r=%s, s=%s, a=%s, b=%s, i=%d: union could be smaller" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(_i));
                    };
                };
            };
        };
    }
