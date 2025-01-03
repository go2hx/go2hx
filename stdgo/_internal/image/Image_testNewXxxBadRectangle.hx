package stdgo._internal.image;
function testNewXxxBadRectangle(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _call = (function(_f:stdgo._internal.image.Image_Rectangle.Rectangle -> Void, _r:stdgo._internal.image.Image_Rectangle.Rectangle):Bool {
            var __deferstack__:Array<Void -> Void> = [];
            var _ok = false;
            try {
                {
                    __deferstack__.unshift(() -> ({
                        var a = function():Void {
                            if (({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            }) != null) {
                                _ok = false;
                            };
                        };
                        a();
                    }));
                };
                _f(_r?.__copy__());
                {
                    final __ret__:Bool = _ok = true;
                    for (defer in __deferstack__) {
                        __deferstack__.remove(defer);
                        defer();
                    };
                    return __ret__;
                };
                {
                    for (defer in __deferstack__) {
                        __deferstack__.remove(defer);
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return _ok;
                };
            } catch(__exception__) {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _ok;
            };
        } : (stdgo._internal.image.Image_Rectangle.Rectangle -> Void, stdgo._internal.image.Image_Rectangle.Rectangle) -> Bool);
        var _testCases = (new stdgo.Slice<stdgo._internal.image.Image_T__struct_1.T__struct_1>(12, 12, ...[
({ _name : ("RGBA" : stdgo.GoString), _f : function(_r:stdgo._internal.image.Image_Rectangle.Rectangle):Void {
            stdgo._internal.image.Image_newRGBA.newRGBA(_r?.__copy__());
        } } : stdgo._internal.image.Image_T__struct_1.T__struct_1),
({ _name : ("RGBA64" : stdgo.GoString), _f : function(_r:stdgo._internal.image.Image_Rectangle.Rectangle):Void {
            stdgo._internal.image.Image_newRGBA64.newRGBA64(_r?.__copy__());
        } } : stdgo._internal.image.Image_T__struct_1.T__struct_1),
({ _name : ("NRGBA" : stdgo.GoString), _f : function(_r:stdgo._internal.image.Image_Rectangle.Rectangle):Void {
            stdgo._internal.image.Image_newNRGBA.newNRGBA(_r?.__copy__());
        } } : stdgo._internal.image.Image_T__struct_1.T__struct_1),
({ _name : ("NRGBA64" : stdgo.GoString), _f : function(_r:stdgo._internal.image.Image_Rectangle.Rectangle):Void {
            stdgo._internal.image.Image_newNRGBA64.newNRGBA64(_r?.__copy__());
        } } : stdgo._internal.image.Image_T__struct_1.T__struct_1),
({ _name : ("Alpha" : stdgo.GoString), _f : function(_r:stdgo._internal.image.Image_Rectangle.Rectangle):Void {
            stdgo._internal.image.Image_newAlpha.newAlpha(_r?.__copy__());
        } } : stdgo._internal.image.Image_T__struct_1.T__struct_1),
({ _name : ("Alpha16" : stdgo.GoString), _f : function(_r:stdgo._internal.image.Image_Rectangle.Rectangle):Void {
            stdgo._internal.image.Image_newAlpha16.newAlpha16(_r?.__copy__());
        } } : stdgo._internal.image.Image_T__struct_1.T__struct_1),
({ _name : ("Gray" : stdgo.GoString), _f : function(_r:stdgo._internal.image.Image_Rectangle.Rectangle):Void {
            stdgo._internal.image.Image_newGray.newGray(_r?.__copy__());
        } } : stdgo._internal.image.Image_T__struct_1.T__struct_1),
({ _name : ("Gray16" : stdgo.GoString), _f : function(_r:stdgo._internal.image.Image_Rectangle.Rectangle):Void {
            stdgo._internal.image.Image_newGray16.newGray16(_r?.__copy__());
        } } : stdgo._internal.image.Image_T__struct_1.T__struct_1),
({ _name : ("CMYK" : stdgo.GoString), _f : function(_r:stdgo._internal.image.Image_Rectangle.Rectangle):Void {
            stdgo._internal.image.Image_newCMYK.newCMYK(_r?.__copy__());
        } } : stdgo._internal.image.Image_T__struct_1.T__struct_1),
({ _name : ("Paletted" : stdgo.GoString), _f : function(_r:stdgo._internal.image.Image_Rectangle.Rectangle):Void {
            stdgo._internal.image.Image_newPaletted.newPaletted(_r?.__copy__(), (new stdgo.Slice<stdgo._internal.image.color.Color_Color.Color>(2, 2, ...[stdgo.Go.asInterface(stdgo._internal.image.color.Color_black.black), stdgo.Go.asInterface(stdgo._internal.image.color.Color_white.white)]) : stdgo._internal.image.color.Color_Palette.Palette));
        } } : stdgo._internal.image.Image_T__struct_1.T__struct_1),
({ _name : ("YCbCr" : stdgo.GoString), _f : function(_r:stdgo._internal.image.Image_Rectangle.Rectangle):Void {
            stdgo._internal.image.Image_newYCbCr.newYCbCr(_r?.__copy__(), (1 : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio));
        } } : stdgo._internal.image.Image_T__struct_1.T__struct_1),
({ _name : ("NYCbCrA" : stdgo.GoString), _f : function(_r:stdgo._internal.image.Image_Rectangle.Rectangle):Void {
            stdgo._internal.image.Image_newNYCbCrA.newNYCbCrA(_r?.__copy__(), (0 : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio));
        } } : stdgo._internal.image.Image_T__struct_1.T__struct_1)].concat([for (i in 12 ... (12 > 12 ? 12 : 12 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _f : null } : stdgo._internal.image.Image_T__struct_1.T__struct_1)])) : stdgo.Slice<stdgo._internal.image.Image_T__struct_1.T__struct_1>);
        for (__0 => _tc in _testCases) {
            for (__1 => _negDx in (new stdgo.Slice<Bool>(2, 2, ...[false, true]) : stdgo.Slice<Bool>)) {
                for (__2 => _negDy in (new stdgo.Slice<Bool>(2, 2, ...[false, true]) : stdgo.Slice<Bool>)) {
                    var _r = ({ min : (new stdgo._internal.image.Image_Point.Point((15 : stdgo.GoInt), (28 : stdgo.GoInt)) : stdgo._internal.image.Image_Point.Point), max : (new stdgo._internal.image.Image_Point.Point((16 : stdgo.GoInt), (29 : stdgo.GoInt)) : stdgo._internal.image.Image_Point.Point) } : stdgo._internal.image.Image_Rectangle.Rectangle);
                    if (_negDx) {
                        _r.max.x = (14 : stdgo.GoInt);
                    };
                    if (_negDy) {
                        _r.max.y = (27 : stdgo.GoInt);
                    };
                    var _got = (_call(_tc._f, _r?.__copy__()) : Bool);
                    var _want = (!_negDx && !_negDy : Bool);
                    if (_got != (_want)) {
                        @:check2r _t.errorf(("New%s: negDx=%t, negDy=%t: got %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_tc._name), stdgo.Go.toInterface(_negDx), stdgo.Go.toInterface(_negDy), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
            };
            {
                var _zeroAsUint = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
                var _maxUint = (_zeroAsUint - (1u32 : stdgo.GoUInt) : stdgo.GoUInt);
                var _maxInt = ((_maxUint / (2u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt);
                var _got = (_call(_tc._f, ({ min : (new stdgo._internal.image.Image_Point.Point((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.image.Image_Point.Point), max : (new stdgo._internal.image.Image_Point.Point(_maxInt, _maxInt) : stdgo._internal.image.Image_Point.Point) } : stdgo._internal.image.Image_Rectangle.Rectangle)) : Bool);
                if (_got) {
                    @:check2r _t.errorf(("New%s: overflow: got ok, want !ok" : stdgo.GoString), stdgo.Go.toInterface(_tc._name));
                };
            };
        };
    }
