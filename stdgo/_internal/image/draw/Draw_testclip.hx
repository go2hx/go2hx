package stdgo._internal.image.draw;
function testClip(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _dst0 = stdgo._internal.image.Image_newrgba.newRGBA(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (100 : stdgo.GoInt), (100 : stdgo.GoInt))?.__copy__());
        var _src0 = stdgo._internal.image.Image_newrgba.newRGBA(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (100 : stdgo.GoInt), (100 : stdgo.GoInt))?.__copy__());
        var _mask0 = stdgo._internal.image.Image_newrgba.newRGBA(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (100 : stdgo.GoInt), (100 : stdgo.GoInt))?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/image/draw/clip_test.go#L161"
        for (__0 => _c in stdgo._internal.image.draw.Draw__cliptests._clipTests) {
            var _dst = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_dst0.subImage(_c._dr?.__copy__())) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>)) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>);
            var _src = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src0.subImage(_c._sr?.__copy__())) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>)) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>);
            var __0 = (_c._r?.__copy__() : stdgo._internal.image.Image_rectangle.Rectangle), __1 = (_c._sp?.__copy__() : stdgo._internal.image.Image_point.Point), __2 = (_c._mp?.__copy__() : stdgo._internal.image.Image_point.Point);
var _mp = __2, _sp = __1, _r = __0;
            //"file:///home/runner/.go/go1.21.3/src/image/draw/clip_test.go#L165"
            if (_c._nilMask) {
                //"file:///home/runner/.go/go1.21.3/src/image/draw/clip_test.go#L166"
                stdgo._internal.image.draw.Draw__clip._clip(stdgo.Go.asInterface(_dst), (stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.image.Image_rectangle.Rectangle>), stdgo.Go.asInterface(_src), (stdgo.Go.setRef(_sp) : stdgo.Ref<stdgo._internal.image.Image_point.Point>), (null : stdgo._internal.image.Image_image.Image), null);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/image/draw/clip_test.go#L168"
                stdgo._internal.image.draw.Draw__clip._clip(stdgo.Go.asInterface(_dst), (stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.image.Image_rectangle.Rectangle>), stdgo.Go.asInterface(_src), (stdgo.Go.setRef(_sp) : stdgo.Ref<stdgo._internal.image.Image_point.Point>), _mask0.subImage(_c._mr?.__copy__()), (stdgo.Go.setRef(_mp) : stdgo.Ref<stdgo._internal.image.Image_point.Point>));
            };
            //"file:///home/runner/.go/go1.21.3/src/image/draw/clip_test.go#L172"
            if (!_c._r0.eq(_r?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/image/draw/clip_test.go#L173"
                _t.errorf(("%s: clip rectangle want %v got %v" : stdgo.GoString), stdgo.Go.toInterface(_c._desc), stdgo.Go.toInterface(stdgo.Go.asInterface(_c._r0)), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
                //"file:///home/runner/.go/go1.21.3/src/image/draw/clip_test.go#L174"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/image/draw/clip_test.go#L176"
            if (!_c._sp0.eq(_sp?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/image/draw/clip_test.go#L177"
                _t.errorf(("%s: sp want %v got %v" : stdgo.GoString), stdgo.Go.toInterface(_c._desc), stdgo.Go.toInterface(stdgo.Go.asInterface(_c._sp0)), stdgo.Go.toInterface(stdgo.Go.asInterface(_sp)));
                //"file:///home/runner/.go/go1.21.3/src/image/draw/clip_test.go#L178"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/image/draw/clip_test.go#L180"
            if (!_c._nilMask) {
                //"file:///home/runner/.go/go1.21.3/src/image/draw/clip_test.go#L181"
                if (!_c._mp0.eq(_mp?.__copy__())) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/clip_test.go#L182"
                    _t.errorf(("%s: mp want %v got %v" : stdgo.GoString), stdgo.Go.toInterface(_c._desc), stdgo.Go.toInterface(stdgo.Go.asInterface(_c._mp0)), stdgo.Go.toInterface(stdgo.Go.asInterface(_mp)));
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/clip_test.go#L183"
                    continue;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/image/draw/clip_test.go#L189"
            if (!_r.in_(_c._dr?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/image/draw/clip_test.go#L190"
                _t.errorf(("%s: c.dr %v does not contain r %v" : stdgo.GoString), stdgo.Go.toInterface(_c._desc), stdgo.Go.toInterface(stdgo.Go.asInterface(_c._dr)), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
            };
            var _sr = (_r.add(_c._sp.sub(_c._dr.min?.__copy__())?.__copy__())?.__copy__() : stdgo._internal.image.Image_rectangle.Rectangle);
            //"file:///home/runner/.go/go1.21.3/src/image/draw/clip_test.go#L194"
            if (!_sr.in_(_c._sr?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/image/draw/clip_test.go#L195"
                _t.errorf(("%s: c.sr %v does not contain sr %v" : stdgo.GoString), stdgo.Go.toInterface(_c._desc), stdgo.Go.toInterface(stdgo.Go.asInterface(_c._sr)), stdgo.Go.toInterface(stdgo.Go.asInterface(_sr)));
            };
            //"file:///home/runner/.go/go1.21.3/src/image/draw/clip_test.go#L197"
            if (!_c._nilMask) {
                var _mr = (_r.add(_c._mp.sub(_c._dr.min?.__copy__())?.__copy__())?.__copy__() : stdgo._internal.image.Image_rectangle.Rectangle);
                //"file:///home/runner/.go/go1.21.3/src/image/draw/clip_test.go#L200"
                if (!_mr.in_(_c._mr?.__copy__())) {
                    //"file:///home/runner/.go/go1.21.3/src/image/draw/clip_test.go#L201"
                    _t.errorf(("%s: c.mr %v does not contain mr %v" : stdgo.GoString), stdgo.Go.toInterface(_c._desc), stdgo.Go.toInterface(stdgo.Go.asInterface(_c._mr)), stdgo.Go.toInterface(stdgo.Go.asInterface(_mr)));
                };
            };
        };
    }
