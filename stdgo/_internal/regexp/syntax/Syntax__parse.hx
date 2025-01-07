package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _after_3443100:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3442892:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3444541:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3443095:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err_3444152:stdgo.Error = (null : stdgo.Error);
            var _err_3441422:stdgo.Error = (null : stdgo.Error);
            var _err_3444547:stdgo.Error = (null : stdgo.Error);
            var _r_3444538:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _op_3441602:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _p_3441564:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var bigSwitchBreak = false;
            var _rest_3444780:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3444146:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3444143:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _before_3443075:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3445202:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3444777:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _ok_3443107:Bool = false;
            var _before_3442767:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3441676:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3443090:stdgo.GoInt = (0 : stdgo.GoInt);
            var _repeat_3441700:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3441618:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3441584:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _re_3444376:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _lit_3444063:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3441375i32;
                        } else {
                            _gotoNext = 3441556i32;
                        };
                    } else if (__value__ == (3441375i32)) {
                        {
                            _err_3441422 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3441422 != null) {
                                _gotoNext = 3441454i32;
                            } else {
                                _gotoNext = 3441481i32;
                            };
                        };
                    } else if (__value__ == (3441454i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3441422 };
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
                        _gotoNext = 3441481i32;
                    } else if (__value__ == (3441481i32)) {
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
                        _gotoNext = 3441556i32;
                    } else if (__value__ == (3441556i32)) {
                        _p_3441564._flags = _flags;
                        _p_3441564._wholeRegexp = _s?.__copy__();
                        _t_3441676 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3441684i32;
                    } else if (__value__ == (3441684i32)) {
                        if (_t_3441676 != (stdgo.Go.str())) {
                            _gotoNext = 3441696i32;
                        } else {
                            _gotoNext = 3445086i32;
                        };
                    } else if (__value__ == (3441696i32)) {
                        _repeat_3441700 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3441714i32;
                    } else if (__value__ == (3441714i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3441727i32;
                    } else if (__value__ == (3441727i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3441676[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3441840i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3442110i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3442207i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3442303i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3442418i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3442548i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3442662i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3442744i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3443045i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3443601i32;
                                } else {
                                    _gotoNext = 3441743i32;
                                };
                            };
                        } else {
                            _gotoNext = 3445061i32;
                        };
                    } else if (__value__ == (3441743i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3441676?.__copy__());
                                _c_3441584 = __tmp__._0;
                                _t_3441676 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3441794i32;
                            } else {
                                _gotoNext = 3441824i32;
                            };
                        };
                    } else if (__value__ == (3441794i32)) {
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
                        _gotoNext = 3441824i32;
                    } else if (__value__ == (3441824i32)) {
                        @:check2 _p_3441564._literal(_c_3441584);
                        _gotoNext = 3445061i32;
                    } else if (__value__ == (3441840i32)) {
                        if ((((_p_3441564._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3441676.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3441676[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3441905i32;
                        } else {
                            _gotoNext = 3442048i32;
                        };
                    } else if (__value__ == (3441905i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3441564._parsePerlFlags(_t_3441676?.__copy__());
                                _t_3441676 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3442001i32;
                            } else {
                                _gotoNext = 3442034i32;
                            };
                        };
                    } else if (__value__ == (3442001i32)) {
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
                        _gotoNext = 3442034i32;
                    } else if (__value__ == (3442034i32)) {
                        _gotoNext = 3445061i32;
                    } else if (__value__ == (3442048i32)) {
                        _p_3441564._numCap++;
                        @:check2 _p_3441564._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3441564._numCap;
                        _t_3441676 = (_t_3441676.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3445061i32;
                    } else if (__value__ == (3442110i32)) {
                        {
                            _err = @:check2 _p_3441564._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3442165i32;
                            } else {
                                _gotoNext = 3442195i32;
                            };
                        };
                    } else if (__value__ == (3442165i32)) {
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
                        _gotoNext = 3442195i32;
                    } else if (__value__ == (3442195i32)) {
                        _t_3441676 = (_t_3441676.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3445061i32;
                    } else if (__value__ == (3442207i32)) {
                        {
                            _err = @:check2 _p_3441564._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3442261i32;
                            } else {
                                _gotoNext = 3442291i32;
                            };
                        };
                    } else if (__value__ == (3442261i32)) {
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
                        _gotoNext = 3442291i32;
                    } else if (__value__ == (3442291i32)) {
                        _t_3441676 = (_t_3441676.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3445061i32;
                    } else if (__value__ == (3442303i32)) {
                        if ((_p_3441564._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3442340i32;
                        } else {
                            _gotoNext = 3442374i32;
                        };
                    } else if (__value__ == (3442340i32)) {
                        @:check2 _p_3441564._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3442406i32;
                    } else if (__value__ == (3442374i32)) {
                        _gotoNext = 3442374i32;
                        @:check2 _p_3441564._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3442406i32;
                    } else if (__value__ == (3442406i32)) {
                        _t_3441676 = (_t_3441676.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3445061i32;
                    } else if (__value__ == (3442418i32)) {
                        if ((_p_3441564._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3442455i32;
                        } else {
                            _gotoNext = 3442506i32;
                        };
                    } else if (__value__ == (3442455i32)) {
                        {
                            final __t__ = @:check2 _p_3441564._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                        };
                        _gotoNext = 3442536i32;
                    } else if (__value__ == (3442506i32)) {
                        _gotoNext = 3442506i32;
                        @:check2 _p_3441564._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3442536i32;
                    } else if (__value__ == (3442536i32)) {
                        _t_3441676 = (_t_3441676.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3445061i32;
                    } else if (__value__ == (3442548i32)) {
                        if ((_p_3441564._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3442583i32;
                        } else {
                            _gotoNext = 3442615i32;
                        };
                    } else if (__value__ == (3442583i32)) {
                        @:check2 _p_3441564._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3442650i32;
                    } else if (__value__ == (3442615i32)) {
                        _gotoNext = 3442615i32;
                        @:check2 _p_3441564._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3442650i32;
                    } else if (__value__ == (3442650i32)) {
                        _t_3441676 = (_t_3441676.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3445061i32;
                    } else if (__value__ == (3442662i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3441564._parseClass(_t_3441676?.__copy__());
                                _t_3441676 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3442715i32;
                            } else {
                                _gotoNext = 3445061i32;
                            };
                        };
                    } else if (__value__ == (3442715i32)) {
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
                        _gotoNext = 3445061i32;
                    } else if (__value__ == (3442744i32)) {
                        _before_3442767 = _t_3441676?.__copy__();
                        _gotoNext = 3442782i32;
                    } else if (__value__ == (3442782i32)) {
                        {
                            final __value__ = _t_3441676[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3442799i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3442828i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3442857i32;
                            } else {
                                _gotoNext = 3442892i32;
                            };
                        };
                    } else if (__value__ == (3442799i32)) {
                        _op_3441602 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3442892i32;
                    } else if (__value__ == (3442828i32)) {
                        _op_3441602 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3442892i32;
                    } else if (__value__ == (3442857i32)) {
                        _op_3441602 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3442892i32;
                    } else if (__value__ == (3442892i32)) {
                        _after_3442892 = (_t_3441676.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3441564._repeat(_op_3441602, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3442767?.__copy__(), _after_3442892?.__copy__(), _lastRepeat_3441618?.__copy__());
                                _after_3442892 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3442984i32;
                            } else {
                                _gotoNext = 3443014i32;
                            };
                        };
                    } else if (__value__ == (3442984i32)) {
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
                        _gotoNext = 3443014i32;
                    } else if (__value__ == (3443014i32)) {
                        _repeat_3441700 = _before_3442767?.__copy__();
                        _t_3441676 = _after_3442892?.__copy__();
                        _gotoNext = 3445061i32;
                    } else if (__value__ == (3443045i32)) {
                        _op_3441602 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3443075 = _t_3441676?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3441564._parseRepeat(_t_3441676?.__copy__());
                            _min_3443090 = __tmp__._0;
                            _max_3443095 = __tmp__._1;
                            _after_3443100 = __tmp__._2?.__copy__();
                            _ok_3443107 = __tmp__._3;
                        };
                        if (!_ok_3443107) {
                            _gotoNext = 3443140i32;
                        } else {
                            _gotoNext = 3443248i32;
                        };
                    } else if (__value__ == (3443140i32)) {
                        @:check2 _p_3441564._literal((123 : stdgo.GoInt32));
                        _t_3441676 = (_t_3441676.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3445061i32;
                    } else if (__value__ == (3443248i32)) {
                        if (((((_min_3443090 < (0 : stdgo.GoInt) : Bool) || (_min_3443090 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3443095 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3443095 >= (0 : stdgo.GoInt) : Bool) && (_min_3443090 > _max_3443095 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3443312i32;
                        } else {
                            _gotoNext = 3443462i32;
                        };
                    } else if (__value__ == (3443312i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3443075.__slice__(0, ((_before_3443075.length) - (_after_3443100.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3443462i32;
                    } else if (__value__ == (3443462i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3441564._repeat(_op_3441602, _min_3443090, _max_3443095, _before_3443075?.__copy__(), _after_3443100?.__copy__(), _lastRepeat_3441618?.__copy__());
                                _after_3443100 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3443540i32;
                            } else {
                                _gotoNext = 3443570i32;
                            };
                        };
                    } else if (__value__ == (3443540i32)) {
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
                        _gotoNext = 3443570i32;
                    } else if (__value__ == (3443570i32)) {
                        _repeat_3441700 = _before_3443075?.__copy__();
                        _t_3441676 = _after_3443100?.__copy__();
                        _gotoNext = 3445061i32;
                    } else if (__value__ == (3443601i32)) {
                        if ((((_p_3441564._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3441676.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3443652i32;
                        } else {
                            _gotoNext = 3444376i32;
                        };
                    } else if (__value__ == (3443652i32)) {
                        _gotoNext = 3443658i32;
                    } else if (__value__ == (3443658i32)) {
                        {
                            final __value__ = _t_3441676[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3443676i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3443749i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3443825i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3443903i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3443998i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3444294i32;
                            } else {
                                _gotoNext = 3444376i32;
                            };
                        };
                    } else if (__value__ == (3443676i32)) {
                        @:check2 _p_3441564._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3441676 = (_t_3441676.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3441727i32;
                    } else if (__value__ == (3443749i32)) {
                        @:check2 _p_3441564._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3441676 = (_t_3441676.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3441727i32;
                    } else if (__value__ == (3443825i32)) {
                        @:check2 _p_3441564._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3441676 = (_t_3441676.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3441727i32;
                    } else if (__value__ == (3443903i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3441676.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
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
                        _gotoNext = 3444376i32;
                    } else if (__value__ == (3443998i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3441676.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3444063 = __tmp__._0?.__copy__();
                            _t_3441676 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3444121i32;
                    } else if (__value__ == (3444121i32)) {
                        if (_lit_3444063 != (stdgo.Go.str())) {
                            _gotoNext = 3444135i32;
                        } else {
                            _gotoNext = 3444274i32;
                        };
                    } else if (__value__ == (3444135i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3444063?.__copy__());
                            _c_3444143 = __tmp__._0;
                            _rest_3444146 = __tmp__._1?.__copy__();
                            _err_3444152 = __tmp__._2;
                        };
                        if (_err_3444152 != null) {
                            _gotoNext = 3444193i32;
                        } else {
                            _gotoNext = 3444232i32;
                        };
                    } else if (__value__ == (3444193i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3444152 };
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
                        _gotoNext = 3444232i32;
                    } else if (__value__ == (3444232i32)) {
                        @:check2 _p_3441564._literal(_c_3444143);
                        _lit_3444063 = _rest_3444146?.__copy__();
                        _gotoNext = 3444121i32;
                    } else if (__value__ == (3444274i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3441727i32;
                    } else if (__value__ == (3444294i32)) {
                        @:check2 _p_3441564._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3441676 = (_t_3441676.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3441727i32;
                    } else if (__value__ == (3444376i32)) {
                        _re_3444376 = @:check2 _p_3441564._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        (@:checkr _re_3444376 ?? throw "null pointer dereference").flags = _p_3441564._flags;
                        if ((((_t_3441676.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3441676[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3441676[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3444532i32;
                        } else {
                            _gotoNext = 3444774i32;
                        };
                    } else if (__value__ == (3444532i32)) {
                        {
                            var __tmp__ = @:check2 _p_3441564._parseUnicodeClass(_t_3441676?.__copy__(), ((@:checkr _re_3444376 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3444538 = __tmp__._0;
                            _rest_3444541 = __tmp__._1?.__copy__();
                            _err_3444547 = __tmp__._2;
                        };
                        if (_err_3444547 != null) {
                            _gotoNext = 3444609i32;
                        } else {
                            _gotoNext = 3444642i32;
                        };
                    } else if (__value__ == (3444609i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3444547 };
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
                        _gotoNext = 3444642i32;
                    } else if (__value__ == (3444642i32)) {
                        if (_r_3444538 != null) {
                            _gotoNext = 3444654i32;
                        } else {
                            _gotoNext = 3444774i32;
                        };
                    } else if (__value__ == (3444654i32)) {
                        (@:checkr _re_3444376 ?? throw "null pointer dereference").rune = _r_3444538;
                        _t_3441676 = _rest_3444541?.__copy__();
                        @:check2 _p_3441564._push(_re_3444376);
                        bigSwitchBreak = true;
                        _gotoNext = 3441727i32;
                    } else if (__value__ == (3444774i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3441564._parsePerlClassEscape(_t_3441676?.__copy__(), ((@:checkr _re_3444376 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3444777 = __tmp__._0;
                                _rest_3444780 = __tmp__._1?.__copy__();
                            };
                            if (_r_3444777 != null) {
                                _gotoNext = 3444838i32;
                            } else {
                                _gotoNext = 3444912i32;
                            };
                        };
                    } else if (__value__ == (3444838i32)) {
                        (@:checkr _re_3444376 ?? throw "null pointer dereference").rune = _r_3444777;
                        _t_3441676 = _rest_3444780?.__copy__();
                        @:check2 _p_3441564._push(_re_3444376);
                        bigSwitchBreak = true;
                        _gotoNext = 3441727i32;
                    } else if (__value__ == (3444912i32)) {
                        @:check2 _p_3441564._reuse(_re_3444376);
                        {
                            {
                                var __tmp__ = @:check2 _p_3441564._parseEscape(_t_3441676?.__copy__());
                                _c_3441584 = __tmp__._0;
                                _t_3441676 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3445012i32;
                            } else {
                                _gotoNext = 3445042i32;
                            };
                        };
                    } else if (__value__ == (3445012i32)) {
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
                        _gotoNext = 3445042i32;
                    } else if (__value__ == (3445042i32)) {
                        @:check2 _p_3441564._literal(_c_3441584);
                        _gotoNext = 3445061i32;
                    } else if (__value__ == (3445061i32)) {
                        _lastRepeat_3441618 = _repeat_3441700?.__copy__();
                        _gotoNext = 3441684i32;
                    } else if (__value__ == (3445086i32)) {
                        @:check2 _p_3441564._concat();
                        if (@:check2 _p_3441564._swapVerticalBar()) {
                            _gotoNext = 3445121i32;
                        } else {
                            _gotoNext = 3445186i32;
                        };
                    } else if (__value__ == (3445121i32)) {
                        _p_3441564._stack = (_p_3441564._stack.__slice__(0, ((_p_3441564._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3445186i32;
                    } else if (__value__ == (3445186i32)) {
                        @:check2 _p_3441564._alternate();
                        _n_3445202 = (_p_3441564._stack.length);
                        if (_n_3445202 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3445231i32;
                        } else {
                            _gotoNext = 3445278i32;
                        };
                    } else if (__value__ == (3445231i32)) {
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
                        _gotoNext = 3445278i32;
                    } else if (__value__ == (3445278i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3441564._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
