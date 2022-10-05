# Module: `stdgo.internal.goexperiment`

[(view library index)](../../stdgo.md)


# Overview


Package goexperiment implements support for toolchain experiments.  Toolchain experiments are controlled by the GOEXPERIMENT environment variable. GOEXPERIMENT is a comma\-separated list of experiment names. GOEXPERIMENT can be set at make.bash time, which sets the default experiments for binaries built with the tool chain; or it can be set at build time. GOEXPERIMENT can also be set to "none", which disables any experiments that were enabled at make.bash time.  Experiments are exposed to the build in the following ways:  \- Build tag goexperiment.x is set if experiment x \(lower case\) is enabled.  \- For each experiment x \(in camel case\), this package contains a boolean constant x and an integer constant xInt.  \- In runtime assembly, the macro GOEXPERIMENT\_x is defined if experiment x \(lower case\) is enabled.  In the toolchain, the set of experiments enabled for the current build should be accessed via objabi.Experiment.  The set of experiments is included in the output of runtime.Version\(\) and "go version \<binary\>" if it differs from the default experiments.  For the set of experiments supported by the current toolchain, see "go doc goexperiment.Flags".  Note that this package defines the set of experiments \(in Flags\) and records the experiments that were enabled when the package was compiled \(as boolean and integer constants\).  Note especially that this package does not itself change behavior at run time based on the GOEXPERIMENT variable. The code used in builds to interpret the GOEXPERIMENT variable is in the separate package internal/buildcfg. 


# Index


- [Constants](<#constants>)

- [class Flags](<#class-flags>)

  - [`function new(?fieldTrack:Bool, ?preemptibleLoops:Bool, ?staticLockRanking:Bool, ?boringCrypto:Bool, ?unified:Bool, ?regabiWrappers:Bool, ?regabiArgs:Bool, ?heapMinimum512KiB:Bool):Void`](<#flags-function-new>)

# Constants


```haxe
import stdgo.internal.goexperiment.Goexperiment
```


```haxe
final boringCrypto:stdgo.InvalidType = null
```


```haxe
final boringCryptoInt:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final fieldTrack:stdgo.InvalidType = null
```


```haxe
final fieldTrackInt:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final heapMinimum512KiB:stdgo.InvalidType = null
```


```haxe
final heapMinimum512KiBInt:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final preemptibleLoops:stdgo.InvalidType = null
```


```haxe
final preemptibleLoopsInt:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final regabiArgs:stdgo.InvalidType = null
```


```haxe
final regabiArgsInt:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final regabiWrappers:stdgo.InvalidType = null
```


```haxe
final regabiWrappersInt:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final staticLockRanking:stdgo.InvalidType = null
```


```haxe
final staticLockRankingInt:stdgo.GoUInt64 = ((0 : GoUInt64))
```


```haxe
final unified:stdgo.InvalidType = null
```


```haxe
final unifiedInt:stdgo.GoUInt64 = ((0 : GoUInt64))
```


# Classes


```haxe
import stdgo.internal.goexperiment.*
```


## class Flags


Flags is the set of experiments that can be enabled or disabled in the current toolchain.  When specified in the GOEXPERIMENT environment variable or as build tags, experiments use the strings.ToLower of their field name.  For the baseline experimental configuration, see objabi.experimentBaseline.  If you change this struct definition, run "go generate". 


```haxe
var boringCrypto:Bool
```


```haxe
var fieldTrack:Bool
```


```haxe
var heapMinimum512KiB:Bool
```


HeapMinimum512KiB reduces the minimum heap size to 512 KiB.  This was originally reduced as part of PacerRedesign, but has been broken out to its own experiment that is disabled by default. 


```haxe
var preemptibleLoops:Bool
```


```haxe
var regabiArgs:Bool
```


RegabiArgs enables register arguments/results in all compiled Go functions.  Requires wrappers \(to do ABI translation\), and reflect \(so reflection calls use registers\). 


```haxe
var regabiWrappers:Bool
```


RegabiWrappers enables ABI wrappers for calling between ABI0 and ABIInternal functions. Without this, the ABIs are assumed to be identical so cross\-ABI calls are direct. 


```haxe
var staticLockRanking:Bool
```


```haxe
var unified:Bool
```


Unified enables the compiler's unified IR construction experiment. 


### Flags function new


```haxe
function new(?fieldTrack:Bool, ?preemptibleLoops:Bool, ?staticLockRanking:Bool, ?boringCrypto:Bool, ?unified:Bool, ?regabiWrappers:Bool, ?regabiArgs:Bool, ?heapMinimum512KiB:Bool):Void
```


 


[\(view code\)](<./Goexperiment.hx#L121>)


