package stdgo._internal.image;
function testNewXxxBadRectangle(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _call = (function(_f:stdgo._internal.image.Image_rectangle.Rectangle -> Void, _r:stdgo._internal.image.Image_rectangle.Rectangle):Bool {
            var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
            var _ok = false;
            try {
                {
                    __deferstack__.unshift({ ran : false, f : () -> ({
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
                    }) });
                };
                _f(_r?.__copy__());
                {
                    final __ret__:Bool = _ok = true;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    if (stdgo.Go.recover_exception != null) {
                        final e = stdgo.Go.recover_exception;
                        stdgo.Go.recover_exception = null;
                        throw e;
                    };
                    return _ok;
                };
            } catch(__exception__) {
                {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                        if (__exception__.message == "__return__") throw "__return__";
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    {
                        function f() {
                            try {
                                {
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                };
                            } catch(__exception__2) {
                                var exe:Dynamic = __exception__2.native;
                                if ((exe is haxe.ValueException)) exe = exe.value;
                                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                    if (__exception__.message == "__return__") throw "__return__";
                                    exe = stdgo.Go.toInterface(__exception__.message);
                                };
                                stdgo.Go.recover_exception = exe;
                                f();
                            };
                        };
                        f();
                    };
                    if (stdgo.Go.recover_exception != null) {
                        final e = stdgo.Go.recover_exception;
                        stdgo.Go.recover_exception = null;
                        throw e;
                    };
                    return _ok;
                };
            };
        } : (stdgo._internal.image.Image_rectangle.Rectangle -> Void, stdgo._internal.image.Image_rectangle.Rectangle) -> Bool);
        var _testCases = (new stdgo.Slice<stdgo._internal.image.Image_t__struct_1.T__struct_1>(12, 12, ...[
({ _name : ("RGBA" : stdgo.GoString), _f : function(_r:stdgo._internal.image.Image_rectangle.Rectangle):Void {
            stdgo._internal.image.Image_newrgba.newRGBA(_r?.__copy__());
        } } : stdgo._internal.image.Image_t__struct_1.T__struct_1),
({ _name : ("RGBA64" : stdgo.GoString), _f : function(_r:stdgo._internal.image.Image_rectangle.Rectangle):Void {
            stdgo._internal.image.Image_newrgba64.newRGBA64(_r?.__copy__());
        } } : stdgo._internal.image.Image_t__struct_1.T__struct_1),
({ _name : ("NRGBA" : stdgo.GoString), _f : function(_r:stdgo._internal.image.Image_rectangle.Rectangle):Void {
            stdgo._internal.image.Image_newnrgba.newNRGBA(_r?.__copy__());
        } } : stdgo._internal.image.Image_t__struct_1.T__struct_1),
({ _name : ("NRGBA64" : stdgo.GoString), _f : function(_r:stdgo._internal.image.Image_rectangle.Rectangle):Void {
            stdgo._internal.image.Image_newnrgba64.newNRGBA64(_r?.__copy__());
        } } : stdgo._internal.image.Image_t__struct_1.T__struct_1),
({ _name : ("Alpha" : stdgo.GoString), _f : function(_r:stdgo._internal.image.Image_rectangle.Rectangle):Void {
            stdgo._internal.image.Image_newalpha.newAlpha(_r?.__copy__());
        } } : stdgo._internal.image.Image_t__struct_1.T__struct_1),
({ _name : ("Alpha16" : stdgo.GoString), _f : function(_r:stdgo._internal.image.Image_rectangle.Rectangle):Void {
            stdgo._internal.image.Image_newalpha16.newAlpha16(_r?.__copy__());
        } } : stdgo._internal.image.Image_t__struct_1.T__struct_1),
({ _name : ("Gray" : stdgo.GoString), _f : function(_r:stdgo._internal.image.Image_rectangle.Rectangle):Void {
            stdgo._internal.image.Image_newgray.newGray(_r?.__copy__());
        } } : stdgo._internal.image.Image_t__struct_1.T__struct_1),
({ _name : ("Gray16" : stdgo.GoString), _f : function(_r:stdgo._internal.image.Image_rectangle.Rectangle):Void {
            stdgo._internal.image.Image_newgray16.newGray16(_r?.__copy__());
        } } : stdgo._internal.image.Image_t__struct_1.T__struct_1),
({ _name : ("CMYK" : stdgo.GoString), _f : function(_r:stdgo._internal.image.Image_rectangle.Rectangle):Void {
            stdgo._internal.image.Image_newcmyk.newCMYK(_r?.__copy__());
        } } : stdgo._internal.image.Image_t__struct_1.T__struct_1),
({ _name : ("Paletted" : stdgo.GoString), _f : function(_r:stdgo._internal.image.Image_rectangle.Rectangle):Void {
            stdgo._internal.image.Image_newpaletted.newPaletted(_r?.__copy__(), (new stdgo.Slice<stdgo._internal.image.color.Color_color.Color>(2, 2, ...[stdgo.Go.asInterface(stdgo._internal.image.color.Color_black.black), stdgo.Go.asInterface(stdgo._internal.image.color.Color_white.white)]) : stdgo._internal.image.color.Color_palette.Palette));
        } } : stdgo._internal.image.Image_t__struct_1.T__struct_1),
({ _name : ("YCbCr" : stdgo.GoString), _f : function(_r:stdgo._internal.image.Image_rectangle.Rectangle):Void {
            stdgo._internal.image.Image_newycbcr.newYCbCr(_r?.__copy__(), (1 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio));
        } } : stdgo._internal.image.Image_t__struct_1.T__struct_1),
({ _name : ("NYCbCrA" : stdgo.GoString), _f : function(_r:stdgo._internal.image.Image_rectangle.Rectangle):Void {
            stdgo._internal.image.Image_newnycbcra.newNYCbCrA(_r?.__copy__(), (0 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio));
        } } : stdgo._internal.image.Image_t__struct_1.T__struct_1)].concat([for (i in 12 ... (12 > 12 ? 12 : 12 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _f : null } : stdgo._internal.image.Image_t__struct_1.T__struct_1)])) : stdgo.Slice<stdgo._internal.image.Image_t__struct_1.T__struct_1>);
        for (__0 => _tc in _testCases) {
            for (__1 => _negDx in (new stdgo.Slice<Bool>(2, 2, ...[false, true]) : stdgo.Slice<Bool>)) {
                for (__2 => _negDy in (new stdgo.Slice<Bool>(2, 2, ...[false, true]) : stdgo.Slice<Bool>)) {
                    var _r = ({ min : (new stdgo._internal.image.Image_point.Point((15 : stdgo.GoInt), (28 : stdgo.GoInt)) : stdgo._internal.image.Image_point.Point), max : (new stdgo._internal.image.Image_point.Point((16 : stdgo.GoInt), (29 : stdgo.GoInt)) : stdgo._internal.image.Image_point.Point) } : stdgo._internal.image.Image_rectangle.Rectangle);
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
                var _got = (_call(_tc._f, ({ min : (new stdgo._internal.image.Image_point.Point((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.image.Image_point.Point), max : (new stdgo._internal.image.Image_point.Point(_maxInt, _maxInt) : stdgo._internal.image.Image_point.Point) } : stdgo._internal.image.Image_rectangle.Rectangle)) : Bool);
                if (_got) {
                    @:check2r _t.errorf(("New%s: overflow: got ok, want !ok" : stdgo.GoString), stdgo.Go.toInterface(_tc._name));
                };
            };
        };
    }
