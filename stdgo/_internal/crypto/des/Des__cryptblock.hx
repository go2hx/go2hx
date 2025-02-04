package stdgo._internal.crypto.des;
function _cryptBlock(_subkeys:stdgo.Slice<stdgo.GoUInt64>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _decrypt:Bool):Void {
        var _b = (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint64(_src) : stdgo.GoUInt64);
        _b = stdgo._internal.crypto.des.Des__permuteinitialblock._permuteInitialBlock(_b);
        var __0 = ((_b >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32), __1 = (_b : stdgo.GoUInt32);
var _right = __1, _left = __0;
        _left = (((_left << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_left >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _right = (((_right << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_right >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        if (_decrypt) {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (8 : stdgo.GoInt) : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.des.Des__feistel._feistel(_left, _right, _subkeys[((15 : stdgo.GoInt) - ((2 : stdgo.GoInt) * _i : stdgo.GoInt) : stdgo.GoInt)], _subkeys[((15 : stdgo.GoInt) - ((((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)]);
                        _left = @:tmpset0 __tmp__._0;
                        _right = @:tmpset0 __tmp__._1;
                    };
                    _i++;
                };
            };
        } else {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (8 : stdgo.GoInt) : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.des.Des__feistel._feistel(_left, _right, _subkeys[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _subkeys[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]);
                        _left = @:tmpset0 __tmp__._0;
                        _right = @:tmpset0 __tmp__._1;
                    };
                    _i++;
                };
            };
        };
        _left = (((_left << (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_left >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _right = (((_right << (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_right >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        var _preOutput = ((((_right : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) | (_left : stdgo.GoUInt64) : stdgo.GoUInt64);
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint64(_dst, stdgo._internal.crypto.des.Des__permutefinalblock._permuteFinalBlock(_preOutput));
    }
