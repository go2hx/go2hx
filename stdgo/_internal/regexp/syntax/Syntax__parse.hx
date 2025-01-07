package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _re_3531556:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _c_3531323:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _min_3530270:stdgo.GoInt = (0 : stdgo.GoInt);
            var _op_3528782:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _c_3528764:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _lit_3531243:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3530255:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3528798:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3532382:stdgo.GoInt = (0 : stdgo.GoInt);
            var _after_3530280:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3528744:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var bigSwitchBreak = false;
            var _r_3531957:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _r_3531718:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _err_3528602:stdgo.Error = (null : stdgo.Error);
            var _err_3531727:stdgo.Error = (null : stdgo.Error);
            var _err_3531332:stdgo.Error = (null : stdgo.Error);
            var _repeat_3528880:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3531326:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3530287:Bool = false;
            var _before_3529947:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3531960:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3531721:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3530275:stdgo.GoInt = (0 : stdgo.GoInt);
            var _after_3530072:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3528856:stdgo.GoString = ("" : stdgo.GoString);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            __deferstack__.unshift({ ran : false, f : () -> ({
                                var a = function():Void {
                                    {
                                        var _r = ({
                                            final r = stdgo.Go.recover_exception;
                                            stdgo.Go.recover_exception = null;
                                            r;
                                        } : stdgo.AnyInterface);
                                        {
                                            final __value__ = _r;
                                            if (__value__ == null) {} else if (__value__ == (stdgo.Go.toInterface(stdgo.Go.asInterface((("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode))))) {
                                                _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), expr : _s?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>));
                                            } else if (__value__ == (stdgo.Go.toInterface(stdgo.Go.asInterface((("expression nests too deeply" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode))))) {
                                                _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("expression nests too deeply" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), expr : _s?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>));
                                            } else {
                                                throw stdgo.Go.toInterface(_r);
                                            };
                                        };
                                    };
                                };
                                a();
                            }) });
                        };
                        if ((_flags & (2 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3528555i32;
                        } else {
                            _gotoNext = 3528736i32;
                        };
                    } else if (__value__ == (3528555i32)) {
                        {
                            _err_3528602 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3528602 != null) {
                                _gotoNext = 3528634i32;
                            } else {
                                _gotoNext = 3528661i32;
                            };
                        };
                    } else if (__value__ == (3528634i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3528602 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3528661i32;
                    } else if (__value__ == (3528661i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3528736i32;
                    } else if (__value__ == (3528736i32)) {
                        _p_3528744._flags = _flags;
                        _p_3528744._wholeRegexp = _s?.__copy__();
                        _t_3528856 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3528864i32;
                    } else if (__value__ == (3528864i32)) {
                        if (_t_3528856 != (stdgo.Go.str())) {
                            _gotoNext = 3528876i32;
                        } else {
                            _gotoNext = 3532266i32;
                        };
                    } else if (__value__ == (3528876i32)) {
                        _repeat_3528880 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3528894i32;
                    } else if (__value__ == (3528894i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3528907i32;
                    } else if (__value__ == (3528907i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3528856[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3529020i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3529290i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3529387i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3529483i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3529598i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3529728i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3529842i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3529924i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3530225i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3530781i32;
                                } else {
                                    _gotoNext = 3528923i32;
                                };
                            };
                        } else {
                            _gotoNext = 3532241i32;
                        };
                    } else if (__value__ == (3528923i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3528856?.__copy__());
                                _c_3528764 = __tmp__._0;
                                _t_3528856 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3528974i32;
                            } else {
                                _gotoNext = 3529004i32;
                            };
                        };
                    } else if (__value__ == (3528974i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3529004i32;
                    } else if (__value__ == (3529004i32)) {
                        @:check2 _p_3528744._literal(_c_3528764);
                        _gotoNext = 3532241i32;
                    } else if (__value__ == (3529020i32)) {
                        if ((((_p_3528744._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3528856.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3528856[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3529085i32;
                        } else {
                            _gotoNext = 3529228i32;
                        };
                    } else if (__value__ == (3529085i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3528744._parsePerlFlags(_t_3528856?.__copy__());
                                _t_3528856 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3529181i32;
                            } else {
                                _gotoNext = 3529214i32;
                            };
                        };
                    } else if (__value__ == (3529181i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3529214i32;
                    } else if (__value__ == (3529214i32)) {
                        _gotoNext = 3532241i32;
                    } else if (__value__ == (3529228i32)) {
                        _p_3528744._numCap++;
                        @:check2 _p_3528744._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3528744._numCap;
                        _t_3528856 = (_t_3528856.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3532241i32;
                    } else if (__value__ == (3529290i32)) {
                        {
                            _err = @:check2 _p_3528744._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3529345i32;
                            } else {
                                _gotoNext = 3529375i32;
                            };
                        };
                    } else if (__value__ == (3529345i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3529375i32;
                    } else if (__value__ == (3529375i32)) {
                        _t_3528856 = (_t_3528856.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3532241i32;
                    } else if (__value__ == (3529387i32)) {
                        {
                            _err = @:check2 _p_3528744._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3529441i32;
                            } else {
                                _gotoNext = 3529471i32;
                            };
                        };
                    } else if (__value__ == (3529441i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3529471i32;
                    } else if (__value__ == (3529471i32)) {
                        _t_3528856 = (_t_3528856.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3532241i32;
                    } else if (__value__ == (3529483i32)) {
                        if ((_p_3528744._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3529520i32;
                        } else {
                            _gotoNext = 3529554i32;
                        };
                    } else if (__value__ == (3529520i32)) {
                        @:check2 _p_3528744._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3529586i32;
                    } else if (__value__ == (3529554i32)) {
                        _gotoNext = 3529554i32;
                        @:check2 _p_3528744._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3529586i32;
                    } else if (__value__ == (3529586i32)) {
                        _t_3528856 = (_t_3528856.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3532241i32;
                    } else if (__value__ == (3529598i32)) {
                        if ((_p_3528744._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3529635i32;
                        } else {
                            _gotoNext = 3529686i32;
                        };
                    } else if (__value__ == (3529635i32)) {
                        {
                            final __t__ = @:check2 _p_3528744._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3529716i32;
                    } else if (__value__ == (3529686i32)) {
                        _gotoNext = 3529686i32;
                        @:check2 _p_3528744._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3529716i32;
                    } else if (__value__ == (3529716i32)) {
                        _t_3528856 = (_t_3528856.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3532241i32;
                    } else if (__value__ == (3529728i32)) {
                        if ((_p_3528744._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3529763i32;
                        } else {
                            _gotoNext = 3529795i32;
                        };
                    } else if (__value__ == (3529763i32)) {
                        @:check2 _p_3528744._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3529830i32;
                    } else if (__value__ == (3529795i32)) {
                        _gotoNext = 3529795i32;
                        @:check2 _p_3528744._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3529830i32;
                    } else if (__value__ == (3529830i32)) {
                        _t_3528856 = (_t_3528856.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3532241i32;
                    } else if (__value__ == (3529842i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3528744._parseClass(_t_3528856?.__copy__());
                                _t_3528856 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3529895i32;
                            } else {
                                _gotoNext = 3532241i32;
                            };
                        };
                    } else if (__value__ == (3529895i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3532241i32;
                    } else if (__value__ == (3529924i32)) {
                        _before_3529947 = _t_3528856?.__copy__();
                        _gotoNext = 3529962i32;
                    } else if (__value__ == (3529962i32)) {
                        {
                            final __value__ = _t_3528856[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3529979i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3530008i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3530037i32;
                            } else {
                                _gotoNext = 3530072i32;
                            };
                        };
                    } else if (__value__ == (3529979i32)) {
                        _op_3528782 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3530072i32;
                    } else if (__value__ == (3530008i32)) {
                        _op_3528782 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3530072i32;
                    } else if (__value__ == (3530037i32)) {
                        _op_3528782 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3530072i32;
                    } else if (__value__ == (3530072i32)) {
                        _after_3530072 = (_t_3528856.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3528744._repeat(_op_3528782, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3529947?.__copy__(), _after_3530072?.__copy__(), _lastRepeat_3528798?.__copy__());
                                _after_3530072 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3530164i32;
                            } else {
                                _gotoNext = 3530194i32;
                            };
                        };
                    } else if (__value__ == (3530164i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3530194i32;
                    } else if (__value__ == (3530194i32)) {
                        _repeat_3528880 = _before_3529947?.__copy__();
                        _t_3528856 = _after_3530072?.__copy__();
                        _gotoNext = 3532241i32;
                    } else if (__value__ == (3530225i32)) {
                        _op_3528782 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3530255 = _t_3528856?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3528744._parseRepeat(_t_3528856?.__copy__());
                            _min_3530270 = __tmp__._0;
                            _max_3530275 = __tmp__._1;
                            _after_3530280 = __tmp__._2?.__copy__();
                            _ok_3530287 = __tmp__._3;
                        };
                        if (!_ok_3530287) {
                            _gotoNext = 3530320i32;
                        } else {
                            _gotoNext = 3530428i32;
                        };
                    } else if (__value__ == (3530320i32)) {
                        @:check2 _p_3528744._literal((123 : stdgo.GoInt32));
                        _t_3528856 = (_t_3528856.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3532241i32;
                    } else if (__value__ == (3530428i32)) {
                        if (((((_min_3530270 < (0 : stdgo.GoInt) : Bool) || (_min_3530270 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3530275 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3530275 >= (0 : stdgo.GoInt) : Bool) && (_min_3530270 > _max_3530275 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3530492i32;
                        } else {
                            _gotoNext = 3530642i32;
                        };
                    } else if (__value__ == (3530492i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3530255.__slice__(0, ((_before_3530255.length) - (_after_3530280.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3530642i32;
                    } else if (__value__ == (3530642i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3528744._repeat(_op_3528782, _min_3530270, _max_3530275, _before_3530255?.__copy__(), _after_3530280?.__copy__(), _lastRepeat_3528798?.__copy__());
                                _after_3530280 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3530720i32;
                            } else {
                                _gotoNext = 3530750i32;
                            };
                        };
                    } else if (__value__ == (3530720i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3530750i32;
                    } else if (__value__ == (3530750i32)) {
                        _repeat_3528880 = _before_3530255?.__copy__();
                        _t_3528856 = _after_3530280?.__copy__();
                        _gotoNext = 3532241i32;
                    } else if (__value__ == (3530781i32)) {
                        if ((((_p_3528744._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3528856.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3530832i32;
                        } else {
                            _gotoNext = 3531556i32;
                        };
                    } else if (__value__ == (3530832i32)) {
                        _gotoNext = 3530838i32;
                    } else if (__value__ == (3530838i32)) {
                        {
                            final __value__ = _t_3528856[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3530856i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3530929i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3531005i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3531083i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3531178i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3531474i32;
                            } else {
                                _gotoNext = 3531556i32;
                            };
                        };
                    } else if (__value__ == (3530856i32)) {
                        @:check2 _p_3528744._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3528856 = (_t_3528856.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3528907i32;
                    } else if (__value__ == (3530929i32)) {
                        @:check2 _p_3528744._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3528856 = (_t_3528856.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3528907i32;
                    } else if (__value__ == (3531005i32)) {
                        @:check2 _p_3528744._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3528856 = (_t_3528856.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3528907i32;
                    } else if (__value__ == (3531083i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3528856.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3531556i32;
                    } else if (__value__ == (3531178i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3528856.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3531243 = __tmp__._0?.__copy__();
                            _t_3528856 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3531301i32;
                    } else if (__value__ == (3531301i32)) {
                        if (_lit_3531243 != (stdgo.Go.str())) {
                            _gotoNext = 3531315i32;
                        } else {
                            _gotoNext = 3531454i32;
                        };
                    } else if (__value__ == (3531315i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3531243?.__copy__());
                            _c_3531323 = __tmp__._0;
                            _rest_3531326 = __tmp__._1?.__copy__();
                            _err_3531332 = __tmp__._2;
                        };
                        if (_err_3531332 != null) {
                            _gotoNext = 3531373i32;
                        } else {
                            _gotoNext = 3531412i32;
                        };
                    } else if (__value__ == (3531373i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3531332 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3531412i32;
                    } else if (__value__ == (3531412i32)) {
                        @:check2 _p_3528744._literal(_c_3531323);
                        _lit_3531243 = _rest_3531326?.__copy__();
                        _gotoNext = 3531301i32;
                    } else if (__value__ == (3531454i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3528907i32;
                    } else if (__value__ == (3531474i32)) {
                        @:check2 _p_3528744._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3528856 = (_t_3528856.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3528907i32;
                    } else if (__value__ == (3531556i32)) {
                        _re_3531556 = @:check2 _p_3528744._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        (@:checkr _re_3531556 ?? throw "null pointer dereference").flags = _p_3528744._flags;
                        if ((((_t_3528856.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3528856[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3528856[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3531712i32;
                        } else {
                            _gotoNext = 3531954i32;
                        };
                    } else if (__value__ == (3531712i32)) {
                        {
                            var __tmp__ = @:check2 _p_3528744._parseUnicodeClass(_t_3528856?.__copy__(), ((@:checkr _re_3531556 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3531718 = __tmp__._0;
                            _rest_3531721 = __tmp__._1?.__copy__();
                            _err_3531727 = __tmp__._2;
                        };
                        if (_err_3531727 != null) {
                            _gotoNext = 3531789i32;
                        } else {
                            _gotoNext = 3531822i32;
                        };
                    } else if (__value__ == (3531789i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3531727 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3531822i32;
                    } else if (__value__ == (3531822i32)) {
                        if (_r_3531718 != null) {
                            _gotoNext = 3531834i32;
                        } else {
                            _gotoNext = 3531954i32;
                        };
                    } else if (__value__ == (3531834i32)) {
                        (@:checkr _re_3531556 ?? throw "null pointer dereference").rune = _r_3531718;
                        _t_3528856 = _rest_3531721?.__copy__();
                        @:check2 _p_3528744._push(_re_3531556);
                        bigSwitchBreak = true;
                        _gotoNext = 3528907i32;
                    } else if (__value__ == (3531954i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3528744._parsePerlClassEscape(_t_3528856?.__copy__(), ((@:checkr _re_3531556 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3531957 = __tmp__._0;
                                _rest_3531960 = __tmp__._1?.__copy__();
                            };
                            if (_r_3531957 != null) {
                                _gotoNext = 3532018i32;
                            } else {
                                _gotoNext = 3532092i32;
                            };
                        };
                    } else if (__value__ == (3532018i32)) {
                        (@:checkr _re_3531556 ?? throw "null pointer dereference").rune = _r_3531957;
                        _t_3528856 = _rest_3531960?.__copy__();
                        @:check2 _p_3528744._push(_re_3531556);
                        bigSwitchBreak = true;
                        _gotoNext = 3528907i32;
                    } else if (__value__ == (3532092i32)) {
                        @:check2 _p_3528744._reuse(_re_3531556);
                        {
                            {
                                var __tmp__ = @:check2 _p_3528744._parseEscape(_t_3528856?.__copy__());
                                _c_3528764 = __tmp__._0;
                                _t_3528856 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3532192i32;
                            } else {
                                _gotoNext = 3532222i32;
                            };
                        };
                    } else if (__value__ == (3532192i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3532222i32;
                    } else if (__value__ == (3532222i32)) {
                        @:check2 _p_3528744._literal(_c_3528764);
                        _gotoNext = 3532241i32;
                    } else if (__value__ == (3532241i32)) {
                        _lastRepeat_3528798 = _repeat_3528880?.__copy__();
                        _gotoNext = 3528864i32;
                    } else if (__value__ == (3532266i32)) {
                        @:check2 _p_3528744._concat();
                        if (@:check2 _p_3528744._swapVerticalBar()) {
                            _gotoNext = 3532301i32;
                        } else {
                            _gotoNext = 3532366i32;
                        };
                    } else if (__value__ == (3532301i32)) {
                        _p_3528744._stack = (_p_3528744._stack.__slice__(0, ((_p_3528744._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3532366i32;
                    } else if (__value__ == (3532366i32)) {
                        @:check2 _p_3528744._alternate();
                        _n_3532382 = (_p_3528744._stack.length);
                        if (_n_3532382 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3532411i32;
                        } else {
                            _gotoNext = 3532458i32;
                        };
                    } else if (__value__ == (3532411i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3532458i32;
                    } else if (__value__ == (3532458i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3528744._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = -1i32;
                    };
                };
            };
            throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _0, _1 : _err };
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
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _0, _1 : _err };
            };
        };
    }
