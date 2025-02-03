package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _r_3298672:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _lit_3297958:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3298436:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3298041:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3295571:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3298047:stdgo.Error = (null : stdgo.Error);
            var _after_3296787:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3296662:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3295459:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _rest_3298675:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3298038:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _lastRepeat_3295513:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _r_3298433:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _ok_3297002:Bool = false;
            var _after_3296995:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3295497:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _err_3295317:stdgo.Error = (null : stdgo.Error);
            var _n_3299097:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_3298442:stdgo.Error = (null : stdgo.Error);
            var _re_3298271:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _max_3296990:stdgo.GoInt = (0 : stdgo.GoInt);
            var _min_3296985:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3296970:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3295595:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3295479:stdgo.GoInt32 = (0 : stdgo.GoInt32);
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
                            _gotoNext = 3295270i32;
                        } else {
                            _gotoNext = 3295451i32;
                        };
                    } else if (__value__ == (3295270i32)) {
                        {
                            _err_3295317 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3295317 != null) {
                                _gotoNext = 3295349i32;
                            } else {
                                _gotoNext = 3295376i32;
                            };
                        };
                    } else if (__value__ == (3295349i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3295317 };
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
                        _gotoNext = 3295376i32;
                    } else if (__value__ == (3295376i32)) {
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
                        _gotoNext = 3295451i32;
                    } else if (__value__ == (3295451i32)) {
                        _p_3295459._flags = _flags;
                        _p_3295459._wholeRegexp = _s?.__copy__();
                        _t_3295571 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3295579i32;
                    } else if (__value__ == (3295579i32)) {
                        if (_t_3295571 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3295591i32;
                        } else {
                            _gotoNext = 3298981i32;
                        };
                    } else if (__value__ == (3295591i32)) {
                        _repeat_3295595 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3295609i32;
                    } else if (__value__ == (3295609i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3295622i32;
                    } else if (__value__ == (3295622i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3295571[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3295735i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3296005i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3296102i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3296198i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3296313i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3296443i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3296557i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3296639i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3296940i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3297496i32;
                                } else {
                                    _gotoNext = 3295638i32;
                                };
                            };
                        } else {
                            _gotoNext = 3298956i32;
                        };
                    } else if (__value__ == (3295638i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3295571?.__copy__());
                                _c_3295479 = @:tmpset0 __tmp__._0;
                                _t_3295571 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3295689i32;
                            } else {
                                _gotoNext = 3295719i32;
                            };
                        };
                    } else if (__value__ == (3295689i32)) {
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
                        _gotoNext = 3295719i32;
                    } else if (__value__ == (3295719i32)) {
                        @:check2 _p_3295459._literal(_c_3295479);
                        _gotoNext = 3298956i32;
                    } else if (__value__ == (3295735i32)) {
                        if ((((_p_3295459._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3295571.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3295571[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3295800i32;
                        } else {
                            _gotoNext = 3295943i32;
                        };
                    } else if (__value__ == (3295800i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3295459._parsePerlFlags(_t_3295571?.__copy__());
                                _t_3295571 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3295896i32;
                            } else {
                                _gotoNext = 3295929i32;
                            };
                        };
                    } else if (__value__ == (3295896i32)) {
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
                        _gotoNext = 3295929i32;
                    } else if (__value__ == (3295929i32)) {
                        _gotoNext = 3298956i32;
                    } else if (__value__ == (3295943i32)) {
                        _p_3295459._numCap++;
                        @:check2 _p_3295459._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3295459._numCap;
                        _t_3295571 = (_t_3295571.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3298956i32;
                    } else if (__value__ == (3296005i32)) {
                        {
                            _err = @:check2 _p_3295459._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3296060i32;
                            } else {
                                _gotoNext = 3296090i32;
                            };
                        };
                    } else if (__value__ == (3296060i32)) {
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
                        _gotoNext = 3296090i32;
                    } else if (__value__ == (3296090i32)) {
                        _t_3295571 = (_t_3295571.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3298956i32;
                    } else if (__value__ == (3296102i32)) {
                        {
                            _err = @:check2 _p_3295459._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3296156i32;
                            } else {
                                _gotoNext = 3296186i32;
                            };
                        };
                    } else if (__value__ == (3296156i32)) {
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
                        _gotoNext = 3296186i32;
                    } else if (__value__ == (3296186i32)) {
                        _t_3295571 = (_t_3295571.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3298956i32;
                    } else if (__value__ == (3296198i32)) {
                        if ((_p_3295459._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3296235i32;
                        } else {
                            _gotoNext = 3296269i32;
                        };
                    } else if (__value__ == (3296235i32)) {
                        @:check2 _p_3295459._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3296301i32;
                    } else if (__value__ == (3296269i32)) {
                        _gotoNext = 3296269i32;
                        @:check2 _p_3295459._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3296301i32;
                    } else if (__value__ == (3296301i32)) {
                        _t_3295571 = (_t_3295571.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3298956i32;
                    } else if (__value__ == (3296313i32)) {
                        if ((_p_3295459._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3296350i32;
                        } else {
                            _gotoNext = 3296401i32;
                        };
                    } else if (__value__ == (3296350i32)) {
                        {
                            final __t__ = @:check2 _p_3295459._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3296431i32;
                    } else if (__value__ == (3296401i32)) {
                        _gotoNext = 3296401i32;
                        @:check2 _p_3295459._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3296431i32;
                    } else if (__value__ == (3296431i32)) {
                        _t_3295571 = (_t_3295571.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3298956i32;
                    } else if (__value__ == (3296443i32)) {
                        if ((_p_3295459._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3296478i32;
                        } else {
                            _gotoNext = 3296510i32;
                        };
                    } else if (__value__ == (3296478i32)) {
                        @:check2 _p_3295459._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3296545i32;
                    } else if (__value__ == (3296510i32)) {
                        _gotoNext = 3296510i32;
                        @:check2 _p_3295459._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3296545i32;
                    } else if (__value__ == (3296545i32)) {
                        _t_3295571 = (_t_3295571.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3298956i32;
                    } else if (__value__ == (3296557i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3295459._parseClass(_t_3295571?.__copy__());
                                _t_3295571 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3296610i32;
                            } else {
                                _gotoNext = 3298956i32;
                            };
                        };
                    } else if (__value__ == (3296610i32)) {
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
                        _gotoNext = 3298956i32;
                    } else if (__value__ == (3296639i32)) {
                        _before_3296662 = _t_3295571?.__copy__();
                        _gotoNext = 3296677i32;
                    } else if (__value__ == (3296677i32)) {
                        {
                            final __value__ = _t_3295571[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3296694i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3296723i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3296752i32;
                            } else {
                                _gotoNext = 3296787i32;
                            };
                        };
                    } else if (__value__ == (3296694i32)) {
                        _op_3295497 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3296787i32;
                    } else if (__value__ == (3296723i32)) {
                        _op_3295497 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3296787i32;
                    } else if (__value__ == (3296752i32)) {
                        _op_3295497 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3296787i32;
                    } else if (__value__ == (3296787i32)) {
                        _after_3296787 = (_t_3295571.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3295459._repeat(_op_3295497, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3296662?.__copy__(), _after_3296787?.__copy__(), _lastRepeat_3295513?.__copy__());
                                _after_3296787 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3296879i32;
                            } else {
                                _gotoNext = 3296909i32;
                            };
                        };
                    } else if (__value__ == (3296879i32)) {
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
                        _gotoNext = 3296909i32;
                    } else if (__value__ == (3296909i32)) {
                        _repeat_3295595 = _before_3296662?.__copy__();
                        _t_3295571 = _after_3296787?.__copy__();
                        _gotoNext = 3298956i32;
                    } else if (__value__ == (3296940i32)) {
                        _op_3295497 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3296970 = _t_3295571?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3295459._parseRepeat(_t_3295571?.__copy__());
                            _min_3296985 = @:tmpset0 __tmp__._0;
                            _max_3296990 = @:tmpset0 __tmp__._1;
                            _after_3296995 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3297002 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3297002) {
                            _gotoNext = 3297035i32;
                        } else {
                            _gotoNext = 3297143i32;
                        };
                    } else if (__value__ == (3297035i32)) {
                        @:check2 _p_3295459._literal((123 : stdgo.GoInt32));
                        _t_3295571 = (_t_3295571.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3298956i32;
                    } else if (__value__ == (3297143i32)) {
                        if (((((_min_3296985 < (0 : stdgo.GoInt) : Bool) || (_min_3296985 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3296990 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3296990 >= (0 : stdgo.GoInt) : Bool) && (_min_3296985 > _max_3296990 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3297207i32;
                        } else {
                            _gotoNext = 3297357i32;
                        };
                    } else if (__value__ == (3297207i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3296970.__slice__(0, ((_before_3296970.length) - (_after_3296995.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3297357i32;
                    } else if (__value__ == (3297357i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3295459._repeat(_op_3295497, _min_3296985, _max_3296990, _before_3296970?.__copy__(), _after_3296995?.__copy__(), _lastRepeat_3295513?.__copy__());
                                _after_3296995 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3297435i32;
                            } else {
                                _gotoNext = 3297465i32;
                            };
                        };
                    } else if (__value__ == (3297435i32)) {
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
                        _gotoNext = 3297465i32;
                    } else if (__value__ == (3297465i32)) {
                        _repeat_3295595 = _before_3296970?.__copy__();
                        _t_3295571 = _after_3296995?.__copy__();
                        _gotoNext = 3298956i32;
                    } else if (__value__ == (3297496i32)) {
                        if ((((_p_3295459._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3295571.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3297547i32;
                        } else {
                            _gotoNext = 3298271i32;
                        };
                    } else if (__value__ == (3297547i32)) {
                        _gotoNext = 3297553i32;
                    } else if (__value__ == (3297553i32)) {
                        {
                            final __value__ = _t_3295571[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3297571i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3297644i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3297720i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3297798i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3297893i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3298189i32;
                            } else {
                                _gotoNext = 3298271i32;
                            };
                        };
                    } else if (__value__ == (3297571i32)) {
                        @:check2 _p_3295459._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3295571 = (_t_3295571.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3295622i32;
                    } else if (__value__ == (3297644i32)) {
                        @:check2 _p_3295459._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3295571 = (_t_3295571.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3295622i32;
                    } else if (__value__ == (3297720i32)) {
                        @:check2 _p_3295459._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3295571 = (_t_3295571.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3295622i32;
                    } else if (__value__ == (3297798i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3295571.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3298271i32;
                    } else if (__value__ == (3297893i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3295571.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3297958 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3295571 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3298016i32;
                    } else if (__value__ == (3298016i32)) {
                        if (_lit_3297958 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3298030i32;
                        } else {
                            _gotoNext = 3298169i32;
                        };
                    } else if (__value__ == (3298030i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3297958?.__copy__());
                            _c_3298038 = @:tmpset0 __tmp__._0;
                            _rest_3298041 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3298047 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3298047 != null) {
                            _gotoNext = 3298088i32;
                        } else {
                            _gotoNext = 3298127i32;
                        };
                    } else if (__value__ == (3298088i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3298047 };
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
                        _gotoNext = 3298127i32;
                    } else if (__value__ == (3298127i32)) {
                        @:check2 _p_3295459._literal(_c_3298038);
                        _lit_3297958 = _rest_3298041?.__copy__();
                        _gotoNext = 3298016i32;
                    } else if (__value__ == (3298169i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3295622i32;
                    } else if (__value__ == (3298189i32)) {
                        @:check2 _p_3295459._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3295571 = (_t_3295571.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3295622i32;
                    } else if (__value__ == (3298271i32)) {
                        _re_3298271 = @:check2 _p_3295459._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        (@:checkr _re_3298271 ?? throw "null pointer dereference").flags = _p_3295459._flags;
                        if ((((_t_3295571.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3295571[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3295571[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3298427i32;
                        } else {
                            _gotoNext = 3298669i32;
                        };
                    } else if (__value__ == (3298427i32)) {
                        {
                            var __tmp__ = @:check2 _p_3295459._parseUnicodeClass(_t_3295571?.__copy__(), ((@:checkr _re_3298271 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3298433 = @:tmpset0 __tmp__._0;
                            _rest_3298436 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3298442 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3298442 != null) {
                            _gotoNext = 3298504i32;
                        } else {
                            _gotoNext = 3298537i32;
                        };
                    } else if (__value__ == (3298504i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3298442 };
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
                        _gotoNext = 3298537i32;
                    } else if (__value__ == (3298537i32)) {
                        if (_r_3298433 != null) {
                            _gotoNext = 3298549i32;
                        } else {
                            _gotoNext = 3298669i32;
                        };
                    } else if (__value__ == (3298549i32)) {
                        (@:checkr _re_3298271 ?? throw "null pointer dereference").rune = _r_3298433;
                        _t_3295571 = _rest_3298436?.__copy__();
                        @:check2 _p_3295459._push(_re_3298271);
                        bigSwitchBreak = true;
                        _gotoNext = 3295622i32;
                    } else if (__value__ == (3298669i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3295459._parsePerlClassEscape(_t_3295571?.__copy__(), ((@:checkr _re_3298271 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3298672 = @:tmpset0 __tmp__._0;
                                _rest_3298675 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3298672 != null) {
                                _gotoNext = 3298733i32;
                            } else {
                                _gotoNext = 3298807i32;
                            };
                        };
                    } else if (__value__ == (3298733i32)) {
                        (@:checkr _re_3298271 ?? throw "null pointer dereference").rune = _r_3298672;
                        _t_3295571 = _rest_3298675?.__copy__();
                        @:check2 _p_3295459._push(_re_3298271);
                        bigSwitchBreak = true;
                        _gotoNext = 3295622i32;
                    } else if (__value__ == (3298807i32)) {
                        @:check2 _p_3295459._reuse(_re_3298271);
                        {
                            {
                                var __tmp__ = @:check2 _p_3295459._parseEscape(_t_3295571?.__copy__());
                                _c_3295479 = @:tmpset0 __tmp__._0;
                                _t_3295571 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3298907i32;
                            } else {
                                _gotoNext = 3298937i32;
                            };
                        };
                    } else if (__value__ == (3298907i32)) {
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
                        _gotoNext = 3298937i32;
                    } else if (__value__ == (3298937i32)) {
                        @:check2 _p_3295459._literal(_c_3295479);
                        _gotoNext = 3298956i32;
                    } else if (__value__ == (3298956i32)) {
                        _lastRepeat_3295513 = _repeat_3295595?.__copy__();
                        _gotoNext = 3295579i32;
                    } else if (__value__ == (3298981i32)) {
                        @:check2 _p_3295459._concat();
                        if (@:check2 _p_3295459._swapVerticalBar()) {
                            _gotoNext = 3299016i32;
                        } else {
                            _gotoNext = 3299081i32;
                        };
                    } else if (__value__ == (3299016i32)) {
                        _p_3295459._stack = (_p_3295459._stack.__slice__(0, ((_p_3295459._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3299081i32;
                    } else if (__value__ == (3299081i32)) {
                        @:check2 _p_3295459._alternate();
                        _n_3299097 = (_p_3295459._stack.length);
                        if (_n_3299097 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3299126i32;
                        } else {
                            _gotoNext = 3299173i32;
                        };
                    } else if (__value__ == (3299126i32)) {
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
                        _gotoNext = 3299173i32;
                    } else if (__value__ == (3299173i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3295459._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : _0, _1 : _err };
            };
        };
    }
