# Module: `stdgo.math.rand`

[(view library index)](../../stdgo.md)


# Overview



Package rand implements pseudo\-random number generators suitable for tasks
such as simulation, but it should not be used for security\-sensitive work.  


Random numbers are generated by a \[Source\], usually wrapped in a \[Rand\].
Both types should be used by a single goroutine at a time: sharing among
multiple goroutines requires some kind of synchronization.  


Top\-level functions, such as \[Float64\] and \[Int\],
are safe for concurrent use by multiple goroutines.  


This package's outputs might be easily predictable regardless of how it's
seeded. For random numbers suitable for security\-sensitive work, see the
crypto/rand package.  

# Index


- [`function expFloat64():Float`](<#function-expfloat64>)

- [`function float32():Float`](<#function-float32>)

- [`function float64():Float`](<#function-float64>)

- [`function getExponentialDistributionParameters():stdgo.Tuple4<Float, haxe.ds.Vector<UInt>, haxe.ds.Vector<Float>, haxe.ds.Vector<Float>>`](<#function-getexponentialdistributionparameters>)

- [`function getNormalDistributionParameters():stdgo.Tuple4<Float, haxe.ds.Vector<UInt>, haxe.ds.Vector<Float>, haxe.ds.Vector<Float>>`](<#function-getnormaldistributionparameters>)

- [`function int31():Int`](<#function-int31>)

- [`function int31n(n:Int):Int`](<#function-int31n>)

- [`function int31nForTest(r:stdgo.math.rand.Rand, n:Int):Int`](<#function-int31nfortest>)

- [`function int63():haxe.Int64`](<#function-int63>)

- [`function int63n(n:haxe.Int64):haxe.Int64`](<#function-int63n>)

- [`function int_():Int`](<#function-int_>)

- [`function intn(n:Int):Int`](<#function-intn>)

- [`function newSource(seed:haxe.Int64):stdgo.math.rand.Source`](<#function-newsource>)

- [`function newZipf(r:stdgo.math.rand.Rand, s:Float, v:Float, imax:haxe.UInt64):stdgo.math.rand.Zipf`](<#function-newzipf>)

- [`function new_(src:stdgo.math.rand.Source):stdgo.math.rand.Rand`](<#function-new_>)

- [`function normFloat64():Float`](<#function-normfloat64>)

- [`function perm(n:Int):Array<Int>`](<#function-perm>)

- [`function read(p:Array<Int>):stdgo.Tuple<Int, stdgo.Error>`](<#function-read>)

- [`function seed(seed:haxe.Int64):Void`](<#function-seed>)

- [`function shuffle(n:Int, swap:(_i:stdgo.GoInt, _j:stdgo.GoInt):Void):Void`](<#function-shuffle>)

- [`function uint32():UInt`](<#function-uint32>)

- [`function uint64():haxe.UInt64`](<#function-uint64>)

- [typedef Rand](<#typedef-rand>)

- [typedef Rand\_asInterface](<#typedef-rand_asinterface>)

- [typedef Rand\_static\_extension](<#typedef-rand_static_extension>)

- [typedef Source](<#typedef-source>)

- [typedef Source64](<#typedef-source64>)

- [typedef T\_fastSource](<#typedef-t_fastsource>)

- [typedef T\_fastSource\_asInterface](<#typedef-t_fastsource_asinterface>)

- [typedef T\_fastSource\_static\_extension](<#typedef-t_fastsource_static_extension>)

- [typedef T\_lockedSource](<#typedef-t_lockedsource>)

- [typedef T\_lockedSource\_asInterface](<#typedef-t_lockedsource_asinterface>)

- [typedef T\_lockedSource\_static\_extension](<#typedef-t_lockedsource_static_extension>)

- [typedef T\_rngSource](<#typedef-t_rngsource>)

- [typedef T\_rngSource\_asInterface](<#typedef-t_rngsource_asinterface>)

- [typedef T\_rngSource\_static\_extension](<#typedef-t_rngsource_static_extension>)

- [typedef Zipf](<#typedef-zipf>)

- [typedef Zipf\_asInterface](<#typedef-zipf_asinterface>)

- [typedef Zipf\_static\_extension](<#typedef-zipf_static_extension>)

# Functions


```haxe
import stdgo.math.rand.Rand
```


## function expFloat64


```haxe
function expFloat64():Float
```



ExpFloat64 returns an exponentially distributed float64 in the range
\(0, \+math.MaxFloat64\] with an exponential distribution whose rate parameter
\(lambda\) is 1 and whose mean is 1/lambda \(1\) from the default Source.
To produce a distribution with a different rate parameter,
callers can adjust the output using:  

```
	sample = ExpFloat64() / desiredRateParameter
```
[\(view code\)](<./Rand.hx#L150>)


## function float32


```haxe
function float32():Float
```



Float32 returns, as a float32, a pseudo\-random number in the half\-open interval \[0.0,1.0\)
from the default Source.  

[\(view code\)](<./Rand.hx#L110>)


## function float64


```haxe
function float64():Float
```



Float64 returns, as a float64, a pseudo\-random number in the half\-open interval \[0.0,1.0\)
from the default Source.  

[\(view code\)](<./Rand.hx#L105>)


## function getExponentialDistributionParameters


```haxe
function getExponentialDistributionParameters():stdgo.Tuple4<Float, haxe.ds.Vector<UInt>, haxe.ds.Vector<Float>, haxe.ds.Vector<Float>>
```


[\(view code\)](<./Rand.hx#L27>)


## function getNormalDistributionParameters


```haxe
function getNormalDistributionParameters():stdgo.Tuple4<Float, haxe.ds.Vector<UInt>, haxe.ds.Vector<Float>, haxe.ds.Vector<Float>>
```


[\(view code\)](<./Rand.hx#L26>)


## function int31


```haxe
function int31():Int
```



Int31 returns a non\-negative pseudo\-random 31\-bit integer as an int32
from the default Source.  

[\(view code\)](<./Rand.hx#L78>)


## function int31n


```haxe
function int31n(n:Int):Int
```



Int31n returns, as an int32, a non\-negative pseudo\-random number in the half\-open interval \[0,n\)
from the default Source.
It panics if n \<= 0.  

[\(view code\)](<./Rand.hx#L94>)


## function int31nForTest


```haxe
function int31nForTest(r:stdgo.math.rand.Rand, n:Int):Int
```


[\(view code\)](<./Rand.hx#L25>)


## function int63


```haxe
function int63():haxe.Int64
```



Int63 returns a non\-negative pseudo\-random 63\-bit integer as an int64
from the default Source.  

[\(view code\)](<./Rand.hx#L63>)


## function int63n


```haxe
function int63n(n:haxe.Int64):haxe.Int64
```



Int63n returns, as an int64, a non\-negative pseudo\-random number in the half\-open interval \[0,n\)
from the default Source.
It panics if n \<= 0.  

[\(view code\)](<./Rand.hx#L88>)


## function int\_


```haxe
function int_():Int
```



Int returns a non\-negative pseudo\-random int from the default Source.  

[\(view code\)](<./Rand.hx#L82>)


## function intn


```haxe
function intn(n:Int):Int
```



Intn returns, as an int, a non\-negative pseudo\-random number in the half\-open interval \[0,n\)
from the default Source.
It panics if n \<= 0.  

[\(view code\)](<./Rand.hx#L100>)


## function newSource


```haxe
function newSource(seed:haxe.Int64):stdgo.math.rand.Source
```



NewSource returns a new pseudo\-random Source seeded with the given value.
Unlike the default Source used by top\-level functions, this source is not
safe for concurrent use by multiple goroutines.
The returned Source implements Source64.  

[\(view code\)](<./Rand.hx#L34>)


## function newZipf


```haxe
function newZipf(r:stdgo.math.rand.Rand, s:Float, v:Float, imax:haxe.UInt64):stdgo.math.rand.Zipf
```



NewZipf returns a Zipf variate generator.
The generator generates values k ∈ \[0, imax\]
such that P\(k\) is proportional to \(v \+ k\) \*\* \(\-s\).
Requirements: s \> 1 and v \>= 1.  

[\(view code\)](<./Rand.hx#L157>)


## function new\_


```haxe
function new_(src:stdgo.math.rand.Source):stdgo.math.rand.Rand
```



New returns a new Rand that uses random values from src
to generate other random values.  

[\(view code\)](<./Rand.hx#L39>)


## function normFloat64


```haxe
function normFloat64():Float
```



NormFloat64 returns a normally distributed float64 in the range
\[\-math.MaxFloat64, \+math.MaxFloat64\] with
standard normal distribution \(mean = 0, stddev = 1\)
from the default Source.
To produce a different normal distribution, callers can
adjust the output using:  

```
	sample = NormFloat64() * desiredStdDev + desiredMean
```
[\(view code\)](<./Rand.hx#L140>)


## function perm


```haxe
function perm(n:Int):Array<Int>
```



Perm returns, as a slice of n ints, a pseudo\-random permutation of the integers
in the half\-open interval \[0,n\) from the default Source.  

[\(view code\)](<./Rand.hx#L115>)


## function read


```haxe
function read(p:Array<Int>):stdgo.Tuple<Int, stdgo.Error>
```



Read generates len\(p\) random bytes from the default Source and
writes them into p. It always returns len\(p\) and a nil error.
Read, unlike the Rand.Read method, is safe for concurrent use.  


Deprecated: For almost all use cases, crypto/rand.Read is more appropriate.  

[\(view code\)](<./Rand.hx#L129>)


## function seed


```haxe
function seed(seed:haxe.Int64):Void
```



Seed uses the provided seed value to initialize the default Source to a
deterministic state. Seed values that have the same remainder when
divided by 2³¹\-1 generate the same pseudo\-random sequence.
Seed, unlike the Rand.Seed method, is safe for concurrent use.  


If Seed is not called, the generator is seeded randomly at program startup.  


Prior to Go 1.20, the generator was seeded like Seed\(1\) at program startup.
To force the old behavior, call Seed\(1\) at program startup.
Alternately, set GODEBUG=randautoseed=0 in the environment
before making any calls to functions in this package.  


Deprecated: As of Go 1.20 there is no reason to call Seed with
a random value. Programs that call Seed with a known value to get
a specific sequence of results should use New\(NewSource\(seed\)\) to
obtain a local random generator.  

[\(view code\)](<./Rand.hx#L58>)


## function shuffle


```haxe
function shuffle(n:Int, swap:(_i:stdgo.GoInt, _j:stdgo.GoInt):Void):Void
```



Shuffle pseudo\-randomizes the order of elements using the default Source.
n is the number of elements. Shuffle panics if n \< 0.
swap swaps the elements with indexes i and j.  

[\(view code\)](<./Rand.hx#L121>)


## function uint32


```haxe
function uint32():UInt
```



Uint32 returns a pseudo\-random 32\-bit value as a uint32
from the default Source.  

[\(view code\)](<./Rand.hx#L68>)


## function uint64


```haxe
function uint64():haxe.UInt64
```



Uint64 returns a pseudo\-random 64\-bit value as a uint64
from the default Source.  

[\(view code\)](<./Rand.hx#L73>)


# Typedefs


```haxe
import stdgo.math.rand.*
```


## typedef Rand


```haxe
typedef Rand = Dynamic;
```


## typedef Rand\_asInterface


```haxe
typedef Rand_asInterface = Dynamic;
```


## typedef Rand\_static\_extension


```haxe
typedef Rand_static_extension = Dynamic;
```


## typedef Source


```haxe
typedef Source = stdgo._internal.math.rand.Source;
```


## typedef Source64


```haxe
typedef Source64 = stdgo._internal.math.rand.Source64;
```


## typedef T\_fastSource


```haxe
typedef T_fastSource = Dynamic;
```


## typedef T\_fastSource\_asInterface


```haxe
typedef T_fastSource_asInterface = Dynamic;
```


## typedef T\_fastSource\_static\_extension


```haxe
typedef T_fastSource_static_extension = Dynamic;
```


## typedef T\_lockedSource


```haxe
typedef T_lockedSource = Dynamic;
```


## typedef T\_lockedSource\_asInterface


```haxe
typedef T_lockedSource_asInterface = Dynamic;
```


## typedef T\_lockedSource\_static\_extension


```haxe
typedef T_lockedSource_static_extension = Dynamic;
```


## typedef T\_rngSource


```haxe
typedef T_rngSource = Dynamic;
```


## typedef T\_rngSource\_asInterface


```haxe
typedef T_rngSource_asInterface = Dynamic;
```


## typedef T\_rngSource\_static\_extension


```haxe
typedef T_rngSource_static_extension = Dynamic;
```


## typedef Zipf


```haxe
typedef Zipf = Dynamic;
```


## typedef Zipf\_asInterface


```haxe
typedef Zipf_asInterface = Dynamic;
```


## typedef Zipf\_static\_extension


```haxe
typedef Zipf_static_extension = Dynamic;
```


