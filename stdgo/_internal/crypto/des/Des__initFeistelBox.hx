package stdgo._internal.crypto.des;
function _initFeistelBox():Void {
        for (_s => _ in stdgo._internal.crypto.des.Des__sBoxes._sBoxes) {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (4 : stdgo.GoInt) : Bool), _i++, {
                    {
                        var _j = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_j < (16 : stdgo.GoInt) : Bool), _j++, {
                            var _f = ((stdgo._internal.crypto.des.Des__sBoxes._sBoxes[(_s : stdgo.GoInt)][(_i : stdgo.GoInt)][(_j : stdgo.GoInt)] : stdgo.GoUInt64) << (((4u32 : stdgo.GoUInt) * (((7u32 : stdgo.GoUInt) - (_s : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt)) : stdgo.GoUInt64);
                            _f = stdgo._internal.crypto.des.Des__permuteBlock._permuteBlock(_f, (stdgo._internal.crypto.des.Des__permutationFunction._permutationFunction.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                            var _row = ((((((_i & (2 : stdgo.GoInt) : stdgo.GoInt)) << (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) | (_i & (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
                            var _col = ((_j << (1i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
                            var _t = (_row | _col : stdgo.GoUInt8);
                            _f = (((_f << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) | ((_f >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                            stdgo._internal.crypto.des.Des__feistelBox._feistelBox[(_s : stdgo.GoInt)][(_t : stdgo.GoInt)] = (_f : stdgo.GoUInt32);
                        });
                    };
                });
            };
        };
    }