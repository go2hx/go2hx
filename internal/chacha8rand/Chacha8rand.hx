package internal.chacha8rand;
@:structInit @:using(internal.chacha8rand.Chacha8rand.State_static_extension) abstract State(_internal.internal.chacha8rand.Chacha8rand_state.State) from _internal.internal.chacha8rand.Chacha8rand_state.State to _internal.internal.chacha8rand.Chacha8rand_state.State {
    public var _buf(get, set) : haxe.ds.Vector<haxe.UInt64>;
    function get__buf():haxe.ds.Vector<haxe.UInt64> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<haxe.UInt64>):haxe.ds.Vector<haxe.UInt64> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>);
        return v;
    }
    public var _seed(get, set) : haxe.ds.Vector<haxe.UInt64>;
    function get__seed():haxe.ds.Vector<haxe.UInt64> return haxe.ds.Vector.fromArrayCopy([for (i in this._seed) i]);
    function set__seed(v:haxe.ds.Vector<haxe.UInt64>):haxe.ds.Vector<haxe.UInt64> {
        this._seed = ([for (i in v) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>);
        return v;
    }
    public var _i(get, set) : std.UInt;
    function get__i():std.UInt return this._i;
    function set__i(v:std.UInt):std.UInt {
        this._i = (v : stdgo.GoUInt32);
        return v;
    }
    public var _n(get, set) : std.UInt;
    function get__n():std.UInt return this._n;
    function set__n(v:std.UInt):std.UInt {
        this._n = (v : stdgo.GoUInt32);
        return v;
    }
    public var _c(get, set) : std.UInt;
    function get__c():std.UInt return this._c;
    function set__c(v:std.UInt):std.UInt {
        this._c = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?_buf:haxe.ds.Vector<haxe.UInt64>, ?_seed:haxe.ds.Vector<haxe.UInt64>, ?_i:std.UInt, ?_n:std.UInt, ?_c:std.UInt) this = new _internal.internal.chacha8rand.Chacha8rand_state.State(([for (i in _buf) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>), ([for (i in _seed) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>), (_i : stdgo.GoUInt32), (_n : stdgo.GoUInt32), (_c : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(internal.chacha8rand.Chacha8rand.T_errUnmarshalChaCha8_static_extension) @:dox(hide) abstract T_errUnmarshalChaCha8(_internal.internal.chacha8rand.Chacha8rand_t_errunmarshalchacha8.T_errUnmarshalChaCha8) from _internal.internal.chacha8rand.Chacha8rand_t_errunmarshalchacha8.T_errUnmarshalChaCha8 to _internal.internal.chacha8rand.Chacha8rand_t_errunmarshalchacha8.T_errUnmarshalChaCha8 {
    public function new() this = new _internal.internal.chacha8rand.Chacha8rand_t_errunmarshalchacha8.T_errUnmarshalChaCha8();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef StatePointer = _internal.internal.chacha8rand.Chacha8rand_statepointer.StatePointer;
class State_static_extension {
    static public function reseed(_s:State):Void {
        final _s = (_s : stdgo.Ref<_internal.internal.chacha8rand.Chacha8rand_state.State>);
        _internal.internal.chacha8rand.Chacha8rand_state_static_extension.State_static_extension.reseed(_s);
    }
    static public function refill(_s:State):Void {
        final _s = (_s : stdgo.Ref<_internal.internal.chacha8rand.Chacha8rand_state.State>);
        _internal.internal.chacha8rand.Chacha8rand_state_static_extension.State_static_extension.refill(_s);
    }
    static public function init64(_s:State, _seed:haxe.ds.Vector<haxe.UInt64>):Void {
        final _s = (_s : stdgo.Ref<_internal.internal.chacha8rand.Chacha8rand_state.State>);
        final _seed = ([for (i in _seed) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>);
        _internal.internal.chacha8rand.Chacha8rand_state_static_extension.State_static_extension.init64(_s, _seed);
    }
    static public function init(_s:State, _seed:haxe.ds.Vector<std.UInt>):Void {
        final _s = (_s : stdgo.Ref<_internal.internal.chacha8rand.Chacha8rand_state.State>);
        final _seed = ([for (i in _seed) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        _internal.internal.chacha8rand.Chacha8rand_state_static_extension.State_static_extension.init(_s, _seed);
    }
    static public function next(_s:State):stdgo.Tuple<haxe.UInt64, Bool> {
        final _s = (_s : stdgo.Ref<_internal.internal.chacha8rand.Chacha8rand_state.State>);
        return {
            final obj = _internal.internal.chacha8rand.Chacha8rand_state_static_extension.State_static_extension.next(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_errUnmarshalChaCha8Pointer = _internal.internal.chacha8rand.Chacha8rand_t_errunmarshalchacha8pointer.T_errUnmarshalChaCha8Pointer;
@:dox(hide) class T_errUnmarshalChaCha8_static_extension {
    static public function error(_:T_errUnmarshalChaCha8):String {
        final _ = (_ : stdgo.Ref<_internal.internal.chacha8rand.Chacha8rand_t_errunmarshalchacha8.T_errUnmarshalChaCha8>);
        return _internal.internal.chacha8rand.Chacha8rand_t_errunmarshalchacha8_static_extension.T_errUnmarshalChaCha8_static_extension.error(_);
    }
}
/**
    * Package chacha8rand implements a pseudorandom generator
    * based on ChaCha8. It is used by both runtime and math/rand/v2
    * and must have minimal dependencies.
    * 
    * ChaCha8 is ChaCha with 8 rounds.
    * See https://cr.yp.to/chacha/chacha-20080128.pdf.
    * 
    * ChaCha8 operates on a 4x4 matrix of uint32 values, initially set to:
    * 
    * 	const1 const2 const3 const4
    * 	seed   seed   seed   seed
    * 	seed   seed   seed   seed
    * 	counter64     0      0
    * 
    * We use the same constants as ChaCha20 does, a random seed,
    * and a counter. Running ChaCha8 on this input produces
    * a 4x4 matrix of pseudo-random values with as much entropy
    * as the seed.
    * 
    * Given SIMD registers that can hold N uint32s, it is possible
    * to run N ChaCha8 block transformations in parallel by filling
    * the first register with the N copies of const1, the second
    * with N copies of const2, and so on, and then running the operations.
    * 
    * Each iteration of ChaCha8Rand operates over 32 bytes of input and
    * produces 992 bytes of RNG output, plus 32 bytes of input for the next
    * iteration.
    * 
    * The 32 bytes of input are used as a ChaCha8 key, with a zero nonce, to
    * produce 1024 bytes of output (16 blocks, with counters 0 to 15).
    * First, for each block, the values 0x61707865, 0x3320646e, 0x79622d32,
    * 0x6b206574 are subtracted from the 32-bit little-endian words at
    * position 0, 1, 2, and 3 respectively, and an increasing counter
    * starting at zero is subtracted from each word at position 12. Then,
    * this stream is permuted such that for each sequence of four blocks,
    * first we output the first four bytes of each block, then the next four
    * bytes of each block, and so on. Finally, the last 32 bytes of output
    * are used as the input of the next iteration, and the remaining 992
    * bytes are the RNG output.
    * 
    * See https://c2sp.org/chacha8rand for additional details.
    * 
    * Normal ChaCha20 implementations for encryption use this same
    * parallelism but then have to deinterlace the results so that
    * it appears the blocks were generated separately. For the purposes
    * of generating random numbers, the interlacing is fine.
    * We are simply locked in to preserving the 4-way interlacing
    * in any future optimizations.
**/
class Chacha8rand {
    /**
        * Marshal marshals the state into a byte slice.
        * Marshal and Unmarshal are functions, not methods,
        * so that they will not be linked into the runtime
        * when it uses the State struct, since the runtime
        * does not need these.
    **/
    static public inline function marshal(_s:State):Array<std.UInt> {
        final _s = (_s : stdgo.Ref<_internal.internal.chacha8rand.Chacha8rand_state.State>);
        return [for (i in _internal.internal.chacha8rand.Chacha8rand_marshal.marshal(_s)) i];
    }
    /**
        * Unmarshal unmarshals the state from a byte slice.
    **/
    static public inline function unmarshal(_s:State, _data:Array<std.UInt>):stdgo.Error {
        final _s = (_s : stdgo.Ref<_internal.internal.chacha8rand.Chacha8rand_state.State>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return _internal.internal.chacha8rand.Chacha8rand_unmarshal.unmarshal(_s, _data);
    }
}
