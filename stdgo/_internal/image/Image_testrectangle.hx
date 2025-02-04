package stdgo._internal.image;
function testRectangle(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _in = (function(_f:stdgo._internal.image.Image_rectangle.Rectangle, _g:stdgo._internal.image.Image_rectangle.Rectangle):stdgo.Error {
            if (!_f.in_(_g?.__copy__())) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("f=%s, f.In(%s): got false, want true" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f)), stdgo.Go.toInterface(stdgo.Go.asInterface(_g)));
            };
            {
                var _y = (_f.min.y : stdgo.GoInt);
                while ((_y < _f.max.y : Bool)) {
                    {
                        var _x = (_f.min.x : stdgo.GoInt);
                        while ((_x < _f.max.x : Bool)) {
                            var _p = (new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point);
if (!_p.in_(_g.__copy__())) {
                                return stdgo._internal.fmt.Fmt_errorf.errorf(("p=%s, p.In(%s): got false, want true" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)), stdgo.Go.toInterface(stdgo.Go.asInterface(_g)));
                            };
                            _x++;
                        };
                    };
                    _y++;
                };
            };
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
        for (__0 => _r in _rects) {
            for (__1 => _s in _rects) {
                var _got = (_r.eq(_s?.__copy__()) : Bool);
                var _want = ((_in(_r?.__copy__(), _s?.__copy__()) == null) && (_in(_s?.__copy__(), _r?.__copy__()) == null) : Bool);
                if (_got != (_want)) {
                    @:check2r _t.errorf(("Eq: r=%s, s=%s: got %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        };
        for (__1 => _r in _rects) {
            for (__2 => _s in _rects) {
                var _a = (_r.intersect(_s?.__copy__())?.__copy__() : stdgo._internal.image.Image_rectangle.Rectangle);
                {
                    var _err = (_in(_a?.__copy__(), _r?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _t.errorf(("Intersect: r=%s, s=%s, a=%s, a not in r: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_err));
                    };
                };
                {
                    var _err = (_in(_a?.__copy__(), _s?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _t.errorf(("Intersect: r=%s, s=%s, a=%s, a not in s: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_err));
                    };
                };
                {
                    var __0 = (stdgo.Go.toInterface(_a) == stdgo.Go.toInterface(((new stdgo._internal.image.Image_rectangle.Rectangle() : stdgo._internal.image.Image_rectangle.Rectangle))) : Bool), __1 = (_r.overlaps(_s?.__copy__()) : Bool);
var _overlaps = __1, _isZero = __0;
                    if (_isZero == (_overlaps)) {
                        @:check2r _t.errorf(("Intersect: r=%s, s=%s, a=%s: isZero=%t same as overlaps=%t" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_isZero), stdgo.Go.toInterface(_overlaps));
                    };
                };
                var _largerThanA = (new stdgo.GoArray<stdgo._internal.image.Image_rectangle.Rectangle>(4, 4, ...[_a?.__copy__(), _a?.__copy__(), _a?.__copy__(), _a?.__copy__()].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.image.Image_rectangle.Rectangle)])) : stdgo.GoArray<stdgo._internal.image.Image_rectangle.Rectangle>);
                _largerThanA[(0 : stdgo.GoInt)].min.x--;
                _largerThanA[(1 : stdgo.GoInt)].min.y--;
                _largerThanA[(2 : stdgo.GoInt)].max.x++;
                _largerThanA[(3 : stdgo.GoInt)].max.y++;
                for (_i => _b in _largerThanA) {
                    if (_b.empty()) {
                        continue;
                    };
                    if (((_in(_b?.__copy__(), _r?.__copy__()) == null) && (_in(_b?.__copy__(), _s?.__copy__()) == null) : Bool)) {
                        @:check2r _t.errorf(("Intersect: r=%s, s=%s, a=%s, b=%s, i=%d: intersection could be larger" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(_i));
                    };
                };
            };
        };
        for (__2 => _r in _rects) {
            for (__3 => _s in _rects) {
                var _a = (_r.union(_s?.__copy__())?.__copy__() : stdgo._internal.image.Image_rectangle.Rectangle);
                {
                    var _err = (_in(_r?.__copy__(), _a?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _t.errorf(("Union: r=%s, s=%s, a=%s, r not in a: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_err));
                    };
                };
                {
                    var _err = (_in(_s?.__copy__(), _a?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _t.errorf(("Union: r=%s, s=%s, a=%s, s not in a: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_err));
                    };
                };
                if (_a.empty()) {
                    continue;
                };
                var _smallerThanA = (new stdgo.GoArray<stdgo._internal.image.Image_rectangle.Rectangle>(4, 4, ...[_a?.__copy__(), _a?.__copy__(), _a?.__copy__(), _a?.__copy__()].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.image.Image_rectangle.Rectangle)])) : stdgo.GoArray<stdgo._internal.image.Image_rectangle.Rectangle>);
                _smallerThanA[(0 : stdgo.GoInt)].min.x++;
                _smallerThanA[(1 : stdgo.GoInt)].min.y++;
                _smallerThanA[(2 : stdgo.GoInt)].max.x--;
                _smallerThanA[(3 : stdgo.GoInt)].max.y--;
                for (_i => _b in _smallerThanA) {
                    if (((_in(_r?.__copy__(), _b?.__copy__()) == null) && (_in(_s?.__copy__(), _b?.__copy__()) == null) : Bool)) {
                        @:check2r _t.errorf(("Union: r=%s, s=%s, a=%s, b=%s, i=%d: union could be smaller" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(_i));
                    };
                };
            };
        };
    }
