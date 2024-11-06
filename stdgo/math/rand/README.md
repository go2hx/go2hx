# Module: `stdgo.math.rand`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [class Rand](<#class-rand>)

  - [`function expFloat64():Float`](<#rand-function-expfloat64>)

  - [`function float32():Float`](<#rand-function-float32>)

  - [`function float64():Float`](<#rand-function-float64>)

  - [`function getExponentialDistributionParameters():stdgo.Tuple4<Float, haxe.ds.Vector<UInt>, haxe.ds.Vector<Float>, haxe.ds.Vector<Float>>`](<#rand-function-getexponentialdistributionparameters>)

  - [`function getNormalDistributionParameters():stdgo.Tuple4<Float, haxe.ds.Vector<UInt>, haxe.ds.Vector<Float>, haxe.ds.Vector<Float>>`](<#rand-function-getnormaldistributionparameters>)

  - [`function int31():Int`](<#rand-function-int31>)

  - [`function int31n(_n:Int):Int`](<#rand-function-int31n>)

  - [`function int31nForTest(_r:stdgo.math.rand.Rand_, _n:Int):Int`](<#rand-function-int31nfortest>)

  - [`function int63():haxe.Int64`](<#rand-function-int63>)

  - [`function int63n(_n:haxe.Int64):haxe.Int64`](<#rand-function-int63n>)

  - [`function int_():Int`](<#rand-function-int_>)

  - [`function intn(_n:Int):Int`](<#rand-function-intn>)

  - [`function newSource(_seed:haxe.Int64):stdgo.math.rand.Source`](<#rand-function-newsource>)

  - [`function newZipf(_r:stdgo.math.rand.Rand_, _s:Float, _v:Float, _imax:haxe.UInt64):stdgo.math.rand.Zipf`](<#rand-function-newzipf>)

  - [`function new_(_src:stdgo.math.rand.Source):stdgo.math.rand.Rand_`](<#rand-function-new_>)

  - [`function normFloat64():Float`](<#rand-function-normfloat64>)

  - [`function perm(_n:Int):Array<Int>`](<#rand-function-perm>)

  - [`function read(_p:Array<UInt>):stdgo.Tuple<Int, stdgo.Error>`](<#rand-function-read>)

  - [`function seed(_seed:haxe.Int64):Void`](<#rand-function-seed>)

  - [`function shuffle(_n:Int, _swap:(:stdgo.GoInt, :stdgo.GoInt):Void):Void`](<#rand-function-shuffle>)

  - [`function uint32():UInt`](<#rand-function-uint32>)

  - [`function uint64():haxe.UInt64`](<#rand-function-uint64>)

- [typedef Source](<#typedef-source>)

- [typedef Source64](<#typedef-source64>)

- [abstract Rand\_](<#abstract-rand_>)

- [abstract T\_fastSource](<#abstract-t_fastsource>)

- [abstract T\_lockedSource](<#abstract-t_lockedsource>)

- [abstract T\_rngSource](<#abstract-t_rngsource>)

- [abstract Zipf](<#abstract-zipf>)

# Classes


```haxe
import
```


## class Rand


```
{
    	gotoNext = 2861148
    	_ = gotoNext == 2861148
    	f_2861156 = float32(r.Float64())
    	if f_2861156 == 1 {
    		gotoNext = 2861193
    		_ = gotoNext == 2861193
    		gotoNext = 2861148
    		gotoNext = 2861261
    	} else {
    		gotoNext = 2861261
}
    	_ = gotoNext == 2861261
    	return f_2861156
    	gotoNext = -1
    }
```
### Rand function expFloat64


```haxe
function expFloat64():Float
```


```
ExpFloat64 returns an exponentially distributed float64 in the range
        (0, +math.MaxFloat64] with an exponential distribution whose rate parameter
        (lambda) is 1 and whose mean is 1/lambda (1) from the default Source.
        To produce a distribution with a different rate parameter,
        callers can adjust the output using:
```
```
        	sample = ExpFloat64() / desiredRateParameter
```
[\(view code\)](<./Rand.hx#L473>)


### Rand function float32


```haxe
function float32():Float
```


```
Float32 returns, as a float32, a pseudo-random number in the half-open interval [0.0,1.0)
        from the default Source.
```
[\(view code\)](<./Rand.hx#L418>)


### Rand function float64


```haxe
function float64():Float
```


```
Float64 returns, as a float64, a pseudo-random number in the half-open interval [0.0,1.0)
        from the default Source.
```
[\(view code\)](<./Rand.hx#L411>)


### Rand function getExponentialDistributionParameters


```haxe
function getExponentialDistributionParameters():stdgo.Tuple4<Float, haxe.ds.Vector<UInt>, haxe.ds.Vector<Float>, haxe.ds.Vector<Float>>
```


[\(view code\)](<./Rand.hx#L306>)


### Rand function getNormalDistributionParameters


```haxe
function getNormalDistributionParameters():stdgo.Tuple4<Float, haxe.ds.Vector<UInt>, haxe.ds.Vector<Float>, haxe.ds.Vector<Float>>
```


[\(view code\)](<./Rand.hx#L300>)


### Rand function int31


```haxe
function int31():Int
```


```
Int31 returns a non-negative pseudo-random 31-bit integer as an int32
        from the default Source.
```
[\(view code\)](<./Rand.hx#L374>)


### Rand function int31n


```haxe
function int31n(_n:Int):Int
```


```
Int31n returns, as an int32, a non-negative pseudo-random number in the half-open interval [0,n)
        from the default Source.
        It panics if n <= 0.
```
[\(view code\)](<./Rand.hx#L396>)


### Rand function int31nForTest


```haxe
function int31nForTest(_r:stdgo.math.rand.Rand_, _n:Int):Int
```


[\(view code\)](<./Rand.hx#L297>)


### Rand function int63


```haxe
function int63():haxe.Int64
```


```
Int63 returns a non-negative pseudo-random 63-bit integer as an int64
        from the default Source.
```
[\(view code\)](<./Rand.hx#L353>)


### Rand function int63n


```haxe
function int63n(_n:haxe.Int64):haxe.Int64
```


```
Int63n returns, as an int64, a non-negative pseudo-random number in the half-open interval [0,n)
        from the default Source.
        It panics if n <= 0.
```
[\(view code\)](<./Rand.hx#L388>)


### Rand function int\_


```haxe
function int_():Int
```



Int returns a non\-negative pseudo\-random int from the default Source.  

[\(view code\)](<./Rand.hx#L380>)


### Rand function intn


```haxe
function intn(_n:Int):Int
```


```
Intn returns, as an int, a non-negative pseudo-random number in the half-open interval [0,n)
        from the default Source.
        It panics if n <= 0.
```
[\(view code\)](<./Rand.hx#L404>)


### Rand function newSource


```haxe
function newSource(_seed:haxe.Int64):stdgo.math.rand.Source
```


```
NewSource returns a new pseudo-random Source seeded with the given value.
        Unlike the default Source used by top-level functions, this source is not
        safe for concurrent use by multiple goroutines.
        The returned Source implements Source64.
```
[\(view code\)](<./Rand.hx#L318>)


### Rand function newZipf


```haxe
function newZipf(_r:stdgo.math.rand.Rand_, _s:Float, _v:Float, _imax:haxe.UInt64):stdgo.math.rand.Zipf
```


```
NewZipf returns a Zipf variate generator.
        The generator generates values k ∈ [0, imax]
        such that P(k) is proportional to (v + k) ** (-s).
        Requirements: s > 1 and v >= 1.
```
[\(view code\)](<./Rand.hx#L482>)


### Rand function new\_


```haxe
function new_(_src:stdgo.math.rand.Source):stdgo.math.rand.Rand_
```


```
New returns a new Rand that uses random values from src
        to generate other random values.
```
[\(view code\)](<./Rand.hx#L325>)


### Rand function normFloat64


```haxe
function normFloat64():Float
```


```
NormFloat64 returns a normally distributed float64 in the range
        [-math.MaxFloat64, +math.MaxFloat64] with
        standard normal distribution (mean = 0, stddev = 1)
        from the default Source.
        To produce a different normal distribution, callers can
        adjust the output using:
```
```
        	sample = NormFloat64() * desiredStdDev + desiredMean
```
[\(view code\)](<./Rand.hx#L461>)


### Rand function perm


```haxe
function perm(_n:Int):Array<Int>
```


```
Perm returns, as a slice of n ints, a pseudo-random permutation of the integers
        in the half-open interval [0,n) from the default Source.
```
[\(view code\)](<./Rand.hx#L425>)


### Rand function read


```haxe
function read(_p:Array<UInt>):stdgo.Tuple<Int, stdgo.Error>
```


```
Read generates len(p) random bytes from the default Source and
        writes them into p. It always returns len(p) and a nil error.
        Read, unlike the Rand.Read method, is safe for concurrent use.
```

Deprecated: For almost all use cases, crypto/rand.Read is more appropriate.  

[\(view code\)](<./Rand.hx#L444>)


### Rand function seed


```haxe
function seed(_seed:haxe.Int64):Void
```


```
Seed uses the provided seed value to initialize the default Source to a
        deterministic state. Seed values that have the same remainder when
        divided by 2³¹-1 generate the same pseudo-random sequence.
        Seed, unlike the Rand.Seed method, is safe for concurrent use.
```

If Seed is not called, the generator is seeded randomly at program startup.  


Prior to Go 1.20, the generator was seeded like Seed\(1\) at program startup.
To force the old behavior, call Seed\(1\) at program startup.
Alternately, set GODEBUG=randautoseed=0 in the environment
before making any calls to functions in this package.  


Deprecated: As of Go 1.20 there is no reason to call Seed with
a random value. Programs that call Seed with a known value to get
a specific sequence of results should use New\(NewSource\(seed\)\) to
obtain a local random generator.  

[\(view code\)](<./Rand.hx#L346>)


### Rand function shuffle


```haxe
function shuffle(_n:Int, _swap:(:stdgo.GoInt, :stdgo.GoInt):Void):Void
```


```
Shuffle pseudo-randomizes the order of elements using the default Source.
        n is the number of elements. Shuffle panics if n < 0.
        swap swaps the elements with indexes i and j.
```
[\(view code\)](<./Rand.hx#L433>)


### Rand function uint32


```haxe
function uint32():UInt
```


```
Uint32 returns a pseudo-random 32-bit value as a uint32
        from the default Source.
```
[\(view code\)](<./Rand.hx#L360>)


### Rand function uint64


```haxe
function uint64():haxe.UInt64
```


```
Uint64 returns a pseudo-random 64-bit value as a uint64
        from the default Source.
```
[\(view code\)](<./Rand.hx#L367>)


# Typedefs


```haxe
import
```


## typedef Source


```haxe
typedef Source = stdgo._internal.math.rand.Source;
```


## typedef Source64


```haxe
typedef Source64 = stdgo._internal.math.rand.Source64;
```


# Abstracts


## abstract Rand\_


[\(view file containing code\)](<./Rand.hx>)


## abstract T\_fastSource


[\(view file containing code\)](<./Rand.hx>)


## abstract T\_lockedSource


[\(view file containing code\)](<./Rand.hx>)


## abstract T\_rngSource


[\(view file containing code\)](<./Rand.hx>)


## abstract Zipf


[\(view file containing code\)](<./Rand.hx>)


